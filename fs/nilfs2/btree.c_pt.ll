; ModuleID = '/llk/IR_all_yes/fs/nilfs2/btree.c_pt.bc'
source_filename = "../fs/nilfs2/btree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nilfs_bmap_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nilfs_btree_node = type { i8, i8, i16, i32 }
%struct.page = type { i32, %union.anon, %union.anon.75, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.79 = type { ptr }
%union.nilfs_bmap_ptr_req = type { %struct.nilfs_palloc_req }
%struct.nilfs_palloc_req = type { i64, ptr, ptr, ptr }
%struct.nilfs_bmap = type { %union.anon.82, %struct.rw_semaphore, ptr, ptr, i64, i64, i32, i32, i16 }
%union.anon.82 = type { [7 x i64] }
%struct.nilfs_btree_path = type { ptr, ptr, i32, %union.nilfs_bmap_ptr_req, %union.nilfs_bmap_ptr_req, %struct.nilfs_btnode_chkey_ctxt, ptr }
%struct.nilfs_btnode_chkey_ctxt = type { i64, i64, ptr, ptr }
%struct.nilfs_btree_readahead_info = type { ptr, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.nilfs_binfo_v = type { i64, i64 }
%struct.nilfs_binfo_dat = type { i64, i8, [7 x i8] }

@nilfs_btree_ops_gc = internal constant { %struct.nilfs_bmap_operations, [40 x i8] } { %struct.nilfs_bmap_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nilfs_btree_propagate_gc, ptr @nilfs_btree_lookup_dirty_buffers, ptr @nilfs_btree_assign_gc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\012bad btree node (ino=%lu, blocknr=%llu): level = %d, flags = 0x%x, nchildren = %d\00", [45 x i8] zeroinitializer }, align 32
@nilfs_btree_ops = internal constant { %struct.nilfs_bmap_operations, [40 x i8] } { %struct.nilfs_bmap_operations { ptr @nilfs_btree_lookup, ptr @nilfs_btree_lookup_contig, ptr @nilfs_btree_insert, ptr @nilfs_btree_delete, ptr null, ptr @nilfs_btree_propagate, ptr @nilfs_btree_lookup_dirty_buffers, ptr @nilfs_btree_assign, ptr @nilfs_btree_mark, ptr @nilfs_btree_seek_key, ptr @nilfs_btree_last_key, ptr null, ptr @nilfs_btree_check_delete, ptr @nilfs_btree_gather_data }, [40 x i8] zeroinitializer }, align 32
@nilfs_btree_path_cache = external dso_local local_unnamed_addr global ptr, align 4
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/nilfs2/btree.c\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013I/O error reading b-tree node block (ino=%lu, blocknr=%llu)\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\012btree level mismatch (ino=%lu): %d != %d\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\012writing node/leaf block does not appear in b-tree (ino=%lu) at key=%llu, level=%d\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014invalid btree level: %d (key=%llu, ino=%lu, blocknr=%llu)\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\012bad btree root (ino=%lu): level = %d, flags = 0x%x, nchildren = %d\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967279, i64 4294967280]
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"nilfs_btree_ops_gc\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 2364, i32 43 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 354, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant [16 x i8] c"nilfs_btree_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 2342, i32 43 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 582, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 511, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 354, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 453, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 2076, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 452, i32 1 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 2116, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [21 x i8] c"../fs/nilfs2/btree.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 384, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @nilfs_btree_ops_gc, ptr @.str, ptr @nilfs_btree_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_btree_ops_gc to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_btree_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_btree_broken_node_block(ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %2 = and i32 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %3 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %b_data, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 4
  %5 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %b_size, align 8
  %bn_level.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %bn_level.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bn_level.i.i, align 1
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %4, align 4
  %conv.i22.i = zext i8 %10 to i32
  %bn_nchildren.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %4, i32 0, i32 2
  %11 = ptrtoint ptr %bn_nchildren.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bn_nchildren.i.i, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #8
  %conv.i23.i = zext i16 %13 to i32
  %14 = add i8 %8, -14
  call void @__sanitizer_cov_trace_const_cmp1(i8 -13, i8 %14)
  %15 = icmp ult i8 %14, -13
  %and.i = and i32 %conv.i22.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i15 = icmp ne i32 %and.i, 0
  %or.cond20.i = select i1 %15, i1 true, i1 %tobool.not.i15
  %sub7.i = add i32 %6, -16
  %div19.i = lshr i32 %sub7.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div19.i, i32 %conv.i23.i)
  %cmp8.i = icmp ult i32 %div19.i, %conv.i23.i
  %or.cond21.i = select i1 %or.cond20.i, i1 true, i1 %cmp8.i
  br i1 %or.cond21.i, label %nilfs_btree_node_broken.exit, label %if.then6, !prof !31

nilfs_btree_node_broken.exit:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %16 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %b_blocknr, align 8
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 2
  %18 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_page, align 8
  %mapping = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mapping, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %conv.i.i = zext i8 %8 to i32
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 11
  %26 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_ino.i, align 8
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %25, ptr noundef nonnull @.str, i32 noundef %27, i64 noundef %17, i32 noundef %conv.i.i, i32 noundef %conv.i22.i, i32 noundef %conv.i23.i) #8
  br label %cleanup

if.then6:                                         ; preds = %if.end
  %28 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %bh, align 4
  %30 = and i32 %29, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 19, ptr noundef %bh) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then6.cleanup_crit_edge, %nilfs_btree_node_broken.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %nilfs_btree_node_broken.exit ], [ 0, %if.then6.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_btree_convert_and_insert(ptr noundef %btree, i64 noundef %key, i64 noundef %ptr, ptr nocapture noundef readonly %keys, ptr nocapture noundef readonly %ptrs, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  %dreq = alloca %union.nilfs_bmap_ptr_req, align 8
  %nreq = alloca %union.nilfs_bmap_ptr_req, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dreq) #8
  %0 = call ptr @memset(ptr %dreq, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %nreq) #8
  %1 = call ptr @memset(ptr %nreq, i32 255, i32 24)
  %add = add i32 %n, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add)
  %cmp = icmp ult i32 %add, 4
  br i1 %cmp, label %entry.if.end9_crit_edge, label %if.else

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.else:                                          ; preds = %entry
  %b_inode.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 2
  %2 = ptrtoint ptr %b_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_inode.i, align 8
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i.i = zext i8 %5 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %sub2 = add i32 %shl.i.i, -16
  %div29 = lshr i32 %sub2, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %div29)
  %cmp3.not = icmp ugt i32 %add, %div29
  br i1 %cmp3.not, label %if.else5, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/btree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1869, 0\0A.popsection", ""() #8, !srcloc !32
  unreachable

if.end9:                                          ; preds = %if.else.if.end9_crit_edge, %entry.if.end9_crit_edge
  %ni.0 = phi ptr [ null, %entry.if.end9_crit_edge ], [ %nreq, %if.else.if.end9_crit_edge ]
  %b_ptr_type.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 6
  %6 = ptrtoint ptr %b_ptr_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %b_ptr_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp sgt i32 %7, 0
  br i1 %cmp.i, label %if.then.i, label %if.end9.if.end5.i_crit_edge

if.end9.if.end5.i_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then.i:                                        ; preds = %if.end9
  %call.i.i = tail call i64 @nilfs_bmap_find_target_seq(ptr noundef %btree, i64 noundef %key) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i)
  %cmp.not.i.i = icmp eq i64 %call.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i.i = tail call i64 @nilfs_bmap_find_target_in_group(ptr noundef %btree) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i, %if.then.i.if.end.i_crit_edge
  %retval.0.i.i = phi i64 [ %call5.i.i, %if.end.i.i ], [ %call.i.i, %if.then.i.if.end.i_crit_edge ]
  %8 = ptrtoint ptr %dreq to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %retval.0.i.i, ptr %dreq, align 8
  %call1.i = tail call ptr @nilfs_bmap_get_dat(ptr noundef %btree) #8
  %tobool.not.i.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i.i, label %if.end.i.if.end5.i_crit_edge, label %nilfs_bmap_prepare_alloc_ptr.exit.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

nilfs_bmap_prepare_alloc_ptr.exit.i:              ; preds = %if.end.i
  %call.i48.i = call i32 @nilfs_dat_prepare_alloc(ptr noundef nonnull %call1.i, ptr noundef nonnull %dreq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.i)
  %cmp3.i = icmp slt i32 %call.i48.i, 0
  br i1 %cmp3.i, label %nilfs_bmap_prepare_alloc_ptr.exit.i.cleanup_crit_edge, label %if.end5.i.thread

nilfs_bmap_prepare_alloc_ptr.exit.i.cleanup_crit_edge: ; preds = %nilfs_bmap_prepare_alloc_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i.if.end5.i_crit_edge, %if.end9.if.end5.i_crit_edge
  %b_last_allocated_ptr.i.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 5
  %9 = ptrtoint ptr %b_last_allocated_ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %b_last_allocated_ptr.i.i, align 8
  %inc.i.i = add i64 %10, 1
  store i64 %inc.i.i, ptr %b_last_allocated_ptr.i.i, align 8
  %11 = ptrtoint ptr %dreq to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %dreq, align 8
  %cmp7.not.i = icmp eq ptr %ni.0, null
  br i1 %cmp7.not.i, label %if.end5.i.if.end13_crit_edge, label %if.end12.i

if.end5.i.if.end13_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end5.i.thread:                                 ; preds = %nilfs_bmap_prepare_alloc_ptr.exit.i
  %cmp7.not.i42 = icmp eq ptr %ni.0, null
  br i1 %cmp7.not.i42, label %if.end5.i.thread.if.end13_crit_edge, label %nilfs_bmap_prepare_alloc_ptr.exit58.i

if.end5.i.thread.if.end13_crit_edge:              ; preds = %if.end5.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

nilfs_bmap_prepare_alloc_ptr.exit58.i:            ; preds = %if.end5.i.thread
  %12 = ptrtoint ptr %dreq to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %dreq, align 8
  %add.i48 = add i64 %13, 1
  %14 = ptrtoint ptr %ni.0 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %add.i48, ptr %ni.0, align 8
  %call.i52.i = call i32 @nilfs_dat_prepare_alloc(ptr noundef nonnull %call1.i, ptr noundef nonnull %ni.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52.i)
  %cmp10.i = icmp slt i32 %call.i52.i, 0
  br i1 %cmp10.i, label %nilfs_bmap_prepare_alloc_ptr.exit58.i.if.then.i67.i_crit_edge, label %if.end12.thread.i

nilfs_bmap_prepare_alloc_ptr.exit58.i.if.then.i67.i_crit_edge: ; preds = %nilfs_bmap_prepare_alloc_ptr.exit58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i67.i

if.end12.i:                                       ; preds = %if.end5.i
  %15 = ptrtoint ptr %dreq to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %dreq, align 8
  %add.i = add i64 %16, 1
  %17 = ptrtoint ptr %ni.0 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add.i, ptr %ni.0, align 8
  %18 = ptrtoint ptr %b_last_allocated_ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %b_last_allocated_ptr.i.i, align 8
  %inc.i55.i = add i64 %19, 1
  store i64 %inc.i55.i, ptr %b_last_allocated_ptr.i.i, align 8
  store i64 %19, ptr %ni.0, align 8
  %i_btnode_cache.i.i = getelementptr i8, ptr %btree, i32 216
  %call1.i.i = call ptr @nilfs_btnode_create_block(ptr noundef %i_btnode_cache.i.i, i64 noundef %19) #8
  %tobool.not.i59.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i59.i, label %if.else.i70.i, label %if.end12.i.if.end.i60.i_crit_edge

if.end12.i.if.end.i60.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i60.i

if.end12.thread.i:                                ; preds = %nilfs_bmap_prepare_alloc_ptr.exit58.i
  %20 = ptrtoint ptr %ni.0 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ni.0, align 8
  %i_btnode_cache.i97.i = getelementptr i8, ptr %btree, i32 216
  %call1.i98.i = call ptr @nilfs_btnode_create_block(ptr noundef %i_btnode_cache.i97.i, i64 noundef %21) #8
  %tobool.not.i5999.i = icmp eq ptr %call1.i98.i, null
  br i1 %tobool.not.i5999.i, label %if.then.i63.i, label %if.end12.thread.i.if.end.i60.i_crit_edge

if.end12.thread.i.if.end.i60.i_crit_edge:         ; preds = %if.end12.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i60.i

if.end.i60.i:                                     ; preds = %if.end12.thread.i.if.end.i60.i_crit_edge, %if.end12.i.if.end.i60.i_crit_edge
  %call1.i101.i = phi ptr [ %call1.i98.i, %if.end12.thread.i.if.end.i60.i_crit_edge ], [ %call1.i.i, %if.end12.i.if.end.i60.i_crit_edge ]
  %22 = ptrtoint ptr %call1.i101.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %call1.i101.i, align 4
  %24 = and i32 %23, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i60.i.if.end13_crit_edge

if.end.i60.i.if.end13_crit_edge:                  ; preds = %if.end.i60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then.i.i.i:                                    ; preds = %if.end.i60.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 18, ptr noundef nonnull %call1.i101.i) #8
  br label %if.end13

if.then.i63.i:                                    ; preds = %if.end12.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @nilfs_dat_abort_alloc(ptr noundef nonnull %call1.i, ptr noundef nonnull %ni.0) #8
  br label %if.then.i67.i

if.then.i67.i:                                    ; preds = %if.then.i63.i, %nilfs_bmap_prepare_alloc_ptr.exit58.i.if.then.i67.i_crit_edge
  %ret.0.ph.i = phi i32 [ -12, %if.then.i63.i ], [ %call.i52.i, %nilfs_bmap_prepare_alloc_ptr.exit58.i.if.then.i67.i_crit_edge ]
  call void @nilfs_dat_abort_alloc(ptr noundef nonnull %call1.i, ptr noundef nonnull %dreq) #8
  br label %cleanup

if.else.i70.i:                                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %b_last_allocated_ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %b_last_allocated_ptr.i.i, align 8
  %dec.i69.i = add i64 %26, -2
  store i64 %dec.i69.i, ptr %b_last_allocated_ptr.i.i, align 8
  br label %cleanup

if.end13:                                         ; preds = %if.then.i.i.i, %if.end.i60.i.if.end13_crit_edge, %if.end5.i.thread.if.end13_crit_edge, %if.end5.i.if.end13_crit_edge
  %bh.1.ph = phi ptr [ %call1.i101.i, %if.end.i60.i.if.end13_crit_edge ], [ %call1.i101.i, %if.then.i.i.i ], [ null, %if.end5.i.thread.if.end13_crit_edge ], [ null, %if.end5.i.if.end13_crit_edge ]
  %stats.sroa.0.0.ph = phi i32 [ 2, %if.end.i60.i.if.end13_crit_edge ], [ 2, %if.then.i.i.i ], [ 1, %if.end5.i.thread.if.end13_crit_edge ], [ 1, %if.end5.i.if.end13_crit_edge ]
  %b_ops.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 3
  %27 = ptrtoint ptr %b_ops.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %b_ops.i, align 4
  %bop_clear.i = getelementptr inbounds %struct.nilfs_bmap_operations, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %bop_clear.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bop_clear.i, align 4
  %cmp.not.i = icmp eq ptr %30, null
  br i1 %cmp.not.i, label %if.end13.if.end.i32_crit_edge, label %if.then.i30

if.end13.if.end.i32_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i32

if.then.i30:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  call void %30(ptr noundef %btree) #8
  br label %if.end.i32

if.end.i32:                                       ; preds = %if.then.i30, %if.end13.if.end.i32_crit_edge
  %conv.i = trunc i64 %ptr to i32
  %31 = inttoptr i32 %conv.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %34 = and i32 %33, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i31 = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i31, label %if.then.i.i, label %if.end.i32.set_buffer_nilfs_volatile.exit.i_crit_edge

if.end.i32.set_buffer_nilfs_volatile.exit.i_crit_edge: ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_nilfs_volatile.exit.i

if.then.i.i:                                      ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 18, ptr noundef %31) #8
  br label %set_buffer_nilfs_volatile.exit.i

set_buffer_nilfs_volatile.exit.i:                 ; preds = %if.then.i.i, %if.end.i32.set_buffer_nilfs_volatile.exit.i_crit_edge
  %35 = ptrtoint ptr %b_ptr_type.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %b_ptr_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp3.i34 = icmp sgt i32 %36, 0
  br i1 %cmp3.i34, label %cond.true.i, label %set_buffer_nilfs_volatile.exit.i.cond.end.i_crit_edge

set_buffer_nilfs_volatile.exit.i.cond.end.i_crit_edge: ; preds = %set_buffer_nilfs_volatile.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.true.i:                                      ; preds = %set_buffer_nilfs_volatile.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call ptr @nilfs_bmap_get_dat(ptr noundef %btree) #8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %set_buffer_nilfs_volatile.exit.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %call.i, %cond.true.i ], [ null, %set_buffer_nilfs_volatile.exit.i.cond.end.i_crit_edge ]
  %37 = ptrtoint ptr %b_ops.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @nilfs_btree_ops, ptr %b_ops.i, align 4
  %b_inode.i.i.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 2
  %38 = ptrtoint ptr %b_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %b_inode.i.i.i, align 8
  %i_blkbits.i.i.i.i = getelementptr inbounds %struct.inode, ptr %39, i32 0, i32 20
  %40 = ptrtoint ptr %i_blkbits.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %i_blkbits.i.i.i.i, align 2
  %conv.i.i.i.i = zext i8 %41 to i32
  %shl.i.i.i.i = shl nuw i32 1, %conv.i.i.i.i
  %sub1.i.i = add nuw i32 %shl.i.i.i.i, 1048560
  %div4.i.i = lshr i32 %sub1.i.i, 4
  %conv.i.i35 = trunc i32 %div4.i.i to i16
  %b_nchildren_per_block.i.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 8
  %42 = ptrtoint ptr %b_nchildren_per_block.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i.i35, ptr %b_nchildren_per_block.i.i, align 8
  %cmp5.not.i = icmp eq ptr %ni.0, null
  %tobool.not.i98.i = icmp eq ptr %cond.i, null
  br i1 %cmp5.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %cond.end.i
  br i1 %tobool.not.i98.i, label %if.then7.i.nilfs_bmap_commit_alloc_ptr.exit73.i_crit_edge, label %if.then.i72.i

if.then7.i.nilfs_bmap_commit_alloc_ptr.exit73.i_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_bmap_commit_alloc_ptr.exit73.i

if.then.i72.i:                                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @nilfs_dat_commit_alloc(ptr noundef nonnull %cond.i, ptr noundef nonnull %dreq) #8
  call void @nilfs_dat_commit_alloc(ptr noundef nonnull %cond.i, ptr noundef nonnull %ni.0) #8
  br label %nilfs_bmap_commit_alloc_ptr.exit73.i

nilfs_bmap_commit_alloc_ptr.exit73.i:             ; preds = %if.then.i72.i, %if.then7.i.nilfs_bmap_commit_alloc_ptr.exit73.i_crit_edge
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %bh.1.ph, i32 0, i32 5
  %43 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %b_data.i, align 4
  %45 = ptrtoint ptr %b_nchildren_per_block.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %b_nchildren_per_block.i.i, align 8
  %conv.i75.i = zext i16 %46 to i32
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %44, align 4
  %bn_level.i.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %44, i32 0, i32 1
  %48 = ptrtoint ptr %bn_level.i.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %bn_level.i.i.i, align 1
  %conv.i16.i.i = trunc i32 %n to i16
  %49 = call i16 @llvm.bswap.i16(i16 %conv.i16.i.i) #8
  %bn_nchildren.i.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %44, i32 0, i32 2
  %50 = ptrtoint ptr %bn_nchildren.i.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %bn_nchildren.i.i.i, align 2
  %add.ptr.i.i.i = getelementptr %struct.nilfs_btree_node, ptr %44, i32 1
  %add.ptr1.i.i.i = getelementptr %struct.nilfs_btree_node, ptr %44, i32 2
  %add.ptr.i17.i.i = getelementptr i64, ptr %add.ptr1.i.i.i, i32 %conv.i75.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp18.i.i = icmp sgt i32 %n, 0
  br i1 %cmp18.i.i, label %nilfs_bmap_commit_alloc_ptr.exit73.i.for.body.i.i_crit_edge, label %nilfs_bmap_commit_alloc_ptr.exit73.i.nilfs_btree_node_init.exit.i_crit_edge

nilfs_bmap_commit_alloc_ptr.exit73.i.nilfs_btree_node_init.exit.i_crit_edge: ; preds = %nilfs_bmap_commit_alloc_ptr.exit73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_node_init.exit.i

nilfs_bmap_commit_alloc_ptr.exit73.i.for.body.i.i_crit_edge: ; preds = %nilfs_bmap_commit_alloc_ptr.exit73.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %nilfs_bmap_commit_alloc_ptr.exit73.i.for.body.i.i_crit_edge
  %i.019.i.i = phi i32 [ %inc.i.i36, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %nilfs_bmap_commit_alloc_ptr.exit73.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i64, ptr %keys, i32 %i.019.i.i
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx.i.i, align 8
  %53 = call i64 @llvm.bswap.i64(i64 %52) #8
  %arrayidx2.i.i = getelementptr i64, ptr %add.ptr1.i.i.i, i32 %i.019.i.i
  %54 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %arrayidx2.i.i, align 8
  %arrayidx3.i.i = getelementptr i64, ptr %ptrs, i32 %i.019.i.i
  %55 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %arrayidx3.i.i, align 8
  %57 = call i64 @llvm.bswap.i64(i64 %56) #8
  %arrayidx4.i.i = getelementptr i64, ptr %add.ptr.i17.i.i, i32 %i.019.i.i
  %58 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %arrayidx4.i.i, align 8
  %inc.i.i36 = add nuw nsw i32 %i.019.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i36, %n
  br i1 %exitcond.not.i.i, label %for.body.i.i.nilfs_btree_node_init.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.nilfs_btree_node_init.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_node_init.exit.i

nilfs_btree_node_init.exit.i:                     ; preds = %for.body.i.i.nilfs_btree_node_init.exit.i_crit_edge, %nilfs_bmap_commit_alloc_ptr.exit73.i.nilfs_btree_node_init.exit.i_crit_edge
  %59 = ptrtoint ptr %dreq to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %dreq, align 8
  %61 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %44, align 4
  %63 = shl i8 %62, 3
  %64 = and i8 %63, 8
  %65 = xor i8 %64, 8
  %66 = zext i8 %65 to i32
  %add.ptr1.i.i77.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %66
  %add.ptr.i30.i.i = getelementptr i64, ptr %add.ptr1.i.i77.i, i32 %conv.i75.i
  %67 = ptrtoint ptr %bn_nchildren.i.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %bn_nchildren.i.i.i, align 2
  %69 = call i16 @llvm.bswap.i16(i16 %68) #8
  %conv.i.i.i = zext i16 %69 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %n)
  %cmp.i.i = icmp sgt i32 %conv.i.i.i, %n
  br i1 %cmp.i.i, label %if.then.i79.i, label %nilfs_btree_node_init.exit.i.nilfs_btree_node_insert.exit.i_crit_edge

nilfs_btree_node_init.exit.i.nilfs_btree_node_insert.exit.i_crit_edge: ; preds = %nilfs_btree_node_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_node_insert.exit.i

if.then.i79.i:                                    ; preds = %nilfs_btree_node_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i64, ptr %add.ptr1.i.i77.i, i32 %n
  %add.ptr3.i.i = getelementptr i64, ptr %add.ptr.i.i, i32 1
  %sub.i.i = sub i32 %conv.i.i.i, %n
  %mul.i.i = shl i32 %sub.i.i, 3
  %70 = call ptr @memmove(ptr %add.ptr3.i.i, ptr %add.ptr.i.i, i32 %mul.i.i)
  %add.ptr5.i.i = getelementptr i64, ptr %add.ptr.i30.i.i, i32 %n
  %add.ptr6.i.i = getelementptr i64, ptr %add.ptr5.i.i, i32 1
  %71 = call ptr @memmove(ptr %add.ptr6.i.i, ptr %add.ptr5.i.i, i32 %mul.i.i)
  br label %nilfs_btree_node_insert.exit.i

nilfs_btree_node_insert.exit.i:                   ; preds = %if.then.i79.i, %nilfs_btree_node_init.exit.i.nilfs_btree_node_insert.exit.i_crit_edge
  %72 = call i64 @llvm.bswap.i64(i64 %key) #8
  %arrayidx.i80.i = getelementptr i64, ptr %add.ptr1.i.i77.i, i32 %n
  %73 = ptrtoint ptr %arrayidx.i80.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %72, ptr %arrayidx.i80.i, align 8
  %74 = call i64 @llvm.bswap.i64(i64 %60) #8
  %arrayidx10.i.i = getelementptr i64, ptr %add.ptr.i30.i.i, i32 %n
  %75 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %arrayidx10.i.i, align 8
  %inc.i81.i = add i16 %69, 1
  %76 = call i16 @llvm.bswap.i16(i16 %inc.i81.i) #8
  %77 = ptrtoint ptr %bn_nchildren.i.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %bn_nchildren.i.i.i, align 2
  %78 = ptrtoint ptr %bh.1.ph to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %bh.1.ph, align 4
  %80 = and i32 %79, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i = icmp eq i32 %80, 0
  br i1 %tobool.not.i, label %if.then10.i, label %nilfs_btree_node_insert.exit.i.if.end11.i_crit_edge

nilfs_btree_node_insert.exit.i.if.end11.i_crit_edge: ; preds = %nilfs_btree_node_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then10.i:                                      ; preds = %nilfs_btree_node_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @mark_buffer_dirty(ptr noundef %bh.1.ph) #8
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %nilfs_btree_node_insert.exit.i.if.end11.i_crit_edge
  %b_state.i.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 7
  %81 = ptrtoint ptr %b_state.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %b_state.i.i, align 4
  %and.i.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool13.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %if.end11.i.if.end15.i_crit_edge

if.end11.i.if.end15.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i.i = or i32 %82, 1
  %83 = ptrtoint ptr %b_state.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %or.i.i, ptr %b_state.i.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i, %if.end11.i.if.end15.i_crit_edge
  %tobool.not.i83.i = icmp eq ptr %bh.1.ph, null
  br i1 %tobool.not.i83.i, label %if.end15.i.brelse.exit.i_crit_edge, label %if.then.i84.i

if.end15.i.brelse.exit.i_crit_edge:               ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i

if.then.i84.i:                                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %bh.1.ph) #8
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i84.i, %if.end15.i.brelse.exit.i_crit_edge
  %84 = ptrtoint ptr %ni.0 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %ni.0, align 8
  %86 = ptrtoint ptr %btree to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %btree, align 4
  %bn_level.i.i85.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 1
  %87 = ptrtoint ptr %bn_level.i.i85.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 2, ptr %bn_level.i.i85.i, align 1
  %bn_nchildren.i.i86.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 2
  %88 = ptrtoint ptr %bn_nchildren.i.i86.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 256, ptr %bn_nchildren.i.i86.i, align 2
  %add.ptr.i.i87.i = getelementptr %struct.nilfs_btree_node, ptr %btree, i32 1
  %add.ptr.i17.i88.i = getelementptr %struct.nilfs_btree_node, ptr %btree, i32 4
  %89 = call i64 @llvm.bswap.i64(i64 %85) #8
  %90 = ptrtoint ptr %keys to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %keys, align 8
  %92 = call i64 @llvm.bswap.i64(i64 %91) #8
  %93 = ptrtoint ptr %add.ptr.i.i87.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %92, ptr %add.ptr.i.i87.i, align 8
  %94 = ptrtoint ptr %add.ptr.i17.i88.i to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %89, ptr %add.ptr.i17.i88.i, align 8
  br label %if.end22.i

if.else.i:                                        ; preds = %cond.end.i
  br i1 %tobool.not.i98.i, label %if.else.i.nilfs_bmap_commit_alloc_ptr.exit100.i_crit_edge, label %if.then.i99.i

if.else.i.nilfs_bmap_commit_alloc_ptr.exit100.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_bmap_commit_alloc_ptr.exit100.i

if.then.i99.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @nilfs_dat_commit_alloc(ptr noundef nonnull %cond.i, ptr noundef nonnull %dreq) #8
  br label %nilfs_bmap_commit_alloc_ptr.exit100.i

nilfs_bmap_commit_alloc_ptr.exit100.i:            ; preds = %if.then.i99.i, %if.else.i.nilfs_bmap_commit_alloc_ptr.exit100.i_crit_edge
  %95 = ptrtoint ptr %btree to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %btree, align 4
  %bn_level.i.i101.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 1
  %96 = ptrtoint ptr %bn_level.i.i101.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %bn_level.i.i101.i, align 1
  %conv.i16.i102.i = trunc i32 %n to i16
  %97 = call i16 @llvm.bswap.i16(i16 %conv.i16.i102.i) #8
  %bn_nchildren.i.i103.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 2
  %98 = ptrtoint ptr %bn_nchildren.i.i103.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %bn_nchildren.i.i103.i, align 2
  %add.ptr.i.i104.i = getelementptr %struct.nilfs_btree_node, ptr %btree, i32 1
  %add.ptr.i17.i105.i = getelementptr %struct.nilfs_btree_node, ptr %btree, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp18.i106.i = icmp sgt i32 %n, 0
  br i1 %cmp18.i106.i, label %nilfs_bmap_commit_alloc_ptr.exit100.i.for.body.i114.i_crit_edge, label %nilfs_bmap_commit_alloc_ptr.exit100.i.nilfs_btree_node_init.exit115.i_crit_edge

nilfs_bmap_commit_alloc_ptr.exit100.i.nilfs_btree_node_init.exit115.i_crit_edge: ; preds = %nilfs_bmap_commit_alloc_ptr.exit100.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_node_init.exit115.i

nilfs_bmap_commit_alloc_ptr.exit100.i.for.body.i114.i_crit_edge: ; preds = %nilfs_bmap_commit_alloc_ptr.exit100.i
  br label %for.body.i114.i

for.body.i114.i:                                  ; preds = %for.body.i114.i.for.body.i114.i_crit_edge, %nilfs_bmap_commit_alloc_ptr.exit100.i.for.body.i114.i_crit_edge
  %i.019.i107.i = phi i32 [ %inc.i112.i, %for.body.i114.i.for.body.i114.i_crit_edge ], [ 0, %nilfs_bmap_commit_alloc_ptr.exit100.i.for.body.i114.i_crit_edge ]
  %arrayidx.i108.i = getelementptr i64, ptr %keys, i32 %i.019.i107.i
  %99 = ptrtoint ptr %arrayidx.i108.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %arrayidx.i108.i, align 8
  %101 = call i64 @llvm.bswap.i64(i64 %100) #8
  %arrayidx2.i109.i = getelementptr i64, ptr %add.ptr.i.i104.i, i32 %i.019.i107.i
  %102 = ptrtoint ptr %arrayidx2.i109.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %101, ptr %arrayidx2.i109.i, align 8
  %arrayidx3.i110.i = getelementptr i64, ptr %ptrs, i32 %i.019.i107.i
  %103 = ptrtoint ptr %arrayidx3.i110.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %arrayidx3.i110.i, align 8
  %105 = call i64 @llvm.bswap.i64(i64 %104) #8
  %arrayidx4.i111.i = getelementptr i64, ptr %add.ptr.i17.i105.i, i32 %i.019.i107.i
  %106 = ptrtoint ptr %arrayidx4.i111.i to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %105, ptr %arrayidx4.i111.i, align 8
  %inc.i112.i = add nuw nsw i32 %i.019.i107.i, 1
  %exitcond.not.i113.i = icmp eq i32 %inc.i112.i, %n
  br i1 %exitcond.not.i113.i, label %for.body.i114.i.nilfs_btree_node_init.exit115.i_crit_edge, label %for.body.i114.i.for.body.i114.i_crit_edge

for.body.i114.i.for.body.i114.i_crit_edge:        ; preds = %for.body.i114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i114.i

for.body.i114.i.nilfs_btree_node_init.exit115.i_crit_edge: ; preds = %for.body.i114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_node_init.exit115.i

nilfs_btree_node_init.exit115.i:                  ; preds = %for.body.i114.i.nilfs_btree_node_init.exit115.i_crit_edge, %nilfs_bmap_commit_alloc_ptr.exit100.i.nilfs_btree_node_init.exit115.i_crit_edge
  %107 = ptrtoint ptr %dreq to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %dreq, align 8
  %109 = ptrtoint ptr %btree to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %btree, align 4
  %111 = shl i8 %110, 3
  %112 = and i8 %111, 8
  %113 = xor i8 %112, 8
  %114 = zext i8 %113 to i32
  %add.ptr1.i.i117.i = getelementptr i8, ptr %add.ptr.i.i104.i, i32 %114
  %add.ptr.i30.i118.i = getelementptr i64, ptr %add.ptr1.i.i117.i, i32 3
  %115 = ptrtoint ptr %bn_nchildren.i.i103.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %bn_nchildren.i.i103.i, align 2
  %117 = call i16 @llvm.bswap.i16(i16 %116) #8
  %conv.i.i120.i = zext i16 %117 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i120.i, i32 %n)
  %cmp.i121.i = icmp sgt i32 %conv.i.i120.i, %n
  br i1 %cmp.i121.i, label %if.then.i128.i, label %nilfs_btree_node_init.exit115.i.nilfs_btree_node_insert.exit132.i_crit_edge

nilfs_btree_node_init.exit115.i.nilfs_btree_node_insert.exit132.i_crit_edge: ; preds = %nilfs_btree_node_init.exit115.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_node_insert.exit132.i

if.then.i128.i:                                   ; preds = %nilfs_btree_node_init.exit115.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i122.i = getelementptr i64, ptr %add.ptr1.i.i117.i, i32 %n
  %add.ptr3.i123.i = getelementptr i64, ptr %add.ptr.i122.i, i32 1
  %sub.i124.i = sub i32 %conv.i.i120.i, %n
  %mul.i125.i = shl i32 %sub.i124.i, 3
  %118 = call ptr @memmove(ptr %add.ptr3.i123.i, ptr %add.ptr.i122.i, i32 %mul.i125.i)
  %add.ptr5.i126.i = getelementptr i64, ptr %add.ptr.i30.i118.i, i32 %n
  %add.ptr6.i127.i = getelementptr i64, ptr %add.ptr5.i126.i, i32 1
  %119 = call ptr @memmove(ptr %add.ptr6.i127.i, ptr %add.ptr5.i126.i, i32 %mul.i125.i)
  br label %nilfs_btree_node_insert.exit132.i

nilfs_btree_node_insert.exit132.i:                ; preds = %if.then.i128.i, %nilfs_btree_node_init.exit115.i.nilfs_btree_node_insert.exit132.i_crit_edge
  %120 = call i64 @llvm.bswap.i64(i64 %key) #8
  %arrayidx.i129.i = getelementptr i64, ptr %add.ptr1.i.i117.i, i32 %n
  %121 = ptrtoint ptr %arrayidx.i129.i to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %120, ptr %arrayidx.i129.i, align 8
  %122 = call i64 @llvm.bswap.i64(i64 %108) #8
  %arrayidx10.i130.i = getelementptr i64, ptr %add.ptr.i30.i118.i, i32 %n
  %123 = ptrtoint ptr %arrayidx10.i130.i to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %122, ptr %arrayidx10.i130.i, align 8
  %inc.i131.i = add i16 %117, 1
  %124 = call i16 @llvm.bswap.i16(i16 %inc.i131.i) #8
  %125 = ptrtoint ptr %bn_nchildren.i.i103.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %bn_nchildren.i.i103.i, align 2
  %b_state.i133.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 7
  %126 = ptrtoint ptr %b_state.i133.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %b_state.i133.i, align 4
  %and.i134.i = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i134.i)
  %tobool19.not.i = icmp eq i32 %and.i134.i, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %nilfs_btree_node_insert.exit132.i.if.end22.i_crit_edge

nilfs_btree_node_insert.exit132.i.if.end22.i_crit_edge: ; preds = %nilfs_btree_node_insert.exit132.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then20.i:                                      ; preds = %nilfs_btree_node_insert.exit132.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i136.i = or i32 %127, 1
  %128 = ptrtoint ptr %b_state.i133.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %or.i136.i, ptr %b_state.i133.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %nilfs_btree_node_insert.exit132.i.if.end22.i_crit_edge, %brelse.exit.i
  %129 = ptrtoint ptr %b_ptr_type.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %b_ptr_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp24.i = icmp sgt i32 %130, 0
  br i1 %cmp24.i, label %if.then26.i, label %if.end22.i.nilfs_btree_commit_convert_and_insert.exit_crit_edge

if.end22.i.nilfs_btree_commit_convert_and_insert.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_commit_convert_and_insert.exit

if.then26.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %131 = ptrtoint ptr %dreq to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %dreq, align 8
  %b_last_allocated_key.i.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 4
  %133 = ptrtoint ptr %b_last_allocated_key.i.i to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %key, ptr %b_last_allocated_key.i.i, align 8
  %b_last_allocated_ptr.i.i37 = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 5
  %134 = ptrtoint ptr %b_last_allocated_ptr.i.i37 to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %132, ptr %b_last_allocated_ptr.i.i37, align 8
  br label %nilfs_btree_commit_convert_and_insert.exit

nilfs_btree_commit_convert_and_insert.exit:       ; preds = %if.then26.i, %if.end22.i.nilfs_btree_commit_convert_and_insert.exit_crit_edge
  %135 = ptrtoint ptr %b_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %b_inode.i.i.i, align 8
  call void @nilfs_inode_add_blocks(ptr noundef %136, i32 noundef %stats.sroa.0.0.ph) #8
  br label %cleanup

cleanup:                                          ; preds = %nilfs_btree_commit_convert_and_insert.exit, %if.else.i70.i, %if.then.i67.i, %nilfs_bmap_prepare_alloc_ptr.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nilfs_btree_commit_convert_and_insert.exit ], [ %call.i48.i, %nilfs_bmap_prepare_alloc_ptr.exit.i.cleanup_crit_edge ], [ %ret.0.ph.i, %if.then.i67.i ], [ -12, %if.else.i70.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %nreq) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dreq) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_inode_add_blocks(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_btree_init(ptr nocapture noundef %bmap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_ops.i = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 3
  %0 = ptrtoint ptr %b_ops.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @nilfs_btree_ops, ptr %b_ops.i, align 4
  %b_inode.i.i = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 2
  %1 = ptrtoint ptr %b_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %b_inode.i.i, align 8
  %i_blkbits.i.i.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 20
  %3 = ptrtoint ptr %i_blkbits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %i_blkbits.i.i.i, align 2
  %conv.i.i.i = zext i8 %4 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %sub1.i = add nuw i32 %shl.i.i.i, 1048560
  %div4.i = lshr i32 %sub1.i, 4
  %conv.i = trunc i32 %div4.i to i16
  %b_nchildren_per_block.i = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 8
  %5 = ptrtoint ptr %b_nchildren_per_block.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv.i, ptr %b_nchildren_per_block.i, align 8
  %bn_level.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %bmap, i32 0, i32 1
  %6 = ptrtoint ptr %bn_level.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bn_level.i.i, align 1
  %bn_nchildren.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %bmap, i32 0, i32 2
  %8 = ptrtoint ptr %bn_nchildren.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bn_nchildren.i.i, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #8
  %11 = add i8 %7, -14
  call void @__sanitizer_cov_trace_const_cmp1(i8 -13, i8 %11)
  %12 = icmp ult i8 %11, -13
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %10)
  %cmp6.i = icmp ugt i16 %10, 3
  %or.cond15.i = select i1 %12, i1 true, i1 %cmp6.i
  br i1 %or.cond15.i, label %nilfs_btree_root_broken.exit, label %entry._crit_edge, !prof !33

entry._crit_edge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %19

nilfs_btree_root_broken.exit:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i17.i = zext i16 %10 to i32
  %conv.i.i = zext i8 %7 to i32
  %13 = ptrtoint ptr %bmap to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bmap, align 4
  %conv.i16.i = zext i8 %14 to i32
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %15 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 11
  %17 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_ino.i, align 8
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %16, ptr noundef nonnull @.str.8, i32 noundef %18, i32 noundef %conv.i.i, i32 noundef %conv.i16.i, i32 noundef %conv.i17.i) #8
  br label %19

19:                                               ; preds = %nilfs_btree_root_broken.exit, %entry._crit_edge
  %20 = phi i32 [ -5, %nilfs_btree_root_broken.exit ], [ 0, %entry._crit_edge ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nilfs_btree_init_gc(ptr nocapture noundef %bmap) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_ops = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 3
  %0 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @nilfs_btree_ops_gc, ptr %b_ops, align 4
  %b_inode.i = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 2
  %1 = ptrtoint ptr %b_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %b_inode.i, align 8
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 20
  %3 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i.i = zext i8 %4 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %sub1 = add nuw i32 %shl.i.i, 1048560
  %div4 = lshr i32 %sub1, 4
  %conv = trunc i32 %div4 to i16
  %b_nchildren_per_block = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 8
  %5 = ptrtoint ptr %b_nchildren_per_block to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %b_nchildren_per_block, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nilfs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nilfs_bmap_get_dat(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nilfs_bmap_find_target_seq(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nilfs_bmap_find_target_in_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_dat_prepare_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nilfs_btnode_create_block(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_dat_abort_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_dat_commit_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_btree_lookup(ptr noundef %btree, i64 noundef %key, i32 noundef %level, ptr noundef %ptrp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nilfs_btree_path_cache to i32))
  %0 = load ptr, ptr @nilfs_btree_path_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3136) #8
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %level.021.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %arrayidx.i, align 8
  %bp_sib_bh.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 1
  %2 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bp_sib_bh.i, align 4
  %bp_index.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 2
  %3 = ptrtoint ptr %bp_index.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %bp_index.i, align 8
  %bp_oldreq.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 3
  %4 = ptrtoint ptr %bp_oldreq.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %bp_oldreq.i, align 8
  %bp_newreq.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 4
  %5 = ptrtoint ptr %bp_newreq.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %bp_newreq.i, align 8
  %bp_op.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 6
  %6 = ptrtoint ptr %bp_op.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %bp_op.i, align 8
  %inc.i = add nuw nsw i32 %level.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 14
  br i1 %exitcond.not.i, label %if.end, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call fastcc i32 @nilfs_btree_do_lookup(ptr noundef %btree, ptr noundef nonnull %call.i, i64 noundef %key, ptr noundef %ptrp, i32 noundef %level, i32 noundef 0)
  tail call fastcc void @nilfs_btree_free_path(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_btree_lookup_contig(ptr noundef %btree, i64 noundef %key, ptr nocapture noundef writeonly %ptrp, i32 noundef %maxblocks) #0 align 64 {
entry:
  %ptr = alloca i64, align 8
  %blocknr = alloca i64, align 8
  %p = alloca %struct.nilfs_btree_readahead_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ptr) #8
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %ptr, align 8, !annotation !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blocknr) #8
  %1 = ptrtoint ptr %blocknr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %blocknr, align 8, !annotation !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #8
  %2 = getelementptr inbounds %struct.nilfs_btree_readahead_info, ptr %p, i32 0, i32 1
  %3 = getelementptr inbounds %struct.nilfs_btree_readahead_info, ptr %p, i32 0, i32 2
  %4 = getelementptr inbounds %struct.nilfs_btree_readahead_info, ptr %p, i32 0, i32 3
  %5 = call ptr @memset(ptr %p, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nilfs_btree_path_cache to i32))
  %6 = load ptr, ptr @nilfs_btree_path_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %6, i32 noundef 3136) #8
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %level.021.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx.i, align 8
  %bp_sib_bh.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 1
  %8 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %bp_sib_bh.i, align 4
  %bp_index.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 2
  %9 = ptrtoint ptr %bp_index.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %bp_index.i, align 8
  %bp_oldreq.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 3
  %10 = ptrtoint ptr %bp_oldreq.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %bp_oldreq.i, align 8
  %bp_newreq.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 4
  %11 = ptrtoint ptr %bp_newreq.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %bp_newreq.i, align 8
  %bp_op.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 6
  %12 = ptrtoint ptr %bp_op.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %bp_op.i, align 8
  %inc.i = add nuw nsw i32 %level.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 14
  br i1 %exitcond.not.i, label %if.end, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end:                                           ; preds = %for.body.i
  %call1 = call fastcc i32 @nilfs_btree_do_lookup(ptr noundef %btree, ptr noundef nonnull %call.i, i64 noundef %key, ptr noundef nonnull %ptr, i32 noundef 1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end4:                                          ; preds = %if.end
  %b_ptr_type = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 6
  %13 = ptrtoint ptr %b_ptr_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %b_ptr_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp5 = icmp sgt i32 %14, 0
  br i1 %cmp5, label %if.then6, label %if.end4.if.end12_crit_edge

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then6:                                         ; preds = %if.end4
  %call7 = call ptr @nilfs_bmap_get_dat(ptr noundef %btree) #8
  %15 = ptrtoint ptr %ptr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ptr, align 8
  %call8 = call i32 @nilfs_dat_translate(ptr noundef %call7, i64 noundef %16, ptr noundef nonnull %blocknr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then6.out_crit_edge, label %if.end11

if.then6.out_crit_edge:                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end11:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %blocknr to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %blocknr, align 8
  %19 = ptrtoint ptr %ptr to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %ptr, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end4.if.end12_crit_edge
  %dat.0 = phi ptr [ %call7, %if.end11 ], [ null, %if.end4.if.end12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %maxblocks)
  %cmp13 = icmp eq i32 %maxblocks, 1
  br i1 %cmp13, label %if.end12.end_crit_edge, label %if.end15

if.end12.end_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.end15:                                         ; preds = %if.end12
  %bn_level.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 1
  %20 = ptrtoint ptr %bn_level.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bn_level.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp.i157 = icmp eq i8 %21, 1
  br i1 %cmp.i157, label %if.end15.nilfs_btree_get_node.exit_crit_edge, label %if.else.i

if.end15.nilfs_btree_get_node.exit_crit_edge:     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_get_node.exit

if.else.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 1
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 8
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_data.i.i, align 4
  %b_nchildren_per_block.i.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 8
  %26 = ptrtoint ptr %b_nchildren_per_block.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %b_nchildren_per_block.i.i, align 8
  %conv.i.i158 = zext i16 %27 to i32
  br label %nilfs_btree_get_node.exit

nilfs_btree_get_node.exit:                        ; preds = %if.else.i, %if.end15.nilfs_btree_get_node.exit_crit_edge
  %storemerge.i = phi i32 [ %conv.i.i158, %if.else.i ], [ 3, %if.end15.nilfs_btree_get_node.exit_crit_edge ]
  %node.0.i = phi ptr [ %25, %if.else.i ], [ %btree, %if.end15.nilfs_btree_get_node.exit_crit_edge ]
  %arrayidx = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 1
  %bp_index = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 1, i32 2
  %28 = ptrtoint ptr %bp_index to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bp_index, align 8
  %add = add i32 %29, 1
  %tobool.not = icmp eq ptr %dat.0, null
  %arrayidx.i.i164 = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 2
  %b_nchildren_per_block.i.i166 = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 8
  %bp_index53 = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 2, i32 2
  br label %for.cond

for.cond:                                         ; preds = %if.end88, %nilfs_btree_get_node.exit
  %ncmax.0 = phi i32 [ %storemerge.i, %nilfs_btree_get_node.exit ], [ %conv.i182, %if.end88 ]
  %node.0 = phi ptr [ %node.0.i, %nilfs_btree_get_node.exit ], [ %88, %if.end88 ]
  %cnt.0 = phi i32 [ 1, %nilfs_btree_get_node.exit ], [ %cnt.1.lcssa, %if.end88 ]
  %index.0 = phi i32 [ %add, %nilfs_btree_get_node.exit ], [ 0, %if.end88 ]
  %bn_nchildren.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %node.0, i32 0, i32 2
  %30 = ptrtoint ptr %bn_nchildren.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %bn_nchildren.i, align 2
  %32 = call i16 @llvm.bswap.i16(i16 %31) #8
  %conv.i188 = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0, i32 %conv.i188)
  %cmp19189 = icmp slt i32 %index.0, %conv.i188
  br i1 %cmp19189, label %while.body.lr.ph, label %for.cond.while.end_crit_edge

for.cond.while.end_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %for.cond
  %add.ptr.i.i = getelementptr %struct.nilfs_btree_node, ptr %node.0, i32 1
  br label %while.body

while.cond:                                       ; preds = %lor.lhs.false
  %inc42 = add nsw i32 %index.1191, 1
  %33 = ptrtoint ptr %bn_nchildren.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %bn_nchildren.i, align 2
  %35 = call i16 @llvm.bswap.i16(i16 %34) #8
  %conv.i = zext i16 %35 to i32
  %cmp19 = icmp slt i32 %inc42, %conv.i
  br i1 %cmp19, label %while.cond.while.body_crit_edge, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %index.1191 = phi i32 [ %index.0, %while.body.lr.ph ], [ %inc42, %while.cond.while.body_crit_edge ]
  %cnt.1190 = phi i32 [ %cnt.0, %while.body.lr.ph ], [ %inc, %while.cond.while.body_crit_edge ]
  %36 = ptrtoint ptr %node.0 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %node.0, align 4
  %38 = shl i8 %37, 3
  %39 = and i8 %38, 8
  %40 = xor i8 %39, 8
  %41 = zext i8 %40 to i32
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %41
  %add.ptr.i = getelementptr i64, ptr %add.ptr1.i.i, i32 %index.1191
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %add.ptr.i, align 8
  %44 = call i64 @llvm.bswap.i64(i64 %43) #8
  %conv = sext i32 %cnt.1190 to i64
  %add21 = add i64 %conv, %key
  call void @__sanitizer_cov_trace_cmp8(i64 %44, i64 %add21)
  %cmp22.not = icmp eq i64 %44, %add21
  br i1 %cmp22.not, label %if.end25, label %while.body.end_crit_edge

while.body.end_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.end25:                                         ; preds = %while.body
  %add.ptr.i.i159 = getelementptr i64, ptr %add.ptr1.i.i, i32 %ncmax.0
  %add.ptr.i160 = getelementptr i64, ptr %add.ptr.i.i159, i32 %index.1191
  %45 = ptrtoint ptr %add.ptr.i160 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %add.ptr.i160, align 8
  %47 = call i64 @llvm.bswap.i64(i64 %46) #8
  br i1 %tobool.not, label %if.end25.if.end33_crit_edge, label %if.then27

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then27:                                        ; preds = %if.end25
  %call28 = call i32 @nilfs_dat_translate(ptr noundef nonnull %dat.0, i64 noundef %47, ptr noundef nonnull %blocknr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then27.out_crit_edge, label %if.end32

if.then27.out_crit_edge:                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end32:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %blocknr to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %blocknr, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end25.if.end33_crit_edge
  %ptr2.0 = phi i64 [ %49, %if.end32 ], [ %47, %if.end25.if.end33_crit_edge ]
  %50 = ptrtoint ptr %ptr to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %ptr, align 8
  %add35 = add i64 %51, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %ptr2.0, i64 %add35)
  %cmp36.not = icmp eq i64 %ptr2.0, %add35
  br i1 %cmp36.not, label %lor.lhs.false, label %if.end33.end_crit_edge

if.end33.end_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

lor.lhs.false:                                    ; preds = %if.end33
  %inc = add i32 %cnt.1190, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %maxblocks)
  %cmp38 = icmp eq i32 %inc, %maxblocks
  br i1 %cmp38, label %lor.lhs.false.end_crit_edge, label %while.cond

lor.lhs.false.end_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %for.cond.while.end_crit_edge
  %cnt.1.lcssa = phi i32 [ %cnt.0, %for.cond.while.end_crit_edge ], [ %inc, %while.cond.while.end_crit_edge ]
  br i1 %cmp.i157, label %while.end.end_crit_edge, label %if.end46

while.end.end_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.end46:                                         ; preds = %while.end
  %52 = ptrtoint ptr %bn_level.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bn_level.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %53)
  %cmp.i163 = icmp eq i8 %53, 2
  br i1 %cmp.i163, label %if.end46.nilfs_btree_get_node.exit171_crit_edge, label %if.else.i168

if.end46.nilfs_btree_get_node.exit171_crit_edge:  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_get_node.exit171

if.else.i168:                                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %arrayidx.i.i164 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.i164, align 8
  %b_data.i.i165 = getelementptr inbounds %struct.buffer_head, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %b_data.i.i165 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %b_data.i.i165, align 4
  %58 = ptrtoint ptr %b_nchildren_per_block.i.i166 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %b_nchildren_per_block.i.i166, align 8
  %conv.i.i167 = zext i16 %59 to i32
  br label %nilfs_btree_get_node.exit171

nilfs_btree_get_node.exit171:                     ; preds = %if.else.i168, %if.end46.nilfs_btree_get_node.exit171_crit_edge
  %storemerge.i169 = phi i32 [ %conv.i.i167, %if.else.i168 ], [ 3, %if.end46.nilfs_btree_get_node.exit171_crit_edge ]
  %node.0.i170 = phi ptr [ %57, %if.else.i168 ], [ %btree, %if.end46.nilfs_btree_get_node.exit171_crit_edge ]
  %60 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %storemerge.i169, ptr %4, align 4
  %61 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %node.0.i170, ptr %p, align 4
  %62 = ptrtoint ptr %bp_index53 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bp_index53, align 8
  %add54 = add i32 %63, 1
  %64 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add54, ptr %3, align 4
  %65 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 7, ptr %2, align 4
  %bn_nchildren.i172 = getelementptr inbounds %struct.nilfs_btree_node, ptr %node.0.i170, i32 0, i32 2
  %66 = ptrtoint ptr %bn_nchildren.i172 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %bn_nchildren.i172, align 2
  %68 = call i16 @llvm.bswap.i16(i16 %67) #8
  %conv.i173 = zext i16 %68 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add54, i32 %conv.i173)
  %cmp59.not = icmp slt i32 %add54, %conv.i173
  br i1 %cmp59.not, label %lor.lhs.false61, label %nilfs_btree_get_node.exit171.end_crit_edge

nilfs_btree_get_node.exit171.end_crit_edge:       ; preds = %nilfs_btree_get_node.exit171
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

lor.lhs.false61:                                  ; preds = %nilfs_btree_get_node.exit171
  %add.ptr.i.i174 = getelementptr %struct.nilfs_btree_node, ptr %node.0.i170, i32 1
  %69 = ptrtoint ptr %node.0.i170 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %node.0.i170, align 4
  %71 = shl i8 %70, 3
  %72 = and i8 %71, 8
  %73 = xor i8 %72, 8
  %74 = zext i8 %73 to i32
  %add.ptr1.i.i175 = getelementptr i8, ptr %add.ptr.i.i174, i32 %74
  %add.ptr.i176 = getelementptr i64, ptr %add.ptr1.i.i175, i32 %add54
  %75 = ptrtoint ptr %add.ptr.i176 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %add.ptr.i176, align 8
  %77 = call i64 @llvm.bswap.i64(i64 %76) #8
  %conv65 = sext i32 %cnt.1.lcssa to i64
  %add66 = add i64 %conv65, %key
  call void @__sanitizer_cov_trace_cmp8(i64 %77, i64 %add66)
  %cmp67.not = icmp eq i64 %77, %add66
  br i1 %cmp67.not, label %if.end70, label %lor.lhs.false61.end_crit_edge

lor.lhs.false61.end_crit_edge:                    ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.end70:                                         ; preds = %lor.lhs.false61
  %add.ptr.i.i179 = getelementptr i64, ptr %add.ptr1.i.i175, i32 %storemerge.i169
  %add.ptr.i180 = getelementptr i64, ptr %add.ptr.i.i179, i32 %add54
  %78 = ptrtoint ptr %add.ptr.i180 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %add.ptr.i180, align 8
  %80 = call i64 @llvm.bswap.i64(i64 %79) #8
  %81 = ptrtoint ptr %bp_index53 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add54, ptr %bp_index53, align 8
  %82 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx, align 8
  %tobool.not.i = icmp eq ptr %83, null
  br i1 %tobool.not.i, label %if.end70.brelse.exit_crit_edge, label %if.then.i

if.end70.brelse.exit_crit_edge:                   ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %83) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end70.brelse.exit_crit_edge
  %84 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %arrayidx, align 8
  %call84 = call fastcc i32 @__nilfs_btree_get_block(ptr noundef %btree, i64 noundef %80, ptr noundef %arrayidx, ptr noundef nonnull %p)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %brelse.exit.out_crit_edge, label %if.end88

brelse.exit.out_crit_edge:                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end88:                                         ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx, align 8
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %b_data.i, align 4
  %89 = ptrtoint ptr %b_nchildren_per_block.i.i166 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %b_nchildren_per_block.i.i166, align 8
  %conv.i182 = zext i16 %90 to i32
  %91 = ptrtoint ptr %bp_index to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %bp_index, align 8
  br label %for.cond

end:                                              ; preds = %lor.lhs.false61.end_crit_edge, %nilfs_btree_get_node.exit171.end_crit_edge, %while.end.end_crit_edge, %lor.lhs.false.end_crit_edge, %if.end33.end_crit_edge, %while.body.end_crit_edge, %if.end12.end_crit_edge
  %cnt.2 = phi i32 [ 1, %if.end12.end_crit_edge ], [ %maxblocks, %lor.lhs.false.end_crit_edge ], [ %cnt.1190, %if.end33.end_crit_edge ], [ %cnt.1190, %while.body.end_crit_edge ], [ %cnt.1.lcssa, %nilfs_btree_get_node.exit171.end_crit_edge ], [ %cnt.1.lcssa, %lor.lhs.false61.end_crit_edge ], [ %cnt.1.lcssa, %while.end.end_crit_edge ]
  %92 = ptrtoint ptr %ptr to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %ptr, align 8
  %94 = ptrtoint ptr %ptrp to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %93, ptr %ptrp, align 8
  br label %out

out:                                              ; preds = %end, %brelse.exit.out_crit_edge, %if.then27.out_crit_edge, %if.then6.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.out_crit_edge ], [ %call8, %if.then6.out_crit_edge ], [ %cnt.2, %end ], [ %call28, %if.then27.out_crit_edge ], [ %call84, %brelse.exit.out_crit_edge ]
  call fastcc void @nilfs_btree_free_path(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blocknr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ptr) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_btree_insert(ptr noundef %btree, i64 noundef %key, i64 noundef %ptr) #0 align 64 {
entry:
  %key.addr.i = alloca i64, align 8
  %ptr.addr.i = alloca i64, align 8
  %bh.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nilfs_btree_path_cache to i32))
  %0 = load ptr, ptr @nilfs_btree_path_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3136) #8
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %level.021.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %arrayidx.i, align 8
  %bp_sib_bh.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 1
  %2 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bp_sib_bh.i, align 4
  %bp_index.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 2
  %3 = ptrtoint ptr %bp_index.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %bp_index.i, align 8
  %bp_oldreq.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 3
  %4 = ptrtoint ptr %bp_oldreq.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %bp_oldreq.i, align 8
  %bp_newreq.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 4
  %5 = ptrtoint ptr %bp_newreq.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %bp_newreq.i, align 8
  %bp_op.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 6
  %6 = ptrtoint ptr %bp_op.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %bp_op.i, align 8
  %inc.i = add nuw nsw i32 %level.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 14
  br i1 %exitcond.not.i, label %if.end, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end:                                           ; preds = %for.body.i
  %call1 = tail call fastcc i32 @nilfs_btree_do_lookup(ptr noundef %btree, ptr noundef nonnull %call.i, i64 noundef %key, ptr noundef null, i32 noundef 1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, -2
  br i1 %cmp2.not, label %if.end7, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp4 = icmp eq i32 %call1, 0
  %spec.store.select = select i1 %cmp4, i32 -17, i32 %call1
  br label %out

if.end7:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i) #8
  %7 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh.i, align 4, !annotation !34
  %b_ptr_type.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 6
  %8 = ptrtoint ptr %b_ptr_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %b_ptr_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i28 = icmp sgt i32 %9, 0
  br i1 %cmp.i28, label %if.then.i, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %bp_newreq385.i = getelementptr inbounds %struct.nilfs_btree_path, ptr %call.i, i32 0, i32 4
  br label %nilfs_bmap_prepare_alloc_ptr.exit.thread.i

if.then.i:                                        ; preds = %if.end7
  %call.i.i = tail call i64 @nilfs_bmap_find_target_seq(ptr noundef %btree, i64 noundef %key) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i)
  %cmp.not.i.i = icmp eq i64 %call.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i.i.i:                                     ; preds = %if.then.i
  %bp_index.i.i.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 1, i32 2
  %10 = ptrtoint ptr %bp_index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bp_index.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1.i.i.i = icmp sgt i32 %11, 0
  %bn_level.i.i.i.i.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 1
  %12 = ptrtoint ptr %bn_level.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bn_level.i.i.i.i.i.i, align 1
  br i1 %cmp1.i.i.i, label %if.then2.i.i.i, label %if.end6.i.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp.i.i.i.i = icmp eq i8 %13, 1
  br i1 %cmp.i.i.i.i, label %if.then2.i.i.i.nilfs_btree_get_node.exit.i.i.i_crit_edge, label %if.else.i.i.i.i

if.then2.i.i.i.nilfs_btree_get_node.exit.i.i.i_crit_edge: ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_get_node.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i.i.i.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 1
  %14 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i.i.i.i, align 8
  %b_data.i.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %b_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data.i.i.i.i.i, align 4
  %b_nchildren_per_block.i.i.i.i.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 8
  %18 = ptrtoint ptr %b_nchildren_per_block.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %b_nchildren_per_block.i.i.i.i.i, align 8
  %conv.i.i.i.i.i = zext i16 %19 to i32
  br label %nilfs_btree_get_node.exit.i.i.i

nilfs_btree_get_node.exit.i.i.i:                  ; preds = %if.else.i.i.i.i, %if.then2.i.i.i.nilfs_btree_get_node.exit.i.i.i_crit_edge
  %storemerge.i.i.i.i = phi i32 [ %conv.i.i.i.i.i, %if.else.i.i.i.i ], [ 3, %if.then2.i.i.i.nilfs_btree_get_node.exit.i.i.i_crit_edge ]
  %node.0.i.i.i.i = phi ptr [ %17, %if.else.i.i.i.i ], [ %btree, %if.then2.i.i.i.nilfs_btree_get_node.exit.i.i.i_crit_edge ]
  %sub.i.i.i = add nsw i32 %11, -1
  br label %nilfs_btree_find_near.exit.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp9.i.i.i = icmp ugt i8 %13, 1
  br i1 %cmp9.i.i.i, label %if.then10.i.i.i, label %if.end6.i.i.i.if.end4.i.i_crit_edge

if.end6.i.i.i.if.end4.i.i_crit_edge:              ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i

if.then10.i.i.i:                                  ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp.i34.i.i.i = icmp eq i8 %13, 2
  br i1 %cmp.i34.i.i.i, label %if.then10.i.i.i.nilfs_btree_get_node.exit42.i.i.i_crit_edge, label %if.else.i39.i.i.i

if.then10.i.i.i.nilfs_btree_get_node.exit42.i.i.i_crit_edge: ; preds = %if.then10.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_get_node.exit42.i.i.i

if.else.i39.i.i.i:                                ; preds = %if.then10.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i35.i.i.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 2
  %20 = ptrtoint ptr %arrayidx.i.i35.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i35.i.i.i, align 8
  %b_data.i.i36.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %b_data.i.i36.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data.i.i36.i.i.i, align 4
  %b_nchildren_per_block.i.i37.i.i.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 8
  %24 = ptrtoint ptr %b_nchildren_per_block.i.i37.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %b_nchildren_per_block.i.i37.i.i.i, align 8
  %conv.i.i38.i.i.i = zext i16 %25 to i32
  br label %nilfs_btree_get_node.exit42.i.i.i

nilfs_btree_get_node.exit42.i.i.i:                ; preds = %if.else.i39.i.i.i, %if.then10.i.i.i.nilfs_btree_get_node.exit42.i.i.i_crit_edge
  %storemerge.i40.i.i.i = phi i32 [ %conv.i.i38.i.i.i, %if.else.i39.i.i.i ], [ 3, %if.then10.i.i.i.nilfs_btree_get_node.exit42.i.i.i_crit_edge ]
  %node.0.i41.i.i.i = phi ptr [ %23, %if.else.i39.i.i.i ], [ %btree, %if.then10.i.i.i.nilfs_btree_get_node.exit42.i.i.i_crit_edge ]
  %bp_index13.i.i.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 2, i32 2
  %26 = ptrtoint ptr %bp_index13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bp_index13.i.i.i, align 8
  br label %nilfs_btree_find_near.exit.i.i

nilfs_btree_find_near.exit.i.i:                   ; preds = %nilfs_btree_get_node.exit42.i.i.i, %nilfs_btree_get_node.exit.i.i.i
  %node.0.i41.sink53.i.i.i = phi ptr [ %node.0.i41.i.i.i, %nilfs_btree_get_node.exit42.i.i.i ], [ %node.0.i.i.i.i, %nilfs_btree_get_node.exit.i.i.i ]
  %storemerge.i40.sink.i.i.i = phi i32 [ %storemerge.i40.i.i.i, %nilfs_btree_get_node.exit42.i.i.i ], [ %storemerge.i.i.i.i, %nilfs_btree_get_node.exit.i.i.i ]
  %.sink.i.i.i = phi i32 [ %27, %nilfs_btree_get_node.exit42.i.i.i ], [ %sub.i.i.i, %nilfs_btree_get_node.exit.i.i.i ]
  %add.ptr.i.i.i43.i.i.i = getelementptr %struct.nilfs_btree_node, ptr %node.0.i41.sink53.i.i.i, i32 1
  %28 = ptrtoint ptr %node.0.i41.sink53.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %node.0.i41.sink53.i.i.i, align 4
  %30 = shl i8 %29, 3
  %31 = and i8 %30, 8
  %32 = xor i8 %31, 8
  %33 = zext i8 %32 to i32
  %add.ptr1.i.i.i44.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i43.i.i.i, i32 %33
  %add.ptr.i.i45.i.i.i = getelementptr i64, ptr %add.ptr1.i.i.i44.i.i.i, i32 %storemerge.i40.sink.i.i.i
  %add.ptr.i46.i.i.i = getelementptr i64, ptr %add.ptr.i.i45.i.i.i, i32 %.sink.i.i.i
  %34 = ptrtoint ptr %add.ptr.i46.i.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %add.ptr.i46.i.i.i, align 8
  %36 = tail call i64 @llvm.bswap.i64(i64 %35) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %cmp2.not.i.i = icmp eq i64 %35, 0
  br i1 %cmp2.not.i.i, label %nilfs_btree_find_near.exit.i.i.if.end4.i.i_crit_edge, label %nilfs_btree_find_near.exit.i.i.if.end.i_crit_edge

nilfs_btree_find_near.exit.i.i.if.end.i_crit_edge: ; preds = %nilfs_btree_find_near.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

nilfs_btree_find_near.exit.i.i.if.end4.i.i_crit_edge: ; preds = %nilfs_btree_find_near.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %nilfs_btree_find_near.exit.i.i.if.end4.i.i_crit_edge, %if.end6.i.i.i.if.end4.i.i_crit_edge
  %call5.i.i = tail call i64 @nilfs_bmap_find_target_in_group(ptr noundef %btree) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.end4.i.i, %nilfs_btree_find_near.exit.i.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %retval.0.i.i = phi i64 [ %call5.i.i, %if.end4.i.i ], [ %call.i.i, %if.then.i.if.end.i_crit_edge ], [ %36, %nilfs_btree_find_near.exit.i.i.if.end.i_crit_edge ]
  %bp_newreq.i29 = getelementptr inbounds %struct.nilfs_btree_path, ptr %call.i, i32 0, i32 4
  %37 = ptrtoint ptr %bp_newreq.i29 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %retval.0.i.i, ptr %bp_newreq.i29, align 8
  %call1.i = tail call ptr @nilfs_bmap_get_dat(ptr noundef %btree) #8
  %tobool.not.i.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i.i, label %if.end.i.nilfs_bmap_prepare_alloc_ptr.exit.thread.i_crit_edge, label %nilfs_bmap_prepare_alloc_ptr.exit.i

if.end.i.nilfs_bmap_prepare_alloc_ptr.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_bmap_prepare_alloc_ptr.exit.thread.i

nilfs_bmap_prepare_alloc_ptr.exit.thread.i:       ; preds = %if.end.i.nilfs_bmap_prepare_alloc_ptr.exit.thread.i_crit_edge, %if.end.thread.i
  %bp_newreq393.i = phi ptr [ %bp_newreq385.i, %if.end.thread.i ], [ %bp_newreq.i29, %if.end.i.nilfs_bmap_prepare_alloc_ptr.exit.thread.i_crit_edge ]
  %b_last_allocated_ptr.i.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 5
  %38 = ptrtoint ptr %b_last_allocated_ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %b_last_allocated_ptr.i.i, align 8
  %inc.i.i = add i64 %39, 1
  store i64 %inc.i.i, ptr %b_last_allocated_ptr.i.i, align 8
  %40 = ptrtoint ptr %bp_newreq393.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %bp_newreq393.i, align 8
  br label %if.end7.i

nilfs_bmap_prepare_alloc_ptr.exit.i:              ; preds = %if.end.i
  %call.i1.i = tail call i32 @nilfs_dat_prepare_alloc(ptr noundef nonnull %call1.i, ptr noundef %bp_newreq.i29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %cmp5.i = icmp slt i32 %call.i1.i, 0
  br i1 %cmp5.i, label %nilfs_btree_prepare_insert.exit.thread, label %nilfs_bmap_prepare_alloc_ptr.exit.i.if.end7.i_crit_edge

nilfs_bmap_prepare_alloc_ptr.exit.i.if.end7.i_crit_edge: ; preds = %nilfs_bmap_prepare_alloc_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

nilfs_btree_prepare_insert.exit.thread:           ; preds = %nilfs_bmap_prepare_alloc_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #8
  br label %out

if.end7.i:                                        ; preds = %nilfs_bmap_prepare_alloc_ptr.exit.i.if.end7.i_crit_edge, %nilfs_bmap_prepare_alloc_ptr.exit.thread.i
  %retval.0.i3104.i = phi i32 [ 0, %nilfs_bmap_prepare_alloc_ptr.exit.thread.i ], [ %call.i1.i, %nilfs_bmap_prepare_alloc_ptr.exit.i.if.end7.i_crit_edge ]
  %dat.087103.i = phi ptr [ null, %nilfs_bmap_prepare_alloc_ptr.exit.thread.i ], [ %call1.i, %nilfs_bmap_prepare_alloc_ptr.exit.i.if.end7.i_crit_edge ]
  %tobool.not.i94102.i = phi i1 [ true, %nilfs_bmap_prepare_alloc_ptr.exit.thread.i ], [ false, %nilfs_bmap_prepare_alloc_ptr.exit.i.if.end7.i_crit_edge ]
  %b_nchildren_per_block.i.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 8
  %41 = ptrtoint ptr %b_nchildren_per_block.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %b_nchildren_per_block.i.i, align 8
  %bn_level.i.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 1
  %43 = ptrtoint ptr %bn_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bn_level.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp10129.i = icmp ugt i8 %44, 1
  br i1 %cmp10129.i, label %for.body.lr.ph.i, label %if.end7.i.for.end.i_crit_edge

if.end7.i.for.end.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end7.i
  %b_last_allocated_ptr.i29.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 5
  %i_btnode_cache.i.i = getelementptr i8, ptr %btree, i32 216
  %arrayidx.i.i80 = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 1
  %45 = ptrtoint ptr %arrayidx.i.i80 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i.i80, align 8
  %b_data.i.i81 = getelementptr inbounds %struct.buffer_head, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %b_data.i.i81 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %b_data.i.i81, align 4
  %bn_nchildren.i.i82 = getelementptr inbounds %struct.nilfs_btree_node, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %bn_nchildren.i.i82 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %bn_nchildren.i.i82, align 2
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #8
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %42)
  %cmp13.i83 = icmp ult i16 %51, %42
  br i1 %cmp13.i83, label %for.body.lr.ph.i.nilfs_btree_prepare_insert.exit.thread52_crit_edge, label %if.end17.i.preheader

for.body.lr.ph.i.nilfs_btree_prepare_insert.exit.thread52_crit_edge: ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_prepare_insert.exit.thread52

if.end17.i.preheader:                             ; preds = %for.body.lr.ph.i
  %conv.i.i128.i = zext i8 %44 to i32
  br label %if.end17.i

for.body.i30:                                     ; preds = %if.end79.i
  %arrayidx.i.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %add.i
  %52 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i.i, align 8
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %b_data.i.i, align 4
  %bn_nchildren.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %bn_nchildren.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %bn_nchildren.i.i, align 2
  %58 = tail call i16 @llvm.bswap.i16(i16 %57) #8
  %cmp13.i = icmp ult i16 %58, %42
  br i1 %cmp13.i, label %for.body.i30.nilfs_btree_prepare_insert.exit.thread52_crit_edge, label %for.body.i30.if.end17.i_crit_edge

for.body.i30.if.end17.i_crit_edge:                ; preds = %for.body.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

for.body.i30.nilfs_btree_prepare_insert.exit.thread52_crit_edge: ; preds = %for.body.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_prepare_insert.exit.thread52

if.end17.i:                                       ; preds = %for.body.i30.if.end17.i_crit_edge, %if.end17.i.preheader
  %level.0130.i87 = phi i32 [ %add.i, %for.body.i30.if.end17.i_crit_edge ], [ 1, %if.end17.i.preheader ]
  %conv.i.i132.i86 = phi i32 [ %conv.i.i.i, %for.body.i30.if.end17.i_crit_edge ], [ %conv.i.i128.i, %if.end17.i.preheader ]
  %stats.sroa.0.084 = phi i32 [ %inc81.i, %for.body.i30.if.end17.i_crit_edge ], [ 0, %if.end17.i.preheader ]
  %add.i = add nuw nsw i32 %level.0130.i87, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i.i132.i86)
  %cmp.i.i = icmp eq i32 %add.i, %conv.i.i132.i86
  br i1 %cmp.i.i, label %if.end17.i.nilfs_btree_get_node.exit.i_crit_edge, label %if.else.i.i

if.end17.i.nilfs_btree_get_node.exit.i_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_get_node.exit.i

if.else.i.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %add.i
  %59 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i.i.i, align 8
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %b_data.i.i.i, align 4
  %63 = ptrtoint ptr %b_nchildren_per_block.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %b_nchildren_per_block.i.i, align 8
  %conv.i.i5.i = zext i16 %64 to i32
  br label %nilfs_btree_get_node.exit.i

nilfs_btree_get_node.exit.i:                      ; preds = %if.else.i.i, %if.end17.i.nilfs_btree_get_node.exit.i_crit_edge
  %storemerge.i.i = phi i32 [ %conv.i.i5.i, %if.else.i.i ], [ 3, %if.end17.i.nilfs_btree_get_node.exit.i_crit_edge ]
  %node.0.i.i = phi ptr [ %62, %if.else.i.i ], [ %btree, %if.end17.i.nilfs_btree_get_node.exit.i_crit_edge ]
  %bp_index.i31 = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %add.i, i32 2
  %65 = ptrtoint ptr %bp_index.i31 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bp_index.i31, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp21.i = icmp sgt i32 %66, 0
  br i1 %cmp21.i, label %if.then22.i, label %nilfs_btree_get_node.exit.i.if.end38.i_crit_edge

nilfs_btree_get_node.exit.i.if.end38.i_crit_edge: ; preds = %nilfs_btree_get_node.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.then22.i:                                      ; preds = %nilfs_btree_get_node.exit.i
  %sub23.i = add nsw i32 %66, -1
  %add.ptr.i.i.i.i = getelementptr %struct.nilfs_btree_node, ptr %node.0.i.i, i32 1
  %67 = ptrtoint ptr %node.0.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %node.0.i.i, align 4
  %69 = shl i8 %68, 3
  %70 = and i8 %69, 8
  %71 = xor i8 %70, 8
  %72 = zext i8 %71 to i32
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %72
  %add.ptr.i.i.i = getelementptr i64, ptr %add.ptr1.i.i.i.i, i32 %storemerge.i.i
  %add.ptr.i.i = getelementptr i64, ptr %add.ptr.i.i.i, i32 %sub23.i
  %73 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %add.ptr.i.i, align 8
  %75 = tail call i64 @llvm.bswap.i64(i64 %74) #8
  %call.i7.i = call fastcc i32 @__nilfs_btree_get_block(ptr noundef %btree, i64 noundef %75, ptr noundef nonnull %bh.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %cmp26.i = icmp slt i32 %call.i7.i, 0
  br i1 %cmp26.i, label %if.then22.i.err_out_child_node.i_crit_edge, label %if.end28.i

if.then22.i.err_out_child_node.i_crit_edge:       ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_child_node.i

if.end28.i:                                       ; preds = %if.then22.i
  %76 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bh.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %b_data.i, align 4
  %bn_nchildren.i8.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %bn_nchildren.i8.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %bn_nchildren.i8.i, align 2
  %82 = tail call i16 @llvm.bswap.i16(i16 %81) #8
  call void @__sanitizer_cov_trace_cmp2(i16 %82, i16 %42)
  %cmp30.i = icmp ult i16 %82, %42
  br i1 %cmp30.i, label %if.then31.i, label %if.else.i

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %bp_sib_bh.i32 = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.0130.i87, i32 1
  %83 = ptrtoint ptr %bp_sib_bh.i32 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %77, ptr %bp_sib_bh.i32, align 4
  br label %nilfs_btree_prepare_insert.exit.thread52

if.else.i:                                        ; preds = %if.end28.i
  %tobool.not.i10.i = icmp eq ptr %77, null
  br i1 %tobool.not.i10.i, label %if.else.i.if.end38.i_crit_edge, label %if.then.i11.i

if.else.i.if.end38.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.then.i11.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %77) #8
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then.i11.i, %if.else.i.if.end38.i_crit_edge, %nilfs_btree_get_node.exit.i.if.end38.i_crit_edge
  %bn_nchildren.i13.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %node.0.i.i, i32 0, i32 2
  %84 = ptrtoint ptr %bn_nchildren.i13.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %bn_nchildren.i13.i, align 2
  %86 = tail call i16 @llvm.bswap.i16(i16 %85) #8
  %conv.i14.i = zext i16 %86 to i32
  %sub40.i = add nsw i32 %conv.i14.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %sub40.i)
  %cmp41.i = icmp slt i32 %66, %sub40.i
  br i1 %cmp41.i, label %if.then42.i, label %if.end38.i.if.end61.i_crit_edge

if.end38.i.if.end61.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61.i

if.then42.i:                                      ; preds = %if.end38.i
  %add43.i = add nsw i32 %66, 1
  %add.ptr.i.i.i15.i = getelementptr %struct.nilfs_btree_node, ptr %node.0.i.i, i32 1
  %87 = ptrtoint ptr %node.0.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %node.0.i.i, align 4
  %89 = shl i8 %88, 3
  %90 = and i8 %89, 8
  %91 = xor i8 %90, 8
  %92 = zext i8 %91 to i32
  %add.ptr1.i.i.i16.i = getelementptr i8, ptr %add.ptr.i.i.i15.i, i32 %92
  %add.ptr.i.i17.i = getelementptr i64, ptr %add.ptr1.i.i.i16.i, i32 %storemerge.i.i
  %add.ptr.i18.i = getelementptr i64, ptr %add.ptr.i.i17.i, i32 %add43.i
  %93 = ptrtoint ptr %add.ptr.i18.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %add.ptr.i18.i, align 8
  %95 = tail call i64 @llvm.bswap.i64(i64 %94) #8
  %call.i19.i = call fastcc i32 @__nilfs_btree_get_block(ptr noundef %btree, i64 noundef %95, ptr noundef nonnull %bh.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i)
  %cmp46.i = icmp slt i32 %call.i19.i, 0
  br i1 %cmp46.i, label %if.then42.i.err_out_child_node.i_crit_edge, label %if.end48.i

if.then42.i.err_out_child_node.i_crit_edge:       ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_child_node.i

if.end48.i:                                       ; preds = %if.then42.i
  %96 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bh.i, align 4
  %b_data49.i = getelementptr inbounds %struct.buffer_head, ptr %97, i32 0, i32 5
  %98 = ptrtoint ptr %b_data49.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %b_data49.i, align 4
  %bn_nchildren.i20.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %bn_nchildren.i20.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %bn_nchildren.i20.i, align 2
  %102 = tail call i16 @llvm.bswap.i16(i16 %101) #8
  call void @__sanitizer_cov_trace_cmp2(i16 %102, i16 %42)
  %cmp51.i = icmp ult i16 %102, %42
  br i1 %cmp51.i, label %if.then52.i, label %if.else59.i

if.then52.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  %bp_sib_bh54.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.0130.i87, i32 1
  %103 = ptrtoint ptr %bp_sib_bh54.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %97, ptr %bp_sib_bh54.i, align 4
  br label %nilfs_btree_prepare_insert.exit.thread52

if.else59.i:                                      ; preds = %if.end48.i
  %tobool.not.i22.i = icmp eq ptr %97, null
  br i1 %tobool.not.i22.i, label %if.else59.i.if.end61.i_crit_edge, label %if.then.i23.i

if.else59.i.if.end61.i_crit_edge:                 ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61.i

if.then.i23.i:                                    ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %97) #8
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then.i23.i, %if.else59.i.if.end61.i_crit_edge, %if.end38.i.if.end61.i_crit_edge
  %sub62.i = add nsw i32 %level.0130.i87, -1
  %bp_newreq64.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %sub62.i, i32 4
  %104 = ptrtoint ptr %bp_newreq64.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %bp_newreq64.i, align 8
  %add65.i = add i64 %105, 1
  %bp_newreq67.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.0130.i87, i32 4
  %106 = ptrtoint ptr %bp_newreq67.i to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %add65.i, ptr %bp_newreq67.i, align 8
  br i1 %tobool.not.i94102.i, label %nilfs_bmap_prepare_alloc_ptr.exit33.thread.i, label %nilfs_bmap_prepare_alloc_ptr.exit33.i

nilfs_bmap_prepare_alloc_ptr.exit33.thread.i:     ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %b_last_allocated_ptr.i29.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %b_last_allocated_ptr.i29.i, align 8
  %inc.i30.i = add i64 %108, 1
  store i64 %inc.i30.i, ptr %b_last_allocated_ptr.i29.i, align 8
  %109 = ptrtoint ptr %bp_newreq67.i to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %108, ptr %bp_newreq67.i, align 8
  br label %if.end73.i

nilfs_bmap_prepare_alloc_ptr.exit33.i:            ; preds = %if.end61.i
  %call.i27.i = tail call i32 @nilfs_dat_prepare_alloc(ptr noundef nonnull %dat.087103.i, ptr noundef %bp_newreq67.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i)
  %cmp71.i = icmp slt i32 %call.i27.i, 0
  br i1 %cmp71.i, label %nilfs_bmap_prepare_alloc_ptr.exit33.i.err_out_child_node.i_crit_edge, label %nilfs_bmap_prepare_alloc_ptr.exit33.i.if.end73.i_crit_edge

nilfs_bmap_prepare_alloc_ptr.exit33.i.if.end73.i_crit_edge: ; preds = %nilfs_bmap_prepare_alloc_ptr.exit33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73.i

nilfs_bmap_prepare_alloc_ptr.exit33.i.err_out_child_node.i_crit_edge: ; preds = %nilfs_bmap_prepare_alloc_ptr.exit33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_child_node.i

if.end73.i:                                       ; preds = %nilfs_bmap_prepare_alloc_ptr.exit33.i.if.end73.i_crit_edge, %nilfs_bmap_prepare_alloc_ptr.exit33.thread.i
  %110 = ptrtoint ptr %bp_newreq67.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %bp_newreq67.i, align 8
  %call1.i.i = tail call ptr @nilfs_btnode_create_block(ptr noundef %i_btnode_cache.i.i, i64 noundef %111) #8
  %tobool.not.i34.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i34.i, label %if.end73.i.err_out_curr_node.i_crit_edge, label %if.end.i35.i

if.end73.i.err_out_curr_node.i_crit_edge:         ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_curr_node.i

if.end.i35.i:                                     ; preds = %if.end73.i
  %112 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %call1.i.i, align 4
  %114 = and i32 %113, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not.i.i.i = icmp eq i32 %114, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i35.i.if.end79.i_crit_edge

if.end.i35.i.if.end79.i_crit_edge:                ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79.i

if.then.i.i.i:                                    ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 18, ptr noundef nonnull %call1.i.i) #8
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then.i.i.i, %if.end.i35.i.if.end79.i_crit_edge
  %115 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call1.i.i, ptr %bh.i, align 4
  %inc81.i = add nuw nsw i32 %stats.sroa.0.084, 1
  %b_data82.i = getelementptr inbounds %struct.buffer_head, ptr %call1.i.i, i32 0, i32 5
  %116 = ptrtoint ptr %b_data82.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %b_data82.i, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %117, align 4
  %conv.i15.i.i = trunc i32 %level.0130.i87 to i8
  %bn_level.i.i37.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %117, i32 0, i32 1
  %119 = ptrtoint ptr %bn_level.i.i37.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv.i15.i.i, ptr %bn_level.i.i37.i, align 1
  %bn_nchildren.i.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %117, i32 0, i32 2
  %120 = ptrtoint ptr %bn_nchildren.i.i.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 0, ptr %bn_nchildren.i.i.i, align 2
  %bp_sib_bh84.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.0130.i87, i32 1
  %121 = ptrtoint ptr %bp_sib_bh84.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call1.i.i, ptr %bp_sib_bh84.i, align 4
  %bp_op86.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.0130.i87, i32 6
  %122 = ptrtoint ptr %bp_op86.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @nilfs_btree_split, ptr %bp_op86.i, align 8
  %123 = ptrtoint ptr %bn_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %bn_level.i.i.i, align 1
  %conv.i.i.i = zext i8 %124 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i.i.i)
  %cmp10.i = icmp ult i32 %add.i, %conv.i.i.i
  br i1 %cmp10.i, label %for.body.i30, label %if.end79.i.for.end.i_crit_edge

if.end79.i.for.end.i_crit_edge:                   ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %if.end79.i.for.end.i_crit_edge, %if.end7.i.for.end.i_crit_edge
  %stats.sroa.0.1 = phi i32 [ 0, %if.end7.i.for.end.i_crit_edge ], [ %inc81.i, %if.end79.i.for.end.i_crit_edge ]
  %level.0.lcssa.i = phi i32 [ 1, %if.end7.i.for.end.i_crit_edge ], [ %add.i, %if.end79.i.for.end.i_crit_edge ]
  %ret.0.lcssa.i = phi i32 [ %retval.0.i3104.i, %if.end7.i.for.end.i_crit_edge ], [ 0, %if.end79.i.for.end.i_crit_edge ]
  %bn_nchildren.i39.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 2
  %125 = ptrtoint ptr %bn_nchildren.i39.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %bn_nchildren.i39.i, align 2
  %127 = tail call i16 @llvm.bswap.i16(i16 %126) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %127)
  %cmp90.i = icmp ult i16 %127, 3
  br i1 %cmp90.i, label %for.end.i.nilfs_btree_prepare_insert.exit.thread52_crit_edge, label %if.end96.i

for.end.i.nilfs_btree_prepare_insert.exit.thread52_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_prepare_insert.exit.thread52

if.end96.i:                                       ; preds = %for.end.i
  %sub97.i = add nsw i32 %level.0.lcssa.i, -1
  %bp_newreq99.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %sub97.i, i32 4
  %128 = ptrtoint ptr %bp_newreq99.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %bp_newreq99.i, align 8
  %add100.i = add i64 %129, 1
  %bp_newreq102.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.0.lcssa.i, i32 4
  %130 = ptrtoint ptr %bp_newreq102.i to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %add100.i, ptr %bp_newreq102.i, align 8
  br i1 %tobool.not.i94102.i, label %nilfs_bmap_prepare_alloc_ptr.exit48.thread.i, label %nilfs_bmap_prepare_alloc_ptr.exit48.i

nilfs_bmap_prepare_alloc_ptr.exit48.thread.i:     ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #10
  %b_last_allocated_ptr.i44.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 5
  %131 = ptrtoint ptr %b_last_allocated_ptr.i44.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %b_last_allocated_ptr.i44.i, align 8
  %inc.i45.i = add i64 %132, 1
  store i64 %inc.i45.i, ptr %b_last_allocated_ptr.i44.i, align 8
  %133 = ptrtoint ptr %bp_newreq102.i to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %132, ptr %bp_newreq102.i, align 8
  br label %if.end108.i

nilfs_bmap_prepare_alloc_ptr.exit48.i:            ; preds = %if.end96.i
  %call.i42.i = tail call i32 @nilfs_dat_prepare_alloc(ptr noundef nonnull %dat.087103.i, ptr noundef %bp_newreq102.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42.i)
  %cmp106.i = icmp slt i32 %call.i42.i, 0
  br i1 %cmp106.i, label %nilfs_bmap_prepare_alloc_ptr.exit48.i.err_out_child_node.i_crit_edge, label %nilfs_bmap_prepare_alloc_ptr.exit48.i.if.end108.i_crit_edge

nilfs_bmap_prepare_alloc_ptr.exit48.i.if.end108.i_crit_edge: ; preds = %nilfs_bmap_prepare_alloc_ptr.exit48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108.i

nilfs_bmap_prepare_alloc_ptr.exit48.i.err_out_child_node.i_crit_edge: ; preds = %nilfs_bmap_prepare_alloc_ptr.exit48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_child_node.i

if.end108.i:                                      ; preds = %nilfs_bmap_prepare_alloc_ptr.exit48.i.if.end108.i_crit_edge, %nilfs_bmap_prepare_alloc_ptr.exit48.thread.i
  %134 = ptrtoint ptr %bp_newreq102.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %bp_newreq102.i, align 8
  %i_btnode_cache.i49.i = getelementptr i8, ptr %btree, i32 216
  %call1.i50.i = tail call ptr @nilfs_btnode_create_block(ptr noundef %i_btnode_cache.i49.i, i64 noundef %135) #8
  %tobool.not.i51.i = icmp eq ptr %call1.i50.i, null
  br i1 %tobool.not.i51.i, label %if.end108.i.err_out_curr_node.i_crit_edge, label %if.end.i53.i

if.end108.i.err_out_curr_node.i_crit_edge:        ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_curr_node.i

if.end.i53.i:                                     ; preds = %if.end108.i
  %136 = ptrtoint ptr %call1.i50.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %call1.i50.i, align 4
  %138 = and i32 %137, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool.not.i.i52.i = icmp eq i32 %138, 0
  br i1 %tobool.not.i.i52.i, label %if.then.i.i54.i, label %if.end.i53.i.if.end114.i_crit_edge

if.end.i53.i.if.end114.i_crit_edge:               ; preds = %if.end.i53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114.i

if.then.i.i54.i:                                  ; preds = %if.end.i53.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 18, ptr noundef nonnull %call1.i50.i) #8
  br label %if.end114.i

if.end114.i:                                      ; preds = %if.then.i.i54.i, %if.end.i53.i.if.end114.i_crit_edge
  %139 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call1.i50.i, ptr %bh.i, align 4
  %b_data115.i = getelementptr inbounds %struct.buffer_head, ptr %call1.i50.i, i32 0, i32 5
  %140 = ptrtoint ptr %b_data115.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %b_data115.i, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 0, ptr %141, align 4
  %conv.i15.i58.i = trunc i32 %level.0.lcssa.i to i8
  %bn_level.i.i59.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %141, i32 0, i32 1
  %143 = ptrtoint ptr %bn_level.i.i59.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv.i15.i58.i, ptr %bn_level.i.i59.i, align 1
  %bn_nchildren.i.i60.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %141, i32 0, i32 2
  %144 = ptrtoint ptr %bn_nchildren.i.i60.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 0, ptr %bn_nchildren.i.i60.i, align 2
  %bp_sib_bh117.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.0.lcssa.i, i32 1
  %145 = ptrtoint ptr %bp_sib_bh117.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call1.i50.i, ptr %bp_sib_bh117.i, align 4
  %bp_op119.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.0.lcssa.i, i32 6
  %146 = ptrtoint ptr %bp_op119.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @nilfs_btree_grow, ptr %bp_op119.i, align 8
  %inc120.i = add nuw i32 %level.0.lcssa.i, 1
  br label %nilfs_btree_prepare_insert.exit.thread52

nilfs_btree_prepare_insert.exit.thread52:         ; preds = %if.end114.i, %for.end.i.nilfs_btree_prepare_insert.exit.thread52_crit_edge, %if.then52.i, %if.then31.i, %for.body.i30.nilfs_btree_prepare_insert.exit.thread52_crit_edge, %for.body.lr.ph.i.nilfs_btree_prepare_insert.exit.thread52_crit_edge
  %stats.sroa.0.2 = phi i32 [ %stats.sroa.0.084, %if.then31.i ], [ %stats.sroa.0.084, %if.then52.i ], [ %stats.sroa.0.1, %for.end.i.nilfs_btree_prepare_insert.exit.thread52_crit_edge ], [ %stats.sroa.0.1, %if.end114.i ], [ 0, %for.body.lr.ph.i.nilfs_btree_prepare_insert.exit.thread52_crit_edge ], [ %inc81.i, %for.body.i30.nilfs_btree_prepare_insert.exit.thread52_crit_edge ]
  %inc120.sink.i = phi i32 [ %level.0130.i87, %if.then31.i ], [ %level.0130.i87, %if.then52.i ], [ %level.0.lcssa.i, %for.end.i.nilfs_btree_prepare_insert.exit.thread52_crit_edge ], [ %inc120.i, %if.end114.i ], [ 1, %for.body.lr.ph.i.nilfs_btree_prepare_insert.exit.thread52_crit_edge ], [ %add.i, %for.body.i30.nilfs_btree_prepare_insert.exit.thread52_crit_edge ]
  %nilfs_btree_do_insert.sink.i = phi ptr [ @nilfs_btree_carry_left, %if.then31.i ], [ @nilfs_btree_carry_right, %if.then52.i ], [ @nilfs_btree_do_insert, %for.end.i.nilfs_btree_prepare_insert.exit.thread52_crit_edge ], [ @nilfs_btree_do_insert, %if.end114.i ], [ @nilfs_btree_do_insert, %for.body.lr.ph.i.nilfs_btree_prepare_insert.exit.thread52_crit_edge ], [ @nilfs_btree_do_insert, %for.body.i30.nilfs_btree_prepare_insert.exit.thread52_crit_edge ]
  %.sink169.i = phi i32 [ 1, %if.then31.i ], [ 1, %if.then52.i ], [ 1, %for.end.i.nilfs_btree_prepare_insert.exit.thread52_crit_edge ], [ 2, %if.end114.i ], [ 1, %for.body.lr.ph.i.nilfs_btree_prepare_insert.exit.thread52_crit_edge ], [ 1, %for.body.i30.nilfs_btree_prepare_insert.exit.thread52_crit_edge ]
  %ret.1.i = phi i32 [ %call.i7.i, %if.then31.i ], [ %call.i19.i, %if.then52.i ], [ %ret.0.lcssa.i, %for.end.i.nilfs_btree_prepare_insert.exit.thread52_crit_edge ], [ 0, %if.end114.i ], [ %retval.0.i3104.i, %for.body.lr.ph.i.nilfs_btree_prepare_insert.exit.thread52_crit_edge ], [ 0, %for.body.i30.nilfs_btree_prepare_insert.exit.thread52_crit_edge ]
  %bp_op122.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %inc120.sink.i, i32 6
  %147 = ptrtoint ptr %bp_op122.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %nilfs_btree_do_insert.sink.i, ptr %bp_op122.i, align 8
  %add124.i = add i32 %.sink169.i, %stats.sroa.0.2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #8
  br label %if.end11

err_out_curr_node.i:                              ; preds = %if.end108.i.err_out_curr_node.i_crit_edge, %if.end73.i.err_out_curr_node.i_crit_edge
  %level.0127.i = phi i32 [ %level.0.lcssa.i, %if.end108.i.err_out_curr_node.i_crit_edge ], [ %level.0130.i87, %if.end73.i.err_out_curr_node.i_crit_edge ]
  br i1 %tobool.not.i94102.i, label %if.else.i67.i, label %if.then.i65.i

if.then.i65.i:                                    ; preds = %err_out_curr_node.i
  call void @__sanitizer_cov_trace_pc() #10
  %bp_newreq126.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.0127.i, i32 4
  tail call void @nilfs_dat_abort_alloc(ptr noundef nonnull %dat.087103.i, ptr noundef %bp_newreq126.i) #8
  br label %err_out_child_node.i

if.else.i67.i:                                    ; preds = %err_out_curr_node.i
  call void @__sanitizer_cov_trace_pc() #10
  %b_last_allocated_ptr.i66.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 5
  %148 = ptrtoint ptr %b_last_allocated_ptr.i66.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %b_last_allocated_ptr.i66.i, align 8
  %dec.i.i = add i64 %149, -1
  store i64 %dec.i.i, ptr %b_last_allocated_ptr.i66.i, align 8
  br label %err_out_child_node.i

err_out_child_node.i:                             ; preds = %if.else.i67.i, %if.then.i65.i, %nilfs_bmap_prepare_alloc_ptr.exit48.i.err_out_child_node.i_crit_edge, %nilfs_bmap_prepare_alloc_ptr.exit33.i.err_out_child_node.i_crit_edge, %if.then42.i.err_out_child_node.i_crit_edge, %if.then22.i.err_out_child_node.i_crit_edge
  %level.0126.i = phi i32 [ %level.0.lcssa.i, %nilfs_bmap_prepare_alloc_ptr.exit48.i.err_out_child_node.i_crit_edge ], [ %level.0127.i, %if.then.i65.i ], [ %level.0127.i, %if.else.i67.i ], [ %level.0130.i87, %if.then22.i.err_out_child_node.i_crit_edge ], [ %level.0130.i87, %if.then42.i.err_out_child_node.i_crit_edge ], [ %level.0130.i87, %nilfs_bmap_prepare_alloc_ptr.exit33.i.err_out_child_node.i_crit_edge ]
  %ret.3.i = phi i32 [ %call.i42.i, %nilfs_bmap_prepare_alloc_ptr.exit48.i.err_out_child_node.i_crit_edge ], [ -12, %if.then.i65.i ], [ -12, %if.else.i67.i ], [ %call.i27.i, %nilfs_bmap_prepare_alloc_ptr.exit33.i.err_out_child_node.i_crit_edge ], [ %call.i19.i, %if.then42.i.err_out_child_node.i_crit_edge ], [ %call.i7.i, %if.then22.i.err_out_child_node.i_crit_edge ]
  %level.2134.i = add i32 %level.0126.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level.2134.i)
  %cmp128135.i = icmp sgt i32 %level.2134.i, 0
  br i1 %cmp128135.i, label %for.body129.lr.ph.i, label %err_out_child_node.i.for.end136.i_crit_edge

err_out_child_node.i.for.end136.i_crit_edge:      ; preds = %err_out_child_node.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end136.i

for.body129.lr.ph.i:                              ; preds = %err_out_child_node.i
  %b_last_allocated_ptr.i71.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 5
  br label %for.body129.i

for.body129.i:                                    ; preds = %nilfs_bmap_abort_alloc_ptr.exit75.i.for.body129.i_crit_edge, %for.body129.lr.ph.i
  %level.2136.i = phi i32 [ %level.2134.i, %for.body129.lr.ph.i ], [ %level.2.i, %nilfs_bmap_abort_alloc_ptr.exit75.i.for.body129.i_crit_edge ]
  %bp_sib_bh131.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.2136.i, i32 1
  %150 = ptrtoint ptr %bp_sib_bh131.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %bp_sib_bh131.i, align 4
  tail call void @nilfs_btnode_delete(ptr noundef %151) #8
  br i1 %tobool.not.i94102.i, label %if.else.i73.i, label %if.then.i70.i

if.then.i70.i:                                    ; preds = %for.body129.i
  call void @__sanitizer_cov_trace_pc() #10
  %bp_newreq133.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.2136.i, i32 4
  tail call void @nilfs_dat_abort_alloc(ptr noundef nonnull %dat.087103.i, ptr noundef %bp_newreq133.i) #8
  br label %nilfs_bmap_abort_alloc_ptr.exit75.i

if.else.i73.i:                                    ; preds = %for.body129.i
  call void @__sanitizer_cov_trace_pc() #10
  %152 = ptrtoint ptr %b_last_allocated_ptr.i71.i to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %b_last_allocated_ptr.i71.i, align 8
  %dec.i72.i = add i64 %153, -1
  store i64 %dec.i72.i, ptr %b_last_allocated_ptr.i71.i, align 8
  br label %nilfs_bmap_abort_alloc_ptr.exit75.i

nilfs_bmap_abort_alloc_ptr.exit75.i:              ; preds = %if.else.i73.i, %if.then.i70.i
  %level.2.i = add nsw i32 %level.2136.i, -1
  %cmp128.i = icmp sgt i32 %level.2136.i, 1
  br i1 %cmp128.i, label %nilfs_bmap_abort_alloc_ptr.exit75.i.for.body129.i_crit_edge, label %nilfs_bmap_abort_alloc_ptr.exit75.i.for.end136.i_crit_edge

nilfs_bmap_abort_alloc_ptr.exit75.i.for.end136.i_crit_edge: ; preds = %nilfs_bmap_abort_alloc_ptr.exit75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end136.i

nilfs_bmap_abort_alloc_ptr.exit75.i.for.body129.i_crit_edge: ; preds = %nilfs_bmap_abort_alloc_ptr.exit75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body129.i

for.end136.i:                                     ; preds = %nilfs_bmap_abort_alloc_ptr.exit75.i.for.end136.i_crit_edge, %err_out_child_node.i.for.end136.i_crit_edge
  %level.2.lcssa.i = phi i32 [ %level.2134.i, %err_out_child_node.i.for.end136.i_crit_edge ], [ 0, %nilfs_bmap_abort_alloc_ptr.exit75.i.for.end136.i_crit_edge ]
  br i1 %tobool.not.i94102.i, label %if.else.i80.i, label %if.then.i77.i

if.then.i77.i:                                    ; preds = %for.end136.i
  call void @__sanitizer_cov_trace_pc() #10
  %bp_newreq138.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.2.lcssa.i, i32 4
  tail call void @nilfs_dat_abort_alloc(ptr noundef nonnull %dat.087103.i, ptr noundef %bp_newreq138.i) #8
  br label %nilfs_btree_prepare_insert.exit

if.else.i80.i:                                    ; preds = %for.end136.i
  call void @__sanitizer_cov_trace_pc() #10
  %b_last_allocated_ptr.i78.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 5
  %154 = ptrtoint ptr %b_last_allocated_ptr.i78.i to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %b_last_allocated_ptr.i78.i, align 8
  %dec.i79.i = add i64 %155, -1
  store i64 %dec.i79.i, ptr %b_last_allocated_ptr.i78.i, align 8
  br label %nilfs_btree_prepare_insert.exit

nilfs_btree_prepare_insert.exit:                  ; preds = %if.else.i80.i, %if.then.i77.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i)
  %cmp9 = icmp slt i32 %ret.3.i, 0
  br i1 %cmp9, label %nilfs_btree_prepare_insert.exit.out_crit_edge, label %nilfs_btree_prepare_insert.exit.if.end11_crit_edge

nilfs_btree_prepare_insert.exit.if.end11_crit_edge: ; preds = %nilfs_btree_prepare_insert.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

nilfs_btree_prepare_insert.exit.out_crit_edge:    ; preds = %nilfs_btree_prepare_insert.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end11:                                         ; preds = %nilfs_btree_prepare_insert.exit.if.end11_crit_edge, %nilfs_btree_prepare_insert.exit.thread52
  %retval.0.i59 = phi i32 [ %ret.1.i, %nilfs_btree_prepare_insert.exit.thread52 ], [ %ret.3.i, %nilfs_btree_prepare_insert.exit.if.end11_crit_edge ]
  %level.058 = phi i32 [ %inc120.sink.i, %nilfs_btree_prepare_insert.exit.thread52 ], [ %level.2.lcssa.i, %nilfs_btree_prepare_insert.exit.if.end11_crit_edge ]
  %stats.sroa.0.357 = phi i32 [ %add124.i, %nilfs_btree_prepare_insert.exit.thread52 ], [ 0, %nilfs_btree_prepare_insert.exit.if.end11_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ptr.addr.i)
  %156 = ptrtoint ptr %key.addr.i to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 %key, ptr %key.addr.i, align 8
  %conv.i = trunc i64 %ptr to i32
  %157 = inttoptr i32 %conv.i to ptr
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %157, align 4
  %160 = and i32 %159, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool.not.i.i33 = icmp eq i32 %160, 0
  br i1 %tobool.not.i.i33, label %if.then.i.i, label %if.end11.set_buffer_nilfs_volatile.exit.i_crit_edge

if.end11.set_buffer_nilfs_volatile.exit.i_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_nilfs_volatile.exit.i

if.then.i.i:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 18, ptr noundef %157) #8
  br label %set_buffer_nilfs_volatile.exit.i

set_buffer_nilfs_volatile.exit.i:                 ; preds = %if.then.i.i, %if.end11.set_buffer_nilfs_volatile.exit.i_crit_edge
  %bp_newreq.i34 = getelementptr inbounds %struct.nilfs_btree_path, ptr %call.i, i32 0, i32 4
  %161 = ptrtoint ptr %bp_newreq.i34 to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %bp_newreq.i34, align 8
  %163 = ptrtoint ptr %ptr.addr.i to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 %162, ptr %ptr.addr.i, align 8
  %164 = ptrtoint ptr %b_ptr_type.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %b_ptr_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %cmp.i36 = icmp sgt i32 %165, 0
  br i1 %cmp.i36, label %if.then.i39, label %set_buffer_nilfs_volatile.exit.i.if.end.i40_crit_edge

set_buffer_nilfs_volatile.exit.i.if.end.i40_crit_edge: ; preds = %set_buffer_nilfs_volatile.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i40

if.then.i39:                                      ; preds = %set_buffer_nilfs_volatile.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %166 = ptrtoint ptr %key.addr.i to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %key.addr.i, align 8
  %b_last_allocated_key.i.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 4
  %168 = ptrtoint ptr %b_last_allocated_key.i.i to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 %167, ptr %b_last_allocated_key.i.i, align 8
  %b_last_allocated_ptr.i.i37 = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 5
  %169 = ptrtoint ptr %b_last_allocated_ptr.i.i37 to i32
  call void @__asan_store8_noabort(i32 %169)
  store i64 %162, ptr %b_last_allocated_ptr.i.i37, align 8
  %call.i38 = tail call ptr @nilfs_bmap_get_dat(ptr noundef %btree) #8
  br label %if.end.i40

if.end.i40:                                       ; preds = %if.then.i39, %set_buffer_nilfs_volatile.exit.i.if.end.i40_crit_edge
  %dat.0.i = phi ptr [ %call.i38, %if.then.i39 ], [ null, %set_buffer_nilfs_volatile.exit.i.if.end.i40_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %level.058)
  %cmp2.not26.i = icmp slt i32 %level.058, 1
  br i1 %cmp2.not26.i, label %if.end.i40.for.end.i45_crit_edge, label %for.body.lr.ph.i41

if.end.i40.for.end.i45_crit_edge:                 ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i45

for.body.lr.ph.i41:                               ; preds = %if.end.i40
  %tobool.not.i23.i = icmp eq ptr %dat.0.i, null
  br label %for.body.i42

for.body.i42:                                     ; preds = %nilfs_bmap_commit_alloc_ptr.exit.i.for.body.i42_crit_edge, %for.body.lr.ph.i41
  %level.027.i = phi i32 [ 1, %for.body.lr.ph.i41 ], [ %inc.i44, %nilfs_bmap_commit_alloc_ptr.exit.i.for.body.i42_crit_edge ]
  br i1 %tobool.not.i23.i, label %for.body.i42.nilfs_bmap_commit_alloc_ptr.exit.i_crit_edge, label %if.then.i24.i

for.body.i42.nilfs_bmap_commit_alloc_ptr.exit.i_crit_edge: ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_bmap_commit_alloc_ptr.exit.i

if.then.i24.i:                                    ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add nsw i32 %level.027.i, -1
  %bp_newreq5.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %sub.i, i32 4
  call void @nilfs_dat_commit_alloc(ptr noundef nonnull %dat.0.i, ptr noundef %bp_newreq5.i) #8
  br label %nilfs_bmap_commit_alloc_ptr.exit.i

nilfs_bmap_commit_alloc_ptr.exit.i:               ; preds = %if.then.i24.i, %for.body.i42.nilfs_bmap_commit_alloc_ptr.exit.i_crit_edge
  %bp_op.i43 = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.027.i, i32 6
  %170 = ptrtoint ptr %bp_op.i43 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %bp_op.i43, align 8
  call void %171(ptr noundef %btree, ptr noundef %call.i, i32 noundef %level.027.i, ptr noundef nonnull %key.addr.i, ptr noundef nonnull %ptr.addr.i) #8
  %inc.i44 = add nuw nsw i32 %level.027.i, 1
  %exitcond = icmp eq i32 %level.027.i, %level.058
  br i1 %exitcond, label %nilfs_bmap_commit_alloc_ptr.exit.i.for.end.i45_crit_edge, label %nilfs_bmap_commit_alloc_ptr.exit.i.for.body.i42_crit_edge

nilfs_bmap_commit_alloc_ptr.exit.i.for.body.i42_crit_edge: ; preds = %nilfs_bmap_commit_alloc_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i42

nilfs_bmap_commit_alloc_ptr.exit.i.for.end.i45_crit_edge: ; preds = %nilfs_bmap_commit_alloc_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i45

for.end.i45:                                      ; preds = %nilfs_bmap_commit_alloc_ptr.exit.i.for.end.i45_crit_edge, %if.end.i40.for.end.i45_crit_edge
  %b_state.i.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 7
  %172 = ptrtoint ptr %b_state.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %b_state.i.i, align 4
  %and.i.i = and i32 %173, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then8.i, label %for.end.i45.nilfs_btree_commit_insert.exit_crit_edge

for.end.i45.nilfs_btree_commit_insert.exit_crit_edge: ; preds = %for.end.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_commit_insert.exit

if.then8.i:                                       ; preds = %for.end.i45
  call void @__sanitizer_cov_trace_pc() #10
  %or.i.i = or i32 %173, 1
  %174 = ptrtoint ptr %b_state.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %or.i.i, ptr %b_state.i.i, align 4
  br label %nilfs_btree_commit_insert.exit

nilfs_btree_commit_insert.exit:                   ; preds = %if.then8.i, %for.end.i45.nilfs_btree_commit_insert.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ptr.addr.i)
  %b_inode = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 2
  %175 = ptrtoint ptr %b_inode to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %b_inode, align 8
  call void @nilfs_inode_add_blocks(ptr noundef %176, i32 noundef %stats.sroa.0.357) #8
  br label %out

out:                                              ; preds = %nilfs_btree_commit_insert.exit, %nilfs_btree_prepare_insert.exit.out_crit_edge, %nilfs_btree_prepare_insert.exit.thread, %if.then3
  %ret.0 = phi i32 [ %spec.store.select, %if.then3 ], [ %ret.3.i, %nilfs_btree_prepare_insert.exit.out_crit_edge ], [ %retval.0.i59, %nilfs_btree_commit_insert.exit ], [ %call.i1.i, %nilfs_btree_prepare_insert.exit.thread ]
  call fastcc void @nilfs_btree_free_path(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_btree_delete(ptr noundef %btree, i64 noundef %key) #0 align 64 {
entry:
  %bh.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nilfs_btree_path_cache to i32))
  %0 = load ptr, ptr @nilfs_btree_path_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3136) #8
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %level.021.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %arrayidx.i, align 8
  %bp_sib_bh.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 1
  %2 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bp_sib_bh.i, align 4
  %bp_index.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 2
  %3 = ptrtoint ptr %bp_index.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %bp_index.i, align 8
  %bp_oldreq.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 3
  %4 = ptrtoint ptr %bp_oldreq.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %bp_oldreq.i, align 8
  %bp_newreq.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 4
  %5 = ptrtoint ptr %bp_newreq.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %bp_newreq.i, align 8
  %bp_op.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 6
  %6 = ptrtoint ptr %bp_op.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %bp_op.i, align 8
  %inc.i = add nuw nsw i32 %level.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 14
  br i1 %exitcond.not.i, label %if.end, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end:                                           ; preds = %for.body.i
  %call1 = tail call fastcc i32 @nilfs_btree_do_lookup(ptr noundef %btree, ptr noundef nonnull %call.i, i64 noundef %key, ptr noundef null, i32 noundef 1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end4:                                          ; preds = %if.end
  %b_ptr_type = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 6
  %7 = ptrtoint ptr %b_ptr_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %b_ptr_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5 = icmp sgt i32 %8, 0
  br i1 %cmp5, label %cond.true, label %if.end4.cond.end_crit_edge

if.end4.cond.end_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call ptr @nilfs_bmap_get_dat(ptr noundef %btree) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end4.cond.end_crit_edge
  %cond = phi ptr [ %call6, %cond.true ], [ null, %if.end4.cond.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i) #8
  %9 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh.i, align 4, !annotation !34
  %b_inode.i.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 2
  %10 = ptrtoint ptr %b_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_inode.i.i, align 8
  %i_blkbits.i.i.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %i_blkbits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %i_blkbits.i.i.i, align 2
  %conv.i.i.i = zext i8 %13 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %sub1.i = add i32 %shl.i.i.i, -16
  %div259.i = lshr i32 %sub1.i, 4
  %sub2.i = add nsw i32 %div259.i, -1
  %div3260.i = lshr i32 %sub2.i, 1
  %add.i = add nuw i32 %div3260.i, 1
  %b_nchildren_per_block.i.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 8
  %14 = ptrtoint ptr %b_nchildren_per_block.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %b_nchildren_per_block.i.i, align 8
  %conv.i.i = zext i16 %15 to i32
  %bp_index.i27 = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 1, i32 2
  %16 = ptrtoint ptr %bp_index.i27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bp_index.i27, align 8
  %bn_level.i.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 1
  %18 = ptrtoint ptr %bn_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bn_level.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp350.i = icmp ugt i8 %19, 1
  br i1 %cmp350.i, label %for.body.lr.ph.i, label %cond.end.shrink_root_child.i_crit_edge

cond.end.shrink_root_child.i_crit_edge:           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %shrink_root_child.i

for.body.lr.ph.i:                                 ; preds = %cond.end
  %tobool.not.i.i = icmp eq ptr %cond, null
  br label %for.body.i29

for.body.i29:                                     ; preds = %for.inc.i.for.body.i29_crit_edge, %for.body.lr.ph.i
  %stats.sroa.0.0 = phi i32 [ 0, %for.body.lr.ph.i ], [ %storemerge.i, %for.inc.i.for.body.i29_crit_edge ]
  %level.0352.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %add20.i, %for.inc.i.for.body.i29_crit_edge ]
  %dindex.0351.i = phi i32 [ %17, %for.body.lr.ph.i ], [ %dindex.1.i, %for.inc.i.for.body.i29_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.0352.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 8
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr %struct.nilfs_btree_node, ptr %23, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 4
  %26 = shl i8 %25, 3
  %27 = and i8 %26, 8
  %28 = xor i8 %27, 8
  %29 = zext i8 %28 to i32
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %29
  %add.ptr.i.i.i = getelementptr i64, ptr %add.ptr1.i.i.i.i, i32 %conv.i.i
  %add.ptr.i.i = getelementptr i64, ptr %add.ptr.i.i.i, i32 %dindex.0351.i
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %add.ptr.i.i, align 8
  %32 = tail call i64 @llvm.bswap.i64(i64 %31) #8
  %bp_oldreq.i28 = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.0352.i, i32 3
  %33 = ptrtoint ptr %bp_oldreq.i28 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %bp_oldreq.i28, align 8
  br i1 %tobool.not.i.i, label %for.body.i29.if.end.i_crit_edge, label %nilfs_bmap_prepare_end_ptr.exit.i

for.body.i29.if.end.i_crit_edge:                  ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

nilfs_bmap_prepare_end_ptr.exit.i:                ; preds = %for.body.i29
  %call.i.i = tail call i32 @nilfs_dat_prepare_end(ptr noundef nonnull %cond, ptr noundef %bp_oldreq.i28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp13.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp13.i, label %nilfs_bmap_prepare_end_ptr.exit.i.err_out_child_node.i_crit_edge, label %nilfs_bmap_prepare_end_ptr.exit.i.if.end.i_crit_edge

nilfs_bmap_prepare_end_ptr.exit.i.if.end.i_crit_edge: ; preds = %nilfs_bmap_prepare_end_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

nilfs_bmap_prepare_end_ptr.exit.i.err_out_child_node.i_crit_edge: ; preds = %nilfs_bmap_prepare_end_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_child_node.i

if.end.i:                                         ; preds = %nilfs_bmap_prepare_end_ptr.exit.i.if.end.i_crit_edge, %for.body.i29.if.end.i_crit_edge
  %cond.i303.i = phi i32 [ %call.i.i, %nilfs_bmap_prepare_end_ptr.exit.i.if.end.i_crit_edge ], [ 0, %for.body.i29.if.end.i_crit_edge ]
  %bn_nchildren.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %23, i32 0, i32 2
  %34 = ptrtoint ptr %bn_nchildren.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %bn_nchildren.i.i, align 2
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #8
  %conv.i262.i = zext i16 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i262.i)
  %cmp15.i = icmp slt i32 %add.i, %conv.i262.i
  br i1 %cmp15.i, label %if.then16.i, label %if.end19.i

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %bp_op.i30 = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.0352.i, i32 6
  %37 = ptrtoint ptr %bp_op.i30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @nilfs_btree_do_delete, ptr %bp_op.i30, align 8
  br label %out.sink.split.i

if.end19.i:                                       ; preds = %if.end.i
  %add20.i = add nuw nsw i32 %level.0352.i, 1
  %38 = ptrtoint ptr %bn_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bn_level.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add20.i, i32 %conv.i.i.i.i)
  %cmp.i.i = icmp eq i32 %add20.i, %conv.i.i.i.i
  br i1 %cmp.i.i, label %if.end19.i.nilfs_btree_get_node.exit.i_crit_edge, label %if.else.i.i

if.end19.i.nilfs_btree_get_node.exit.i_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_get_node.exit.i

if.else.i.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %add20.i
  %40 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i.i, align 8
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %b_data.i.i.i, align 4
  %44 = ptrtoint ptr %b_nchildren_per_block.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %b_nchildren_per_block.i.i, align 8
  %conv.i.i263.i = zext i16 %45 to i32
  br label %nilfs_btree_get_node.exit.i

nilfs_btree_get_node.exit.i:                      ; preds = %if.else.i.i, %if.end19.i.nilfs_btree_get_node.exit.i_crit_edge
  %storemerge.i.i = phi i32 [ %conv.i.i263.i, %if.else.i.i ], [ 3, %if.end19.i.nilfs_btree_get_node.exit.i_crit_edge ]
  %node.0.i.i = phi ptr [ %43, %if.else.i.i ], [ %btree, %if.end19.i.nilfs_btree_get_node.exit.i_crit_edge ]
  %bp_index24.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %add20.i, i32 2
  %46 = ptrtoint ptr %bp_index24.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bp_index24.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp25.i = icmp sgt i32 %47, 0
  br i1 %cmp25.i, label %if.then26.i, label %if.else48.i

if.then26.i:                                      ; preds = %nilfs_btree_get_node.exit.i
  %sub27.i = add nsw i32 %47, -1
  %add.ptr.i.i.i264.i = getelementptr %struct.nilfs_btree_node, ptr %node.0.i.i, i32 1
  %48 = ptrtoint ptr %node.0.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %node.0.i.i, align 4
  %50 = shl i8 %49, 3
  %51 = and i8 %50, 8
  %52 = xor i8 %51, 8
  %53 = zext i8 %52 to i32
  %add.ptr1.i.i.i265.i = getelementptr i8, ptr %add.ptr.i.i.i264.i, i32 %53
  %add.ptr.i.i266.i = getelementptr i64, ptr %add.ptr1.i.i.i265.i, i32 %storemerge.i.i
  %add.ptr.i267.i = getelementptr i64, ptr %add.ptr.i.i266.i, i32 %sub27.i
  %54 = ptrtoint ptr %add.ptr.i267.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %add.ptr.i267.i, align 8
  %56 = tail call i64 @llvm.bswap.i64(i64 %55) #8
  %call.i268.i = call fastcc i32 @__nilfs_btree_get_block(ptr noundef %btree, i64 noundef %56, ptr noundef nonnull %bh.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i268.i)
  %cmp30.i = icmp slt i32 %call.i268.i, 0
  br i1 %cmp30.i, label %if.then26.i.err_out_curr_node.i_crit_edge, label %if.end32.i

if.then26.i.err_out_curr_node.i_crit_edge:        ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_curr_node.i

if.end32.i:                                       ; preds = %if.then26.i
  %57 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bh.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %b_data.i, align 4
  %bn_nchildren.i269.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %bn_nchildren.i269.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %bn_nchildren.i269.i, align 2
  %63 = tail call i16 @llvm.bswap.i16(i16 %62) #8
  %conv.i270.i = zext i16 %63 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i270.i)
  %cmp34.i = icmp slt i32 %add.i, %conv.i270.i
  br i1 %cmp34.i, label %if.then35.i, label %if.end32.i.for.inc.i_crit_edge

if.end32.i.for.inc.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  %bp_sib_bh.i31 = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.0352.i, i32 1
  %64 = ptrtoint ptr %bp_sib_bh.i31 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %58, ptr %bp_sib_bh.i31, align 4
  %bp_op38.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.0352.i, i32 6
  %65 = ptrtoint ptr %bp_op38.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @nilfs_btree_borrow_left, ptr %bp_op38.i, align 8
  br label %out.sink.split.i

if.else48.i:                                      ; preds = %nilfs_btree_get_node.exit.i
  %bn_nchildren.i271.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %node.0.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %bn_nchildren.i271.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %bn_nchildren.i271.i, align 2
  %68 = tail call i16 @llvm.bswap.i16(i16 %67) #8
  %conv.i272.i = zext i16 %68 to i32
  %sub50.i = add nsw i32 %conv.i272.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %sub50.i)
  %cmp51.i = icmp slt i32 %47, %sub50.i
  br i1 %cmp51.i, label %if.then52.i, label %if.else78.i

if.then52.i:                                      ; preds = %if.else48.i
  %add53.i = add nsw i32 %47, 1
  %add.ptr.i.i.i273.i = getelementptr %struct.nilfs_btree_node, ptr %node.0.i.i, i32 1
  %69 = ptrtoint ptr %node.0.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %node.0.i.i, align 4
  %71 = shl i8 %70, 3
  %72 = and i8 %71, 8
  %73 = xor i8 %72, 8
  %74 = zext i8 %73 to i32
  %add.ptr1.i.i.i274.i = getelementptr i8, ptr %add.ptr.i.i.i273.i, i32 %74
  %add.ptr.i.i275.i = getelementptr i64, ptr %add.ptr1.i.i.i274.i, i32 %storemerge.i.i
  %add.ptr.i276.i = getelementptr i64, ptr %add.ptr.i.i275.i, i32 %add53.i
  %75 = ptrtoint ptr %add.ptr.i276.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %add.ptr.i276.i, align 8
  %77 = tail call i64 @llvm.bswap.i64(i64 %76) #8
  %call.i277.i = call fastcc i32 @__nilfs_btree_get_block(ptr noundef %btree, i64 noundef %77, ptr noundef nonnull %bh.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i277.i)
  %cmp56.i = icmp slt i32 %call.i277.i, 0
  br i1 %cmp56.i, label %if.then52.i.err_out_curr_node.i_crit_edge, label %if.end58.i

if.then52.i.err_out_curr_node.i_crit_edge:        ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_curr_node.i

if.end58.i:                                       ; preds = %if.then52.i
  %78 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bh.i, align 4
  %b_data59.i = getelementptr inbounds %struct.buffer_head, ptr %79, i32 0, i32 5
  %80 = ptrtoint ptr %b_data59.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %b_data59.i, align 4
  %bn_nchildren.i278.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %bn_nchildren.i278.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %bn_nchildren.i278.i, align 2
  %84 = tail call i16 @llvm.bswap.i16(i16 %83) #8
  %conv.i279.i = zext i16 %84 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i279.i)
  %cmp61.i = icmp slt i32 %add.i, %conv.i279.i
  br i1 %cmp61.i, label %if.then62.i, label %if.end58.i.for.inc.i_crit_edge

if.end58.i.for.inc.i_crit_edge:                   ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then62.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  %bp_sib_bh64.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.0352.i, i32 1
  %85 = ptrtoint ptr %bp_sib_bh64.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %79, ptr %bp_sib_bh64.i, align 4
  %bp_op66.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.0352.i, i32 6
  %86 = ptrtoint ptr %bp_op66.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @nilfs_btree_borrow_right, ptr %bp_op66.i, align 8
  br label %out.sink.split.i

if.else78.i:                                      ; preds = %if.else48.i
  %bn_nchildren.i.i.le = getelementptr inbounds %struct.nilfs_btree_node, ptr %23, i32 0, i32 2
  %conv.i.i.i.i.le = zext i8 %39 to i32
  %sub80.i = add nsw i32 %conv.i.i.i.i.le, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %level.0352.i, i32 %sub80.i)
  %cmp81.not.i = icmp eq i32 %level.0352.i, %sub80.i
  br i1 %cmp81.not.i, label %if.else78.i.if.end95.i_crit_edge, label %do.end.i, !prof !35

if.else78.i.if.end95.i_crit_edge:                 ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95.i

do.end.i:                                         ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1505, i32 noundef 9, ptr noundef null) #8
  br label %if.end95.i

if.end95.i:                                       ; preds = %do.end.i, %if.else78.i.if.end95.i_crit_edge
  %87 = ptrtoint ptr %bn_nchildren.i.i.le to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %bn_nchildren.i.i.le, align 2
  %89 = tail call i16 @llvm.bswap.i16(i16 %88) #8
  %conv.i284.i = zext i16 %89 to i32
  %sub103.i = add nsw i32 %conv.i284.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub103.i)
  %cmp104.i = icmp ult i32 %sub103.i, 4
  %bp_op107.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.0352.i, i32 6
  br i1 %cmp104.i, label %if.then105.i, label %if.else113.i

if.then105.i:                                     ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %bp_op107.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @nilfs_btree_shrink, ptr %bp_op107.i, align 8
  %add109.i = add nuw i32 %stats.sroa.0.0, 2
  br label %shrink_root_child.i

if.else113.i:                                     ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %bp_op107.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @nilfs_btree_do_delete, ptr %bp_op107.i, align 8
  br label %out.sink.split.i

for.inc.i:                                        ; preds = %if.end58.i.for.inc.i_crit_edge, %if.end32.i.for.inc.i_crit_edge
  %.sink.i = phi ptr [ %58, %if.end32.i.for.inc.i_crit_edge ], [ %79, %if.end58.i.for.inc.i_crit_edge ]
  %nilfs_btree_concat_left.sink.i = phi ptr [ @nilfs_btree_concat_left, %if.end32.i.for.inc.i_crit_edge ], [ @nilfs_btree_concat_right, %if.end58.i.for.inc.i_crit_edge ]
  %dindex.1.i = phi i32 [ %47, %if.end32.i.for.inc.i_crit_edge ], [ %add53.i, %if.end58.i.for.inc.i_crit_edge ]
  %bp_sib_bh42.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.0352.i, i32 1
  %92 = ptrtoint ptr %bp_sib_bh42.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %.sink.i, ptr %bp_sib_bh42.i, align 4
  %bp_op44.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.0352.i, i32 6
  %93 = ptrtoint ptr %bp_op44.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %nilfs_btree_concat_left.sink.i, ptr %bp_op44.i, align 8
  %storemerge.i = add nuw nsw i32 %stats.sroa.0.0, 1
  %94 = ptrtoint ptr %bn_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %bn_level.i.i.i, align 1
  %conv.i.i261.i = zext i8 %95 to i32
  %cmp.i32 = icmp ult i32 %add20.i, %conv.i.i261.i
  br i1 %cmp.i32, label %for.inc.i.for.body.i29_crit_edge, label %for.end.i.loopexit

for.inc.i.for.body.i29_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i29

for.end.i.loopexit:                               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.bo = add nuw i32 %stats.sroa.0.0, 2
  br label %shrink_root_child.i

shrink_root_child.i:                              ; preds = %for.end.i.loopexit, %if.then105.i, %cond.end.shrink_root_child.i_crit_edge
  %level.0.lcssa.i.sink = phi i32 [ %add20.i, %if.then105.i ], [ 1, %cond.end.shrink_root_child.i_crit_edge ], [ %add20.i, %for.end.i.loopexit ]
  %nilfs_btree_do_delete.sink = phi ptr [ @nilfs_btree_nop, %if.then105.i ], [ @nilfs_btree_do_delete, %cond.end.shrink_root_child.i_crit_edge ], [ @nilfs_btree_do_delete, %for.end.i.loopexit ]
  %stats.sroa.0.2 = phi i32 [ %add109.i, %if.then105.i ], [ 1, %cond.end.shrink_root_child.i_crit_edge ], [ %phi.bo, %for.end.i.loopexit ]
  %dindex.2.i = phi i32 [ %47, %if.then105.i ], [ %17, %cond.end.shrink_root_child.i_crit_edge ], [ %dindex.1.i, %for.end.i.loopexit ]
  %bp_op122.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.0.lcssa.i.sink, i32 6
  %96 = ptrtoint ptr %bp_op122.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %nilfs_btree_do_delete.sink, ptr %bp_op122.i, align 8
  %add.ptr.i.i.i285.i = getelementptr %struct.nilfs_btree_node, ptr %btree, i32 1
  %97 = ptrtoint ptr %btree to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %btree, align 4
  %99 = shl i8 %98, 3
  %100 = and i8 %99, 8
  %101 = xor i8 %100, 8
  %102 = zext i8 %101 to i32
  %add.ptr1.i.i.i286.i = getelementptr i8, ptr %add.ptr.i.i.i285.i, i32 %102
  %add.ptr.i.i287.i = getelementptr i64, ptr %add.ptr1.i.i.i286.i, i32 3
  %add.ptr.i288.i = getelementptr i64, ptr %add.ptr.i.i287.i, i32 %dindex.2.i
  %103 = ptrtoint ptr %add.ptr.i288.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %add.ptr.i288.i, align 8
  %105 = tail call i64 @llvm.bswap.i64(i64 %104) #8
  %bp_oldreq128.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.0.lcssa.i.sink, i32 3
  %106 = ptrtoint ptr %bp_oldreq128.i to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %105, ptr %bp_oldreq128.i, align 8
  %tobool.not.i289.i = icmp eq ptr %cond, null
  br i1 %tobool.not.i289.i, label %shrink_root_child.i.for.body.lr.ph.i34_crit_edge, label %nilfs_bmap_prepare_end_ptr.exit293.i

shrink_root_child.i.for.body.lr.ph.i34_crit_edge: ; preds = %shrink_root_child.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.lr.ph.i34

nilfs_bmap_prepare_end_ptr.exit293.i:             ; preds = %shrink_root_child.i
  %call.i290.i = tail call i32 @nilfs_dat_prepare_end(ptr noundef nonnull %cond, ptr noundef %bp_oldreq128.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i290.i)
  %cmp132.i = icmp slt i32 %call.i290.i, 0
  br i1 %cmp132.i, label %nilfs_bmap_prepare_end_ptr.exit293.i.err_out_child_node.i_crit_edge, label %nilfs_bmap_prepare_end_ptr.exit293.i.for.body.lr.ph.i34_crit_edge

nilfs_bmap_prepare_end_ptr.exit293.i.for.body.lr.ph.i34_crit_edge: ; preds = %nilfs_bmap_prepare_end_ptr.exit293.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.lr.ph.i34

nilfs_bmap_prepare_end_ptr.exit293.i.err_out_child_node.i_crit_edge: ; preds = %nilfs_bmap_prepare_end_ptr.exit293.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_child_node.i

out.sink.split.i:                                 ; preds = %if.else113.i, %if.then62.i, %if.then35.i, %if.then16.i
  %ret.0.ph.i = phi i32 [ %cond.i303.i, %if.else113.i ], [ %call.i277.i, %if.then62.i ], [ %call.i268.i, %if.then35.i ], [ %cond.i303.i, %if.then16.i ]
  %inc117.i = add nuw i32 %stats.sroa.0.0, 1
  br label %for.body.lr.ph.i34

err_out_curr_node.i:                              ; preds = %if.then52.i.err_out_curr_node.i_crit_edge, %if.then26.i.err_out_curr_node.i_crit_edge
  %ret.1.i = phi i32 [ %call.i268.i, %if.then26.i.err_out_curr_node.i_crit_edge ], [ %call.i277.i, %if.then52.i.err_out_curr_node.i_crit_edge ]
  br i1 %tobool.not.i.i, label %err_out_curr_node.i.err_out_child_node.i_crit_edge, label %if.then.i.i

err_out_curr_node.i.err_out_child_node.i_crit_edge: ; preds = %err_out_curr_node.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_child_node.i

if.then.i.i:                                      ; preds = %err_out_curr_node.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nilfs_dat_abort_end(ptr noundef nonnull %cond, ptr noundef %bp_oldreq.i28) #8
  br label %err_out_child_node.i

err_out_child_node.i:                             ; preds = %if.then.i.i, %err_out_curr_node.i.err_out_child_node.i_crit_edge, %nilfs_bmap_prepare_end_ptr.exit293.i.err_out_child_node.i_crit_edge, %nilfs_bmap_prepare_end_ptr.exit.i.err_out_child_node.i_crit_edge
  %level.3.i = phi i32 [ %level.0.lcssa.i.sink, %nilfs_bmap_prepare_end_ptr.exit293.i.err_out_child_node.i_crit_edge ], [ %level.0352.i, %err_out_curr_node.i.err_out_child_node.i_crit_edge ], [ %level.0352.i, %if.then.i.i ], [ %level.0352.i, %nilfs_bmap_prepare_end_ptr.exit.i.err_out_child_node.i_crit_edge ]
  %ret.2.i = phi i32 [ %call.i290.i, %nilfs_bmap_prepare_end_ptr.exit293.i.err_out_child_node.i_crit_edge ], [ %ret.1.i, %err_out_curr_node.i.err_out_child_node.i_crit_edge ], [ %ret.1.i, %if.then.i.i ], [ %call.i.i, %nilfs_bmap_prepare_end_ptr.exit.i.err_out_child_node.i_crit_edge ]
  %level.4354.i = add i32 %level.3.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level.4354.i)
  %cmp138355.i = icmp sgt i32 %level.4354.i, 0
  br i1 %cmp138355.i, label %for.body139.lr.ph.i, label %nilfs_btree_prepare_delete.exit.thread55

nilfs_btree_prepare_delete.exit.thread55:         ; preds = %err_out_child_node.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #8
  br label %out

for.body139.lr.ph.i:                              ; preds = %err_out_child_node.i
  %tobool.not.i297.i = icmp eq ptr %cond, null
  br label %for.body139.i

for.body139.i:                                    ; preds = %nilfs_bmap_abort_end_ptr.exit299.i.for.body139.i_crit_edge, %for.body139.lr.ph.i
  %level.4356.i = phi i32 [ %level.4354.i, %for.body139.lr.ph.i ], [ %level.4.i, %nilfs_bmap_abort_end_ptr.exit299.i.for.body139.i_crit_edge ]
  %bp_sib_bh141.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.4356.i, i32 1
  %107 = ptrtoint ptr %bp_sib_bh141.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %bp_sib_bh141.i, align 4
  %tobool.not.i295.i = icmp eq ptr %108, null
  br i1 %tobool.not.i295.i, label %for.body139.i.brelse.exit.i_crit_edge, label %if.then.i296.i

for.body139.i.brelse.exit.i_crit_edge:            ; preds = %for.body139.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i

if.then.i296.i:                                   ; preds = %for.body139.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %108) #8
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i296.i, %for.body139.i.brelse.exit.i_crit_edge
  br i1 %tobool.not.i297.i, label %brelse.exit.i.nilfs_bmap_abort_end_ptr.exit299.i_crit_edge, label %if.then.i298.i

brelse.exit.i.nilfs_bmap_abort_end_ptr.exit299.i_crit_edge: ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_bmap_abort_end_ptr.exit299.i

if.then.i298.i:                                   ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %bp_oldreq143.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.4356.i, i32 3
  tail call void @nilfs_dat_abort_end(ptr noundef nonnull %cond, ptr noundef %bp_oldreq143.i) #8
  br label %nilfs_bmap_abort_end_ptr.exit299.i

nilfs_bmap_abort_end_ptr.exit299.i:               ; preds = %if.then.i298.i, %brelse.exit.i.nilfs_bmap_abort_end_ptr.exit299.i_crit_edge
  %level.4.i = add nsw i32 %level.4356.i, -1
  %cmp138.i = icmp sgt i32 %level.4356.i, 1
  br i1 %cmp138.i, label %nilfs_bmap_abort_end_ptr.exit299.i.for.body139.i_crit_edge, label %nilfs_btree_prepare_delete.exit

nilfs_bmap_abort_end_ptr.exit299.i.for.body139.i_crit_edge: ; preds = %nilfs_bmap_abort_end_ptr.exit299.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body139.i

nilfs_btree_prepare_delete.exit:                  ; preds = %nilfs_bmap_abort_end_ptr.exit299.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i)
  %cmp8 = icmp slt i32 %ret.2.i, 0
  br i1 %cmp8, label %nilfs_btree_prepare_delete.exit.out_crit_edge, label %nilfs_btree_prepare_delete.exit.for.end.i42_crit_edge

nilfs_btree_prepare_delete.exit.for.end.i42_crit_edge: ; preds = %nilfs_btree_prepare_delete.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i42

nilfs_btree_prepare_delete.exit.out_crit_edge:    ; preds = %nilfs_btree_prepare_delete.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.lr.ph.i34:                               ; preds = %out.sink.split.i, %nilfs_bmap_prepare_end_ptr.exit293.i.for.body.lr.ph.i34_crit_edge, %shrink_root_child.i.for.body.lr.ph.i34_crit_edge
  %stats.sroa.0.4.ph = phi i32 [ %stats.sroa.0.2, %nilfs_bmap_prepare_end_ptr.exit293.i.for.body.lr.ph.i34_crit_edge ], [ %stats.sroa.0.2, %shrink_root_child.i.for.body.lr.ph.i34_crit_edge ], [ %inc117.i, %out.sink.split.i ]
  %level.0.ph = phi i32 [ %level.0.lcssa.i.sink, %nilfs_bmap_prepare_end_ptr.exit293.i.for.body.lr.ph.i34_crit_edge ], [ %level.0.lcssa.i.sink, %shrink_root_child.i.for.body.lr.ph.i34_crit_edge ], [ %level.0352.i, %out.sink.split.i ]
  %retval.0.i.ph = phi i32 [ %call.i290.i, %nilfs_bmap_prepare_end_ptr.exit293.i.for.body.lr.ph.i34_crit_edge ], [ 0, %shrink_root_child.i.for.body.lr.ph.i34_crit_edge ], [ %ret.0.ph.i, %out.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #8
  %tobool.not.i.i33 = icmp eq ptr %cond, null
  br label %for.body.i35

for.body.i35:                                     ; preds = %nilfs_bmap_commit_end_ptr.exit.i.for.body.i35_crit_edge, %for.body.lr.ph.i34
  %level.013.i = phi i32 [ 1, %for.body.lr.ph.i34 ], [ %inc.i41, %nilfs_bmap_commit_end_ptr.exit.i.for.body.i35_crit_edge ]
  br i1 %tobool.not.i.i33, label %for.body.i35.nilfs_bmap_commit_end_ptr.exit.i_crit_edge, label %if.then.i.i39

for.body.i35.nilfs_bmap_commit_end_ptr.exit.i_crit_edge: ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_bmap_commit_end_ptr.exit.i

if.then.i.i39:                                    ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #10
  %bp_oldreq.i36 = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.013.i, i32 3
  %109 = ptrtoint ptr %b_ptr_type to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %b_ptr_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %110)
  %cmp.i.i37 = icmp eq i32 %110, 1
  %conv.i.i38 = zext i1 %cmp.i.i37 to i32
  tail call void @nilfs_dat_commit_end(ptr noundef nonnull %cond, ptr noundef %bp_oldreq.i36, i32 noundef %conv.i.i38) #8
  br label %nilfs_bmap_commit_end_ptr.exit.i

nilfs_bmap_commit_end_ptr.exit.i:                 ; preds = %if.then.i.i39, %for.body.i35.nilfs_bmap_commit_end_ptr.exit.i_crit_edge
  %bp_op.i40 = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.013.i, i32 6
  %111 = ptrtoint ptr %bp_op.i40 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %bp_op.i40, align 8
  tail call void %112(ptr noundef %btree, ptr noundef %call.i, i32 noundef %level.013.i, ptr noundef null, ptr noundef null) #8
  %inc.i41 = add nuw nsw i32 %level.013.i, 1
  %exitcond = icmp eq i32 %level.013.i, %level.0.ph
  br i1 %exitcond, label %nilfs_bmap_commit_end_ptr.exit.i.for.end.i42_crit_edge, label %nilfs_bmap_commit_end_ptr.exit.i.for.body.i35_crit_edge

nilfs_bmap_commit_end_ptr.exit.i.for.body.i35_crit_edge: ; preds = %nilfs_bmap_commit_end_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i35

nilfs_bmap_commit_end_ptr.exit.i.for.end.i42_crit_edge: ; preds = %nilfs_bmap_commit_end_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i42

for.end.i42:                                      ; preds = %nilfs_bmap_commit_end_ptr.exit.i.for.end.i42_crit_edge, %nilfs_btree_prepare_delete.exit.for.end.i42_crit_edge
  %stats.sroa.0.45265 = phi i32 [ 0, %nilfs_btree_prepare_delete.exit.for.end.i42_crit_edge ], [ %stats.sroa.0.4.ph, %nilfs_bmap_commit_end_ptr.exit.i.for.end.i42_crit_edge ]
  %retval.0.i5464 = phi i32 [ %ret.2.i, %nilfs_btree_prepare_delete.exit.for.end.i42_crit_edge ], [ %retval.0.i.ph, %nilfs_bmap_commit_end_ptr.exit.i.for.end.i42_crit_edge ]
  %b_state.i.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 7
  %113 = ptrtoint ptr %b_state.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %b_state.i.i, align 4
  %and.i.i = and i32 %114, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.end.i42.nilfs_btree_commit_delete.exit_crit_edge

for.end.i42.nilfs_btree_commit_delete.exit_crit_edge: ; preds = %for.end.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_commit_delete.exit

if.then.i:                                        ; preds = %for.end.i42
  call void @__sanitizer_cov_trace_pc() #10
  %or.i.i = or i32 %114, 1
  %115 = ptrtoint ptr %b_state.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %or.i.i, ptr %b_state.i.i, align 4
  br label %nilfs_btree_commit_delete.exit

nilfs_btree_commit_delete.exit:                   ; preds = %if.then.i, %for.end.i42.nilfs_btree_commit_delete.exit_crit_edge
  %116 = ptrtoint ptr %b_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %b_inode.i.i, align 8
  tail call void @nilfs_inode_sub_blocks(ptr noundef %117, i32 noundef %stats.sroa.0.45265) #8
  br label %out

out:                                              ; preds = %nilfs_btree_commit_delete.exit, %nilfs_btree_prepare_delete.exit.out_crit_edge, %nilfs_btree_prepare_delete.exit.thread55, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.out_crit_edge ], [ %ret.2.i, %nilfs_btree_prepare_delete.exit.out_crit_edge ], [ %retval.0.i5464, %nilfs_btree_commit_delete.exit ], [ %ret.2.i, %nilfs_btree_prepare_delete.exit.thread55 ]
  tail call fastcc void @nilfs_btree_free_path(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_btree_propagate(ptr noundef %btree, ptr noundef %bh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !36

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2058, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nilfs_btree_path_cache to i32))
  %3 = load ptr, ptr @nilfs_btree_path_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 3136) #8
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %level.021.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx.i, align 8
  %bp_sib_bh.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 1
  %5 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %bp_sib_bh.i, align 4
  %bp_index.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 2
  %6 = ptrtoint ptr %bp_index.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %bp_index.i, align 8
  %bp_oldreq.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 3
  %7 = ptrtoint ptr %bp_oldreq.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %bp_oldreq.i, align 8
  %bp_newreq.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 4
  %8 = ptrtoint ptr %bp_newreq.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %bp_newreq.i, align 8
  %bp_op.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 6
  %9 = ptrtoint ptr %bp_op.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %bp_op.i, align 8
  %inc.i = add nuw nsw i32 %level.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 14
  br i1 %exitcond.not.i, label %if.end23, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end23:                                         ; preds = %for.body.i
  %10 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %bh, align 4
  %12 = and i32 %11, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool25.not = icmp eq i32 %12, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %13 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_data, align 4
  %add.ptr.i.i = getelementptr %struct.nilfs_btree_node, ptr %14, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 4
  %17 = shl i8 %16, 3
  %18 = and i8 %17, 8
  %19 = xor i8 %18, 8
  %20 = zext i8 %19 to i32
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %20
  %21 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr1.i.i, align 8
  %23 = tail call i64 @llvm.bswap.i64(i64 %22) #8
  %bn_level.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %14, i32 0, i32 1
  %24 = ptrtoint ptr %bn_level.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bn_level.i, align 1
  %conv.i = zext i8 %25 to i32
  br label %if.end30

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %call29 = tail call i64 @nilfs_bmap_data_get_key(ptr noundef %btree, ptr noundef %bh) #8
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then26
  %key.0 = phi i64 [ %23, %if.then26 ], [ %call29, %if.else ]
  %level.0 = phi i32 [ %conv.i, %if.then26 ], [ 0, %if.else ]
  %add = add nuw nsw i32 %level.0, 1
  %call31 = tail call fastcc i32 @nilfs_btree_do_lookup(ptr noundef %btree, ptr noundef nonnull %call.i, i64 noundef %key.0, ptr noundef null, i32 noundef %add, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.end44

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call31)
  %cmp34 = icmp eq i32 %call31, -2
  br i1 %cmp34, label %if.then41, label %if.then33.out_crit_edge, !prof !36

if.then33.out_crit_edge:                          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then41:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %b_inode = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 2
  %26 = ptrtoint ptr %b_inode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_inode, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 11
  %30 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %29, ptr noundef nonnull @.str.5, i32 noundef %31, i64 noundef %key.0, i32 noundef %level.0) #8
  br label %out

if.end44:                                         ; preds = %if.end30
  %b_ptr_type = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 6
  %32 = ptrtoint ptr %b_ptr_type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %b_ptr_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp45 = icmp sgt i32 %33, 0
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end44
  %call.i77 = tail call ptr @nilfs_bmap_get_dat(ptr noundef %btree) #8
  %b_count.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i.i, i32 1, i32 3, i32 1) #8
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i, ptr %b_count.i.i, i32 1, ptr elementtype(i32) %b_count.i.i) #8, !srcloc !37
  %arrayidx.i78 = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.0
  %35 = ptrtoint ptr %arrayidx.i78 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %bh, ptr %arrayidx.i78, align 8
  %36 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %bh, align 4
  %38 = and i32 %37, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %cond.true.if.end3.i.i_crit_edge

cond.true.if.end3.i.i_crit_edge:                  ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i.i

if.then.i.i:                                      ; preds = %cond.true
  %call1.i.i = tail call fastcc i32 @nilfs_btree_prepare_update_v(ptr noundef %btree, ptr noundef nonnull %call.i, i32 noundef %level.0, ptr noundef %call.i77) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i.out.i_crit_edge, label %if.then.i.i.if.end3.i.i_crit_edge

if.then.i.i.if.end3.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i.i

if.then.i.i.out.i_crit_edge:                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end3.i.i:                                      ; preds = %if.then.i.i.if.end3.i.i_crit_edge, %cond.true.if.end3.i.i_crit_edge
  %bn_level.i.i.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 1
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end29.i.i.while.cond.i.i_crit_edge, %if.end3.i.i
  %level.0.i.i = phi i32 [ %level.0, %if.end3.i.i ], [ %inc.i.i, %if.end29.i.i.while.cond.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %level.0.i.i, 1
  %39 = ptrtoint ptr %bn_level.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bn_level.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %conv.i.i.i.i)
  %cmp5.i.i = icmp ult i32 %inc.i.i, %conv.i.i.i.i
  br i1 %cmp5.i.i, label %land.rhs.i.i, label %while.cond.i.i.if.end.i_crit_edge

while.cond.i.i.if.end.i_crit_edge:                ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i.i:                                     ; preds = %while.cond.i.i
  %arrayidx6.i.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %inc.i.i
  %41 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx6.i.i, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  %45 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool9.not.i.i = icmp eq i32 %45, 0
  br i1 %tobool9.not.i.i, label %while.body.i.i, label %land.rhs.i.i.if.end.i_crit_edge

land.rhs.i.i.if.end.i_crit_edge:                  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %42, align 4
  %48 = and i32 %47, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool13.not.i.i = icmp eq i32 %48, 0
  br i1 %tobool13.not.i.i, label %while.body.i.i.if.end29.i.i_crit_edge, label %do.end.i.i, !prof !35

while.body.i.i.if.end29.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i.i

do.end.i.i:                                       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1981, i32 noundef 9, ptr noundef null) #8
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %do.end.i.i, %while.body.i.i.if.end29.i.i_crit_edge
  %call36.i.i = tail call fastcc i32 @nilfs_btree_prepare_update_v(ptr noundef %btree, ptr noundef %call.i, i32 noundef %inc.i.i, ptr noundef %call.i77) #8
  %cmp37.i.i = icmp slt i32 %call36.i.i, 0
  br i1 %cmp37.i.i, label %while.cond41.preheader.i.i, label %if.end29.i.i.while.cond.i.i_crit_edge

if.end29.i.i.while.cond.i.i_crit_edge:            ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i

while.cond41.preheader.i.i:                       ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %level.0.i.i, i32 %level.0)
  %cmp4298.i.i = icmp ugt i32 %level.0.i.i, %level.0
  br i1 %cmp4298.i.i, label %while.body43.lr.ph.i.i, label %while.cond41.preheader.i.i.while.end44.i.i_crit_edge

while.cond41.preheader.i.i.while.end44.i.i_crit_edge: ; preds = %while.cond41.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end44.i.i

while.body43.lr.ph.i.i:                           ; preds = %while.cond41.preheader.i.i
  %i_btnode_cache.i.i.i = getelementptr i8, ptr %btree, i32 216
  br label %while.body43.i.i

while.body43.i.i:                                 ; preds = %nilfs_btree_abort_update_v.exit.i.i.while.body43.i.i_crit_edge, %while.body43.lr.ph.i.i
  %dec99.i.i = phi i32 [ %level.0.i.i, %while.body43.lr.ph.i.i ], [ %dec.i.i, %nilfs_btree_abort_update_v.exit.i.i.while.body43.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %dec99.i.i
  %bp_oldreq.i.i.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %dec99.i.i, i32 3
  %bp_newreq.i.i.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %dec99.i.i, i32 4
  tail call void @nilfs_dat_abort_update(ptr noundef %call.i77, ptr noundef %bp_oldreq.i.i.i, ptr noundef %bp_newreq.i.i.i) #8
  %49 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i.i, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %50, align 4
  %53 = and i32 %52, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.i.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i.i.i, label %while.body43.i.i.nilfs_btree_abort_update_v.exit.i.i_crit_edge, label %if.then.i.i.i

while.body43.i.i.nilfs_btree_abort_update_v.exit.i.i_crit_edge: ; preds = %while.body43.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_abort_update_v.exit.i.i

if.then.i.i.i:                                    ; preds = %while.body43.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %bp_ctxt.i.i.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %dec99.i.i, i32 5
  tail call void @nilfs_btnode_abort_change_key(ptr noundef %i_btnode_cache.i.i.i, ptr noundef %bp_ctxt.i.i.i) #8
  br label %nilfs_btree_abort_update_v.exit.i.i

nilfs_btree_abort_update_v.exit.i.i:              ; preds = %if.then.i.i.i, %while.body43.i.i.nilfs_btree_abort_update_v.exit.i.i_crit_edge
  %dec.i.i = add nsw i32 %dec99.i.i, -1
  %cmp42.i.i = icmp sgt i32 %dec.i.i, %level.0
  br i1 %cmp42.i.i, label %nilfs_btree_abort_update_v.exit.i.i.while.body43.i.i_crit_edge, label %nilfs_btree_abort_update_v.exit.i.i.while.end44.i.i_crit_edge

nilfs_btree_abort_update_v.exit.i.i.while.end44.i.i_crit_edge: ; preds = %nilfs_btree_abort_update_v.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end44.i.i

nilfs_btree_abort_update_v.exit.i.i.while.body43.i.i_crit_edge: ; preds = %nilfs_btree_abort_update_v.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body43.i.i

while.end44.i.i:                                  ; preds = %nilfs_btree_abort_update_v.exit.i.i.while.end44.i.i_crit_edge, %while.cond41.preheader.i.i.while.end44.i.i_crit_edge
  %dec.lcssa.i.i = phi i32 [ %level.0.i.i, %while.cond41.preheader.i.i.while.end44.i.i_crit_edge ], [ %level.0, %nilfs_btree_abort_update_v.exit.i.i.while.end44.i.i_crit_edge ]
  %arrayidx45.i.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %dec.lcssa.i.i
  %54 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx45.i.i, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %55, align 4
  %58 = and i32 %57, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool48.not.i.i = icmp eq i32 %58, 0
  br i1 %tobool48.not.i.i, label %if.then49.i.i, label %while.end44.i.i.out.i_crit_edge

while.end44.i.i.out.i_crit_edge:                  ; preds = %while.end44.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.then49.i.i:                                    ; preds = %while.end44.i.i
  %bp_oldreq.i88.i.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %dec.lcssa.i.i, i32 3
  %bp_newreq.i89.i.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %dec.lcssa.i.i, i32 4
  tail call void @nilfs_dat_abort_update(ptr noundef %call.i77, ptr noundef %bp_oldreq.i88.i.i, ptr noundef %bp_newreq.i89.i.i) #8
  %59 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx45.i.i, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %60, align 4
  %63 = and i32 %62, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i90.i.i = icmp eq i32 %63, 0
  br i1 %tobool.not.i90.i.i, label %if.then49.i.i.out.i_crit_edge, label %if.then.i93.i.i

if.then49.i.i.out.i_crit_edge:                    ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.then.i93.i.i:                                  ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %i_btnode_cache.i91.i.i = getelementptr i8, ptr %btree, i32 216
  %bp_ctxt.i92.i.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %dec.lcssa.i.i, i32 5
  tail call void @nilfs_btnode_abort_change_key(ptr noundef %i_btnode_cache.i91.i.i, ptr noundef %bp_ctxt.i92.i.i) #8
  br label %out.i

if.end.i:                                         ; preds = %land.rhs.i.i.if.end.i_crit_edge, %while.cond.i.i.if.end.i_crit_edge
  %64 = ptrtoint ptr %arrayidx.i78 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i78, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %65, align 4
  %68 = and i32 %67, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i = icmp eq i32 %68, 0
  br i1 %tobool.not.i, label %if.end.i.if.end14.i_crit_edge, label %if.then5.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then5.i:                                       ; preds = %if.end.i
  %conv.i.i.i.i.le = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv.i.i.i.i.le)
  %cmp.i44.i = icmp eq i32 %add, %conv.i.i.i.i.le
  br i1 %cmp.i44.i, label %if.then5.i.nilfs_btree_get_node.exit.i_crit_edge, label %if.else.i.i

if.then5.i.nilfs_btree_get_node.exit.i_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_get_node.exit.i

if.else.i.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i45.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %add
  %69 = ptrtoint ptr %arrayidx.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i.i45.i, align 8
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %b_data.i.i.i, align 4
  %b_nchildren_per_block.i.i.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 8
  %73 = ptrtoint ptr %b_nchildren_per_block.i.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %b_nchildren_per_block.i.i.i, align 8
  %conv.i.i.i = zext i16 %74 to i32
  br label %nilfs_btree_get_node.exit.i

nilfs_btree_get_node.exit.i:                      ; preds = %if.else.i.i, %if.then5.i.nilfs_btree_get_node.exit.i_crit_edge
  %storemerge.i.i = phi i32 [ %conv.i.i.i, %if.else.i.i ], [ 3, %if.then5.i.nilfs_btree_get_node.exit.i_crit_edge ]
  %node.0.i.i = phi ptr [ %72, %if.else.i.i ], [ %btree, %if.then5.i.nilfs_btree_get_node.exit.i_crit_edge ]
  %bp_index.i79 = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %add, i32 2
  %75 = ptrtoint ptr %bp_index.i79 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bp_index.i79, align 8
  %add.ptr.i.i.i.i = getelementptr %struct.nilfs_btree_node, ptr %node.0.i.i, i32 1
  %77 = ptrtoint ptr %node.0.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %node.0.i.i, align 4
  %79 = shl i8 %78, 3
  %80 = and i8 %79, 8
  %81 = xor i8 %80, 8
  %82 = zext i8 %81 to i32
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %82
  %add.ptr.i.i.i = getelementptr i64, ptr %add.ptr1.i.i.i.i, i32 %storemerge.i.i
  %add.ptr.i.i80 = getelementptr i64, ptr %add.ptr.i.i.i, i32 %76
  %83 = ptrtoint ptr %add.ptr.i.i80 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %add.ptr.i.i80, align 8
  %85 = tail call i64 @llvm.bswap.i64(i64 %84) #8
  %call10.i = tail call i32 @nilfs_dat_mark_dirty(ptr noundef %call.i77, i64 noundef %85) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %nilfs_btree_get_node.exit.i.out.i_crit_edge, label %nilfs_btree_get_node.exit.i.if.end14.i_crit_edge

nilfs_btree_get_node.exit.i.if.end14.i_crit_edge: ; preds = %nilfs_btree_get_node.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

nilfs_btree_get_node.exit.i.out.i_crit_edge:      ; preds = %nilfs_btree_get_node.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end14.i:                                       ; preds = %nilfs_btree_get_node.exit.i.if.end14.i_crit_edge, %if.end.i.if.end14.i_crit_edge
  %ret.0.i = phi i32 [ %call10.i, %nilfs_btree_get_node.exit.i.if.end14.i_crit_edge ], [ 0, %if.end.i.if.end14.i_crit_edge ]
  %86 = ptrtoint ptr %arrayidx.i78 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i78, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %87, align 4
  %90 = and i32 %89, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i47.i = icmp eq i32 %90, 0
  br i1 %tobool.not.i47.i, label %if.then.i48.i, label %if.end14.i.if.end.i.i_crit_edge

if.end14.i.if.end.i.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i48.i:                                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @nilfs_btree_commit_update_v(ptr noundef %btree, ptr noundef %call.i, i32 noundef %level.0, ptr noundef %call.i77) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i48.i, %if.end14.i.if.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %level.0, i32 %level.0.i.i)
  %cmp.not2.i.i.not = icmp ult i32 %level.0, %level.0.i.i
  br i1 %cmp.not2.i.i.not, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.out.i_crit_edge

if.end.i.i.out.i_crit_edge:                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %level.03.i.i = phi i32 [ %level.0.i49.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %add, %if.end.i.i.for.body.i.i_crit_edge ]
  tail call fastcc void @nilfs_btree_commit_update_v(ptr noundef %btree, ptr noundef %call.i, i32 noundef %level.03.i.i, ptr noundef %call.i77) #8
  %level.0.i49.i = add nuw nsw i32 %level.03.i.i, 1
  %cmp.not.i.i.not = icmp ult i32 %level.03.i.i, %level.0.i.i
  br i1 %cmp.not.i.i.not, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.out.i_crit_edge

for.body.i.i.out.i_crit_edge:                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

out.i:                                            ; preds = %for.body.i.i.out.i_crit_edge, %if.end.i.i.out.i_crit_edge, %nilfs_btree_get_node.exit.i.out.i_crit_edge, %if.then.i93.i.i, %if.then49.i.i.out.i_crit_edge, %while.end44.i.i.out.i_crit_edge, %if.then.i.i.out.i_crit_edge
  %ret.1.i = phi i32 [ %call10.i, %nilfs_btree_get_node.exit.i.out.i_crit_edge ], [ %ret.0.i, %if.end.i.i.out.i_crit_edge ], [ %call1.i.i, %if.then.i.i.out.i_crit_edge ], [ %call36.i.i, %while.end44.i.i.out.i_crit_edge ], [ %call36.i.i, %if.then49.i.i.out.i_crit_edge ], [ %call36.i.i, %if.then.i93.i.i ], [ %ret.0.i, %for.body.i.i.out.i_crit_edge ]
  %91 = ptrtoint ptr %arrayidx.i78 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.i78, align 8
  %tobool.not.i50.i = icmp eq ptr %92, null
  br i1 %tobool.not.i50.i, label %out.i.nilfs_btree_propagate_v.exit_crit_edge, label %if.then.i51.i

out.i.nilfs_btree_propagate_v.exit_crit_edge:     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_propagate_v.exit

if.then.i51.i:                                    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %92) #8
  br label %nilfs_btree_propagate_v.exit

nilfs_btree_propagate_v.exit:                     ; preds = %if.then.i51.i, %out.i.nilfs_btree_propagate_v.exit_crit_edge
  %93 = ptrtoint ptr %arrayidx.i78 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %arrayidx.i78, align 8
  br label %out

cond.false:                                       ; preds = %if.end44
  %bn_level.i.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 1
  %94 = ptrtoint ptr %bn_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %bn_level.i.i.i, align 1
  %conv.i.i2.i = zext i8 %95 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv.i.i2.i)
  %cmp3.i = icmp ult i32 %add, %conv.i.i2.i
  br i1 %cmp3.i, label %cond.false.land.rhs.i_crit_edge, label %cond.false.out_crit_edge

cond.false.out_crit_edge:                         ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

cond.false.land.rhs.i_crit_edge:                  ; preds = %cond.false
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %cond.false.land.rhs.i_crit_edge
  %inc4.i = phi i32 [ %inc.i83, %while.body.i.land.rhs.i_crit_edge ], [ %add, %cond.false.land.rhs.i_crit_edge ]
  %arrayidx.i81 = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %inc4.i
  %96 = ptrtoint ptr %arrayidx.i81 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i81, align 8
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %97, align 4
  %100 = and i32 %99, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i82 = icmp eq i32 %100, 0
  br i1 %tobool.not.i82, label %while.body.i, label %land.rhs.i.out_crit_edge

land.rhs.i.out_crit_edge:                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

while.body.i:                                     ; preds = %land.rhs.i
  tail call void @mark_buffer_dirty(ptr noundef %97) #8
  %inc.i83 = add nuw nsw i32 %inc4.i, 1
  %101 = ptrtoint ptr %bn_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %bn_level.i.i.i, align 1
  %conv.i.i.i84 = zext i8 %102 to i32
  %cmp.i85 = icmp ult i32 %inc.i83, %conv.i.i.i84
  br i1 %cmp.i85, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.out_crit_edge

while.body.i.out_crit_edge:                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

out:                                              ; preds = %while.body.i.out_crit_edge, %land.rhs.i.out_crit_edge, %cond.false.out_crit_edge, %nilfs_btree_propagate_v.exit, %if.then41, %if.then33.out_crit_edge
  %ret.0 = phi i32 [ -2, %if.then41 ], [ %call31, %if.then33.out_crit_edge ], [ %ret.1.i, %nilfs_btree_propagate_v.exit ], [ 0, %cond.false.out_crit_edge ], [ 0, %land.rhs.i.out_crit_edge ], [ 0, %while.body.i.out_crit_edge ]
  tail call fastcc void @nilfs_btree_free_path(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_btree_lookup_dirty_buffers(ptr noundef %btree, ptr noundef %listp) #0 align 64 {
entry:
  %lists = alloca [14 x %struct.list_head], align 8
  %pvec = alloca %struct.pagevec, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %lists) #8
  %0 = ptrtoint ptr %lists to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %lists, align 8, !annotation !34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pvec) #8
  %1 = call ptr @memset(ptr %pvec, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #8
  %2 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %index, align 4
  %arrayidx = getelementptr inbounds [14 x %struct.list_head], ptr %lists, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %arrayidx, ptr %arrayidx, align 8
  %prev.i = getelementptr inbounds [14 x %struct.list_head], ptr %lists, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %prev.i, align 4
  %arrayidx.1 = getelementptr inbounds [14 x %struct.list_head], ptr %lists, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %arrayidx.1, ptr %arrayidx.1, align 8
  %prev.i.1 = getelementptr inbounds [14 x %struct.list_head], ptr %lists, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx.1, ptr %prev.i.1, align 4
  %arrayidx.2 = getelementptr inbounds [14 x %struct.list_head], ptr %lists, i32 0, i32 3
  %7 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %arrayidx.2, ptr %arrayidx.2, align 8
  %prev.i.2 = getelementptr inbounds [14 x %struct.list_head], ptr %lists, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %prev.i.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx.2, ptr %prev.i.2, align 4
  %arrayidx.3 = getelementptr inbounds [14 x %struct.list_head], ptr %lists, i32 0, i32 4
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %arrayidx.3, ptr %arrayidx.3, align 8
  %prev.i.3 = getelementptr inbounds [14 x %struct.list_head], ptr %lists, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %prev.i.3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx.3, ptr %prev.i.3, align 4
  %arrayidx.4 = getelementptr inbounds [14 x %struct.list_head], ptr %lists, i32 0, i32 5
  %11 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %arrayidx.4, ptr %arrayidx.4, align 8
  %prev.i.4 = getelementptr inbounds [14 x %struct.list_head], ptr %lists, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %prev.i.4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.4, ptr %prev.i.4, align 4
  %arrayidx.5 = getelementptr inbounds [14 x %struct.list_head], ptr %lists, i32 0, i32 6
  %13 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %arrayidx.5, ptr %arrayidx.5, align 8
  %prev.i.5 = getelementptr inbounds [14 x %struct.list_head], ptr %lists, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %prev.i.5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx.5, ptr %prev.i.5, align 4
  %arrayidx.6 = getelementptr inbounds [14 x %struct.list_head], ptr %lists, i32 0, i32 7
  %15 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %arrayidx.6, ptr %arrayidx.6, align 8
  %prev.i.6 = getelementptr inbounds [14 x %struct.list_head], ptr %lists, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %prev.i.6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx.6, ptr %prev.i.6, align 4
  %arrayidx.7 = getelementptr inbounds [14 x %struct.list_head], ptr %lists, i32 0, i32 8
  %17 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %arrayidx.7, ptr %arrayidx.7, align 8
  %prev.i.7 = getelementptr inbounds [14 x %struct.list_head], ptr %lists, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %prev.i.7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx.7, ptr %prev.i.7, align 4
  %arrayidx.8 = getelementptr inbounds [14 x %struct.list_head], ptr %lists, i32 0, i32 9
  %19 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %arrayidx.8, ptr %arrayidx.8, align 8
  %prev.i.8 = getelementptr inbounds [14 x %struct.list_head], ptr %lists, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %prev.i.8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx.8, ptr %prev.i.8, align 4
  %arrayidx.9 = getelementptr inbounds [14 x %struct.list_head], ptr %lists, i32 0, i32 10
  %21 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %arrayidx.9, ptr %arrayidx.9, align 8
  %prev.i.9 = getelementptr inbounds [14 x %struct.list_head], ptr %lists, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %prev.i.9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx.9, ptr %prev.i.9, align 4
  %arrayidx.10 = getelementptr inbounds [14 x %struct.list_head], ptr %lists, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %arrayidx.10, ptr %arrayidx.10, align 8
  %prev.i.10 = getelementptr inbounds [14 x %struct.list_head], ptr %lists, i32 0, i32 11, i32 1
  %24 = ptrtoint ptr %prev.i.10 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx.10, ptr %prev.i.10, align 4
  %arrayidx.11 = getelementptr inbounds [14 x %struct.list_head], ptr %lists, i32 0, i32 12
  %25 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %arrayidx.11, ptr %arrayidx.11, align 8
  %prev.i.11 = getelementptr inbounds [14 x %struct.list_head], ptr %lists, i32 0, i32 12, i32 1
  %26 = ptrtoint ptr %prev.i.11 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx.11, ptr %prev.i.11, align 4
  %arrayidx.12 = getelementptr inbounds [14 x %struct.list_head], ptr %lists, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %arrayidx.12, ptr %arrayidx.12, align 8
  %prev.i.12 = getelementptr inbounds [14 x %struct.list_head], ptr %lists, i32 0, i32 13, i32 1
  %28 = ptrtoint ptr %prev.i.12 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx.12, ptr %prev.i.12, align 4
  %i_btnode_cache = getelementptr i8, ptr %btree, i32 216
  %29 = ptrtoint ptr %pvec to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %pvec, align 4
  %percpu_pvec_drained.i = getelementptr inbounds %struct.pagevec, ptr %pvec, i32 0, i32 1
  %30 = ptrtoint ptr %percpu_pvec_drained.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %percpu_pvec_drained.i, align 1
  %call.i70 = call i32 @pagevec_lookup_range_tag(ptr noundef nonnull %pvec, ptr noundef %i_btnode_cache, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool.not71 = icmp eq i32 %call.i70, 0
  br i1 %tobool.not71, label %entry.for.cond33.preheader_crit_edge, label %for.cond2.preheader.lr.ph

entry.for.cond33.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond33.preheader

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %b_inode.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 2
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %pagevec_release.exit.for.cond2.preheader_crit_edge, %for.cond2.preheader.lr.ph
  %31 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pvec, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp468.not = icmp eq i8 %32, 0
  br i1 %cmp468.not, label %for.cond2.preheader.pagevec_release.exit_crit_edge, label %for.cond2.preheader.do.body_crit_edge

for.cond2.preheader.do.body_crit_edge:            ; preds = %for.cond2.preheader
  br label %do.body

for.cond2.preheader.pagevec_release.exit_crit_edge: ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %pagevec_release.exit

for.cond33.preheader:                             ; preds = %pagevec_release.exit.for.cond33.preheader_crit_edge, %entry.for.cond33.preheader_crit_edge
  %prev.i59 = getelementptr inbounds %struct.list_head, ptr %listp, i32 0, i32 1
  br label %for.body35

do.body:                                          ; preds = %for.inc28.do.body_crit_edge, %for.cond2.preheader.do.body_crit_edge
  %i.069 = phi i32 [ %inc29, %for.inc28.do.body_crit_edge ], [ 0, %for.cond2.preheader.do.body_crit_edge ]
  %arrayidx6 = getelementptr %struct.pagevec, ptr %pvec, i32 0, i32 2, i32 %i.069
  %33 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx6, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp.i.not.i = icmp eq i32 %36, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !36

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %34, ptr noundef nonnull @.str.6) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !38
  unreachable

PagePrivate.exit:                                 ; preds = %do.body
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %34, align 4
  %39 = and i32 %38, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool8.not = icmp eq i32 %39, 0
  br i1 %tobool8.not, label %do.body12, label %do.end17, !prof !36

do.body12:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/btree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2154, 0\0A.popsection", ""() #8, !srcloc !39
  unreachable

do.end17:                                         ; preds = %PagePrivate.exit
  %private = getelementptr inbounds %struct.page, ptr %34, i32 0, i32 1, i32 0, i32 3
  %40 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %private, align 4
  %42 = inttoptr i32 %41 to ptr
  br label %do.body20

do.body20:                                        ; preds = %do.cond25.do.body20_crit_edge, %do.end17
  %bh.0 = phi ptr [ %42, %do.end17 ], [ %89, %do.cond25.do.body20_crit_edge ]
  %43 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %bh.0, align 4
  %45 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool22.not = icmp eq i32 %45, 0
  br i1 %tobool22.not, label %do.body20.do.cond25_crit_edge, label %if.then23

do.body20.do.cond25_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond25

if.then23:                                        ; preds = %do.body20
  %b_count.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 11
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %b_count.i.i, i32 1, i32 3, i32 1) #8
  %46 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i, ptr %b_count.i.i, i32 1, ptr elementtype(i32) %b_count.i.i) #8, !srcloc !37
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 5
  %47 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.nilfs_btree_node, ptr %48, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 4
  %51 = shl i8 %50, 3
  %52 = and i8 %51, 8
  %53 = xor i8 %52, 8
  %54 = zext i8 %53 to i32
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %54
  %55 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %add.ptr1.i.i.i, align 8
  %57 = call i64 @llvm.bswap.i64(i64 %56) #8
  %bn_level.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %48, i32 0, i32 1
  %58 = ptrtoint ptr %bn_level.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bn_level.i.i, align 1
  %conv.i.i = zext i8 %59 to i32
  %60 = add i8 %59, -14
  call void @__sanitizer_cov_trace_const_cmp1(i8 -13, i8 %60)
  %61 = icmp ult i8 %60, -13
  br i1 %61, label %if.then.i53, label %if.end.i

if.then.i53:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_stack() #11
  %62 = ptrtoint ptr %b_inode.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %b_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %63, i32 0, i32 8
  %64 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i_sb.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %63, i32 0, i32 11
  %66 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %i_ino.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 3
  %68 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %b_blocknr.i, align 8
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %65, ptr noundef nonnull @.str.7, i32 noundef %conv.i.i, i64 noundef %57, i32 noundef %67, i64 noundef %69) #8
  br label %do.cond25

if.end.i:                                         ; preds = %if.then23
  %arrayidx.i = getelementptr %struct.list_head, ptr %lists, i32 %conv.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %head.0.in.i = phi ptr [ %arrayidx.i, %if.end.i ], [ %head.0.i, %for.body.i.for.cond.i_crit_edge ]
  %70 = ptrtoint ptr %head.0.in.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %head.0.i = load ptr, ptr %head.0.in.i, align 4
  %cmp.i.not.i54 = icmp eq ptr %head.0.i, %arrayidx.i
  br i1 %cmp.i.not.i54, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %b_data6.i = getelementptr i8, ptr %head.0.i, i32 -16
  %71 = ptrtoint ptr %b_data6.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %b_data6.i, align 4
  %add.ptr.i.i33.i = getelementptr %struct.nilfs_btree_node, ptr %72, i32 1
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 4
  %75 = shl i8 %74, 3
  %76 = and i8 %75, 8
  %77 = xor i8 %76, 8
  %78 = zext i8 %77 to i32
  %add.ptr1.i.i34.i = getelementptr i8, ptr %add.ptr.i.i33.i, i32 %78
  %79 = ptrtoint ptr %add.ptr1.i.i34.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %add.ptr1.i.i34.i, align 8
  %81 = call i64 @llvm.bswap.i64(i64 %80) #8
  %cmp8.i = icmp ult i64 %57, %81
  br i1 %cmp8.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %head.0.lcssa.i = phi ptr [ %head.0.i, %for.body.i.for.end.i_crit_edge ], [ %arrayidx.i, %for.cond.i.for.end.i_crit_edge ]
  %b_assoc_buffers.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %head.0.lcssa.i, i32 0, i32 1
  %82 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %b_assoc_buffers.i, ptr noundef %83, ptr noundef %head.0.lcssa.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.i.do.cond25_crit_edge

for.end.i.do.cond25_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond25

if.end.i.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %b_assoc_buffers.i, ptr %prev.i.i, align 4
  %85 = ptrtoint ptr %b_assoc_buffers.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %head.0.lcssa.i, ptr %b_assoc_buffers.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 9, i32 1
  %86 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %83, ptr %prev3.i.i.i, align 4
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %b_assoc_buffers.i, ptr %83, align 4
  br label %do.cond25

do.cond25:                                        ; preds = %if.end.i.i.i, %for.end.i.do.cond25_crit_edge, %if.then.i53, %do.body20.do.cond25_crit_edge
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %88 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %b_this_page, align 4
  %cmp26.not = icmp eq ptr %89, %42
  br i1 %cmp26.not, label %for.inc28, label %do.cond25.do.body20_crit_edge

do.cond25.do.body20_crit_edge:                    ; preds = %do.cond25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

for.inc28:                                        ; preds = %do.cond25
  %inc29 = add nuw nsw i32 %i.069, 1
  %90 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %pvec, align 4
  %conv.i = zext i8 %91 to i32
  %cmp4 = icmp ult i32 %inc29, %conv.i
  br i1 %cmp4, label %for.inc28.do.body_crit_edge, label %for.end30

for.inc28.do.body_crit_edge:                      ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.end30:                                        ; preds = %for.inc28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i = icmp eq i8 %91, 0
  br i1 %tobool.not.i, label %for.end30.pagevec_release.exit_crit_edge, label %if.then.i55

for.end30.pagevec_release.exit_crit_edge:         ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %pagevec_release.exit

if.then.i55:                                      ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #10
  call void @__pagevec_release(ptr noundef nonnull %pvec) #8
  br label %pagevec_release.exit

pagevec_release.exit:                             ; preds = %if.then.i55, %for.end30.pagevec_release.exit_crit_edge, %for.cond2.preheader.pagevec_release.exit_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 2162, i32 noundef 0) #8
  %call.i57 = call i32 @__cond_resched() #8
  %call.i = call i32 @pagevec_lookup_range_tag(ptr noundef nonnull %pvec, ptr noundef %i_btnode_cache, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 0) #8
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %pagevec_release.exit.for.cond33.preheader_crit_edge, label %pagevec_release.exit.for.cond2.preheader_crit_edge

pagevec_release.exit.for.cond2.preheader_crit_edge: ; preds = %pagevec_release.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond2.preheader

pagevec_release.exit.for.cond33.preheader_crit_edge: ; preds = %pagevec_release.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond33.preheader

for.body35:                                       ; preds = %list_splice_tail.exit.for.body35_crit_edge, %for.cond33.preheader
  %level.172 = phi i32 [ 1, %for.cond33.preheader ], [ %inc38, %list_splice_tail.exit.for.body35_crit_edge ]
  %arrayidx36 = getelementptr [14 x %struct.list_head], ptr %lists, i32 0, i32 %level.172
  %92 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile ptr, ptr %arrayidx36, align 8
  %cmp.i.not.i58 = icmp eq ptr %93, %arrayidx36
  br i1 %cmp.i.not.i58, label %for.body35.list_splice_tail.exit_crit_edge, label %if.then.i60

for.body35.list_splice_tail.exit_crit_edge:       ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail.exit

if.then.i60:                                      ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %prev.i59 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %prev.i59, align 4
  %prev2.i.i = getelementptr [14 x %struct.list_head], ptr %lists, i32 0, i32 %level.172, i32 1
  %96 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  %98 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %95, ptr %prev3.i.i, align 4
  %99 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %93, ptr %95, align 4
  %100 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %listp, ptr %97, align 4
  store ptr %97, ptr %prev.i59, align 4
  br label %list_splice_tail.exit

list_splice_tail.exit:                            ; preds = %if.then.i60, %for.body35.list_splice_tail.exit_crit_edge
  %inc38 = add nuw nsw i32 %level.172, 1
  %exitcond.not = icmp eq i32 %inc38, 14
  br i1 %exitcond.not, label %for.end39, label %list_splice_tail.exit.for.body35_crit_edge

list_splice_tail.exit.for.body35_crit_edge:       ; preds = %list_splice_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body35

for.end39:                                        ; preds = %list_splice_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pvec) #8
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %lists) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_btree_assign(ptr noundef %btree, ptr nocapture noundef %bh, i64 noundef %blocknr, ptr nocapture noundef writeonly %binfo) #0 align 64 {
entry:
  %req.i = alloca %union.nilfs_bmap_ptr_req, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nilfs_btree_path_cache to i32))
  %0 = load ptr, ptr @nilfs_btree_path_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3136) #8
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %level.021.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %arrayidx.i, align 8
  %bp_sib_bh.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 1
  %2 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bp_sib_bh.i, align 4
  %bp_index.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 2
  %3 = ptrtoint ptr %bp_index.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %bp_index.i, align 8
  %bp_oldreq.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 3
  %4 = ptrtoint ptr %bp_oldreq.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %bp_oldreq.i, align 8
  %bp_newreq.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 4
  %5 = ptrtoint ptr %bp_newreq.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %bp_newreq.i, align 8
  %bp_op.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 6
  %6 = ptrtoint ptr %bp_op.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %bp_op.i, align 8
  %inc.i = add nuw nsw i32 %level.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 14
  br i1 %exitcond.not.i, label %if.end, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end:                                           ; preds = %for.body.i
  %7 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bh, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %11 = and i32 %10, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 5
  %12 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data, align 4
  %add.ptr.i.i = getelementptr %struct.nilfs_btree_node, ptr %13, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4
  %16 = shl i8 %15, 3
  %17 = and i8 %16, 8
  %18 = xor i8 %17, 8
  %19 = zext i8 %18 to i32
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %19
  %20 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %add.ptr1.i.i, align 8
  %22 = tail call i64 @llvm.bswap.i64(i64 %21) #8
  %bn_level.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %13, i32 0, i32 1
  %23 = ptrtoint ptr %bn_level.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bn_level.i, align 1
  %conv.i = zext i8 %24 to i32
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i64 @nilfs_bmap_data_get_key(ptr noundef %btree, ptr noundef %8) #8
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2
  %key.0 = phi i64 [ %22, %if.then2 ], [ %call5, %if.else ]
  %level.0 = phi i32 [ %conv.i, %if.then2 ], [ 0, %if.else ]
  %add = add nuw nsw i32 %level.0, 1
  %call7 = tail call fastcc i32 @nilfs_btree_do_lookup(ptr noundef %btree, ptr noundef nonnull %call.i, i64 noundef %key.0, ptr noundef null, i32 noundef %add, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end32

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call7)
  %cmp10 = icmp eq i32 %call7, -2
  br i1 %cmp10, label %do.end, label %if.then9.out_crit_edge, !prof !36

if.then9.out_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2268, i32 noundef 9, ptr noundef null) #8
  br label %out

if.end32:                                         ; preds = %if.end6
  %b_ptr_type = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 6
  %25 = ptrtoint ptr %b_ptr_type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %b_ptr_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp33 = icmp sgt i32 %26, 0
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end32
  %call.i60 = tail call ptr @nilfs_bmap_get_dat(ptr noundef %btree) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %req.i) #8
  %27 = getelementptr inbounds i8, ptr %req.i, i32 8
  %28 = call ptr @memset(ptr %27, i32 255, i32 16)
  %bn_level.i.i.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 1
  %29 = ptrtoint ptr %bn_level.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bn_level.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv.i.i.i.i)
  %cmp.i.i = icmp eq i32 %add, %conv.i.i.i.i
  br i1 %cmp.i.i, label %cond.true.nilfs_btree_get_node.exit.i_crit_edge, label %if.else.i.i

cond.true.nilfs_btree_get_node.exit.i_crit_edge:  ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_get_node.exit.i

if.else.i.i:                                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %add
  %31 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i.i, align 8
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_data.i.i.i, align 4
  %b_nchildren_per_block.i.i.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 8
  %35 = ptrtoint ptr %b_nchildren_per_block.i.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %b_nchildren_per_block.i.i.i, align 8
  %conv.i.i.i = zext i16 %36 to i32
  br label %nilfs_btree_get_node.exit.i

nilfs_btree_get_node.exit.i:                      ; preds = %if.else.i.i, %cond.true.nilfs_btree_get_node.exit.i_crit_edge
  %storemerge.i.i = phi i32 [ %conv.i.i.i, %if.else.i.i ], [ 3, %cond.true.nilfs_btree_get_node.exit.i_crit_edge ]
  %node.0.i.i = phi ptr [ %34, %if.else.i.i ], [ %btree, %cond.true.nilfs_btree_get_node.exit.i_crit_edge ]
  %bp_index.i61 = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %add, i32 2
  %37 = ptrtoint ptr %bp_index.i61 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bp_index.i61, align 8
  %add.ptr.i.i.i.i = getelementptr %struct.nilfs_btree_node, ptr %node.0.i.i, i32 1
  %39 = ptrtoint ptr %node.0.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %node.0.i.i, align 4
  %41 = shl i8 %40, 3
  %42 = and i8 %41, 8
  %43 = xor i8 %42, 8
  %44 = zext i8 %43 to i32
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %44
  %add.ptr.i.i.i = getelementptr i64, ptr %add.ptr1.i.i.i.i, i32 %storemerge.i.i
  %add.ptr.i.i62 = getelementptr i64, ptr %add.ptr.i.i.i, i32 %38
  %45 = ptrtoint ptr %add.ptr.i.i62 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %add.ptr.i.i62, align 8
  %47 = tail call i64 @llvm.bswap.i64(i64 %46) #8
  %48 = ptrtoint ptr %req.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %req.i, align 8
  %call4.i = call i32 @nilfs_dat_prepare_start(ptr noundef %call.i60, ptr noundef nonnull %req.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i63 = icmp slt i32 %call4.i, 0
  br i1 %cmp.i63, label %nilfs_btree_get_node.exit.i.nilfs_btree_assign_v.exit_crit_edge, label %if.end.i

nilfs_btree_get_node.exit.i.nilfs_btree_assign_v.exit_crit_edge: ; preds = %nilfs_btree_get_node.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_assign_v.exit

if.end.i:                                         ; preds = %nilfs_btree_get_node.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @nilfs_dat_commit_start(ptr noundef %call.i60, ptr noundef nonnull %req.i, i64 noundef %blocknr) #8
  %49 = ptrtoint ptr %bp_index.i61 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bp_index.i61, align 8
  %51 = ptrtoint ptr %node.0.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %node.0.i.i, align 4
  %53 = shl i8 %52, 3
  %54 = and i8 %53, 8
  %55 = xor i8 %54, 8
  %56 = zext i8 %55 to i32
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %56
  %add.ptr.i2.i = getelementptr i64, ptr %add.ptr1.i.i.i, i32 %50
  %57 = ptrtoint ptr %add.ptr.i2.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %add.ptr.i2.i, align 8
  %59 = ptrtoint ptr %binfo to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %46, ptr %binfo, align 8
  %bi_blkoff.i = getelementptr inbounds %struct.nilfs_binfo_v, ptr %binfo, i32 0, i32 1
  %60 = ptrtoint ptr %bi_blkoff.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %58, ptr %bi_blkoff.i, align 8
  br label %nilfs_btree_assign_v.exit

nilfs_btree_assign_v.exit:                        ; preds = %if.end.i, %nilfs_btree_get_node.exit.i.nilfs_btree_assign_v.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %call4.i, %nilfs_btree_get_node.exit.i.nilfs_btree_assign_v.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req.i) #8
  br label %out

cond.false:                                       ; preds = %if.end32
  %bn_level.i.i.i.i65 = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 1
  %61 = ptrtoint ptr %bn_level.i.i.i.i65 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bn_level.i.i.i.i65, align 1
  %conv.i.i.i.i66 = zext i8 %62 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv.i.i.i.i66)
  %cmp.i.i67 = icmp eq i32 %add, %conv.i.i.i.i66
  br i1 %cmp.i.i67, label %cond.false.nilfs_btree_get_node.exit.i80_crit_edge, label %if.else.i.i72

cond.false.nilfs_btree_get_node.exit.i80_crit_edge: ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_get_node.exit.i80

if.else.i.i72:                                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i.i68 = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %add
  %63 = ptrtoint ptr %arrayidx.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i.i.i68, align 8
  %b_data.i.i.i69 = getelementptr inbounds %struct.buffer_head, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %b_data.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %b_data.i.i.i69, align 4
  %b_nchildren_per_block.i.i.i70 = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 8
  %67 = ptrtoint ptr %b_nchildren_per_block.i.i.i70 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %b_nchildren_per_block.i.i.i70, align 8
  %conv.i.i.i71 = zext i16 %68 to i32
  br label %nilfs_btree_get_node.exit.i80

nilfs_btree_get_node.exit.i80:                    ; preds = %if.else.i.i72, %cond.false.nilfs_btree_get_node.exit.i80_crit_edge
  %storemerge.i.i73 = phi i32 [ %conv.i.i.i71, %if.else.i.i72 ], [ 3, %cond.false.nilfs_btree_get_node.exit.i80_crit_edge ]
  %node.0.i.i74 = phi ptr [ %66, %if.else.i.i72 ], [ %btree, %cond.false.nilfs_btree_get_node.exit.i80_crit_edge ]
  %bp_index.i75 = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %add, i32 2
  %69 = ptrtoint ptr %bp_index.i75 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bp_index.i75, align 8
  %add.ptr.i.i.i.i76 = getelementptr %struct.nilfs_btree_node, ptr %node.0.i.i74, i32 1
  %71 = ptrtoint ptr %node.0.i.i74 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %node.0.i.i74, align 4
  %73 = shl i8 %72, 3
  %74 = and i8 %73, 8
  %75 = xor i8 %74, 8
  %76 = zext i8 %75 to i32
  %add.ptr1.i.i.i.i77 = getelementptr i8, ptr %add.ptr.i.i.i.i76, i32 %76
  %add.ptr.i.i.i78 = getelementptr i64, ptr %add.ptr1.i.i.i.i77, i32 %storemerge.i.i73
  %add.ptr.i.i79 = getelementptr i64, ptr %add.ptr.i.i.i78, i32 %70
  %77 = ptrtoint ptr %add.ptr.i.i79 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %add.ptr.i.i79, align 8
  %79 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bh, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %80, align 4
  %83 = and i32 %82, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i = icmp eq i32 %83, 0
  br i1 %tobool.not.i, label %nilfs_btree_get_node.exit.i80.if.end22.i_crit_edge, label %if.then.i

nilfs_btree_get_node.exit.i80.if.end22.i_crit_edge: ; preds = %nilfs_btree_get_node.exit.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then.i:                                        ; preds = %nilfs_btree_get_node.exit.i80
  %84 = tail call i64 @llvm.bswap.i64(i64 %78) #8
  %bp_ctxt.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.0, i32 5
  %85 = ptrtoint ptr %bp_ctxt.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %bp_ctxt.i, align 8
  %newkey.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.0, i32 5, i32 1
  %86 = ptrtoint ptr %newkey.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %blocknr, ptr %newkey.i, align 8
  %bh9.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.0, i32 5, i32 2
  %87 = ptrtoint ptr %bh9.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %80, ptr %bh9.i, align 8
  %i_btnode_cache.i = getelementptr i8, ptr %btree, i32 216
  %call13.i = tail call i32 @nilfs_btnode_prepare_change_key(ptr noundef %i_btnode_cache.i, ptr noundef %bp_ctxt.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp.i81 = icmp slt i32 %call13.i, 0
  br i1 %cmp.i81, label %if.then.i.out_crit_edge, label %if.end.i82

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i82:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nilfs_btnode_commit_change_key(ptr noundef %i_btnode_cache.i, ptr noundef %bp_ctxt.i) #8
  %88 = ptrtoint ptr %bh9.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bh9.i, align 8
  %90 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %bh, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end.i82, %nilfs_btree_get_node.exit.i80.if.end22.i_crit_edge
  %91 = ptrtoint ptr %bp_index.i75 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bp_index.i75, align 8
  %93 = tail call i64 @llvm.bswap.i64(i64 %blocknr) #8
  %94 = ptrtoint ptr %node.0.i.i74 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %node.0.i.i74, align 4
  %96 = shl i8 %95, 3
  %97 = and i8 %96, 8
  %98 = xor i8 %97, 8
  %99 = zext i8 %98 to i32
  %add.ptr1.i.i.i65.i = getelementptr i8, ptr %add.ptr.i.i.i.i76, i32 %99
  %add.ptr.i.i66.i = getelementptr i64, ptr %add.ptr1.i.i.i65.i, i32 %storemerge.i.i73
  %add.ptr.i67.i = getelementptr i64, ptr %add.ptr.i.i66.i, i32 %92
  %100 = ptrtoint ptr %add.ptr.i67.i to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %93, ptr %add.ptr.i67.i, align 8
  %101 = ptrtoint ptr %bp_index.i75 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bp_index.i75, align 8
  %103 = load i8, ptr %node.0.i.i74, align 4
  %104 = shl i8 %103, 3
  %105 = and i8 %104, 8
  %106 = xor i8 %105, 8
  %107 = zext i8 %106 to i32
  %add.ptr1.i.i.i83 = getelementptr i8, ptr %add.ptr.i.i.i.i76, i32 %107
  %add.ptr.i69.i = getelementptr i64, ptr %add.ptr1.i.i.i83, i32 %102
  %108 = ptrtoint ptr %add.ptr.i69.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %add.ptr.i69.i, align 8
  %110 = ptrtoint ptr %binfo to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %109, ptr %binfo, align 8
  %conv.i84 = trunc i32 %level.0 to i8
  %bi_level.i = getelementptr inbounds %struct.nilfs_binfo_dat, ptr %binfo, i32 0, i32 1
  %111 = ptrtoint ptr %bi_level.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv.i84, ptr %bi_level.i, align 8
  br label %out

out:                                              ; preds = %if.end22.i, %if.then.i.out_crit_edge, %nilfs_btree_assign_v.exit, %do.end, %if.then9.out_crit_edge
  %ret.0 = phi i32 [ -2, %do.end ], [ %call7, %if.then9.out_crit_edge ], [ %retval.0.i, %nilfs_btree_assign_v.exit ], [ 0, %if.end22.i ], [ %call13.i, %if.then.i.out_crit_edge ]
  call fastcc void @nilfs_btree_free_path(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_btree_mark(ptr noundef %btree, i64 noundef %key, i32 noundef %level) #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  %ptr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #8
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ptr) #8
  %1 = ptrtoint ptr %ptr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %ptr, align 8, !annotation !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nilfs_btree_path_cache to i32))
  %2 = load ptr, ptr @nilfs_btree_path_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3136) #8
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %level.021.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %arrayidx.i, align 8
  %bp_sib_bh.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 1
  %4 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bp_sib_bh.i, align 4
  %bp_index.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 2
  %5 = ptrtoint ptr %bp_index.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %bp_index.i, align 8
  %bp_oldreq.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 3
  %6 = ptrtoint ptr %bp_oldreq.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %bp_oldreq.i, align 8
  %bp_newreq.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 4
  %7 = ptrtoint ptr %bp_newreq.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %bp_newreq.i, align 8
  %bp_op.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 6
  %8 = ptrtoint ptr %bp_op.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %bp_op.i, align 8
  %inc.i = add nuw nsw i32 %level.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 14
  br i1 %exitcond.not.i, label %if.end, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end:                                           ; preds = %for.body.i
  %add = add i32 %level, 1
  %call1 = call fastcc i32 @nilfs_btree_do_lookup(ptr noundef %btree, ptr noundef nonnull %call.i, i64 noundef %key, ptr noundef nonnull %ptr, i32 noundef %add, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end25

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call1)
  %cmp4 = icmp eq i32 %call1, -2
  br i1 %cmp4, label %do.end, label %if.then3.out_crit_edge, !prof !36

if.then3.out_crit_edge:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2322, i32 noundef 9, ptr noundef null) #8
  br label %out

if.end25:                                         ; preds = %if.end
  %9 = ptrtoint ptr %ptr to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ptr, align 8
  %call.i83 = call fastcc i32 @__nilfs_btree_get_block(ptr noundef %btree, i64 noundef %10, ptr noundef nonnull %bh, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %cmp27 = icmp slt i32 %call.i83, 0
  br i1 %cmp27, label %if.then28, label %if.end60

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call.i83)
  %cmp30 = icmp eq i32 %call.i83, -2
  br i1 %cmp30, label %do.end46, label %if.then28.out_crit_edge, !prof !36

if.then28.out_crit_edge:                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end46:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2327, i32 noundef 9, ptr noundef null) #8
  br label %out

if.end60:                                         ; preds = %if.end25
  %11 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bh, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool62.not = icmp eq i32 %15, 0
  br i1 %tobool62.not, label %if.then63, label %if.end60.if.end64_crit_edge

if.end60.if.end64_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  call void @mark_buffer_dirty(ptr noundef %12) #8
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end60.if.end64_crit_edge
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end64.brelse.exit_crit_edge, label %if.then.i

if.end64.brelse.exit_crit_edge:                   ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %12) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end64.brelse.exit_crit_edge
  %b_state.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 7
  %16 = ptrtoint ptr %b_state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %b_state.i, align 4
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool66.not = icmp eq i32 %and.i, 0
  br i1 %tobool66.not, label %if.then67, label %brelse.exit.out_crit_edge

brelse.exit.out_crit_edge:                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then67:                                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %17, 1
  %18 = ptrtoint ptr %b_state.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i, ptr %b_state.i, align 4
  br label %out

out:                                              ; preds = %if.then67, %brelse.exit.out_crit_edge, %do.end46, %if.then28.out_crit_edge, %do.end, %if.then3.out_crit_edge
  %ret.0 = phi i32 [ %call.i83, %brelse.exit.out_crit_edge ], [ %call.i83, %if.then67 ], [ -2, %do.end ], [ %call1, %if.then3.out_crit_edge ], [ -2, %do.end46 ], [ %call.i83, %if.then28.out_crit_edge ]
  call fastcc void @nilfs_btree_free_path(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ptr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_btree_seek_key(ptr noundef %btree, i64 noundef %start, ptr nocapture noundef writeonly %keyp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nilfs_btree_path_cache to i32))
  %0 = load ptr, ptr @nilfs_btree_path_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3136) #8
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %level.021.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %arrayidx.i, align 8
  %bp_sib_bh.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 1
  %2 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bp_sib_bh.i, align 4
  %bp_index.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 2
  %3 = ptrtoint ptr %bp_index.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %bp_index.i, align 8
  %bp_oldreq.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 3
  %4 = ptrtoint ptr %bp_oldreq.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %bp_oldreq.i, align 8
  %bp_newreq.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 4
  %5 = ptrtoint ptr %bp_newreq.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %bp_newreq.i, align 8
  %bp_op.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 6
  %6 = ptrtoint ptr %bp_op.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %bp_op.i, align 8
  %inc.i = add nuw nsw i32 %level.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 14
  br i1 %exitcond.not.i, label %if.end, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end:                                           ; preds = %for.body.i
  %call1 = tail call fastcc i32 @nilfs_btree_do_lookup(ptr noundef %btree, ptr noundef nonnull %call.i, i64 noundef %start, ptr noundef null, i32 noundef 1, i32 noundef 0)
  %7 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1, label %if.end.if.end7_crit_edge [
    i32 0, label %if.end.if.end7.sink.split_crit_edge
    i32 -2, label %if.then4
  ]

if.end.if.end7.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.sink.split

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %if.end
  %bn_level.i.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 1
  %8 = ptrtoint ptr %bn_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bn_level.i.i.i, align 1
  %conv.i.i.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.not1.i = icmp eq i8 %9, 0
  br i1 %cmp.not1.i, label %if.then4.if.end7_crit_edge, label %if.then4.for.body.i19_crit_edge

if.then4.for.body.i19_crit_edge:                  ; preds = %if.then4
  br label %for.body.i19

if.then4.if.end7_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

for.cond.i:                                       ; preds = %if.end.i
  %inc.i18 = add nuw nsw i32 %level.03.i, 1
  br i1 %cmp1.i, label %for.cond.i.if.end7_crit_edge, label %for.cond.i.for.body.i19_crit_edge

for.cond.i.for.body.i19_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i19

for.cond.i.if.end7_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

for.body.i19:                                     ; preds = %for.cond.i.for.body.i19_crit_edge, %if.then4.for.body.i19_crit_edge
  %level.03.i = phi i32 [ %inc.i18, %for.cond.i.for.body.i19_crit_edge ], [ 1, %if.then4.for.body.i19_crit_edge ]
  %next_adj.02.i = phi i32 [ 1, %for.cond.i.for.body.i19_crit_edge ], [ 0, %if.then4.for.body.i19_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %level.03.i, i32 %conv.i.i.i)
  %cmp1.i = icmp eq i32 %level.03.i, %conv.i.i.i
  br i1 %cmp1.i, label %for.body.i19.if.end.i_crit_edge, label %if.else.i

for.body.i19.if.end.i_crit_edge:                  ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else.i:                                        ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.03.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 8
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %for.body.i19.if.end.i_crit_edge
  %node.0.i = phi ptr [ %13, %if.else.i ], [ %btree, %for.body.i19.if.end.i_crit_edge ]
  %bp_index.i20 = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.03.i, i32 2
  %14 = ptrtoint ptr %bp_index.i20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bp_index.i20, align 8
  %add.i = add i32 %15, %next_adj.02.i
  %bn_nchildren.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %node.0.i, i32 0, i32 2
  %16 = ptrtoint ptr %bn_nchildren.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bn_nchildren.i.i, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #8
  %conv.i.i = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i.i)
  %cmp5.i = icmp slt i32 %add.i, %conv.i.i
  br i1 %cmp5.i, label %if.then6.i, label %for.cond.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i = getelementptr %struct.nilfs_btree_node, ptr %node.0.i, i32 1
  %19 = ptrtoint ptr %node.0.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %node.0.i, align 4
  %21 = shl i8 %20, 3
  %22 = and i8 %21, 8
  %23 = xor i8 %22, 8
  %24 = zext i8 %23 to i32
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %24
  %add.ptr.i.i = getelementptr i64, ptr %add.ptr1.i.i.i, i32 %add.i
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %add.ptr.i.i, align 8
  %27 = tail call i64 @llvm.bswap.i64(i64 %26) #8
  br label %if.end7.sink.split

if.end7.sink.split:                               ; preds = %if.then6.i, %if.end.if.end7.sink.split_crit_edge
  %.sink = phi i64 [ %27, %if.then6.i ], [ %start, %if.end.if.end7.sink.split_crit_edge ]
  %28 = ptrtoint ptr %keyp to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %.sink, ptr %keyp, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %for.cond.i.if.end7_crit_edge, %if.then4.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.if.end7_crit_edge ], [ -2, %if.then4.if.end7_crit_edge ], [ 0, %if.end7.sink.split ], [ -2, %for.cond.i.if.end7_crit_edge ]
  tail call fastcc void @nilfs_btree_free_path(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_btree_last_key(ptr noundef %btree, ptr noundef writeonly %keyp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nilfs_btree_path_cache to i32))
  %0 = load ptr, ptr @nilfs_btree_path_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3136) #8
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %level.021.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %arrayidx.i, align 8
  %bp_sib_bh.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 1
  %2 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bp_sib_bh.i, align 4
  %bp_index.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 2
  %3 = ptrtoint ptr %bp_index.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %bp_index.i, align 8
  %bp_oldreq.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 3
  %4 = ptrtoint ptr %bp_oldreq.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %bp_oldreq.i, align 8
  %bp_newreq.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 4
  %5 = ptrtoint ptr %bp_newreq.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %bp_newreq.i, align 8
  %bp_op.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.021.i, i32 6
  %6 = ptrtoint ptr %bp_op.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %bp_op.i, align 8
  %inc.i = add nuw nsw i32 %level.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 14
  br i1 %exitcond.not.i, label %if.end, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end:                                           ; preds = %for.body.i
  %bn_nchildren.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 2
  %7 = ptrtoint ptr %bn_nchildren.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %bn_nchildren.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp.i5 = icmp eq i16 %8, 0
  br i1 %cmp.i5, label %if.end.nilfs_btree_do_lookup_last.exit_crit_edge, label %if.end.i

if.end.nilfs_btree_do_lookup_last.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_do_lookup_last.exit

if.end.i:                                         ; preds = %if.end
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #8
  %conv.i.i = zext i16 %9 to i32
  %sub.i = add nsw i32 %conv.i.i, -1
  %bn_level.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 1
  %10 = ptrtoint ptr %bn_level.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bn_level.i.i, align 1
  %conv.i1.i = zext i8 %11 to i32
  %add.ptr.i.i.i.i = getelementptr %struct.nilfs_btree_node, ptr %btree, i32 1
  %12 = ptrtoint ptr %btree to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %btree, align 4
  %14 = shl i8 %13, 3
  %15 = and i8 %14, 8
  %16 = xor i8 %15, 8
  %17 = zext i8 %16 to i32
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %17
  %add.ptr.i.i.i = getelementptr i64, ptr %add.ptr1.i.i.i.i, i32 3
  %add.ptr.i.i = getelementptr i64, ptr %add.ptr.i.i.i, i32 %sub.i
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr.i.i, align 8
  %arrayidx.i6 = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %conv.i1.i
  %20 = ptrtoint ptr %arrayidx.i6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx.i6, align 8
  %bp_index.i7 = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %conv.i1.i, i32 2
  %21 = ptrtoint ptr %bp_index.i7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub.i, ptr %bp_index.i7, align 8
  %b_nchildren_per_block.i.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 8
  %22 = ptrtoint ptr %b_nchildren_per_block.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %b_nchildren_per_block.i.i, align 8
  %conv.i2.i = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp621.i = icmp ugt i8 %11, 1
  br i1 %cmp621.i, label %for.body.preheader.i, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end.i
  %24 = tail call i64 @llvm.bswap.i64(i64 %19) #8
  br label %for.body.i8

for.body.i8:                                      ; preds = %if.end16.i.for.body.i8_crit_edge, %for.body.preheader.i
  %level.023.in.i = phi i32 [ %level.023.i, %if.end16.i.for.body.i8_crit_edge ], [ %conv.i1.i, %for.body.preheader.i ]
  %ptr.022.i = phi i64 [ %50, %if.end16.i.for.body.i8_crit_edge ], [ %24, %for.body.preheader.i ]
  %level.023.i = add nsw i32 %level.023.in.i, -1
  %arrayidx7.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.023.i
  %call.i.i = tail call fastcc i32 @__nilfs_btree_get_block(ptr noundef %btree, i64 noundef %ptr.022.i, ptr noundef %arrayidx7.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp10.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp10.i, label %for.body.i8.nilfs_btree_do_lookup_last.exit_crit_edge, label %if.end12.i

for.body.i8.nilfs_btree_do_lookup_last.exit_crit_edge: ; preds = %for.body.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_do_lookup_last.exit

if.end12.i:                                       ; preds = %for.body.i8
  %25 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx7.i, align 8
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %b_data.i.i, align 4
  %bn_level.i.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %bn_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bn_level.i.i.i, align 1
  %conv.i.i.i = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %level.023.i, i32 %conv.i.i.i)
  %cmp.not.i.i = icmp eq i32 %level.023.i, %conv.i.i.i
  br i1 %cmp.not.i.i, label %if.end16.i, label %nilfs_btree_bad_node.exit.i, !prof !35

nilfs_btree_bad_node.exit.i:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %bn_level.i.i.i.le = getelementptr inbounds %struct.nilfs_btree_node, ptr %28, i32 0, i32 1
  tail call void @dump_stack() #11
  %b_inode.i.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 2
  %31 = ptrtoint ptr %b_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %b_inode.i.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb.i.i, align 4
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 11
  %35 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %i_ino.i.i, align 8
  %37 = ptrtoint ptr %bn_level.i.i.i.le to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bn_level.i.i.i.le, align 1
  %conv.i8.i.i = zext i8 %38 to i32
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %34, ptr noundef nonnull @.str.4, i32 noundef %36, i32 noundef %conv.i8.i.i, i32 noundef %level.023.i) #8
  br label %nilfs_btree_do_lookup_last.exit

if.end16.i:                                       ; preds = %if.end12.i
  %bn_nchildren.i3.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %28, i32 0, i32 2
  %39 = ptrtoint ptr %bn_nchildren.i3.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %bn_nchildren.i3.i, align 2
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #8
  %conv.i4.i = zext i16 %41 to i32
  %sub18.i = add nsw i32 %conv.i4.i, -1
  %add.ptr.i.i.i5.i = getelementptr %struct.nilfs_btree_node, ptr %28, i32 1
  %42 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %28, align 4
  %44 = shl i8 %43, 3
  %45 = and i8 %44, 8
  %46 = xor i8 %45, 8
  %47 = zext i8 %46 to i32
  %add.ptr1.i.i.i6.i = getelementptr i8, ptr %add.ptr.i.i.i5.i, i32 %47
  %add.ptr.i.i7.i = getelementptr i64, ptr %add.ptr1.i.i.i6.i, i32 %conv.i2.i
  %add.ptr.i8.i = getelementptr i64, ptr %add.ptr.i.i7.i, i32 %sub18.i
  %48 = ptrtoint ptr %add.ptr.i8.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %add.ptr.i8.i, align 8
  %50 = tail call i64 @llvm.bswap.i64(i64 %49) #8
  %bp_index21.i = getelementptr %struct.nilfs_btree_path, ptr %call.i, i32 %level.023.i, i32 2
  %51 = ptrtoint ptr %bp_index21.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub18.i, ptr %bp_index21.i, align 8
  %cmp6.i = icmp ugt i32 %level.023.in.i, 2
  br i1 %cmp6.i, label %if.end16.i.for.body.i8_crit_edge, label %if.end16.i.for.end.i_crit_edge

if.end16.i.for.end.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end16.i.for.body.i8_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i8

for.end.i:                                        ; preds = %if.end16.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %node.0.lcssa.i = phi ptr [ %btree, %if.end.i.for.end.i_crit_edge ], [ %28, %if.end16.i.for.end.i_crit_edge ]
  %index.0.lcssa.i = phi i32 [ %sub.i, %if.end.i.for.end.i_crit_edge ], [ %sub18.i, %if.end16.i.for.end.i_crit_edge ]
  %cmp23.not.i = icmp eq ptr %keyp, null
  br i1 %cmp23.not.i, label %for.end.i.nilfs_btree_do_lookup_last.exit_crit_edge, label %if.then24.i

for.end.i.nilfs_btree_do_lookup_last.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_do_lookup_last.exit

if.then24.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i9.i = getelementptr %struct.nilfs_btree_node, ptr %node.0.lcssa.i, i32 1
  %52 = ptrtoint ptr %node.0.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %node.0.lcssa.i, align 4
  %54 = shl i8 %53, 3
  %55 = and i8 %54, 8
  %56 = xor i8 %55, 8
  %57 = zext i8 %56 to i32
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i9.i, i32 %57
  %add.ptr.i10.i = getelementptr i64, ptr %add.ptr1.i.i.i, i32 %index.0.lcssa.i
  %58 = ptrtoint ptr %add.ptr.i10.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %add.ptr.i10.i, align 8
  %60 = tail call i64 @llvm.bswap.i64(i64 %59) #8
  %61 = ptrtoint ptr %keyp to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %keyp, align 8
  br label %nilfs_btree_do_lookup_last.exit

nilfs_btree_do_lookup_last.exit:                  ; preds = %if.then24.i, %for.end.i.nilfs_btree_do_lookup_last.exit_crit_edge, %nilfs_btree_bad_node.exit.i, %for.body.i8.nilfs_btree_do_lookup_last.exit_crit_edge, %if.end.nilfs_btree_do_lookup_last.exit_crit_edge
  %retval.0.i = phi i32 [ -2, %if.end.nilfs_btree_do_lookup_last.exit_crit_edge ], [ -22, %nilfs_btree_bad_node.exit.i ], [ 0, %for.end.i.nilfs_btree_do_lookup_last.exit_crit_edge ], [ 0, %if.then24.i ], [ %call.i.i, %for.body.i8.nilfs_btree_do_lookup_last.exit_crit_edge ]
  tail call fastcc void @nilfs_btree_free_path(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %nilfs_btree_do_lookup_last.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %nilfs_btree_do_lookup_last.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_btree_check_delete(ptr noundef %btree, i64 noundef %key) #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #8
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !34
  %bn_level.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 1
  %1 = ptrtoint ptr %bn_level.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bn_level.i.i, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %2, label %entry.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bh, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %bn_nchildren.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 2
  %5 = ptrtoint ptr %bn_nchildren.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %bn_nchildren.i, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp = icmp ugt i16 %7, 1
  br i1 %cmp, label %sw.bb2.cleanup_crit_edge, label %if.end

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb2
  %conv.i = zext i16 %7 to i32
  %sub = add nsw i32 %conv.i, -1
  %add.ptr.i.i.i = getelementptr %struct.nilfs_btree_node, ptr %btree, i32 1
  %8 = ptrtoint ptr %btree to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %btree, align 4
  %10 = shl i8 %9, 3
  %11 = and i8 %10, 8
  %12 = xor i8 %11, 8
  %13 = zext i8 %12 to i32
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %13
  %add.ptr.i.i = getelementptr i64, ptr %add.ptr1.i.i.i, i32 3
  %add.ptr.i = getelementptr i64, ptr %add.ptr.i.i, i32 %sub
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr.i, align 8
  %16 = tail call i64 @llvm.bswap.i64(i64 %15) #8
  %call.i = call fastcc i32 @__nilfs_btree_get_block(ptr noundef %btree, i64 noundef %16, ptr noundef nonnull %bh, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_data, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end8, %sw.bb
  %node.0 = phi ptr [ %20, %if.end8 ], [ %btree, %sw.bb ]
  %bn_nchildren.i38 = getelementptr inbounds %struct.nilfs_btree_node, ptr %node.0, i32 0, i32 2
  %21 = ptrtoint ptr %bn_nchildren.i38 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %bn_nchildren.i38, align 2
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #8
  %conv.i39 = zext i16 %23 to i32
  %sub10 = add nsw i32 %conv.i39, -1
  %add.ptr.i.i40 = getelementptr %struct.nilfs_btree_node, ptr %node.0, i32 1
  %24 = ptrtoint ptr %node.0 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %node.0, align 4
  %26 = shl i8 %25, 3
  %27 = and i8 %26, 8
  %28 = xor i8 %27, 8
  %29 = zext i8 %28 to i32
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i40, i32 %29
  %add.ptr.i41 = getelementptr i64, ptr %add.ptr1.i.i, i32 %sub10
  %30 = ptrtoint ptr %add.ptr.i41 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %add.ptr.i41, align 8
  %32 = tail call i64 @llvm.bswap.i64(i64 %31) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %23)
  %cmp12 = icmp ugt i16 %23, 1
  br i1 %cmp12, label %cond.true, label %sw.epilog.cond.end_crit_edge

sw.epilog.cond.end_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %sub13 = add nsw i32 %conv.i39, -2
  %add.ptr.i44 = getelementptr i64, ptr %add.ptr1.i.i, i32 %sub13
  %33 = ptrtoint ptr %add.ptr.i44 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %add.ptr.i44, align 8
  %35 = tail call i64 @llvm.bswap.i64(i64 %34) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %sw.epilog.cond.end_crit_edge
  %cond = phi i64 [ %35, %cond.true ], [ 0, %sw.epilog.cond.end_crit_edge ]
  %36 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bh, align 4
  %cmp15.not = icmp eq ptr %37, null
  br i1 %cmp15.not, label %cond.end.if.end17_crit_edge, label %brelse.exit

cond.end.if.end17_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

brelse.exit:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %37) #8
  br label %if.end17

if.end17:                                         ; preds = %brelse.exit, %cond.end.if.end17_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %key)
  %cmp18 = icmp eq i64 %32, %key
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %cond)
  %cmp19 = icmp ult i64 %cond, 3
  %narrow = select i1 %cmp18, i1 %cmp19, i1 false
  %38 = zext i1 %narrow to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %38, %if.end17 ], [ 0, %sw.bb2.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_btree_gather_data(ptr noundef %btree, ptr nocapture noundef writeonly %keys, ptr nocapture noundef writeonly %ptrs, i32 noundef %nitems) #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #8
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !34
  %bn_level.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 1
  %1 = ptrtoint ptr %bn_level.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bn_level.i.i, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %2, label %entry.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bh, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %bn_nchildren.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 2
  %5 = ptrtoint ptr %bn_nchildren.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %bn_nchildren.i, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #8
  %conv.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp = icmp ugt i16 %7, 1
  br i1 %cmp, label %do.end, label %sw.bb2.if.end_crit_edge, !prof !36

sw.bb2.if.end_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1694, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb2.if.end_crit_edge
  %sub = add nsw i32 %conv.i, -1
  %add.ptr.i.i.i = getelementptr %struct.nilfs_btree_node, ptr %btree, i32 1
  %8 = ptrtoint ptr %btree to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %btree, align 4
  %10 = shl i8 %9, 3
  %11 = and i8 %10, 8
  %12 = xor i8 %11, 8
  %13 = zext i8 %12 to i32
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %13
  %add.ptr.i.i = getelementptr i64, ptr %add.ptr1.i.i.i, i32 3
  %add.ptr.i = getelementptr i64, ptr %add.ptr.i.i, i32 %sub
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr.i, align 8
  %16 = tail call i64 @llvm.bswap.i64(i64 %15) #8
  %call.i = call fastcc i32 @__nilfs_btree_get_block(ptr noundef %btree, i64 noundef %16, ptr noundef nonnull %bh, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp24 = icmp slt i32 %call.i, 0
  br i1 %cmp24, label %if.end.cleanup_crit_edge, label %if.end26

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_data, align 4
  %b_nchildren_per_block.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 8
  %21 = ptrtoint ptr %b_nchildren_per_block.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %b_nchildren_per_block.i, align 8
  %conv.i69 = zext i16 %22 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end26, %sw.bb
  %node.0 = phi ptr [ %20, %if.end26 ], [ %btree, %sw.bb ]
  %ncmax.0 = phi i32 [ %conv.i69, %if.end26 ], [ 3, %sw.bb ]
  %bn_nchildren.i70 = getelementptr inbounds %struct.nilfs_btree_node, ptr %node.0, i32 0, i32 2
  %23 = ptrtoint ptr %bn_nchildren.i70 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %bn_nchildren.i70, align 2
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #8
  %conv.i71 = zext i16 %25 to i32
  %26 = tail call i32 @llvm.smin.i32(i32 %conv.i71, i32 %nitems)
  %add.ptr.i72 = getelementptr %struct.nilfs_btree_node, ptr %node.0, i32 1
  %27 = ptrtoint ptr %node.0 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %node.0, align 4
  %29 = shl i8 %28, 3
  %30 = and i8 %29, 8
  %31 = xor i8 %30, 8
  %32 = zext i8 %31 to i32
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i72, i32 %32
  %add.ptr.i74 = getelementptr i64, ptr %add.ptr1.i, i32 %ncmax.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp3475 = icmp sgt i32 %26, 0
  br i1 %cmp3475, label %sw.epilog.for.body_crit_edge, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %i.076 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %sw.epilog.for.body_crit_edge ]
  %arrayidx = getelementptr i64, ptr %add.ptr1.i, i32 %i.076
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx, align 8
  %35 = tail call i64 @llvm.bswap.i64(i64 %34)
  %arrayidx35 = getelementptr i64, ptr %keys, i32 %i.076
  %36 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %arrayidx35, align 8
  %arrayidx36 = getelementptr i64, ptr %add.ptr.i74, i32 %i.076
  %37 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx36, align 8
  %39 = tail call i64 @llvm.bswap.i64(i64 %38)
  %arrayidx37 = getelementptr i64, ptr %ptrs, i32 %i.076
  %40 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %arrayidx37, align 8
  %inc = add nuw nsw i32 %i.076, 1
  %exitcond.not = icmp eq i32 %inc, %26
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  %41 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bh, align 4
  %cmp38.not = icmp eq ptr %42, null
  br i1 %cmp38.not, label %for.end.cleanup_crit_edge, label %brelse.exit

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

brelse.exit:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %42) #8
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %26, %brelse.exit ], [ %26, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_btree_do_lookup(ptr noundef %btree, ptr nocapture noundef %path, i64 noundef %key, ptr noundef writeonly %ptrp, i32 noundef %minlevel, i32 noundef %readahead) unnamed_addr #0 align 64 {
entry:
  %p = alloca %struct.nilfs_btree_readahead_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #8
  %0 = getelementptr inbounds %struct.nilfs_btree_readahead_info, ptr %p, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nilfs_btree_readahead_info, ptr %p, i32 0, i32 2
  %2 = getelementptr inbounds %struct.nilfs_btree_readahead_info, ptr %p, i32 0, i32 3
  %bn_level.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 1
  %3 = call ptr @memset(ptr %p, i32 255, i32 16)
  %4 = ptrtoint ptr %bn_level.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bn_level.i, align 1
  %conv.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %minlevel)
  %cmp = icmp slt i32 %conv.i, %minlevel
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bn_nchildren.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 2
  %6 = ptrtoint ptr %bn_nchildren.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bn_nchildren.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp3 = icmp eq i16 %7, 0
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %while.body.lr.ph.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %lor.lhs.false
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #8
  %conv.i109 = zext i16 %8 to i32
  %sub.i = add nsw i32 %conv.i109, -1
  %add.ptr.i.i.i = getelementptr %struct.nilfs_btree_node, ptr %btree, i32 1
  %9 = ptrtoint ptr %btree to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %btree, align 4
  %11 = shl i8 %10, 3
  %12 = and i8 %11, 8
  %13 = xor i8 %12, 8
  %14 = zext i8 %13 to i32
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %14
  br label %while.body.i

while.body.i:                                     ; preds = %if.else.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %high.043.i = phi i32 [ %sub.i, %while.body.lr.ph.i ], [ %high.1.i, %if.else.i.while.body.i_crit_edge ]
  %low.042.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %low.1.i, %if.else.i.while.body.i_crit_edge ]
  %add.i = add i32 %low.042.i, %high.043.i
  %div.i = sdiv i32 %add.i, 2
  %add.ptr.i.i = getelementptr i64, ptr %add.ptr1.i.i.i, i32 %div.i
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %add.ptr.i.i, align 8
  %17 = tail call i64 @llvm.bswap.i64(i64 %16) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %key)
  %cmp2.i = icmp eq i64 %17, %key
  br i1 %cmp2.i, label %while.body.i.nilfs_btree_node_lookup.exit_crit_edge, label %if.else.i

while.body.i.nilfs_btree_node_lookup.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_node_lookup.exit

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %key)
  %cmp3.i = icmp ult i64 %17, %key
  %add5.i = add nsw i32 %div.i, 1
  %sub7.i = add nsw i32 %div.i, -1
  %low.1.i = select i1 %cmp3.i, i32 %add5.i, i32 %low.042.i
  %high.1.i = select i1 %cmp3.i, i32 %high.043.i, i32 %sub7.i
  %cmp.not.i = icmp sgt i32 %low.1.i, %high.1.i
  br i1 %cmp.not.i, label %while.end.i, label %if.else.i.while.body.i_crit_edge

if.else.i.while.body.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp10.i = icmp ugt i8 %5, 1
  br i1 %cmp10.i, label %if.then11.i, label %if.else16.i

if.then11.i:                                      ; preds = %while.end.i
  br i1 %cmp3.i, label %if.then11.i.nilfs_btree_node_lookup.exit_crit_edge, label %land.lhs.true.i

if.then11.i.nilfs_btree_node_lookup.exit_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_node_lookup.exit

land.lhs.true.i:                                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.i)
  %cmp13.i = icmp sgt i32 %add.i, 1
  %dec.i = sext i1 %cmp13.i to i32
  %spec.select.i = add nsw i32 %div.i, %dec.i
  br label %nilfs_btree_node_lookup.exit

if.else16.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %s.1.le.i = zext i1 %cmp3.i to i32
  %spec.select36.i = add nsw i32 %div.i, %s.1.le.i
  br label %nilfs_btree_node_lookup.exit

nilfs_btree_node_lookup.exit:                     ; preds = %if.else16.i, %land.lhs.true.i, %if.then11.i.nilfs_btree_node_lookup.exit_crit_edge, %while.body.i.nilfs_btree_node_lookup.exit_crit_edge
  %index.1.i = phi i32 [ %div.i, %if.then11.i.nilfs_btree_node_lookup.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ], [ %spec.select36.i, %if.else16.i ], [ %div.i, %while.body.i.nilfs_btree_node_lookup.exit_crit_edge ]
  %cmp21.i = phi i32 [ 0, %if.then11.i.nilfs_btree_node_lookup.exit_crit_edge ], [ 0, %land.lhs.true.i ], [ 0, %if.else16.i ], [ 1, %while.body.i.nilfs_btree_node_lookup.exit_crit_edge ]
  %18 = ptrtoint ptr %btree to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %btree, align 4
  %20 = shl i8 %19, 3
  %21 = and i8 %20, 8
  %22 = xor i8 %21, 8
  %23 = zext i8 %22 to i32
  %add.ptr1.i.i.i111 = getelementptr i8, ptr %add.ptr.i.i.i, i32 %23
  %add.ptr.i.i112 = getelementptr i64, ptr %add.ptr1.i.i.i111, i32 3
  %add.ptr.i = getelementptr i64, ptr %add.ptr.i.i112, i32 %index.1.i
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %add.ptr.i, align 8
  %26 = tail call i64 @llvm.bswap.i64(i64 %25) #8
  %arrayidx = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %conv.i
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx, align 8
  %bp_index = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %conv.i, i32 2
  %28 = ptrtoint ptr %bp_index to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %index.1.i, ptr %bp_index, align 8
  %b_nchildren_per_block.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 8
  %29 = ptrtoint ptr %b_nchildren_per_block.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %b_nchildren_per_block.i, align 8
  %conv.i113 = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %minlevel)
  %cmp8.not176.not = icmp sgt i32 %conv.i, %minlevel
  br i1 %cmp8.not176.not, label %while.body.lr.ph, label %nilfs_btree_node_lookup.exit.while.end_crit_edge

nilfs_btree_node_lookup.exit.while.end_crit_edge: ; preds = %nilfs_btree_node_lookup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %nilfs_btree_node_lookup.exit
  %dec175 = add nsw i32 %conv.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %readahead)
  %tobool.not = icmp eq i32 %readahead, 0
  br label %while.body

while.body:                                       ; preds = %if.end58.while.body_crit_edge, %while.body.lr.ph
  %dec181 = phi i32 [ %dec175, %while.body.lr.ph ], [ %dec, %if.end58.while.body_crit_edge ]
  %found.0180 = phi i32 [ %cmp21.i, %while.body.lr.ph ], [ %found.1, %if.end58.while.body_crit_edge ]
  %level.0179 = phi i32 [ %conv.i, %while.body.lr.ph ], [ %dec181, %if.end58.while.body_crit_edge ]
  %ptr.0178 = phi i64 [ %26, %while.body.lr.ph ], [ %ptr.1, %if.end58.while.body_crit_edge ]
  %index.0177 = phi i32 [ %index.1.i, %while.body.lr.ph ], [ %index.1, %if.end58.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec181)
  %cmp9 = icmp ne i32 %dec181, 1
  %or.cond = or i1 %tobool.not, %cmp9
  br i1 %or.cond, label %while.body.if.end15_crit_edge, label %if.then10

while.body.if.end15_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then10:                                        ; preds = %while.body
  %31 = ptrtoint ptr %bn_level.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bn_level.i, align 1
  %conv.i.i.i = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %level.0179, i32 %conv.i.i.i)
  %cmp.i = icmp eq i32 %level.0179, %conv.i.i.i
  br i1 %cmp.i, label %if.then10.nilfs_btree_get_node.exit_crit_edge, label %if.else.i115

if.then10.nilfs_btree_get_node.exit_crit_edge:    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_get_node.exit

if.else.i115:                                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level.0179
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i, align 8
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %b_data.i.i, align 4
  %37 = ptrtoint ptr %b_nchildren_per_block.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %b_nchildren_per_block.i, align 8
  %conv.i.i114 = zext i16 %38 to i32
  br label %nilfs_btree_get_node.exit

nilfs_btree_get_node.exit:                        ; preds = %if.else.i115, %if.then10.nilfs_btree_get_node.exit_crit_edge
  %storemerge.i = phi i32 [ %conv.i.i114, %if.else.i115 ], [ 3, %if.then10.nilfs_btree_get_node.exit_crit_edge ]
  %node.0.i = phi ptr [ %36, %if.else.i115 ], [ %btree, %if.then10.nilfs_btree_get_node.exit_crit_edge ]
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %storemerge.i, ptr %2, align 4
  %40 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %node.0.i, ptr %p, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %index.0177, ptr %1, align 4
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 7, ptr %0, align 4
  br label %if.end15

if.end15:                                         ; preds = %nilfs_btree_get_node.exit, %while.body.if.end15_crit_edge
  %ra.0 = phi ptr [ %p, %nilfs_btree_get_node.exit ], [ null, %while.body.if.end15_crit_edge ]
  %arrayidx16 = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %dec181
  %call18 = call fastcc i32 @__nilfs_btree_get_block(ptr noundef %btree, i64 noundef %ptr.0178, ptr noundef %arrayidx16, ptr noundef %ra.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end15.cleanup_crit_edge, label %if.end21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %43 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx16, align 8
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %b_data.i, align 4
  %bn_level.i.i116 = getelementptr inbounds %struct.nilfs_btree_node, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %bn_level.i.i116 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bn_level.i.i116, align 1
  %conv.i.i117 = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %dec181, i32 %conv.i.i117)
  %cmp.not.i118 = icmp eq i32 %dec181, %conv.i.i117
  br i1 %cmp.not.i118, label %if.end26, label %nilfs_btree_bad_node.exit, !prof !35

nilfs_btree_bad_node.exit:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_stack() #11
  %b_inode.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 2
  %49 = ptrtoint ptr %b_inode.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %b_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_sb.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 11
  %53 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %i_ino.i, align 8
  %55 = ptrtoint ptr %bn_level.i.i116 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bn_level.i.i116, align 1
  %conv.i8.i = zext i8 %56 to i32
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %52, ptr noundef nonnull @.str.4, i32 noundef %54, i32 noundef %conv.i8.i, i32 noundef %dec181) #8
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.0180)
  %tobool27.not = icmp eq i32 %found.0180, 0
  br i1 %tobool27.not, label %if.then28, label %if.end26.if.end30_crit_edge

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then28:                                        ; preds = %if.end26
  %bn_nchildren.i.i119 = getelementptr inbounds %struct.nilfs_btree_node, ptr %46, i32 0, i32 2
  %57 = ptrtoint ptr %bn_nchildren.i.i119 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %bn_nchildren.i.i119, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %cmp.not41.i120 = icmp eq i16 %58, 0
  br i1 %cmp.not41.i120, label %if.then28.if.end30_crit_edge, label %while.body.lr.ph.i125

if.then28.if.end30_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

while.body.lr.ph.i125:                            ; preds = %if.then28
  %59 = call i16 @llvm.bswap.i16(i16 %58) #8
  %conv.i.i121 = zext i16 %59 to i32
  %sub.i122 = add nsw i32 %conv.i.i121, -1
  %add.ptr.i.i.i123 = getelementptr %struct.nilfs_btree_node, ptr %46, i32 1
  %60 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %46, align 4
  %62 = shl i8 %61, 3
  %63 = and i8 %62, 8
  %64 = xor i8 %63, 8
  %65 = zext i8 %64 to i32
  %add.ptr1.i.i.i124 = getelementptr i8, ptr %add.ptr.i.i.i123, i32 %65
  br label %while.body.i132

while.body.i132:                                  ; preds = %if.else.i139.while.body.i132_crit_edge, %while.body.lr.ph.i125
  %high.043.i126 = phi i32 [ %sub.i122, %while.body.lr.ph.i125 ], [ %high.1.i137, %if.else.i139.while.body.i132_crit_edge ]
  %low.042.i127 = phi i32 [ 0, %while.body.lr.ph.i125 ], [ %low.1.i136, %if.else.i139.while.body.i132_crit_edge ]
  %add.i128 = add i32 %low.042.i127, %high.043.i126
  %div.i129 = sdiv i32 %add.i128, 2
  %add.ptr.i.i130 = getelementptr i64, ptr %add.ptr1.i.i.i124, i32 %div.i129
  %66 = ptrtoint ptr %add.ptr.i.i130 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %add.ptr.i.i130, align 8
  %68 = call i64 @llvm.bswap.i64(i64 %67) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %68, i64 %key)
  %cmp2.i131 = icmp eq i64 %68, %key
  br i1 %cmp2.i131, label %while.body.i132.if.end30_crit_edge, label %if.else.i139

while.body.i132.if.end30_crit_edge:               ; preds = %while.body.i132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.else.i139:                                     ; preds = %while.body.i132
  call void @__sanitizer_cov_trace_cmp8(i64 %68, i64 %key)
  %cmp3.i133 = icmp ult i64 %68, %key
  %add5.i134 = add nsw i32 %div.i129, 1
  %sub7.i135 = add nsw i32 %div.i129, -1
  %low.1.i136 = select i1 %cmp3.i133, i32 %add5.i134, i32 %low.042.i127
  %high.1.i137 = select i1 %cmp3.i133, i32 %high.043.i126, i32 %sub7.i135
  %cmp.not.i138 = icmp sgt i32 %low.1.i136, %high.1.i137
  br i1 %cmp.not.i138, label %while.end.i142, label %if.else.i139.while.body.i132_crit_edge

if.else.i139.while.body.i132_crit_edge:           ; preds = %if.else.i139
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i132

while.end.i142:                                   ; preds = %if.else.i139
  %69 = ptrtoint ptr %bn_level.i.i116 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %bn_level.i.i116, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %70)
  %cmp10.i141 = icmp ugt i8 %70, 1
  br i1 %cmp10.i141, label %if.then11.i143, label %if.else16.i150

if.then11.i143:                                   ; preds = %while.end.i142
  br i1 %cmp3.i133, label %if.then11.i143.if.end30_crit_edge, label %land.lhs.true.i147

if.then11.i143.if.end30_crit_edge:                ; preds = %if.then11.i143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true.i147:                               ; preds = %if.then11.i143
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.i128)
  %cmp13.i144 = icmp sgt i32 %add.i128, 1
  %dec.i145 = sext i1 %cmp13.i144 to i32
  %spec.select.i146 = add nsw i32 %div.i129, %dec.i145
  br label %if.end30

if.else16.i150:                                   ; preds = %while.end.i142
  call void @__sanitizer_cov_trace_pc() #10
  %s.1.le.i148 = zext i1 %cmp3.i133 to i32
  %spec.select36.i149 = add nsw i32 %div.i129, %s.1.le.i148
  br label %if.end30

if.end30:                                         ; preds = %if.else16.i150, %land.lhs.true.i147, %if.then11.i143.if.end30_crit_edge, %while.body.i132.if.end30_crit_edge, %if.then28.if.end30_crit_edge, %if.end26.if.end30_crit_edge
  %index.1 = phi i32 [ %div.i129, %if.then11.i143.if.end30_crit_edge ], [ %spec.select.i146, %land.lhs.true.i147 ], [ 0, %if.then28.if.end30_crit_edge ], [ %spec.select36.i149, %if.else16.i150 ], [ 0, %if.end26.if.end30_crit_edge ], [ %div.i129, %while.body.i132.if.end30_crit_edge ]
  %tobool35.not = phi i1 [ false, %if.then11.i143.if.end30_crit_edge ], [ false, %land.lhs.true.i147 ], [ true, %if.then28.if.end30_crit_edge ], [ false, %if.else16.i150 ], [ true, %if.end26.if.end30_crit_edge ], [ true, %while.body.i132.if.end30_crit_edge ]
  %found.1 = phi i32 [ 0, %if.then11.i143.if.end30_crit_edge ], [ 0, %land.lhs.true.i147 ], [ 1, %if.then28.if.end30_crit_edge ], [ 0, %if.else16.i150 ], [ 1, %if.end26.if.end30_crit_edge ], [ 1, %while.body.i132.if.end30_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %index.1, i32 %conv.i113)
  %cmp31 = icmp slt i32 %index.1, %conv.i113
  br i1 %cmp31, label %if.then32, label %if.else34

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i154 = getelementptr %struct.nilfs_btree_node, ptr %46, i32 1
  %71 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %46, align 4
  %73 = shl i8 %72, 3
  %74 = and i8 %73, 8
  %75 = xor i8 %74, 8
  %76 = zext i8 %75 to i32
  %add.ptr1.i.i.i155 = getelementptr i8, ptr %add.ptr.i.i.i154, i32 %76
  %add.ptr.i.i156 = getelementptr i64, ptr %add.ptr1.i.i.i155, i32 %conv.i113
  %add.ptr.i157 = getelementptr i64, ptr %add.ptr.i.i156, i32 %index.1
  %77 = ptrtoint ptr %add.ptr.i157 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %add.ptr.i157, align 8
  %79 = call i64 @llvm.bswap.i64(i64 %78) #8
  br label %if.end58

if.else34:                                        ; preds = %if.end30
  %spec.select = select i1 %tobool35.not, i1 true, i1 %cmp9
  br i1 %spec.select, label %do.end, label %if.else34.if.end58_crit_edge, !prof !36

if.else34.if.end58_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

do.end:                                           ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 582, i32 noundef 9, ptr noundef null) #8
  br label %if.end58

if.end58:                                         ; preds = %do.end, %if.else34.if.end58_crit_edge, %if.then32
  %ptr.1 = phi i64 [ %79, %if.then32 ], [ 0, %do.end ], [ 0, %if.else34.if.end58_crit_edge ]
  %bp_index60 = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %dec181, i32 2
  %80 = ptrtoint ptr %bp_index60 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %index.1, ptr %bp_index60, align 8
  %dec = add i32 %dec181, -1
  %cmp8.not = icmp slt i32 %dec, %minlevel
  br i1 %cmp8.not, label %if.end58.while.end_crit_edge, label %if.end58.while.body_crit_edge

if.end58.while.body_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end58.while.end_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end58.while.end_crit_edge, %nilfs_btree_node_lookup.exit.while.end_crit_edge
  %ptr.0.lcssa = phi i64 [ %26, %nilfs_btree_node_lookup.exit.while.end_crit_edge ], [ %ptr.1, %if.end58.while.end_crit_edge ]
  %found.0.lcssa = phi i32 [ %cmp21.i, %nilfs_btree_node_lookup.exit.while.end_crit_edge ], [ %found.1, %if.end58.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.0.lcssa)
  %tobool61.not = icmp eq i32 %found.0.lcssa, 0
  br i1 %tobool61.not, label %while.end.cleanup_crit_edge, label %if.end63

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end63:                                         ; preds = %while.end
  %cmp64.not = icmp eq ptr %ptrp, null
  br i1 %cmp64.not, label %if.end63.cleanup_crit_edge, label %if.then65

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %ptrp to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %ptr.0.lcssa, ptr %ptrp, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %if.end63.cleanup_crit_edge, %while.end.cleanup_crit_edge, %nilfs_btree_bad_node.exit, %if.end15.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ], [ -22, %nilfs_btree_bad_node.exit ], [ -2, %while.end.cleanup_crit_edge ], [ 0, %if.then65 ], [ 0, %if.end63.cleanup_crit_edge ], [ %call18, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nilfs_btree_free_path(ptr noundef %path) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %path, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.brelse.exit_crit_edge, label %if.then.i

entry.brelse.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %1) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %entry.brelse.exit_crit_edge
  %arrayidx.1 = getelementptr %struct.nilfs_btree_path, ptr %path, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 8
  %tobool.not.i.1 = icmp eq ptr %3, null
  br i1 %tobool.not.i.1, label %brelse.exit.brelse.exit.1_crit_edge, label %if.then.i.1

brelse.exit.brelse.exit.1_crit_edge:              ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.1

if.then.i.1:                                      ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %3) #8
  br label %brelse.exit.1

brelse.exit.1:                                    ; preds = %if.then.i.1, %brelse.exit.brelse.exit.1_crit_edge
  %arrayidx.2 = getelementptr %struct.nilfs_btree_path, ptr %path, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 8
  %tobool.not.i.2 = icmp eq ptr %5, null
  br i1 %tobool.not.i.2, label %brelse.exit.1.brelse.exit.2_crit_edge, label %if.then.i.2

brelse.exit.1.brelse.exit.2_crit_edge:            ; preds = %brelse.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.2

if.then.i.2:                                      ; preds = %brelse.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %5) #8
  br label %brelse.exit.2

brelse.exit.2:                                    ; preds = %if.then.i.2, %brelse.exit.1.brelse.exit.2_crit_edge
  %arrayidx.3 = getelementptr %struct.nilfs_btree_path, ptr %path, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 8
  %tobool.not.i.3 = icmp eq ptr %7, null
  br i1 %tobool.not.i.3, label %brelse.exit.2.brelse.exit.3_crit_edge, label %if.then.i.3

brelse.exit.2.brelse.exit.3_crit_edge:            ; preds = %brelse.exit.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.3

if.then.i.3:                                      ; preds = %brelse.exit.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %7) #8
  br label %brelse.exit.3

brelse.exit.3:                                    ; preds = %if.then.i.3, %brelse.exit.2.brelse.exit.3_crit_edge
  %arrayidx.4 = getelementptr %struct.nilfs_btree_path, ptr %path, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.4, align 8
  %tobool.not.i.4 = icmp eq ptr %9, null
  br i1 %tobool.not.i.4, label %brelse.exit.3.brelse.exit.4_crit_edge, label %if.then.i.4

brelse.exit.3.brelse.exit.4_crit_edge:            ; preds = %brelse.exit.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.4

if.then.i.4:                                      ; preds = %brelse.exit.3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %9) #8
  br label %brelse.exit.4

brelse.exit.4:                                    ; preds = %if.then.i.4, %brelse.exit.3.brelse.exit.4_crit_edge
  %arrayidx.5 = getelementptr %struct.nilfs_btree_path, ptr %path, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.5, align 8
  %tobool.not.i.5 = icmp eq ptr %11, null
  br i1 %tobool.not.i.5, label %brelse.exit.4.brelse.exit.5_crit_edge, label %if.then.i.5

brelse.exit.4.brelse.exit.5_crit_edge:            ; preds = %brelse.exit.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.5

if.then.i.5:                                      ; preds = %brelse.exit.4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %11) #8
  br label %brelse.exit.5

brelse.exit.5:                                    ; preds = %if.then.i.5, %brelse.exit.4.brelse.exit.5_crit_edge
  %arrayidx.6 = getelementptr %struct.nilfs_btree_path, ptr %path, i32 6
  %12 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.6, align 8
  %tobool.not.i.6 = icmp eq ptr %13, null
  br i1 %tobool.not.i.6, label %brelse.exit.5.brelse.exit.6_crit_edge, label %if.then.i.6

brelse.exit.5.brelse.exit.6_crit_edge:            ; preds = %brelse.exit.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.6

if.then.i.6:                                      ; preds = %brelse.exit.5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %13) #8
  br label %brelse.exit.6

brelse.exit.6:                                    ; preds = %if.then.i.6, %brelse.exit.5.brelse.exit.6_crit_edge
  %arrayidx.7 = getelementptr %struct.nilfs_btree_path, ptr %path, i32 7
  %14 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.7, align 8
  %tobool.not.i.7 = icmp eq ptr %15, null
  br i1 %tobool.not.i.7, label %brelse.exit.6.brelse.exit.7_crit_edge, label %if.then.i.7

brelse.exit.6.brelse.exit.7_crit_edge:            ; preds = %brelse.exit.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.7

if.then.i.7:                                      ; preds = %brelse.exit.6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %15) #8
  br label %brelse.exit.7

brelse.exit.7:                                    ; preds = %if.then.i.7, %brelse.exit.6.brelse.exit.7_crit_edge
  %arrayidx.8 = getelementptr %struct.nilfs_btree_path, ptr %path, i32 8
  %16 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.8, align 8
  %tobool.not.i.8 = icmp eq ptr %17, null
  br i1 %tobool.not.i.8, label %brelse.exit.7.brelse.exit.8_crit_edge, label %if.then.i.8

brelse.exit.7.brelse.exit.8_crit_edge:            ; preds = %brelse.exit.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.8

if.then.i.8:                                      ; preds = %brelse.exit.7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %17) #8
  br label %brelse.exit.8

brelse.exit.8:                                    ; preds = %if.then.i.8, %brelse.exit.7.brelse.exit.8_crit_edge
  %arrayidx.9 = getelementptr %struct.nilfs_btree_path, ptr %path, i32 9
  %18 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.9, align 8
  %tobool.not.i.9 = icmp eq ptr %19, null
  br i1 %tobool.not.i.9, label %brelse.exit.8.brelse.exit.9_crit_edge, label %if.then.i.9

brelse.exit.8.brelse.exit.9_crit_edge:            ; preds = %brelse.exit.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.9

if.then.i.9:                                      ; preds = %brelse.exit.8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %19) #8
  br label %brelse.exit.9

brelse.exit.9:                                    ; preds = %if.then.i.9, %brelse.exit.8.brelse.exit.9_crit_edge
  %arrayidx.10 = getelementptr %struct.nilfs_btree_path, ptr %path, i32 10
  %20 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.10, align 8
  %tobool.not.i.10 = icmp eq ptr %21, null
  br i1 %tobool.not.i.10, label %brelse.exit.9.brelse.exit.10_crit_edge, label %if.then.i.10

brelse.exit.9.brelse.exit.10_crit_edge:           ; preds = %brelse.exit.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.10

if.then.i.10:                                     ; preds = %brelse.exit.9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %21) #8
  br label %brelse.exit.10

brelse.exit.10:                                   ; preds = %if.then.i.10, %brelse.exit.9.brelse.exit.10_crit_edge
  %arrayidx.11 = getelementptr %struct.nilfs_btree_path, ptr %path, i32 11
  %22 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.11, align 8
  %tobool.not.i.11 = icmp eq ptr %23, null
  br i1 %tobool.not.i.11, label %brelse.exit.10.brelse.exit.11_crit_edge, label %if.then.i.11

brelse.exit.10.brelse.exit.11_crit_edge:          ; preds = %brelse.exit.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.11

if.then.i.11:                                     ; preds = %brelse.exit.10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %23) #8
  br label %brelse.exit.11

brelse.exit.11:                                   ; preds = %if.then.i.11, %brelse.exit.10.brelse.exit.11_crit_edge
  %arrayidx.12 = getelementptr %struct.nilfs_btree_path, ptr %path, i32 12
  %24 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.12, align 8
  %tobool.not.i.12 = icmp eq ptr %25, null
  br i1 %tobool.not.i.12, label %brelse.exit.11.brelse.exit.12_crit_edge, label %if.then.i.12

brelse.exit.11.brelse.exit.12_crit_edge:          ; preds = %brelse.exit.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.12

if.then.i.12:                                     ; preds = %brelse.exit.11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %25) #8
  br label %brelse.exit.12

brelse.exit.12:                                   ; preds = %if.then.i.12, %brelse.exit.11.brelse.exit.12_crit_edge
  %arrayidx.13 = getelementptr %struct.nilfs_btree_path, ptr %path, i32 13
  %26 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.13, align 8
  %tobool.not.i.13 = icmp eq ptr %27, null
  br i1 %tobool.not.i.13, label %brelse.exit.12.brelse.exit.13_crit_edge, label %if.then.i.13

brelse.exit.12.brelse.exit.13_crit_edge:          ; preds = %brelse.exit.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.13

if.then.i.13:                                     ; preds = %brelse.exit.12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %27) #8
  br label %brelse.exit.13

brelse.exit.13:                                   ; preds = %if.then.i.13, %brelse.exit.12.brelse.exit.13_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nilfs_btree_path_cache to i32))
  %28 = load ptr, ptr @nilfs_btree_path_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %28, ptr noundef %path) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__nilfs_btree_get_block(ptr noundef %btree, i64 noundef %ptr, ptr nocapture noundef writeonly %bhp, ptr noundef readonly %ra) unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  %ra_bh = alloca ptr, align 4
  %submit_ptr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_btnode_cache = getelementptr i8, ptr %btree, i32 216
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #8
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ra_bh) #8
  %1 = ptrtoint ptr %ra_bh to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %ra_bh, align 4, !annotation !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %submit_ptr) #8
  %2 = ptrtoint ptr %submit_ptr to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %submit_ptr, align 8
  %call1 = call i32 @nilfs_btnode_submit_block(ptr noundef %i_btnode_cache, i64 noundef %ptr, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %bh, ptr noundef nonnull %submit_ptr) #8
  %3 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %call1, label %entry.cleanup36_crit_edge [
    i32 0, label %if.end3
    i32 -17, label %entry.out_check_crit_edge
  ]

entry.out_check_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_check

entry.cleanup36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup36

if.end3:                                          ; preds = %entry
  %tobool4.not = icmp eq ptr %ra, null
  br i1 %tobool4.not, label %if.end3.if.end26_crit_edge, label %if.then5

if.end3.if.end26_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then5:                                         ; preds = %if.end3
  %max_ra_blocks = getelementptr inbounds %struct.nilfs_btree_readahead_info, ptr %ra, i32 0, i32 1
  %4 = ptrtoint ptr %max_ra_blocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_ra_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp670 = icmp sgt i32 %5, 0
  br i1 %cmp670, label %land.rhs.lr.ph, label %if.then5.if.end26_crit_edge

if.then5.if.end26_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

land.rhs.lr.ph:                                   ; preds = %if.then5
  %index = getelementptr inbounds %struct.nilfs_btree_readahead_info, ptr %ra, i32 0, i32 2
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %ncmax = getelementptr inbounds %struct.nilfs_btree_readahead_info, ptr %ra, i32 0, i32 3
  br label %land.rhs

for.cond:                                         ; preds = %if.end19
  %dec = add nsw i32 %n.071, -1
  %cmp6 = icmp sgt i32 %n.071, 1
  br i1 %cmp6, label %for.cond.land.rhs_crit_edge, label %for.cond.if.end26_crit_edge

for.cond.if.end26_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

for.cond.land.rhs_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

land.rhs:                                         ; preds = %for.cond.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.072.in = phi i32 [ %7, %land.rhs.lr.ph ], [ %i.072, %for.cond.land.rhs_crit_edge ]
  %n.071 = phi i32 [ %5, %land.rhs.lr.ph ], [ %dec, %for.cond.land.rhs_crit_edge ]
  %i.072 = add i32 %i.072.in, 1
  %8 = ptrtoint ptr %ncmax to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ncmax, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.072, i32 %9)
  %cmp7 = icmp slt i32 %i.072, %9
  br i1 %cmp7, label %for.body, label %land.rhs.if.end26_crit_edge

land.rhs.if.end26_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

for.body:                                         ; preds = %land.rhs
  %10 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ra, align 4
  %add.ptr.i.i.i = getelementptr %struct.nilfs_btree_node, ptr %11, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  %14 = shl i8 %13, 3
  %15 = and i8 %14, 8
  %16 = xor i8 %15, 8
  %17 = zext i8 %16 to i32
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %17
  %add.ptr.i.i = getelementptr i64, ptr %add.ptr1.i.i.i, i32 %9
  %add.ptr.i59 = getelementptr i64, ptr %add.ptr.i.i, i32 %i.072
  %18 = ptrtoint ptr %add.ptr.i59 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr.i59, align 8
  %20 = call i64 @llvm.bswap.i64(i64 %19) #8
  %call10 = call i32 @nilfs_btnode_submit_block(ptr noundef %i_btnode_cache, i64 noundef %20, i64 noundef 0, i32 noundef 0, i32 noundef 524288, ptr noundef nonnull %ra_bh, ptr noundef nonnull %submit_ptr) #8
  %21 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %call10, label %for.body.if.end26_crit_edge [
    i32 -17, label %for.body.if.then15_crit_edge
    i32 0, label %for.body.if.then15_crit_edge73
    i32 -16, label %for.body.if.end19_crit_edge
  ]

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

for.body.if.then15_crit_edge73:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

for.body.if.then15_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then15:                                        ; preds = %for.body.if.then15_crit_edge, %for.body.if.then15_crit_edge73
  %22 = ptrtoint ptr %ra_bh to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ra_bh, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.then15.if.end19_crit_edge, label %if.then.i

if.then15.if.end19_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %23) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then.i, %if.then15.if.end19_crit_edge, %for.body.if.end19_crit_edge
  %24 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bh, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool21.not = icmp eq i32 %28, 0
  br i1 %tobool21.not, label %if.end19.out_no_wait_crit_edge, label %for.cond

if.end19.out_no_wait_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_no_wait

if.end26:                                         ; preds = %for.body.if.end26_crit_edge, %land.rhs.if.end26_crit_edge, %for.cond.if.end26_crit_edge, %if.then5.if.end26_crit_edge, %if.end3.if.end26_crit_edge
  %29 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bh, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 354) #8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %33 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i60 = icmp eq i32 %33, 0
  br i1 %tobool.not.i60, label %if.end26.out_no_wait_crit_edge, label %if.then.i61

if.end26.out_no_wait_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_no_wait

if.then.i61:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  call void @__wait_on_buffer(ptr noundef %30) #8
  br label %out_no_wait

out_no_wait:                                      ; preds = %if.then.i61, %if.end26.out_no_wait_crit_edge, %if.end19.out_no_wait_crit_edge
  %34 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bh, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %and1.i.i58 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i58)
  %tobool28.not = icmp eq i32 %and1.i.i58, 0
  br i1 %tobool28.not, label %if.then29, label %out_no_wait.out_check_crit_edge

out_no_wait.out_check_crit_edge:                  ; preds = %out_no_wait
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_check

if.then29:                                        ; preds = %out_no_wait
  %b_inode = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 2
  %38 = ptrtoint ptr %b_inode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %b_inode, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %39, i32 0, i32 11
  %42 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %i_ino, align 8
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %41, ptr noundef nonnull @.str.2, i32 noundef %43, i64 noundef %ptr) #8
  %44 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bh, align 4
  %tobool.not.i62 = icmp eq ptr %45, null
  br i1 %tobool.not.i62, label %if.then29.cleanup36_crit_edge, label %if.then.i63

if.then29.cleanup36_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup36

if.then.i63:                                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %45) #8
  br label %cleanup36

out_check:                                        ; preds = %out_no_wait.out_check_crit_edge, %entry.out_check_crit_edge
  %46 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bh, align 4
  %call32 = call i32 @nilfs_btree_broken_node_block(ptr noundef %47)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  %48 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bh, align 4
  br i1 %tobool33.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %out_check
  call void @_clear_bit(i32 noundef 0, ptr noundef %49) #8
  %50 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bh, align 4
  %tobool.not.i65 = icmp eq ptr %51, null
  br i1 %tobool.not.i65, label %if.then34.cleanup36_crit_edge, label %if.then.i66

if.then34.cleanup36_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup36

if.then.i66:                                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %51) #8
  br label %cleanup36

if.end35:                                         ; preds = %out_check
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %bhp to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %bhp, align 4
  br label %cleanup36

cleanup36:                                        ; preds = %if.end35, %if.then.i66, %if.then34.cleanup36_crit_edge, %if.then.i63, %if.then29.cleanup36_crit_edge, %entry.cleanup36_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ %call1, %entry.cleanup36_crit_edge ], [ -5, %if.then29.cleanup36_crit_edge ], [ -5, %if.then.i63 ], [ -22, %if.then34.cleanup36_crit_edge ], [ -22, %if.then.i66 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %submit_ptr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ra_bh) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_btnode_submit_block(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_dat_translate(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_btree_do_insert(ptr nocapture noundef %btree, ptr nocapture noundef readonly %path, i32 noundef %level, ptr nocapture noundef readonly %keyp, ptr nocapture noundef readonly %ptrp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bn_level.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 1
  %0 = ptrtoint ptr %bn_level.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bn_level.i.i, align 1
  %conv.i.i = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %level)
  %cmp = icmp sgt i32 %conv.i.i, %level
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 8
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data.i, align 4
  %b_nchildren_per_block.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 8
  %6 = ptrtoint ptr %b_nchildren_per_block.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %b_nchildren_per_block.i, align 8
  %conv.i = zext i16 %7 to i32
  %bp_index = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 2
  %8 = ptrtoint ptr %bp_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bp_index, align 8
  %10 = ptrtoint ptr %keyp to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %keyp, align 8
  %12 = ptrtoint ptr %ptrp to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ptrp, align 8
  %add.ptr.i.i = getelementptr %struct.nilfs_btree_node, ptr %5, i32 1
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %5, align 4
  %16 = shl i8 %15, 3
  %17 = and i8 %16, 8
  %18 = xor i8 %17, 8
  %19 = zext i8 %18 to i32
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %19
  %add.ptr.i30.i = getelementptr i64, ptr %add.ptr1.i.i, i32 %conv.i
  %bn_nchildren.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %5, i32 0, i32 2
  %20 = ptrtoint ptr %bn_nchildren.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %bn_nchildren.i.i, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #8
  %conv.i.i38 = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv.i.i38)
  %cmp.i = icmp slt i32 %9, %conv.i.i38
  br i1 %cmp.i, label %if.then.i, label %if.then.nilfs_btree_node_insert.exit_crit_edge

if.then.nilfs_btree_node_insert.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_node_insert.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i64, ptr %add.ptr1.i.i, i32 %9
  %add.ptr3.i = getelementptr i64, ptr %add.ptr.i, i32 1
  %sub.i = sub i32 %conv.i.i38, %9
  %mul.i = shl i32 %sub.i, 3
  %23 = call ptr @memmove(ptr %add.ptr3.i, ptr %add.ptr.i, i32 %mul.i)
  %add.ptr5.i = getelementptr i64, ptr %add.ptr.i30.i, i32 %9
  %add.ptr6.i = getelementptr i64, ptr %add.ptr5.i, i32 1
  %24 = call ptr @memmove(ptr %add.ptr6.i, ptr %add.ptr5.i, i32 %mul.i)
  br label %nilfs_btree_node_insert.exit

nilfs_btree_node_insert.exit:                     ; preds = %if.then.i, %if.then.nilfs_btree_node_insert.exit_crit_edge
  %25 = tail call i64 @llvm.bswap.i64(i64 %11) #8
  %arrayidx.i39 = getelementptr i64, ptr %add.ptr1.i.i, i32 %9
  %26 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx.i39, align 8
  %27 = tail call i64 @llvm.bswap.i64(i64 %13) #8
  %arrayidx10.i = getelementptr i64, ptr %add.ptr.i30.i, i32 %9
  %28 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %arrayidx10.i, align 8
  %inc.i = add i16 %22, 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %inc.i) #8
  %30 = ptrtoint ptr %bn_nchildren.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %bn_nchildren.i.i, align 2
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %35 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not = icmp eq i32 %35, 0
  br i1 %tobool.not, label %if.then5, label %nilfs_btree_node_insert.exit.if.end_crit_edge

nilfs_btree_node_insert.exit.if.end_crit_edge:    ; preds = %nilfs_btree_node_insert.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then5:                                         ; preds = %nilfs_btree_node_insert.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mark_buffer_dirty(ptr noundef %32) #8
  br label %if.end

if.end:                                           ; preds = %if.then5, %nilfs_btree_node_insert.exit.if.end_crit_edge
  %36 = ptrtoint ptr %bp_index to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bp_index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp10 = icmp eq i32 %37, 0
  br i1 %cmp10, label %if.then11, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then11:                                        ; preds = %if.end
  %add = add nsw i32 %level, 1
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %5, align 4
  %40 = shl i8 %39, 3
  %41 = and i8 %40, 8
  %42 = xor i8 %41, 8
  %43 = zext i8 %42 to i32
  %add.ptr1.i.i41 = getelementptr i8, ptr %add.ptr.i.i, i32 %43
  %44 = ptrtoint ptr %add.ptr1.i.i41 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %add.ptr1.i.i41, align 8
  %46 = ptrtoint ptr %bn_level.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bn_level.i.i, align 1
  %conv.i.i.i = zext i8 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv.i.i.i)
  %cmp.i42 = icmp slt i32 %add, %conv.i.i.i
  br i1 %cmp.i42, label %if.then11.do.body.i_crit_edge, label %if.then11.if.end13.i_crit_edge

if.then11.if.end13.i_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then11.do.body.i_crit_edge:                    ; preds = %if.then11
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %if.then11.do.body.i_crit_edge
  %level.addr.0.i = phi i32 [ %inc.i44, %land.rhs.i.do.body.i_crit_edge ], [ %add, %if.then11.do.body.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level.addr.0.i
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i, align 8
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %b_data.i.i, align 4
  %bp_index.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level.addr.0.i, i32 2
  %52 = ptrtoint ptr %bp_index.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bp_index.i, align 8
  %add.ptr.i.i.i = getelementptr %struct.nilfs_btree_node, ptr %51, i32 1
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %51, align 4
  %56 = shl i8 %55, 3
  %57 = and i8 %56, 8
  %58 = xor i8 %57, 8
  %59 = zext i8 %58 to i32
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %59
  %add.ptr.i.i43 = getelementptr i64, ptr %add.ptr1.i.i.i, i32 %53
  %60 = ptrtoint ptr %add.ptr.i.i43 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %45, ptr %add.ptr.i.i43, align 8
  %61 = load ptr, ptr %arrayidx.i.i, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %61, align 4
  %64 = and i32 %63, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i = icmp eq i32 %64, 0
  br i1 %tobool.not.i, label %if.then4.i, label %do.body.i.do.cond.i_crit_edge

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mark_buffer_dirty(ptr noundef %61) #8
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then4.i, %do.body.i.do.cond.i_crit_edge
  %65 = ptrtoint ptr %bp_index.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bp_index.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp9.i = icmp eq i32 %66, 0
  br i1 %cmp9.i, label %land.rhs.i, label %do.cond.i.if.end13.i_crit_edge

do.cond.i.if.end13.i_crit_edge:                   ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

land.rhs.i:                                       ; preds = %do.cond.i
  %inc.i44 = add nsw i32 %level.addr.0.i, 1
  %67 = ptrtoint ptr %bn_level.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %bn_level.i.i, align 1
  %conv.i.i40.i = zext i8 %68 to i32
  %cmp12.i = icmp slt i32 %inc.i44, %conv.i.i40.i
  br i1 %cmp12.i, label %land.rhs.i.do.body.i_crit_edge, label %land.rhs.i.if.end13.i_crit_edge

land.rhs.i.if.end13.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end13.i:                                       ; preds = %land.rhs.i.if.end13.i_crit_edge, %do.cond.i.if.end13.i_crit_edge, %if.then11.if.end13.i_crit_edge
  %level.addr.1.i = phi i32 [ %add, %if.then11.if.end13.i_crit_edge ], [ %inc.i44, %land.rhs.i.if.end13.i_crit_edge ], [ %level.addr.0.i, %do.cond.i.if.end13.i_crit_edge ]
  %69 = ptrtoint ptr %bn_level.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %bn_level.i.i, align 1
  %conv.i.i43.i = zext i8 %70 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %level.addr.1.i, i32 %conv.i.i43.i)
  %cmp16.i = icmp eq i32 %level.addr.1.i, %conv.i.i43.i
  br i1 %cmp16.i, label %if.then17.i, label %if.end13.i.if.end17_crit_edge

if.end13.i.if.end17_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %bp_index20.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level.addr.1.i, i32 2
  %71 = ptrtoint ptr %bp_index20.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bp_index20.i, align 8
  %add.ptr.i.i45.i = getelementptr %struct.nilfs_btree_node, ptr %btree, i32 1
  %73 = ptrtoint ptr %btree to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %btree, align 4
  %75 = shl i8 %74, 3
  %76 = and i8 %75, 8
  %77 = xor i8 %76, 8
  %78 = zext i8 %77 to i32
  %add.ptr1.i.i46.i = getelementptr i8, ptr %add.ptr.i.i45.i, i32 %78
  %add.ptr.i47.i = getelementptr i64, ptr %add.ptr1.i.i46.i, i32 %72
  %79 = ptrtoint ptr %add.ptr.i47.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %45, ptr %add.ptr.i47.i, align 8
  br label %if.end17

if.else:                                          ; preds = %entry
  %bp_index16 = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 2
  %80 = ptrtoint ptr %bp_index16 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bp_index16, align 8
  %82 = ptrtoint ptr %keyp to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %keyp, align 8
  %84 = ptrtoint ptr %ptrp to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %ptrp, align 8
  %add.ptr.i.i45 = getelementptr %struct.nilfs_btree_node, ptr %btree, i32 1
  %86 = ptrtoint ptr %btree to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %btree, align 4
  %88 = shl i8 %87, 3
  %89 = and i8 %88, 8
  %90 = xor i8 %89, 8
  %91 = zext i8 %90 to i32
  %add.ptr1.i.i46 = getelementptr i8, ptr %add.ptr.i.i45, i32 %91
  %add.ptr.i30.i47 = getelementptr i64, ptr %add.ptr1.i.i46, i32 3
  %bn_nchildren.i.i48 = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 2
  %92 = ptrtoint ptr %bn_nchildren.i.i48 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %bn_nchildren.i.i48, align 2
  %94 = tail call i16 @llvm.bswap.i16(i16 %93) #8
  %conv.i.i49 = zext i16 %94 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %conv.i.i49)
  %cmp.i50 = icmp slt i32 %81, %conv.i.i49
  br i1 %cmp.i50, label %if.then.i57, label %if.else.nilfs_btree_node_insert.exit61_crit_edge

if.else.nilfs_btree_node_insert.exit61_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_node_insert.exit61

if.then.i57:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i51 = getelementptr i64, ptr %add.ptr1.i.i46, i32 %81
  %add.ptr3.i52 = getelementptr i64, ptr %add.ptr.i51, i32 1
  %sub.i53 = sub i32 %conv.i.i49, %81
  %mul.i54 = shl i32 %sub.i53, 3
  %95 = call ptr @memmove(ptr %add.ptr3.i52, ptr %add.ptr.i51, i32 %mul.i54)
  %add.ptr5.i55 = getelementptr i64, ptr %add.ptr.i30.i47, i32 %81
  %add.ptr6.i56 = getelementptr i64, ptr %add.ptr5.i55, i32 1
  %96 = call ptr @memmove(ptr %add.ptr6.i56, ptr %add.ptr5.i55, i32 %mul.i54)
  br label %nilfs_btree_node_insert.exit61

nilfs_btree_node_insert.exit61:                   ; preds = %if.then.i57, %if.else.nilfs_btree_node_insert.exit61_crit_edge
  %97 = tail call i64 @llvm.bswap.i64(i64 %83) #8
  %arrayidx.i58 = getelementptr i64, ptr %add.ptr1.i.i46, i32 %81
  %98 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %97, ptr %arrayidx.i58, align 8
  %99 = tail call i64 @llvm.bswap.i64(i64 %85) #8
  %arrayidx10.i59 = getelementptr i64, ptr %add.ptr.i30.i47, i32 %81
  %100 = ptrtoint ptr %arrayidx10.i59 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %99, ptr %arrayidx10.i59, align 8
  %inc.i60 = add i16 %94, 1
  %101 = tail call i16 @llvm.bswap.i16(i16 %inc.i60) #8
  %102 = ptrtoint ptr %bn_nchildren.i.i48 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %101, ptr %bn_nchildren.i.i48, align 2
  br label %if.end17

if.end17:                                         ; preds = %nilfs_btree_node_insert.exit61, %if.then17.i, %if.end13.i.if.end17_crit_edge, %if.end.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_btree_carry_left(ptr nocapture noundef %btree, ptr nocapture noundef %path, i32 noundef %level, ptr nocapture noundef readonly %keyp, ptr nocapture noundef readonly %ptrp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 8
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data.i, align 4
  %bp_sib_bh.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 1
  %4 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bp_sib_bh.i, align 4
  %b_data.i93 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %b_data.i93 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data.i93, align 4
  %bn_nchildren.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %bn_nchildren.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bn_nchildren.i, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #8
  %conv.i = zext i16 %10 to i32
  %bn_nchildren.i94 = getelementptr inbounds %struct.nilfs_btree_node, ptr %7, i32 0, i32 2
  %11 = ptrtoint ptr %bn_nchildren.i94 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bn_nchildren.i94, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #8
  %conv.i95 = zext i16 %13 to i32
  %b_nchildren_per_block.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 8
  %14 = ptrtoint ptr %b_nchildren_per_block.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %b_nchildren_per_block.i, align 8
  %conv.i96 = zext i16 %15 to i32
  %add = add nuw nsw i32 %conv.i, 1
  %add5 = add nuw nsw i32 %add, %conv.i95
  %div104105 = lshr i32 %add5, 1
  %sub = sub nsw i32 %div104105, %conv.i95
  %bp_index = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 2
  %16 = ptrtoint ptr %bp_index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bp_index, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %17)
  %cmp = icmp sgt i32 %sub, %17
  %dec = sext i1 %cmp to i32
  %spec.select = add nsw i32 %sub, %dec
  %add.ptr.i.i = getelementptr %struct.nilfs_btree_node, ptr %7, i32 1
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %7, align 4
  %20 = shl i8 %19, 3
  %21 = and i8 %20, 8
  %22 = xor i8 %21, 8
  %23 = zext i8 %22 to i32
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %23
  %add.ptr.i37.i = getelementptr i64, ptr %add.ptr1.i.i, i32 %conv.i96
  %add.ptr.i38.i = getelementptr %struct.nilfs_btree_node, ptr %3, i32 1
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %3, align 4
  %26 = shl i8 %25, 3
  %27 = and i8 %26, 8
  %28 = xor i8 %27, 8
  %29 = zext i8 %28 to i32
  %add.ptr1.i39.i = getelementptr i8, ptr %add.ptr.i38.i, i32 %29
  %add.ptr.i42.i = getelementptr i64, ptr %add.ptr1.i39.i, i32 %conv.i96
  %add.ptr.i = getelementptr i64, ptr %add.ptr1.i.i, i32 %conv.i95
  %mul.i = shl nsw i32 %spec.select, 3
  %30 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr1.i39.i, i32 %mul.i)
  %add.ptr6.i = getelementptr i64, ptr %add.ptr.i37.i, i32 %conv.i95
  %31 = call ptr @memcpy(ptr %add.ptr6.i, ptr %add.ptr.i42.i, i32 %mul.i)
  %add.ptr8.i = getelementptr i64, ptr %add.ptr1.i39.i, i32 %spec.select
  %sub.i = sub nsw i32 %conv.i, %spec.select
  %mul9.i = shl nsw i32 %sub.i, 3
  %32 = call ptr @memmove(ptr %add.ptr1.i39.i, ptr %add.ptr8.i, i32 %mul9.i)
  %add.ptr10.i = getelementptr i64, ptr %add.ptr.i42.i, i32 %spec.select
  %33 = call ptr @memmove(ptr %add.ptr.i42.i, ptr %add.ptr10.i, i32 %mul9.i)
  %34 = trunc i32 %spec.select to i16
  %conv.i45.i = add i16 %13, %34
  %35 = tail call i16 @llvm.bswap.i16(i16 %conv.i45.i) #8
  %36 = ptrtoint ptr %bn_nchildren.i94 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %bn_nchildren.i94, align 2
  %conv.i47.i = trunc i32 %sub.i to i16
  %37 = tail call i16 @llvm.bswap.i16(i16 %conv.i47.i) #8
  %38 = ptrtoint ptr %bn_nchildren.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %bn_nchildren.i, align 2
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  %43 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not = icmp eq i32 %43, 0
  br i1 %tobool.not, label %if.then8, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mark_buffer_dirty(ptr noundef %40) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %entry.if.end11_crit_edge
  %44 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bp_sib_bh.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  %48 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool14.not = icmp eq i32 %48, 0
  br i1 %tobool14.not, label %if.then15, label %if.end11.if.end18_crit_edge

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mark_buffer_dirty(ptr noundef %45) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end11.if.end18_crit_edge
  %add19 = add i32 %level, 1
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %3, align 4
  %51 = shl i8 %50, 3
  %52 = and i8 %51, 8
  %53 = xor i8 %52, 8
  %54 = zext i8 %53 to i32
  %add.ptr1.i.i98 = getelementptr i8, ptr %add.ptr.i38.i, i32 %54
  %55 = ptrtoint ptr %add.ptr1.i.i98 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %add.ptr1.i.i98, align 8
  %bn_level.i.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 1
  %57 = ptrtoint ptr %bn_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bn_level.i.i.i, align 1
  %conv.i.i.i = zext i8 %58 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add19, i32 %conv.i.i.i)
  %cmp.i = icmp slt i32 %add19, %conv.i.i.i
  br i1 %cmp.i, label %if.end18.do.body.i_crit_edge, label %if.end18.if.end13.i_crit_edge

if.end18.if.end13.i_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.end18.do.body.i_crit_edge:                     ; preds = %if.end18
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %if.end18.do.body.i_crit_edge
  %level.addr.0.i = phi i32 [ %inc.i, %land.rhs.i.do.body.i_crit_edge ], [ %add19, %if.end18.do.body.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level.addr.0.i
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i.i, align 8
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %b_data.i.i, align 4
  %bp_index.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level.addr.0.i, i32 2
  %63 = ptrtoint ptr %bp_index.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bp_index.i, align 8
  %add.ptr.i.i.i = getelementptr %struct.nilfs_btree_node, ptr %62, i32 1
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %62, align 4
  %67 = shl i8 %66, 3
  %68 = and i8 %67, 8
  %69 = xor i8 %68, 8
  %70 = zext i8 %69 to i32
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %70
  %add.ptr.i.i99 = getelementptr i64, ptr %add.ptr1.i.i.i, i32 %64
  %71 = ptrtoint ptr %add.ptr.i.i99 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %56, ptr %add.ptr.i.i99, align 8
  %72 = load ptr, ptr %arrayidx.i.i, align 8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %72, align 4
  %75 = and i32 %74, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i = icmp eq i32 %75, 0
  br i1 %tobool.not.i, label %if.then4.i, label %do.body.i.do.cond.i_crit_edge

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mark_buffer_dirty(ptr noundef %72) #8
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then4.i, %do.body.i.do.cond.i_crit_edge
  %76 = ptrtoint ptr %bp_index.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bp_index.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp9.i = icmp eq i32 %77, 0
  br i1 %cmp9.i, label %land.rhs.i, label %do.cond.i.if.end13.i_crit_edge

do.cond.i.if.end13.i_crit_edge:                   ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

land.rhs.i:                                       ; preds = %do.cond.i
  %inc.i = add nsw i32 %level.addr.0.i, 1
  %78 = ptrtoint ptr %bn_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %bn_level.i.i.i, align 1
  %conv.i.i40.i = zext i8 %79 to i32
  %cmp12.i = icmp slt i32 %inc.i, %conv.i.i40.i
  br i1 %cmp12.i, label %land.rhs.i.do.body.i_crit_edge, label %land.rhs.i.if.end13.i_crit_edge

land.rhs.i.if.end13.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end13.i:                                       ; preds = %land.rhs.i.if.end13.i_crit_edge, %do.cond.i.if.end13.i_crit_edge, %if.end18.if.end13.i_crit_edge
  %level.addr.1.i = phi i32 [ %add19, %if.end18.if.end13.i_crit_edge ], [ %inc.i, %land.rhs.i.if.end13.i_crit_edge ], [ %level.addr.0.i, %do.cond.i.if.end13.i_crit_edge ]
  %80 = ptrtoint ptr %bn_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %bn_level.i.i.i, align 1
  %conv.i.i43.i = zext i8 %81 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %level.addr.1.i, i32 %conv.i.i43.i)
  %cmp16.i = icmp eq i32 %level.addr.1.i, %conv.i.i43.i
  br i1 %cmp16.i, label %if.then17.i, label %if.end13.i.nilfs_btree_promote_key.exit_crit_edge

if.end13.i.nilfs_btree_promote_key.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_promote_key.exit

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %bp_index20.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level.addr.1.i, i32 2
  %82 = ptrtoint ptr %bp_index20.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bp_index20.i, align 8
  %add.ptr.i.i45.i = getelementptr %struct.nilfs_btree_node, ptr %btree, i32 1
  %84 = ptrtoint ptr %btree to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %btree, align 4
  %86 = shl i8 %85, 3
  %87 = and i8 %86, 8
  %88 = xor i8 %87, 8
  %89 = zext i8 %88 to i32
  %add.ptr1.i.i46.i = getelementptr i8, ptr %add.ptr.i.i45.i, i32 %89
  %add.ptr.i47.i = getelementptr i64, ptr %add.ptr1.i.i46.i, i32 %83
  %90 = ptrtoint ptr %add.ptr.i47.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %56, ptr %add.ptr.i47.i, align 8
  br label %nilfs_btree_promote_key.exit

nilfs_btree_promote_key.exit:                     ; preds = %if.then17.i, %if.end13.i.nilfs_btree_promote_key.exit_crit_edge
  br i1 %cmp, label %if.then22, label %if.else

if.then22:                                        ; preds = %nilfs_btree_promote_key.exit
  %91 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.i, align 8
  %tobool.not.i100 = icmp eq ptr %92, null
  br i1 %tobool.not.i100, label %if.then22.brelse.exit_crit_edge, label %if.then.i

if.then22.brelse.exit_crit_edge:                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %92) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.then22.brelse.exit_crit_edge
  %93 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bp_sib_bh.i, align 4
  %95 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %arrayidx.i, align 8
  store ptr null, ptr %bp_sib_bh.i, align 4
  %96 = ptrtoint ptr %bp_index to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %bp_index, align 8
  %add33 = add i32 %97, %conv.i95
  store i32 %add33, ptr %bp_index, align 8
  %bp_index36 = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %add19, i32 2
  %98 = ptrtoint ptr %bp_index36 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %bp_index36, align 8
  %dec37 = add i32 %99, -1
  store i32 %dec37, ptr %bp_index36, align 8
  br label %if.end45

if.else:                                          ; preds = %nilfs_btree_promote_key.exit
  %100 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %bp_sib_bh.i, align 4
  %tobool.not.i101 = icmp eq ptr %101, null
  br i1 %tobool.not.i101, label %if.else.brelse.exit103_crit_edge, label %if.then.i102

if.else.brelse.exit103_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit103

if.then.i102:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %101) #8
  br label %brelse.exit103

brelse.exit103:                                   ; preds = %if.then.i102, %if.else.brelse.exit103_crit_edge
  %102 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %bp_sib_bh.i, align 4
  %103 = ptrtoint ptr %bp_index to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bp_index, align 8
  %sub44 = sub i32 %104, %spec.select
  store i32 %sub44, ptr %bp_index, align 8
  br label %if.end45

if.end45:                                         ; preds = %brelse.exit103, %brelse.exit
  tail call void @nilfs_btree_do_insert(ptr noundef %btree, ptr noundef %path, i32 noundef %level, ptr noundef %keyp, ptr noundef %ptrp)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_btree_carry_right(ptr nocapture noundef %btree, ptr nocapture noundef %path, i32 noundef %level, ptr nocapture noundef readonly %keyp, ptr nocapture noundef readonly %ptrp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 8
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data.i, align 4
  %bp_sib_bh.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 1
  %4 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bp_sib_bh.i, align 4
  %b_data.i101 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %b_data.i101 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data.i101, align 4
  %bn_nchildren.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %bn_nchildren.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bn_nchildren.i, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #8
  %conv.i = zext i16 %10 to i32
  %bn_nchildren.i102 = getelementptr inbounds %struct.nilfs_btree_node, ptr %7, i32 0, i32 2
  %11 = ptrtoint ptr %bn_nchildren.i102 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bn_nchildren.i102, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #8
  %conv.i103 = zext i16 %13 to i32
  %b_nchildren_per_block.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 8
  %14 = ptrtoint ptr %b_nchildren_per_block.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %b_nchildren_per_block.i, align 8
  %conv.i104 = zext i16 %15 to i32
  %add = add nuw nsw i32 %conv.i, 1
  %add5 = add nuw nsw i32 %add, %conv.i103
  %div114115 = lshr i32 %add5, 1
  %sub = sub nsw i32 %div114115, %conv.i103
  %bp_index = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 2
  %16 = ptrtoint ptr %bp_index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bp_index, align 8
  %sub6 = sub i32 %conv.i, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub6)
  %cmp = icmp sgt i32 %sub, %sub6
  %dec = sext i1 %cmp to i32
  %spec.select = add nsw i32 %sub, %dec
  %add.ptr.i.i = getelementptr %struct.nilfs_btree_node, ptr %3, i32 1
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %3, align 4
  %20 = shl i8 %19, 3
  %21 = and i8 %20, 8
  %22 = xor i8 %21, 8
  %23 = zext i8 %22 to i32
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %23
  %add.ptr.i38.i = getelementptr i64, ptr %add.ptr1.i.i, i32 %conv.i104
  %add.ptr.i39.i = getelementptr %struct.nilfs_btree_node, ptr %7, i32 1
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %7, align 4
  %26 = shl i8 %25, 3
  %27 = and i8 %26, 8
  %28 = xor i8 %27, 8
  %29 = zext i8 %28 to i32
  %add.ptr1.i40.i = getelementptr i8, ptr %add.ptr.i39.i, i32 %29
  %add.ptr.i43.i = getelementptr i64, ptr %add.ptr1.i40.i, i32 %conv.i104
  %add.ptr.i = getelementptr i64, ptr %add.ptr1.i40.i, i32 %spec.select
  %mul.i = shl nuw nsw i32 %conv.i103, 3
  %30 = call ptr @memmove(ptr %add.ptr.i, ptr %add.ptr1.i40.i, i32 %mul.i)
  %add.ptr6.i = getelementptr i64, ptr %add.ptr.i43.i, i32 %spec.select
  %31 = call ptr @memmove(ptr %add.ptr6.i, ptr %add.ptr.i43.i, i32 %mul.i)
  %add.ptr8.i = getelementptr i64, ptr %add.ptr1.i.i, i32 %conv.i
  %idx.neg.i = sub nsw i32 0, %spec.select
  %add.ptr9.i = getelementptr i64, ptr %add.ptr8.i, i32 %idx.neg.i
  %mul10.i = shl nsw i32 %spec.select, 3
  %32 = call ptr @memcpy(ptr %add.ptr1.i40.i, ptr %add.ptr9.i, i32 %mul10.i)
  %add.ptr11.i = getelementptr i64, ptr %add.ptr.i38.i, i32 %conv.i
  %add.ptr13.i = getelementptr i64, ptr %add.ptr11.i, i32 %idx.neg.i
  %33 = call ptr @memcpy(ptr %add.ptr.i43.i, ptr %add.ptr13.i, i32 %mul10.i)
  %34 = trunc i32 %spec.select to i16
  %conv.i46.i = sub i16 %10, %34
  %35 = tail call i16 @llvm.bswap.i16(i16 %conv.i46.i) #8
  %36 = ptrtoint ptr %bn_nchildren.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %bn_nchildren.i, align 2
  %conv.i48.i = add i16 %13, %34
  %37 = tail call i16 @llvm.bswap.i16(i16 %conv.i48.i) #8
  %38 = ptrtoint ptr %bn_nchildren.i102 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %bn_nchildren.i102, align 2
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  %43 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not = icmp eq i32 %43, 0
  br i1 %tobool.not, label %if.then9, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mark_buffer_dirty(ptr noundef %40) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %entry.if.end12_crit_edge
  %44 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bp_sib_bh.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  %48 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool15.not = icmp eq i32 %48, 0
  br i1 %tobool15.not, label %if.then16, label %if.end12.if.end19_crit_edge

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mark_buffer_dirty(ptr noundef %45) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end12.if.end19_crit_edge
  %add20 = add i32 %level, 1
  %bp_index22 = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %add20, i32 2
  %49 = ptrtoint ptr %bp_index22 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bp_index22, align 8
  %inc = add i32 %50, 1
  store i32 %inc, ptr %bp_index22, align 8
  %51 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %7, align 4
  %53 = shl i8 %52, 3
  %54 = and i8 %53, 8
  %55 = xor i8 %54, 8
  %56 = zext i8 %55 to i32
  %add.ptr1.i.i106 = getelementptr i8, ptr %add.ptr.i39.i, i32 %56
  %57 = ptrtoint ptr %add.ptr1.i.i106 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %add.ptr1.i.i106, align 8
  %bn_level.i.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 1
  %59 = ptrtoint ptr %bn_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bn_level.i.i.i, align 1
  %conv.i.i.i = zext i8 %60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add20, i32 %conv.i.i.i)
  %cmp.i = icmp slt i32 %add20, %conv.i.i.i
  br i1 %cmp.i, label %if.end19.do.body.i_crit_edge, label %if.end19.if.end13.i_crit_edge

if.end19.if.end13.i_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.end19.do.body.i_crit_edge:                     ; preds = %if.end19
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %if.end19.do.body.i_crit_edge
  %level.addr.0.i = phi i32 [ %inc.i, %land.rhs.i.do.body.i_crit_edge ], [ %add20, %if.end19.do.body.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level.addr.0.i
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i, align 8
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %b_data.i.i, align 4
  %bp_index.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level.addr.0.i, i32 2
  %65 = ptrtoint ptr %bp_index.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bp_index.i, align 8
  %add.ptr.i.i.i = getelementptr %struct.nilfs_btree_node, ptr %64, i32 1
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %64, align 4
  %69 = shl i8 %68, 3
  %70 = and i8 %69, 8
  %71 = xor i8 %70, 8
  %72 = zext i8 %71 to i32
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %72
  %add.ptr.i.i107 = getelementptr i64, ptr %add.ptr1.i.i.i, i32 %66
  %73 = ptrtoint ptr %add.ptr.i.i107 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %58, ptr %add.ptr.i.i107, align 8
  %74 = load ptr, ptr %arrayidx.i.i, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %74, align 4
  %77 = and i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i = icmp eq i32 %77, 0
  br i1 %tobool.not.i, label %if.then4.i, label %do.body.i.do.cond.i_crit_edge

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mark_buffer_dirty(ptr noundef %74) #8
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then4.i, %do.body.i.do.cond.i_crit_edge
  %78 = ptrtoint ptr %bp_index.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bp_index.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp9.i = icmp eq i32 %79, 0
  br i1 %cmp9.i, label %land.rhs.i, label %do.cond.i.if.end13.i_crit_edge

do.cond.i.if.end13.i_crit_edge:                   ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

land.rhs.i:                                       ; preds = %do.cond.i
  %inc.i = add nsw i32 %level.addr.0.i, 1
  %80 = ptrtoint ptr %bn_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %bn_level.i.i.i, align 1
  %conv.i.i40.i = zext i8 %81 to i32
  %cmp12.i = icmp slt i32 %inc.i, %conv.i.i40.i
  br i1 %cmp12.i, label %land.rhs.i.do.body.i_crit_edge, label %land.rhs.i.if.end13.i_crit_edge

land.rhs.i.if.end13.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end13.i:                                       ; preds = %land.rhs.i.if.end13.i_crit_edge, %do.cond.i.if.end13.i_crit_edge, %if.end19.if.end13.i_crit_edge
  %level.addr.1.i = phi i32 [ %add20, %if.end19.if.end13.i_crit_edge ], [ %inc.i, %land.rhs.i.if.end13.i_crit_edge ], [ %level.addr.0.i, %do.cond.i.if.end13.i_crit_edge ]
  %82 = ptrtoint ptr %bn_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %bn_level.i.i.i, align 1
  %conv.i.i43.i = zext i8 %83 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %level.addr.1.i, i32 %conv.i.i43.i)
  %cmp16.i = icmp eq i32 %level.addr.1.i, %conv.i.i43.i
  br i1 %cmp16.i, label %if.then17.i, label %if.end13.i.nilfs_btree_promote_key.exit_crit_edge

if.end13.i.nilfs_btree_promote_key.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_promote_key.exit

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %bp_index20.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level.addr.1.i, i32 2
  %84 = ptrtoint ptr %bp_index20.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %bp_index20.i, align 8
  %add.ptr.i.i45.i = getelementptr %struct.nilfs_btree_node, ptr %btree, i32 1
  %86 = ptrtoint ptr %btree to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %btree, align 4
  %88 = shl i8 %87, 3
  %89 = and i8 %88, 8
  %90 = xor i8 %89, 8
  %91 = zext i8 %90 to i32
  %add.ptr1.i.i46.i = getelementptr i8, ptr %add.ptr.i.i45.i, i32 %91
  %add.ptr.i47.i = getelementptr i64, ptr %add.ptr1.i.i46.i, i32 %85
  %92 = ptrtoint ptr %add.ptr.i47.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %58, ptr %add.ptr.i47.i, align 8
  br label %nilfs_btree_promote_key.exit

nilfs_btree_promote_key.exit:                     ; preds = %if.then17.i, %if.end13.i.nilfs_btree_promote_key.exit_crit_edge
  %93 = ptrtoint ptr %bp_index22 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %bp_index22, align 8
  %dec28 = add i32 %94, -1
  store i32 %dec28, ptr %bp_index22, align 8
  br i1 %cmp, label %if.then30, label %if.else

if.then30:                                        ; preds = %nilfs_btree_promote_key.exit
  %95 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.i, align 8
  %tobool.not.i108 = icmp eq ptr %96, null
  br i1 %tobool.not.i108, label %if.then30.brelse.exit_crit_edge, label %if.then.i

if.then30.brelse.exit_crit_edge:                  ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %96) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.then30.brelse.exit_crit_edge
  %97 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bp_sib_bh.i, align 4
  %99 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %98, ptr %arrayidx.i, align 8
  store ptr null, ptr %bp_sib_bh.i, align 4
  %100 = ptrtoint ptr %bn_nchildren.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %bn_nchildren.i, align 2
  %102 = tail call i16 @llvm.bswap.i16(i16 %101) #8
  %conv.i110 = zext i16 %102 to i32
  %103 = ptrtoint ptr %bp_index to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bp_index, align 8
  %sub42 = sub i32 %104, %conv.i110
  store i32 %sub42, ptr %bp_index, align 8
  %105 = ptrtoint ptr %bp_index22 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %bp_index22, align 8
  %inc46 = add i32 %106, 1
  store i32 %inc46, ptr %bp_index22, align 8
  br label %if.end51

if.else:                                          ; preds = %nilfs_btree_promote_key.exit
  %107 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %bp_sib_bh.i, align 4
  %tobool.not.i111 = icmp eq ptr %108, null
  br i1 %tobool.not.i111, label %if.else.brelse.exit113_crit_edge, label %if.then.i112

if.else.brelse.exit113_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit113

if.then.i112:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %108) #8
  br label %brelse.exit113

brelse.exit113:                                   ; preds = %if.then.i112, %if.else.brelse.exit113_crit_edge
  %109 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %bp_sib_bh.i, align 4
  br label %if.end51

if.end51:                                         ; preds = %brelse.exit113, %brelse.exit
  tail call void @nilfs_btree_do_insert(ptr noundef %btree, ptr noundef %path, i32 noundef %level, ptr noundef %keyp, ptr noundef %ptrp)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_btree_split(ptr nocapture noundef %btree, ptr nocapture noundef %path, i32 noundef %level, ptr nocapture noundef %keyp, ptr nocapture noundef %ptrp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 8
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data.i, align 4
  %bp_sib_bh.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 1
  %4 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bp_sib_bh.i, align 4
  %b_data.i101 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %b_data.i101 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data.i101, align 4
  %bn_nchildren.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %bn_nchildren.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bn_nchildren.i, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #8
  %conv.i = zext i16 %10 to i32
  %b_nchildren_per_block.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 8
  %11 = ptrtoint ptr %b_nchildren_per_block.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %b_nchildren_per_block.i, align 8
  %conv.i102 = zext i16 %12 to i32
  %add = add nuw nsw i32 %conv.i, 1
  %div121122 = lshr i32 %add, 1
  %bp_index = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 2
  %13 = ptrtoint ptr %bp_index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bp_index, align 8
  %sub = sub i32 %conv.i, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %div121122, i32 %sub)
  %cmp = icmp sgt i32 %div121122, %sub
  %dec = sext i1 %cmp to i32
  %spec.select = add nsw i32 %div121122, %dec
  %add.ptr.i.i = getelementptr %struct.nilfs_btree_node, ptr %3, i32 1
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %3, align 4
  %17 = shl i8 %16, 3
  %18 = and i8 %17, 8
  %19 = xor i8 %18, 8
  %20 = zext i8 %19 to i32
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %20
  %add.ptr.i38.i = getelementptr i64, ptr %add.ptr1.i.i, i32 %conv.i102
  %add.ptr.i39.i = getelementptr %struct.nilfs_btree_node, ptr %7, i32 1
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %7, align 4
  %23 = shl i8 %22, 3
  %24 = and i8 %23, 8
  %25 = xor i8 %24, 8
  %26 = zext i8 %25 to i32
  %add.ptr1.i40.i = getelementptr i8, ptr %add.ptr.i39.i, i32 %26
  %add.ptr.i43.i = getelementptr i64, ptr %add.ptr1.i40.i, i32 %conv.i102
  %bn_nchildren.i44.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %7, i32 0, i32 2
  %27 = ptrtoint ptr %bn_nchildren.i44.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %bn_nchildren.i44.i, align 2
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #8
  %conv.i45.i = zext i16 %29 to i32
  %add.ptr.i = getelementptr i64, ptr %add.ptr1.i40.i, i32 %spec.select
  %mul.i = shl nuw nsw i32 %conv.i45.i, 3
  %30 = call ptr @memmove(ptr %add.ptr.i, ptr %add.ptr1.i40.i, i32 %mul.i)
  %add.ptr6.i = getelementptr i64, ptr %add.ptr.i43.i, i32 %spec.select
  %31 = call ptr @memmove(ptr %add.ptr6.i, ptr %add.ptr.i43.i, i32 %mul.i)
  %add.ptr8.i = getelementptr i64, ptr %add.ptr1.i.i, i32 %conv.i
  %idx.neg.i = sub nsw i32 0, %spec.select
  %add.ptr9.i = getelementptr i64, ptr %add.ptr8.i, i32 %idx.neg.i
  %mul10.i = shl nsw i32 %spec.select, 3
  %32 = call ptr @memcpy(ptr %add.ptr1.i40.i, ptr %add.ptr9.i, i32 %mul10.i)
  %add.ptr11.i = getelementptr i64, ptr %add.ptr.i38.i, i32 %conv.i
  %add.ptr13.i = getelementptr i64, ptr %add.ptr11.i, i32 %idx.neg.i
  %33 = call ptr @memcpy(ptr %add.ptr.i43.i, ptr %add.ptr13.i, i32 %mul10.i)
  %34 = trunc i32 %spec.select to i16
  %conv.i46.i = sub i16 %10, %34
  %35 = tail call i16 @llvm.bswap.i16(i16 %conv.i46.i) #8
  %36 = ptrtoint ptr %bn_nchildren.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %bn_nchildren.i, align 2
  %conv.i48.i = add i16 %29, %34
  %37 = tail call i16 @llvm.bswap.i16(i16 %conv.i48.i) #8
  %38 = ptrtoint ptr %bn_nchildren.i44.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %bn_nchildren.i44.i, align 2
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  %43 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not = icmp eq i32 %43, 0
  br i1 %tobool.not, label %if.then6, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mark_buffer_dirty(ptr noundef %40) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %entry.if.end9_crit_edge
  %44 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bp_sib_bh.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  %48 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool12.not = icmp eq i32 %48, 0
  br i1 %tobool12.not, label %if.then13, label %if.end9.if.end16_crit_edge

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mark_buffer_dirty(ptr noundef %45) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end9.if.end16_crit_edge
  br i1 %cmp, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  %49 = ptrtoint ptr %bn_nchildren.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %bn_nchildren.i, align 2
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #8
  %conv.i104 = zext i16 %51 to i32
  %52 = ptrtoint ptr %bp_index to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bp_index, align 8
  %sub22 = sub i32 %53, %conv.i104
  store i32 %sub22, ptr %bp_index, align 8
  %54 = ptrtoint ptr %keyp to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %keyp, align 8
  %56 = ptrtoint ptr %ptrp to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %ptrp, align 8
  %58 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %7, align 4
  %60 = shl i8 %59, 3
  %61 = and i8 %60, 8
  %62 = xor i8 %61, 8
  %63 = zext i8 %62 to i32
  %add.ptr1.i.i106 = getelementptr i8, ptr %add.ptr.i39.i, i32 %63
  %add.ptr.i30.i = getelementptr i64, ptr %add.ptr1.i.i106, i32 %conv.i102
  %64 = ptrtoint ptr %bn_nchildren.i44.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %bn_nchildren.i44.i, align 2
  %66 = tail call i16 @llvm.bswap.i16(i16 %65) #8
  %conv.i.i108 = zext i16 %66 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub22, i32 %conv.i.i108)
  %cmp.i = icmp slt i32 %sub22, %conv.i.i108
  br i1 %cmp.i, label %if.then.i, label %if.then18.nilfs_btree_node_insert.exit_crit_edge

if.then18.nilfs_btree_node_insert.exit_crit_edge: ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_node_insert.exit

if.then.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i109 = getelementptr i64, ptr %add.ptr1.i.i106, i32 %sub22
  %add.ptr3.i = getelementptr i64, ptr %add.ptr.i109, i32 1
  %sub.i = sub i32 %conv.i.i108, %sub22
  %mul.i110 = shl i32 %sub.i, 3
  %67 = call ptr @memmove(ptr %add.ptr3.i, ptr %add.ptr.i109, i32 %mul.i110)
  %add.ptr5.i = getelementptr i64, ptr %add.ptr.i30.i, i32 %sub22
  %add.ptr6.i111 = getelementptr i64, ptr %add.ptr5.i, i32 1
  %68 = call ptr @memmove(ptr %add.ptr6.i111, ptr %add.ptr5.i, i32 %mul.i110)
  br label %nilfs_btree_node_insert.exit

nilfs_btree_node_insert.exit:                     ; preds = %if.then.i, %if.then18.nilfs_btree_node_insert.exit_crit_edge
  %69 = tail call i64 @llvm.bswap.i64(i64 %55) #8
  %arrayidx.i112 = getelementptr i64, ptr %add.ptr1.i.i106, i32 %sub22
  %70 = ptrtoint ptr %arrayidx.i112 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %arrayidx.i112, align 8
  %71 = tail call i64 @llvm.bswap.i64(i64 %57) #8
  %arrayidx10.i = getelementptr i64, ptr %add.ptr.i30.i, i32 %sub22
  %72 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %arrayidx10.i, align 8
  %inc.i = add i16 %66, 1
  %73 = tail call i16 @llvm.bswap.i16(i16 %inc.i) #8
  %74 = ptrtoint ptr %bn_nchildren.i44.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %bn_nchildren.i44.i, align 2
  %75 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %7, align 4
  %77 = shl i8 %76, 3
  %78 = and i8 %77, 8
  %79 = xor i8 %78, 8
  %80 = zext i8 %79 to i32
  %add.ptr1.i.i114 = getelementptr i8, ptr %add.ptr.i39.i, i32 %80
  %81 = ptrtoint ptr %add.ptr1.i.i114 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %add.ptr1.i.i114, align 8
  %83 = tail call i64 @llvm.bswap.i64(i64 %82) #8
  %84 = ptrtoint ptr %keyp to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %83, ptr %keyp, align 8
  %bp_newreq = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 4
  %85 = ptrtoint ptr %bp_newreq to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %bp_newreq, align 8
  %87 = ptrtoint ptr %ptrp to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %86, ptr %ptrp, align 8
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i, align 8
  %tobool.not.i = icmp eq ptr %89, null
  br i1 %tobool.not.i, label %nilfs_btree_node_insert.exit.brelse.exit_crit_edge, label %if.then.i115

nilfs_btree_node_insert.exit.brelse.exit_crit_edge: ; preds = %nilfs_btree_node_insert.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i115:                                     ; preds = %nilfs_btree_node_insert.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %89) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i115, %nilfs_btree_node_insert.exit.brelse.exit_crit_edge
  %90 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bp_sib_bh.i, align 4
  %92 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %91, ptr %arrayidx.i, align 8
  br label %if.end42

if.else:                                          ; preds = %if.end16
  tail call void @nilfs_btree_do_insert(ptr noundef %btree, ptr noundef %path, i32 noundef %level, ptr noundef %keyp, ptr noundef %ptrp)
  %93 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %7, align 4
  %95 = shl i8 %94, 3
  %96 = and i8 %95, 8
  %97 = xor i8 %96, 8
  %98 = zext i8 %97 to i32
  %add.ptr1.i.i117 = getelementptr i8, ptr %add.ptr.i39.i, i32 %98
  %99 = ptrtoint ptr %add.ptr1.i.i117 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %add.ptr1.i.i117, align 8
  %101 = tail call i64 @llvm.bswap.i64(i64 %100) #8
  %102 = ptrtoint ptr %keyp to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %101, ptr %keyp, align 8
  %bp_newreq37 = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 4
  %103 = ptrtoint ptr %bp_newreq37 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %bp_newreq37, align 8
  %105 = ptrtoint ptr %ptrp to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %104, ptr %ptrp, align 8
  %106 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %bp_sib_bh.i, align 4
  %tobool.not.i118 = icmp eq ptr %107, null
  br i1 %tobool.not.i118, label %if.else.if.end42_crit_edge, label %if.then.i119

if.else.if.end42_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then.i119:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %107) #8
  br label %if.end42

if.end42:                                         ; preds = %if.then.i119, %if.else.if.end42_crit_edge, %brelse.exit
  %108 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %bp_sib_bh.i, align 4
  %add43 = add i32 %level, 1
  %bp_index45 = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %add43, i32 2
  %109 = ptrtoint ptr %bp_index45 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %bp_index45, align 8
  %inc = add i32 %110, 1
  store i32 %inc, ptr %bp_index45, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_btree_grow(ptr nocapture noundef %btree, ptr nocapture noundef %path, i32 noundef %level, ptr nocapture noundef %keyp, ptr nocapture noundef %ptrp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bp_sib_bh.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 1
  %0 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bp_sib_bh.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data.i, align 4
  %b_nchildren_per_block.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 8
  %4 = ptrtoint ptr %b_nchildren_per_block.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %b_nchildren_per_block.i, align 8
  %conv.i = zext i16 %5 to i32
  %bn_nchildren.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 2
  %6 = ptrtoint ptr %bn_nchildren.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bn_nchildren.i, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #8
  %conv.i36 = zext i16 %8 to i32
  %add.ptr.i.i = getelementptr %struct.nilfs_btree_node, ptr %btree, i32 1
  %9 = ptrtoint ptr %btree to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %btree, align 4
  %11 = shl i8 %10, 3
  %12 = and i8 %11, 8
  %13 = xor i8 %12, 8
  %14 = zext i8 %13 to i32
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %14
  %add.ptr.i38.i = getelementptr i64, ptr %add.ptr1.i.i, i32 3
  %add.ptr.i39.i = getelementptr %struct.nilfs_btree_node, ptr %3, i32 1
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %3, align 4
  %17 = shl i8 %16, 3
  %18 = and i8 %17, 8
  %19 = xor i8 %18, 8
  %20 = zext i8 %19 to i32
  %add.ptr1.i40.i = getelementptr i8, ptr %add.ptr.i39.i, i32 %20
  %add.ptr.i43.i = getelementptr i64, ptr %add.ptr1.i40.i, i32 %conv.i
  %bn_nchildren.i44.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %3, i32 0, i32 2
  %21 = ptrtoint ptr %bn_nchildren.i44.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %bn_nchildren.i44.i, align 2
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #8
  %conv.i45.i = zext i16 %23 to i32
  %add.ptr.i = getelementptr i64, ptr %add.ptr1.i40.i, i32 %conv.i36
  %mul.i = shl nuw nsw i32 %conv.i45.i, 3
  %24 = call ptr @memmove(ptr %add.ptr.i, ptr %add.ptr1.i40.i, i32 %mul.i)
  %add.ptr6.i = getelementptr i64, ptr %add.ptr.i43.i, i32 %conv.i36
  %25 = call ptr @memmove(ptr %add.ptr6.i, ptr %add.ptr.i43.i, i32 %mul.i)
  %add.ptr8.i = getelementptr i64, ptr %add.ptr1.i.i, i32 %conv.i36
  %idx.neg.i = sub nsw i32 0, %conv.i36
  %add.ptr9.i = getelementptr i64, ptr %add.ptr8.i, i32 %idx.neg.i
  %mul10.i = shl nuw nsw i32 %conv.i36, 3
  %26 = call ptr @memcpy(ptr %add.ptr1.i40.i, ptr %add.ptr9.i, i32 %mul10.i)
  %add.ptr11.i = getelementptr i64, ptr %add.ptr.i38.i, i32 %conv.i36
  %add.ptr13.i = getelementptr i64, ptr %add.ptr11.i, i32 %idx.neg.i
  %27 = call ptr @memcpy(ptr %add.ptr.i43.i, ptr %add.ptr13.i, i32 %mul10.i)
  %28 = ptrtoint ptr %bn_nchildren.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %bn_nchildren.i, align 2
  %conv.i48.i = add i16 %23, %8
  %29 = tail call i16 @llvm.bswap.i16(i16 %conv.i48.i) #8
  %30 = ptrtoint ptr %bn_nchildren.i44.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %bn_nchildren.i44.i, align 2
  %31 = trunc i32 %level to i8
  %conv.i37 = add i8 %31, 1
  %bn_level.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 1
  %32 = ptrtoint ptr %bn_level.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i37, ptr %bn_level.i, align 1
  %33 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bp_sib_bh.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %37 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not = icmp eq i32 %37, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mark_buffer_dirty(ptr noundef %34) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level
  %38 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bp_sib_bh.i, align 4
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %arrayidx, align 8
  store ptr null, ptr %bp_sib_bh.i, align 4
  tail call void @nilfs_btree_do_insert(ptr noundef %btree, ptr noundef %path, i32 noundef %level, ptr noundef %keyp, ptr noundef %ptrp)
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %3, align 4
  %43 = shl i8 %42, 3
  %44 = and i8 %43, 8
  %45 = xor i8 %44, 8
  %46 = zext i8 %45 to i32
  %add.ptr1.i.i39 = getelementptr i8, ptr %add.ptr.i39.i, i32 %46
  %47 = ptrtoint ptr %add.ptr1.i.i39 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %add.ptr1.i.i39, align 8
  %49 = tail call i64 @llvm.bswap.i64(i64 %48) #8
  %50 = ptrtoint ptr %keyp to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %keyp, align 8
  %bp_newreq = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 4
  %51 = ptrtoint ptr %bp_newreq to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %bp_newreq, align 8
  %53 = ptrtoint ptr %ptrp to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %ptrp, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_btnode_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_inode_sub_blocks(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_btree_do_delete(ptr nocapture noundef %btree, ptr nocapture noundef readonly %path, i32 noundef %level, ptr noundef writeonly %keyp, ptr noundef writeonly %ptrp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bn_level.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 1
  %0 = ptrtoint ptr %bn_level.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bn_level.i.i, align 1
  %conv.i.i = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %level)
  %cmp = icmp sgt i32 %conv.i.i, %level
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 8
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data.i, align 4
  %b_nchildren_per_block.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 8
  %6 = ptrtoint ptr %b_nchildren_per_block.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %b_nchildren_per_block.i, align 8
  %conv.i = zext i16 %7 to i32
  %bp_index = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 2
  %8 = ptrtoint ptr %bp_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bp_index, align 8
  %add.ptr.i.i = getelementptr %struct.nilfs_btree_node, ptr %5, i32 1
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %5, align 4
  %12 = shl i8 %11, 3
  %13 = and i8 %12, 8
  %14 = xor i8 %13, 8
  %15 = zext i8 %14 to i32
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %15
  %add.ptr.i41.i = getelementptr i64, ptr %add.ptr1.i.i, i32 %conv.i
  %arrayidx.i38 = getelementptr i64, ptr %add.ptr1.i.i, i32 %9
  %arrayidx2.i = getelementptr i64, ptr %add.ptr.i41.i, i32 %9
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx2.i, align 8
  %18 = tail call i64 @llvm.bswap.i64(i64 %17) #8
  %bn_nchildren.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %5, i32 0, i32 2
  %19 = ptrtoint ptr %bn_nchildren.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %bn_nchildren.i.i, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #8
  %conv.i.i39 = zext i16 %21 to i32
  %cmp.not.i = icmp eq ptr %keyp, null
  br i1 %cmp.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx.i38, align 8
  %24 = tail call i64 @llvm.bswap.i64(i64 %23) #8
  %25 = ptrtoint ptr %keyp to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %keyp, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %cmp4.not.i = icmp eq ptr %ptrp, null
  br i1 %cmp4.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then5.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %ptrp to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %18, ptr %ptrp, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i.if.end6.i_crit_edge
  %sub.i = add nsw i32 %conv.i.i39, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %9)
  %cmp7.i = icmp sgt i32 %sub.i, %9
  br i1 %cmp7.i, label %if.then8.i, label %if.end6.i.nilfs_btree_node_delete.exit_crit_edge

if.end6.i.nilfs_btree_node_delete.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_node_delete.exit

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr10.i = getelementptr i64, ptr %arrayidx.i38, i32 1
  %27 = xor i32 %9, -1
  %sub12.i = add i32 %conv.i.i39, %27
  %mul.i = shl i32 %sub12.i, 3
  %28 = call ptr @memmove(ptr %arrayidx.i38, ptr %add.ptr10.i, i32 %mul.i)
  %add.ptr15.i = getelementptr i64, ptr %arrayidx2.i, i32 1
  %29 = call ptr @memmove(ptr %arrayidx2.i, ptr %add.ptr15.i, i32 %mul.i)
  br label %nilfs_btree_node_delete.exit

nilfs_btree_node_delete.exit:                     ; preds = %if.then8.i, %if.end6.i.nilfs_btree_node_delete.exit_crit_edge
  %conv.i42.i = trunc i32 %sub.i to i16
  %30 = tail call i16 @llvm.bswap.i16(i16 %conv.i42.i) #8
  %31 = ptrtoint ptr %bn_nchildren.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %bn_nchildren.i.i, align 2
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  %36 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not = icmp eq i32 %36, 0
  br i1 %tobool.not, label %if.then5, label %nilfs_btree_node_delete.exit.if.end_crit_edge

nilfs_btree_node_delete.exit.if.end_crit_edge:    ; preds = %nilfs_btree_node_delete.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then5:                                         ; preds = %nilfs_btree_node_delete.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mark_buffer_dirty(ptr noundef %33) #8
  br label %if.end

if.end:                                           ; preds = %if.then5, %nilfs_btree_node_delete.exit.if.end_crit_edge
  %37 = ptrtoint ptr %bp_index to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bp_index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp10 = icmp eq i32 %38, 0
  br i1 %cmp10, label %if.then11, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then11:                                        ; preds = %if.end
  %add = add nsw i32 %level, 1
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %5, align 4
  %41 = shl i8 %40, 3
  %42 = and i8 %41, 8
  %43 = xor i8 %42, 8
  %44 = zext i8 %43 to i32
  %add.ptr1.i.i41 = getelementptr i8, ptr %add.ptr.i.i, i32 %44
  %45 = ptrtoint ptr %add.ptr1.i.i41 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %add.ptr1.i.i41, align 8
  %47 = ptrtoint ptr %bn_level.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bn_level.i.i, align 1
  %conv.i.i.i = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv.i.i.i)
  %cmp.i = icmp slt i32 %add, %conv.i.i.i
  br i1 %cmp.i, label %if.then11.do.body.i_crit_edge, label %if.then11.if.end13.i_crit_edge

if.then11.if.end13.i_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then11.do.body.i_crit_edge:                    ; preds = %if.then11
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %if.then11.do.body.i_crit_edge
  %level.addr.0.i = phi i32 [ %inc.i, %land.rhs.i.do.body.i_crit_edge ], [ %add, %if.then11.do.body.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level.addr.0.i
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i, align 8
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %b_data.i.i, align 4
  %bp_index.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level.addr.0.i, i32 2
  %53 = ptrtoint ptr %bp_index.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bp_index.i, align 8
  %add.ptr.i.i.i = getelementptr %struct.nilfs_btree_node, ptr %52, i32 1
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %52, align 4
  %57 = shl i8 %56, 3
  %58 = and i8 %57, 8
  %59 = xor i8 %58, 8
  %60 = zext i8 %59 to i32
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %60
  %add.ptr.i.i42 = getelementptr i64, ptr %add.ptr1.i.i.i, i32 %54
  %61 = ptrtoint ptr %add.ptr.i.i42 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %46, ptr %add.ptr.i.i42, align 8
  %62 = load ptr, ptr %arrayidx.i.i, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %62, align 4
  %65 = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i = icmp eq i32 %65, 0
  br i1 %tobool.not.i, label %if.then4.i, label %do.body.i.do.cond.i_crit_edge

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mark_buffer_dirty(ptr noundef %62) #8
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then4.i, %do.body.i.do.cond.i_crit_edge
  %66 = ptrtoint ptr %bp_index.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bp_index.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp9.i = icmp eq i32 %67, 0
  br i1 %cmp9.i, label %land.rhs.i, label %do.cond.i.if.end13.i_crit_edge

do.cond.i.if.end13.i_crit_edge:                   ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

land.rhs.i:                                       ; preds = %do.cond.i
  %inc.i = add nsw i32 %level.addr.0.i, 1
  %68 = ptrtoint ptr %bn_level.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bn_level.i.i, align 1
  %conv.i.i40.i = zext i8 %69 to i32
  %cmp12.i = icmp slt i32 %inc.i, %conv.i.i40.i
  br i1 %cmp12.i, label %land.rhs.i.do.body.i_crit_edge, label %land.rhs.i.if.end13.i_crit_edge

land.rhs.i.if.end13.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end13.i:                                       ; preds = %land.rhs.i.if.end13.i_crit_edge, %do.cond.i.if.end13.i_crit_edge, %if.then11.if.end13.i_crit_edge
  %level.addr.1.i = phi i32 [ %add, %if.then11.if.end13.i_crit_edge ], [ %inc.i, %land.rhs.i.if.end13.i_crit_edge ], [ %level.addr.0.i, %do.cond.i.if.end13.i_crit_edge ]
  %70 = ptrtoint ptr %bn_level.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bn_level.i.i, align 1
  %conv.i.i43.i = zext i8 %71 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %level.addr.1.i, i32 %conv.i.i43.i)
  %cmp16.i = icmp eq i32 %level.addr.1.i, %conv.i.i43.i
  br i1 %cmp16.i, label %if.then17.i, label %if.end13.i.if.end17_crit_edge

if.end13.i.if.end17_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %bp_index20.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level.addr.1.i, i32 2
  %72 = ptrtoint ptr %bp_index20.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bp_index20.i, align 8
  %add.ptr.i.i45.i = getelementptr %struct.nilfs_btree_node, ptr %btree, i32 1
  %74 = ptrtoint ptr %btree to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %btree, align 4
  %76 = shl i8 %75, 3
  %77 = and i8 %76, 8
  %78 = xor i8 %77, 8
  %79 = zext i8 %78 to i32
  %add.ptr1.i.i46.i = getelementptr i8, ptr %add.ptr.i.i45.i, i32 %79
  %add.ptr.i47.i = getelementptr i64, ptr %add.ptr1.i.i46.i, i32 %73
  %80 = ptrtoint ptr %add.ptr.i47.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %46, ptr %add.ptr.i47.i, align 8
  br label %if.end17

if.else:                                          ; preds = %entry
  %bp_index16 = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 2
  %81 = ptrtoint ptr %bp_index16 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %bp_index16, align 8
  %add.ptr.i.i43 = getelementptr %struct.nilfs_btree_node, ptr %btree, i32 1
  %83 = ptrtoint ptr %btree to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %btree, align 4
  %85 = shl i8 %84, 3
  %86 = and i8 %85, 8
  %87 = xor i8 %86, 8
  %88 = zext i8 %87 to i32
  %add.ptr1.i.i44 = getelementptr i8, ptr %add.ptr.i.i43, i32 %88
  %add.ptr.i41.i45 = getelementptr i64, ptr %add.ptr1.i.i44, i32 3
  %arrayidx.i46 = getelementptr i64, ptr %add.ptr1.i.i44, i32 %82
  %arrayidx2.i47 = getelementptr i64, ptr %add.ptr.i41.i45, i32 %82
  %89 = ptrtoint ptr %arrayidx2.i47 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx2.i47, align 8
  %91 = tail call i64 @llvm.bswap.i64(i64 %90) #8
  %bn_nchildren.i.i48 = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 2
  %92 = ptrtoint ptr %bn_nchildren.i.i48 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %bn_nchildren.i.i48, align 2
  %94 = tail call i16 @llvm.bswap.i16(i16 %93) #8
  %conv.i.i49 = zext i16 %94 to i32
  %cmp.not.i50 = icmp eq ptr %keyp, null
  br i1 %cmp.not.i50, label %if.else.if.end.i53_crit_edge, label %if.then.i51

if.else.if.end.i53_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i53

if.then.i51:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %arrayidx.i46, align 8
  %97 = tail call i64 @llvm.bswap.i64(i64 %96) #8
  %98 = ptrtoint ptr %keyp to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %97, ptr %keyp, align 8
  br label %if.end.i53

if.end.i53:                                       ; preds = %if.then.i51, %if.else.if.end.i53_crit_edge
  %cmp4.not.i52 = icmp eq ptr %ptrp, null
  br i1 %cmp4.not.i52, label %if.end.i53.if.end6.i57_crit_edge, label %if.then5.i54

if.end.i53.if.end6.i57_crit_edge:                 ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i57

if.then5.i54:                                     ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %ptrp to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %91, ptr %ptrp, align 8
  br label %if.end6.i57

if.end6.i57:                                      ; preds = %if.then5.i54, %if.end.i53.if.end6.i57_crit_edge
  %sub.i55 = add nsw i32 %conv.i.i49, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i55, i32 %82)
  %cmp7.i56 = icmp sgt i32 %sub.i55, %82
  br i1 %cmp7.i56, label %if.then8.i62, label %if.end6.i57.nilfs_btree_node_delete.exit64_crit_edge

if.end6.i57.nilfs_btree_node_delete.exit64_crit_edge: ; preds = %if.end6.i57
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_node_delete.exit64

if.then8.i62:                                     ; preds = %if.end6.i57
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr10.i58 = getelementptr i64, ptr %arrayidx.i46, i32 1
  %100 = xor i32 %82, -1
  %sub12.i59 = add i32 %conv.i.i49, %100
  %mul.i60 = shl i32 %sub12.i59, 3
  %101 = call ptr @memmove(ptr %arrayidx.i46, ptr %add.ptr10.i58, i32 %mul.i60)
  %add.ptr15.i61 = getelementptr i64, ptr %arrayidx2.i47, i32 1
  %102 = call ptr @memmove(ptr %arrayidx2.i47, ptr %add.ptr15.i61, i32 %mul.i60)
  br label %nilfs_btree_node_delete.exit64

nilfs_btree_node_delete.exit64:                   ; preds = %if.then8.i62, %if.end6.i57.nilfs_btree_node_delete.exit64_crit_edge
  %conv.i42.i63 = trunc i32 %sub.i55 to i16
  %103 = tail call i16 @llvm.bswap.i16(i16 %conv.i42.i63) #8
  %104 = ptrtoint ptr %bn_nchildren.i.i48 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %bn_nchildren.i.i48, align 2
  br label %if.end17

if.end17:                                         ; preds = %nilfs_btree_node_delete.exit64, %if.then17.i, %if.end13.i.if.end17_crit_edge, %if.end.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_btree_borrow_left(ptr nocapture noundef %btree, ptr nocapture noundef %path, i32 noundef %level, ptr noundef %keyp, ptr noundef %ptrp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nilfs_btree_do_delete(ptr noundef %btree, ptr noundef %path, i32 noundef %level, ptr noundef %keyp, ptr noundef %ptrp)
  %arrayidx.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 8
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data.i, align 4
  %bp_sib_bh.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 1
  %4 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bp_sib_bh.i, align 4
  %b_data.i53 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %b_data.i53 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data.i53, align 4
  %bn_nchildren.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %bn_nchildren.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bn_nchildren.i, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #8
  %conv.i = zext i16 %10 to i32
  %bn_nchildren.i54 = getelementptr inbounds %struct.nilfs_btree_node, ptr %7, i32 0, i32 2
  %11 = ptrtoint ptr %bn_nchildren.i54 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bn_nchildren.i54, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #8
  %conv.i55 = zext i16 %13 to i32
  %b_nchildren_per_block.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 8
  %14 = ptrtoint ptr %b_nchildren_per_block.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %b_nchildren_per_block.i, align 8
  %conv.i56 = zext i16 %15 to i32
  %add = add nuw nsw i32 %conv.i55, %conv.i
  %div6162 = lshr i32 %add, 1
  %sub = sub nsw i32 %div6162, %conv.i
  %add.ptr.i.i = getelementptr %struct.nilfs_btree_node, ptr %7, i32 1
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %7, align 4
  %18 = shl i8 %17, 3
  %19 = and i8 %18, 8
  %20 = xor i8 %19, 8
  %21 = zext i8 %20 to i32
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %21
  %add.ptr.i38.i = getelementptr i64, ptr %add.ptr1.i.i, i32 %conv.i56
  %add.ptr.i39.i = getelementptr %struct.nilfs_btree_node, ptr %3, i32 1
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %3, align 4
  %24 = shl i8 %23, 3
  %25 = and i8 %24, 8
  %26 = xor i8 %25, 8
  %27 = zext i8 %26 to i32
  %add.ptr1.i40.i = getelementptr i8, ptr %add.ptr.i39.i, i32 %27
  %add.ptr.i43.i = getelementptr i64, ptr %add.ptr1.i40.i, i32 %conv.i56
  %add.ptr.i = getelementptr i64, ptr %add.ptr1.i40.i, i32 %sub
  %mul.i = shl nuw nsw i32 %conv.i, 3
  %28 = call ptr @memmove(ptr %add.ptr.i, ptr %add.ptr1.i40.i, i32 %mul.i)
  %add.ptr6.i = getelementptr i64, ptr %add.ptr.i43.i, i32 %sub
  %29 = call ptr @memmove(ptr %add.ptr6.i, ptr %add.ptr.i43.i, i32 %mul.i)
  %add.ptr8.i = getelementptr i64, ptr %add.ptr1.i.i, i32 %conv.i55
  %idx.neg.i = sub nsw i32 0, %sub
  %add.ptr9.i = getelementptr i64, ptr %add.ptr8.i, i32 %idx.neg.i
  %mul10.i = shl nsw i32 %sub, 3
  %30 = call ptr @memcpy(ptr %add.ptr1.i40.i, ptr %add.ptr9.i, i32 %mul10.i)
  %add.ptr11.i = getelementptr i64, ptr %add.ptr.i38.i, i32 %conv.i55
  %add.ptr13.i = getelementptr i64, ptr %add.ptr11.i, i32 %idx.neg.i
  %31 = call ptr @memcpy(ptr %add.ptr.i43.i, ptr %add.ptr13.i, i32 %mul10.i)
  %32 = trunc i32 %sub to i16
  %conv.i46.i = sub i16 %13, %32
  %33 = tail call i16 @llvm.bswap.i16(i16 %conv.i46.i) #8
  %34 = ptrtoint ptr %bn_nchildren.i54 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %bn_nchildren.i54, align 2
  %conv.i48.i = add i16 %10, %32
  %35 = tail call i16 @llvm.bswap.i16(i16 %conv.i48.i) #8
  %36 = ptrtoint ptr %bn_nchildren.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %bn_nchildren.i, align 2
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  %41 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not = icmp eq i32 %41, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mark_buffer_dirty(ptr noundef %38) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %42 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bp_sib_bh.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  %46 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool10.not = icmp eq i32 %46, 0
  br i1 %tobool10.not, label %if.then11, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mark_buffer_dirty(ptr noundef %43) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  %add15 = add i32 %level, 1
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %3, align 4
  %49 = shl i8 %48, 3
  %50 = and i8 %49, 8
  %51 = xor i8 %50, 8
  %52 = zext i8 %51 to i32
  %add.ptr1.i.i58 = getelementptr i8, ptr %add.ptr.i39.i, i32 %52
  %53 = ptrtoint ptr %add.ptr1.i.i58 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %add.ptr1.i.i58, align 8
  %bn_level.i.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 1
  %55 = ptrtoint ptr %bn_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bn_level.i.i.i, align 1
  %conv.i.i.i = zext i8 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add15, i32 %conv.i.i.i)
  %cmp.i = icmp slt i32 %add15, %conv.i.i.i
  br i1 %cmp.i, label %if.end14.do.body.i_crit_edge, label %if.end14.if.end13.i_crit_edge

if.end14.if.end13.i_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.end14.do.body.i_crit_edge:                     ; preds = %if.end14
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %if.end14.do.body.i_crit_edge
  %level.addr.0.i = phi i32 [ %inc.i, %land.rhs.i.do.body.i_crit_edge ], [ %add15, %if.end14.do.body.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level.addr.0.i
  %57 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i.i, align 8
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %b_data.i.i, align 4
  %bp_index.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level.addr.0.i, i32 2
  %61 = ptrtoint ptr %bp_index.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bp_index.i, align 8
  %add.ptr.i.i.i = getelementptr %struct.nilfs_btree_node, ptr %60, i32 1
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %60, align 4
  %65 = shl i8 %64, 3
  %66 = and i8 %65, 8
  %67 = xor i8 %66, 8
  %68 = zext i8 %67 to i32
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %68
  %add.ptr.i.i59 = getelementptr i64, ptr %add.ptr1.i.i.i, i32 %62
  %69 = ptrtoint ptr %add.ptr.i.i59 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %54, ptr %add.ptr.i.i59, align 8
  %70 = load ptr, ptr %arrayidx.i.i, align 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %70, align 4
  %73 = and i32 %72, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i = icmp eq i32 %73, 0
  br i1 %tobool.not.i, label %if.then4.i, label %do.body.i.do.cond.i_crit_edge

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mark_buffer_dirty(ptr noundef %70) #8
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then4.i, %do.body.i.do.cond.i_crit_edge
  %74 = ptrtoint ptr %bp_index.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bp_index.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp9.i = icmp eq i32 %75, 0
  br i1 %cmp9.i, label %land.rhs.i, label %do.cond.i.if.end13.i_crit_edge

do.cond.i.if.end13.i_crit_edge:                   ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

land.rhs.i:                                       ; preds = %do.cond.i
  %inc.i = add nsw i32 %level.addr.0.i, 1
  %76 = ptrtoint ptr %bn_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %bn_level.i.i.i, align 1
  %conv.i.i40.i = zext i8 %77 to i32
  %cmp12.i = icmp slt i32 %inc.i, %conv.i.i40.i
  br i1 %cmp12.i, label %land.rhs.i.do.body.i_crit_edge, label %land.rhs.i.if.end13.i_crit_edge

land.rhs.i.if.end13.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end13.i:                                       ; preds = %land.rhs.i.if.end13.i_crit_edge, %do.cond.i.if.end13.i_crit_edge, %if.end14.if.end13.i_crit_edge
  %level.addr.1.i = phi i32 [ %add15, %if.end14.if.end13.i_crit_edge ], [ %inc.i, %land.rhs.i.if.end13.i_crit_edge ], [ %level.addr.0.i, %do.cond.i.if.end13.i_crit_edge ]
  %78 = ptrtoint ptr %bn_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %bn_level.i.i.i, align 1
  %conv.i.i43.i = zext i8 %79 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %level.addr.1.i, i32 %conv.i.i43.i)
  %cmp16.i = icmp eq i32 %level.addr.1.i, %conv.i.i43.i
  br i1 %cmp16.i, label %if.then17.i, label %if.end13.i.nilfs_btree_promote_key.exit_crit_edge

if.end13.i.nilfs_btree_promote_key.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_promote_key.exit

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %bp_index20.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level.addr.1.i, i32 2
  %80 = ptrtoint ptr %bp_index20.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bp_index20.i, align 8
  %add.ptr.i.i45.i = getelementptr %struct.nilfs_btree_node, ptr %btree, i32 1
  %82 = ptrtoint ptr %btree to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %btree, align 4
  %84 = shl i8 %83, 3
  %85 = and i8 %84, 8
  %86 = xor i8 %85, 8
  %87 = zext i8 %86 to i32
  %add.ptr1.i.i46.i = getelementptr i8, ptr %add.ptr.i.i45.i, i32 %87
  %add.ptr.i47.i = getelementptr i64, ptr %add.ptr1.i.i46.i, i32 %81
  %88 = ptrtoint ptr %add.ptr.i47.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %54, ptr %add.ptr.i47.i, align 8
  br label %nilfs_btree_promote_key.exit

nilfs_btree_promote_key.exit:                     ; preds = %if.then17.i, %if.end13.i.nilfs_btree_promote_key.exit_crit_edge
  %89 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bp_sib_bh.i, align 4
  %tobool.not.i60 = icmp eq ptr %90, null
  br i1 %tobool.not.i60, label %nilfs_btree_promote_key.exit.brelse.exit_crit_edge, label %if.then.i

nilfs_btree_promote_key.exit.brelse.exit_crit_edge: ; preds = %nilfs_btree_promote_key.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i:                                        ; preds = %nilfs_btree_promote_key.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %90) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %nilfs_btree_promote_key.exit.brelse.exit_crit_edge
  %91 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %bp_sib_bh.i, align 4
  %bp_index = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 2
  %92 = ptrtoint ptr %bp_index to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %bp_index, align 8
  %add22 = add i32 %93, %sub
  store i32 %add22, ptr %bp_index, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_btree_concat_left(ptr nocapture noundef %btree, ptr nocapture noundef %path, i32 noundef %level, ptr noundef %keyp, ptr noundef %ptrp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nilfs_btree_do_delete(ptr noundef %btree, ptr noundef %path, i32 noundef %level, ptr noundef %keyp, ptr noundef %ptrp)
  %arrayidx.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 8
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data.i, align 4
  %bp_sib_bh.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 1
  %4 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bp_sib_bh.i, align 4
  %b_data.i38 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %b_data.i38 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data.i38, align 4
  %b_nchildren_per_block.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 8
  %8 = ptrtoint ptr %b_nchildren_per_block.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %b_nchildren_per_block.i, align 8
  %conv.i = zext i16 %9 to i32
  %bn_nchildren.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %bn_nchildren.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bn_nchildren.i, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #8
  %conv.i39 = zext i16 %12 to i32
  %add.ptr.i.i = getelementptr %struct.nilfs_btree_node, ptr %7, i32 1
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %7, align 4
  %15 = shl i8 %14, 3
  %16 = and i8 %15, 8
  %17 = xor i8 %16, 8
  %18 = zext i8 %17 to i32
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %18
  %add.ptr.i37.i = getelementptr i64, ptr %add.ptr1.i.i, i32 %conv.i
  %bn_nchildren.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %7, i32 0, i32 2
  %19 = ptrtoint ptr %bn_nchildren.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %bn_nchildren.i.i, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #8
  %conv.i.i = zext i16 %21 to i32
  %add.ptr.i38.i = getelementptr %struct.nilfs_btree_node, ptr %3, i32 1
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %3, align 4
  %24 = shl i8 %23, 3
  %25 = and i8 %24, 8
  %26 = xor i8 %25, 8
  %27 = zext i8 %26 to i32
  %add.ptr1.i39.i = getelementptr i8, ptr %add.ptr.i38.i, i32 %27
  %add.ptr.i42.i = getelementptr i64, ptr %add.ptr1.i39.i, i32 %conv.i
  %add.ptr.i = getelementptr i64, ptr %add.ptr1.i.i, i32 %conv.i.i
  %mul.i = shl nuw nsw i32 %conv.i39, 3
  %28 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr1.i39.i, i32 %mul.i)
  %add.ptr6.i = getelementptr i64, ptr %add.ptr.i37.i, i32 %conv.i.i
  %29 = call ptr @memcpy(ptr %add.ptr6.i, ptr %add.ptr.i42.i, i32 %mul.i)
  %conv.i45.i = add i16 %21, %12
  %30 = tail call i16 @llvm.bswap.i16(i16 %conv.i45.i) #8
  %31 = ptrtoint ptr %bn_nchildren.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %bn_nchildren.i.i, align 2
  %32 = ptrtoint ptr %bn_nchildren.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %bn_nchildren.i, align 2
  %33 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bp_sib_bh.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %37 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not = icmp eq i32 %37, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mark_buffer_dirty(ptr noundef %34) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 8
  tail call void @nilfs_btnode_delete(ptr noundef %39) #8
  %40 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bp_sib_bh.i, align 4
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %arrayidx.i, align 8
  store ptr null, ptr %bp_sib_bh.i, align 4
  %43 = ptrtoint ptr %bn_nchildren.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %bn_nchildren.i.i, align 2
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #8
  %conv.i41 = zext i16 %45 to i32
  %bp_index = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 2
  %46 = ptrtoint ptr %bp_index to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bp_index, align 8
  %add = add i32 %47, %conv.i41
  store i32 %add, ptr %bp_index, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_btree_borrow_right(ptr nocapture noundef %btree, ptr nocapture noundef %path, i32 noundef %level, ptr noundef %keyp, ptr noundef %ptrp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nilfs_btree_do_delete(ptr noundef %btree, ptr noundef %path, i32 noundef %level, ptr noundef %keyp, ptr noundef %ptrp)
  %arrayidx.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 8
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data.i, align 4
  %bp_sib_bh.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 1
  %4 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bp_sib_bh.i, align 4
  %b_data.i57 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %b_data.i57 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data.i57, align 4
  %bn_nchildren.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %bn_nchildren.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bn_nchildren.i, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #8
  %conv.i = zext i16 %10 to i32
  %bn_nchildren.i58 = getelementptr inbounds %struct.nilfs_btree_node, ptr %7, i32 0, i32 2
  %11 = ptrtoint ptr %bn_nchildren.i58 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bn_nchildren.i58, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #8
  %conv.i59 = zext i16 %13 to i32
  %b_nchildren_per_block.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 8
  %14 = ptrtoint ptr %b_nchildren_per_block.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %b_nchildren_per_block.i, align 8
  %conv.i60 = zext i16 %15 to i32
  %add = add nuw nsw i32 %conv.i59, %conv.i
  %div6566 = lshr i32 %add, 1
  %sub = sub nsw i32 %div6566, %conv.i
  %add.ptr.i.i = getelementptr %struct.nilfs_btree_node, ptr %3, i32 1
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %3, align 4
  %18 = shl i8 %17, 3
  %19 = and i8 %18, 8
  %20 = xor i8 %19, 8
  %21 = zext i8 %20 to i32
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %21
  %add.ptr.i37.i = getelementptr i64, ptr %add.ptr1.i.i, i32 %conv.i60
  %add.ptr.i38.i = getelementptr %struct.nilfs_btree_node, ptr %7, i32 1
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %7, align 4
  %24 = shl i8 %23, 3
  %25 = and i8 %24, 8
  %26 = xor i8 %25, 8
  %27 = zext i8 %26 to i32
  %add.ptr1.i39.i = getelementptr i8, ptr %add.ptr.i38.i, i32 %27
  %add.ptr.i42.i = getelementptr i64, ptr %add.ptr1.i39.i, i32 %conv.i60
  %add.ptr.i = getelementptr i64, ptr %add.ptr1.i.i, i32 %conv.i
  %mul.i = shl nsw i32 %sub, 3
  %28 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr1.i39.i, i32 %mul.i)
  %add.ptr6.i = getelementptr i64, ptr %add.ptr.i37.i, i32 %conv.i
  %29 = call ptr @memcpy(ptr %add.ptr6.i, ptr %add.ptr.i42.i, i32 %mul.i)
  %add.ptr8.i = getelementptr i64, ptr %add.ptr1.i39.i, i32 %sub
  %sub.i = sub nsw i32 %conv.i59, %sub
  %mul9.i = shl nsw i32 %sub.i, 3
  %30 = call ptr @memmove(ptr %add.ptr1.i39.i, ptr %add.ptr8.i, i32 %mul9.i)
  %add.ptr10.i = getelementptr i64, ptr %add.ptr.i42.i, i32 %sub
  %31 = call ptr @memmove(ptr %add.ptr.i42.i, ptr %add.ptr10.i, i32 %mul9.i)
  %32 = trunc i32 %sub to i16
  %conv.i45.i = add i16 %10, %32
  %33 = tail call i16 @llvm.bswap.i16(i16 %conv.i45.i) #8
  %34 = ptrtoint ptr %bn_nchildren.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %bn_nchildren.i, align 2
  %conv.i47.i = trunc i32 %sub.i to i16
  %35 = tail call i16 @llvm.bswap.i16(i16 %conv.i47.i) #8
  %36 = ptrtoint ptr %bn_nchildren.i58 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %bn_nchildren.i58, align 2
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  %41 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not = icmp eq i32 %41, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mark_buffer_dirty(ptr noundef %38) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %42 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bp_sib_bh.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  %46 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool10.not = icmp eq i32 %46, 0
  br i1 %tobool10.not, label %if.then11, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mark_buffer_dirty(ptr noundef %43) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  %add15 = add i32 %level, 1
  %bp_index = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %add15, i32 2
  %47 = ptrtoint ptr %bp_index to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bp_index, align 8
  %inc = add i32 %48, 1
  store i32 %inc, ptr %bp_index, align 8
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %7, align 4
  %51 = shl i8 %50, 3
  %52 = and i8 %51, 8
  %53 = xor i8 %52, 8
  %54 = zext i8 %53 to i32
  %add.ptr1.i.i62 = getelementptr i8, ptr %add.ptr.i38.i, i32 %54
  %55 = ptrtoint ptr %add.ptr1.i.i62 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %add.ptr1.i.i62, align 8
  %bn_level.i.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 1
  %57 = ptrtoint ptr %bn_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bn_level.i.i.i, align 1
  %conv.i.i.i = zext i8 %58 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add15, i32 %conv.i.i.i)
  %cmp.i = icmp slt i32 %add15, %conv.i.i.i
  br i1 %cmp.i, label %if.end14.do.body.i_crit_edge, label %if.end14.if.end13.i_crit_edge

if.end14.if.end13.i_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.end14.do.body.i_crit_edge:                     ; preds = %if.end14
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %if.end14.do.body.i_crit_edge
  %level.addr.0.i = phi i32 [ %inc.i, %land.rhs.i.do.body.i_crit_edge ], [ %add15, %if.end14.do.body.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level.addr.0.i
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i.i, align 8
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %b_data.i.i, align 4
  %bp_index.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level.addr.0.i, i32 2
  %63 = ptrtoint ptr %bp_index.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bp_index.i, align 8
  %add.ptr.i.i.i = getelementptr %struct.nilfs_btree_node, ptr %62, i32 1
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %62, align 4
  %67 = shl i8 %66, 3
  %68 = and i8 %67, 8
  %69 = xor i8 %68, 8
  %70 = zext i8 %69 to i32
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %70
  %add.ptr.i.i63 = getelementptr i64, ptr %add.ptr1.i.i.i, i32 %64
  %71 = ptrtoint ptr %add.ptr.i.i63 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %56, ptr %add.ptr.i.i63, align 8
  %72 = load ptr, ptr %arrayidx.i.i, align 8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %72, align 4
  %75 = and i32 %74, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i = icmp eq i32 %75, 0
  br i1 %tobool.not.i, label %if.then4.i, label %do.body.i.do.cond.i_crit_edge

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mark_buffer_dirty(ptr noundef %72) #8
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then4.i, %do.body.i.do.cond.i_crit_edge
  %76 = ptrtoint ptr %bp_index.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bp_index.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp9.i = icmp eq i32 %77, 0
  br i1 %cmp9.i, label %land.rhs.i, label %do.cond.i.if.end13.i_crit_edge

do.cond.i.if.end13.i_crit_edge:                   ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

land.rhs.i:                                       ; preds = %do.cond.i
  %inc.i = add nsw i32 %level.addr.0.i, 1
  %78 = ptrtoint ptr %bn_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %bn_level.i.i.i, align 1
  %conv.i.i40.i = zext i8 %79 to i32
  %cmp12.i = icmp slt i32 %inc.i, %conv.i.i40.i
  br i1 %cmp12.i, label %land.rhs.i.do.body.i_crit_edge, label %land.rhs.i.if.end13.i_crit_edge

land.rhs.i.if.end13.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end13.i:                                       ; preds = %land.rhs.i.if.end13.i_crit_edge, %do.cond.i.if.end13.i_crit_edge, %if.end14.if.end13.i_crit_edge
  %level.addr.1.i = phi i32 [ %add15, %if.end14.if.end13.i_crit_edge ], [ %inc.i, %land.rhs.i.if.end13.i_crit_edge ], [ %level.addr.0.i, %do.cond.i.if.end13.i_crit_edge ]
  %80 = ptrtoint ptr %bn_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %bn_level.i.i.i, align 1
  %conv.i.i43.i = zext i8 %81 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %level.addr.1.i, i32 %conv.i.i43.i)
  %cmp16.i = icmp eq i32 %level.addr.1.i, %conv.i.i43.i
  br i1 %cmp16.i, label %if.then17.i, label %if.end13.i.nilfs_btree_promote_key.exit_crit_edge

if.end13.i.nilfs_btree_promote_key.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_promote_key.exit

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %bp_index20.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level.addr.1.i, i32 2
  %82 = ptrtoint ptr %bp_index20.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bp_index20.i, align 8
  %add.ptr.i.i45.i = getelementptr %struct.nilfs_btree_node, ptr %btree, i32 1
  %84 = ptrtoint ptr %btree to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %btree, align 4
  %86 = shl i8 %85, 3
  %87 = and i8 %86, 8
  %88 = xor i8 %87, 8
  %89 = zext i8 %88 to i32
  %add.ptr1.i.i46.i = getelementptr i8, ptr %add.ptr.i.i45.i, i32 %89
  %add.ptr.i47.i = getelementptr i64, ptr %add.ptr1.i.i46.i, i32 %83
  %90 = ptrtoint ptr %add.ptr.i47.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %56, ptr %add.ptr.i47.i, align 8
  br label %nilfs_btree_promote_key.exit

nilfs_btree_promote_key.exit:                     ; preds = %if.then17.i, %if.end13.i.nilfs_btree_promote_key.exit_crit_edge
  %91 = ptrtoint ptr %bp_index to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bp_index, align 8
  %dec = add i32 %92, -1
  store i32 %dec, ptr %bp_index, align 8
  %93 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bp_sib_bh.i, align 4
  %tobool.not.i64 = icmp eq ptr %94, null
  br i1 %tobool.not.i64, label %nilfs_btree_promote_key.exit.brelse.exit_crit_edge, label %if.then.i

nilfs_btree_promote_key.exit.brelse.exit_crit_edge: ; preds = %nilfs_btree_promote_key.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i:                                        ; preds = %nilfs_btree_promote_key.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %94) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %nilfs_btree_promote_key.exit.brelse.exit_crit_edge
  %95 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %bp_sib_bh.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_btree_concat_right(ptr nocapture noundef %btree, ptr nocapture noundef %path, i32 noundef %level, ptr noundef %keyp, ptr noundef %ptrp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nilfs_btree_do_delete(ptr noundef %btree, ptr noundef %path, i32 noundef %level, ptr noundef %keyp, ptr noundef %ptrp)
  %arrayidx.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 8
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data.i, align 4
  %bp_sib_bh.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 1
  %4 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bp_sib_bh.i, align 4
  %b_data.i28 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %b_data.i28 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data.i28, align 4
  %b_nchildren_per_block.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 8
  %8 = ptrtoint ptr %b_nchildren_per_block.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %b_nchildren_per_block.i, align 8
  %conv.i = zext i16 %9 to i32
  %bn_nchildren.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %bn_nchildren.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bn_nchildren.i, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #8
  %conv.i29 = zext i16 %12 to i32
  %add.ptr.i.i = getelementptr %struct.nilfs_btree_node, ptr %3, i32 1
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %3, align 4
  %15 = shl i8 %14, 3
  %16 = and i8 %15, 8
  %17 = xor i8 %16, 8
  %18 = zext i8 %17 to i32
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %18
  %add.ptr.i37.i = getelementptr i64, ptr %add.ptr1.i.i, i32 %conv.i
  %bn_nchildren.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %bn_nchildren.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %bn_nchildren.i.i, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #8
  %conv.i.i = zext i16 %21 to i32
  %add.ptr.i38.i = getelementptr %struct.nilfs_btree_node, ptr %7, i32 1
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %7, align 4
  %24 = shl i8 %23, 3
  %25 = and i8 %24, 8
  %26 = xor i8 %25, 8
  %27 = zext i8 %26 to i32
  %add.ptr1.i39.i = getelementptr i8, ptr %add.ptr.i38.i, i32 %27
  %add.ptr.i42.i = getelementptr i64, ptr %add.ptr1.i39.i, i32 %conv.i
  %add.ptr.i = getelementptr i64, ptr %add.ptr1.i.i, i32 %conv.i.i
  %mul.i = shl nuw nsw i32 %conv.i29, 3
  %28 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr1.i39.i, i32 %mul.i)
  %add.ptr6.i = getelementptr i64, ptr %add.ptr.i37.i, i32 %conv.i.i
  %29 = call ptr @memcpy(ptr %add.ptr6.i, ptr %add.ptr.i42.i, i32 %mul.i)
  %conv.i45.i = add i16 %21, %12
  %30 = tail call i16 @llvm.bswap.i16(i16 %conv.i45.i) #8
  %31 = ptrtoint ptr %bn_nchildren.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %bn_nchildren.i.i, align 2
  %32 = ptrtoint ptr %bn_nchildren.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %bn_nchildren.i, align 2
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %37 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not = icmp eq i32 %37, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mark_buffer_dirty(ptr noundef %34) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %38 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bp_sib_bh.i, align 4
  tail call void @nilfs_btnode_delete(ptr noundef %39) #8
  %40 = ptrtoint ptr %bp_sib_bh.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %bp_sib_bh.i, align 4
  %add = add i32 %level, 1
  %bp_index = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %add, i32 2
  %41 = ptrtoint ptr %bp_index to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bp_index, align 8
  %inc = add i32 %42, 1
  store i32 %inc, ptr %bp_index, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_btree_shrink(ptr nocapture noundef %btree, ptr nocapture noundef %path, i32 noundef %level, ptr noundef %keyp, ptr noundef %ptrp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nilfs_btree_do_delete(ptr noundef %btree, ptr noundef %path, i32 noundef %level, ptr noundef %keyp, ptr noundef %ptrp)
  %arrayidx.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 8
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data.i, align 4
  %b_nchildren_per_block.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 8
  %4 = ptrtoint ptr %b_nchildren_per_block.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %b_nchildren_per_block.i, align 8
  %add.ptr.i.i = getelementptr %struct.nilfs_btree_node, ptr %btree, i32 1
  %bn_nchildren.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 2
  %6 = ptrtoint ptr %bn_nchildren.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bn_nchildren.i.i, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #8
  %conv.i.i = zext i16 %8 to i32
  %sub.i = add nsw i32 %conv.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %cmp7.i = icmp ugt i16 %8, 1
  br i1 %cmp7.i, label %if.then8.i, label %entry.nilfs_btree_node_delete.exit_crit_edge

entry.nilfs_btree_node_delete.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_node_delete.exit

if.then8.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %btree to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %btree, align 4
  %11 = shl i8 %10, 3
  %12 = and i8 %11, 8
  %13 = xor i8 %12, 8
  %14 = zext i8 %13 to i32
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %14
  %add.ptr.i41.i = getelementptr i64, ptr %add.ptr1.i.i, i32 3
  %add.ptr10.i = getelementptr i64, ptr %add.ptr1.i.i, i32 1
  %mul.i = shl nuw nsw i32 %sub.i, 3
  %15 = call ptr @memmove(ptr %add.ptr1.i.i, ptr %add.ptr10.i, i32 %mul.i)
  %add.ptr15.i = getelementptr i64, ptr %add.ptr.i41.i, i32 1
  %16 = call ptr @memmove(ptr %add.ptr.i41.i, ptr %add.ptr15.i, i32 %mul.i)
  br label %nilfs_btree_node_delete.exit

nilfs_btree_node_delete.exit:                     ; preds = %if.then8.i, %entry.nilfs_btree_node_delete.exit_crit_edge
  %conv.i = zext i16 %5 to i32
  %conv.i42.i = trunc i32 %sub.i to i16
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv.i42.i) #8
  %18 = ptrtoint ptr %bn_nchildren.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %bn_nchildren.i.i, align 2
  %conv.i18 = trunc i32 %level to i8
  %bn_level.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 1
  %19 = ptrtoint ptr %bn_level.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.i18, ptr %bn_level.i, align 1
  %bn_nchildren.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %bn_nchildren.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %bn_nchildren.i, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #8
  %conv.i19 = zext i16 %22 to i32
  %23 = ptrtoint ptr %btree to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %btree, align 4
  %25 = shl i8 %24, 3
  %26 = and i8 %25, 8
  %27 = xor i8 %26, 8
  %28 = zext i8 %27 to i32
  %add.ptr1.i.i21 = getelementptr i8, ptr %add.ptr.i.i, i32 %28
  %add.ptr.i37.i = getelementptr i64, ptr %add.ptr1.i.i21, i32 3
  %conv.i.i23 = and i32 %sub.i, 65535
  %add.ptr.i38.i = getelementptr %struct.nilfs_btree_node, ptr %3, i32 1
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %3, align 4
  %31 = shl i8 %30, 3
  %32 = and i8 %31, 8
  %33 = xor i8 %32, 8
  %34 = zext i8 %33 to i32
  %add.ptr1.i39.i = getelementptr i8, ptr %add.ptr.i38.i, i32 %34
  %add.ptr.i42.i = getelementptr i64, ptr %add.ptr1.i39.i, i32 %conv.i
  %add.ptr.i = getelementptr i64, ptr %add.ptr1.i.i21, i32 %conv.i.i23
  %mul.i24 = shl nuw nsw i32 %conv.i19, 3
  %35 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr1.i39.i, i32 %mul.i24)
  %add.ptr6.i = getelementptr i64, ptr %add.ptr.i37.i, i32 %conv.i.i23
  %36 = call ptr @memcpy(ptr %add.ptr6.i, ptr %add.ptr.i42.i, i32 %mul.i24)
  %conv.i45.i = add i16 %22, %conv.i42.i
  %37 = tail call i16 @llvm.bswap.i16(i16 %conv.i45.i) #8
  %38 = ptrtoint ptr %bn_nchildren.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %bn_nchildren.i.i, align 2
  %39 = ptrtoint ptr %bn_nchildren.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %bn_nchildren.i, align 2
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 8
  tail call void @nilfs_btnode_delete(ptr noundef %41) #8
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nilfs_btree_nop(ptr nocapture noundef %btree, ptr nocapture noundef %path, i32 noundef %level, ptr nocapture noundef %keyp, ptr nocapture noundef %ptrp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_dat_prepare_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_dat_abort_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_dat_commit_end(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nilfs_bmap_data_get_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_dat_mark_dirty(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_btree_prepare_update_v(ptr noundef %btree, ptr noundef %path, i32 noundef %level, ptr noundef %dat) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %level, 1
  %bn_level.i.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 1
  %0 = ptrtoint ptr %bn_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bn_level.i.i.i, align 1
  %conv.i.i.i = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv.i.i.i)
  %cmp.i = icmp eq i32 %add, %conv.i.i.i
  br i1 %cmp.i, label %entry.nilfs_btree_get_node.exit_crit_edge, label %if.else.i

entry.nilfs_btree_get_node.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_get_node.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %add
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 8
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data.i.i, align 4
  %b_nchildren_per_block.i.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 8
  %6 = ptrtoint ptr %b_nchildren_per_block.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %b_nchildren_per_block.i.i, align 8
  %conv.i.i = zext i16 %7 to i32
  br label %nilfs_btree_get_node.exit

nilfs_btree_get_node.exit:                        ; preds = %if.else.i, %entry.nilfs_btree_get_node.exit_crit_edge
  %storemerge.i = phi i32 [ %conv.i.i, %if.else.i ], [ 3, %entry.nilfs_btree_get_node.exit_crit_edge ]
  %node.0.i = phi ptr [ %5, %if.else.i ], [ %btree, %entry.nilfs_btree_get_node.exit_crit_edge ]
  %bp_index = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %add, i32 2
  %8 = ptrtoint ptr %bp_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bp_index, align 8
  %add.ptr.i.i.i = getelementptr %struct.nilfs_btree_node, ptr %node.0.i, i32 1
  %10 = ptrtoint ptr %node.0.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %node.0.i, align 4
  %12 = shl i8 %11, 3
  %13 = and i8 %12, 8
  %14 = xor i8 %13, 8
  %15 = zext i8 %14 to i32
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %15
  %add.ptr.i.i = getelementptr i64, ptr %add.ptr1.i.i.i, i32 %storemerge.i
  %add.ptr.i = getelementptr i64, ptr %add.ptr.i.i, i32 %9
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr.i, align 8
  %18 = tail call i64 @llvm.bswap.i64(i64 %17) #8
  %bp_oldreq = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 3
  %19 = ptrtoint ptr %bp_oldreq to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %bp_oldreq, align 8
  %add6 = add i64 %18, 1
  %bp_newreq = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 4
  %20 = ptrtoint ptr %bp_newreq to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %add6, ptr %bp_newreq, align 8
  %call12 = tail call i32 @nilfs_dat_prepare_update(ptr noundef %dat, ptr noundef %bp_oldreq, ptr noundef %bp_newreq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %nilfs_btree_get_node.exit.cleanup_crit_edge, label %if.end

nilfs_btree_get_node.exit.cleanup_crit_edge:      ; preds = %nilfs_btree_get_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %nilfs_btree_get_node.exit
  %arrayidx3 = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level
  %21 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx3, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %25 = and i32 %24, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp eq i32 %25, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15:                                        ; preds = %if.end
  %26 = ptrtoint ptr %bp_oldreq to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %bp_oldreq, align 8
  %bp_ctxt = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 5
  %28 = ptrtoint ptr %bp_ctxt to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %bp_ctxt, align 8
  %29 = ptrtoint ptr %bp_newreq to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %bp_newreq, align 8
  %newkey = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 5, i32 1
  %31 = ptrtoint ptr %newkey to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %newkey, align 8
  %bh = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 5, i32 2
  %32 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %22, ptr %bh, align 8
  %i_btnode_cache = getelementptr i8, ptr %btree, i32 216
  %call30 = tail call i32 @nilfs_btnode_prepare_change_key(ptr noundef %i_btnode_cache, ptr noundef %bp_ctxt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then32:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nilfs_dat_abort_update(ptr noundef %dat, ptr noundef %bp_oldreq, ptr noundef %bp_newreq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.then15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %nilfs_btree_get_node.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %if.then32 ], [ %call12, %nilfs_btree_get_node.exit.cleanup_crit_edge ], [ 0, %if.then15.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_dat_prepare_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_btnode_prepare_change_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_dat_abort_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_btnode_abort_change_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nilfs_btree_commit_update_v(ptr noundef %btree, ptr noundef %path, i32 noundef %level, ptr noundef %dat) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level
  %bp_oldreq = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 3
  %bp_newreq = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 4
  %b_ptr_type = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 6
  %0 = ptrtoint ptr %b_ptr_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %b_ptr_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %conv = zext i1 %cmp to i32
  tail call void @nilfs_dat_commit_update(ptr noundef %dat, ptr noundef %bp_oldreq, ptr noundef %bp_newreq, i32 noundef %conv) #8
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %6 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_btnode_cache = getelementptr i8, ptr %btree, i32 216
  %bp_ctxt = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 5
  tail call void @nilfs_btnode_commit_change_key(ptr noundef %i_btnode_cache, ptr noundef %bp_ctxt) #8
  %bh = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %level, i32 5, i32 2
  %7 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bh, align 8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %arrayidx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %14 = and i32 %13, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.set_buffer_nilfs_volatile.exit_crit_edge

if.end.set_buffer_nilfs_volatile.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_nilfs_volatile.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 18, ptr noundef %11) #8
  br label %set_buffer_nilfs_volatile.exit

set_buffer_nilfs_volatile.exit:                   ; preds = %if.then.i, %if.end.set_buffer_nilfs_volatile.exit_crit_edge
  %add = add i32 %level, 1
  %bn_level.i.i.i = getelementptr inbounds %struct.nilfs_btree_node, ptr %btree, i32 0, i32 1
  %15 = ptrtoint ptr %bn_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bn_level.i.i.i, align 1
  %conv.i.i.i = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv.i.i.i)
  %cmp.i = icmp eq i32 %add, %conv.i.i.i
  br i1 %cmp.i, label %set_buffer_nilfs_volatile.exit.nilfs_btree_get_node.exit_crit_edge, label %if.else.i

set_buffer_nilfs_volatile.exit.nilfs_btree_get_node.exit_crit_edge: ; preds = %set_buffer_nilfs_volatile.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_btree_get_node.exit

if.else.i:                                        ; preds = %set_buffer_nilfs_volatile.exit
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %add
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i, align 8
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_data.i.i, align 4
  %b_nchildren_per_block.i.i = getelementptr inbounds %struct.nilfs_bmap, ptr %btree, i32 0, i32 8
  %21 = ptrtoint ptr %b_nchildren_per_block.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %b_nchildren_per_block.i.i, align 8
  %conv.i.i = zext i16 %22 to i32
  br label %nilfs_btree_get_node.exit

nilfs_btree_get_node.exit:                        ; preds = %if.else.i, %set_buffer_nilfs_volatile.exit.nilfs_btree_get_node.exit_crit_edge
  %storemerge.i = phi i32 [ %conv.i.i, %if.else.i ], [ 3, %set_buffer_nilfs_volatile.exit.nilfs_btree_get_node.exit_crit_edge ]
  %node.0.i = phi ptr [ %20, %if.else.i ], [ %btree, %set_buffer_nilfs_volatile.exit.nilfs_btree_get_node.exit_crit_edge ]
  %bp_index = getelementptr %struct.nilfs_btree_path, ptr %path, i32 %add, i32 2
  %23 = ptrtoint ptr %bp_index to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bp_index, align 8
  %25 = ptrtoint ptr %bp_newreq to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %bp_newreq, align 8
  %27 = tail call i64 @llvm.bswap.i64(i64 %26) #8
  %add.ptr.i.i.i = getelementptr %struct.nilfs_btree_node, ptr %node.0.i, i32 1
  %28 = ptrtoint ptr %node.0.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %node.0.i, align 4
  %30 = shl i8 %29, 3
  %31 = and i8 %30, 8
  %32 = xor i8 %31, 8
  %33 = zext i8 %32 to i32
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %33
  %add.ptr.i.i = getelementptr i64, ptr %add.ptr1.i.i.i, i32 %storemerge.i
  %add.ptr.i36 = getelementptr i64, ptr %add.ptr.i.i, i32 %24
  %34 = ptrtoint ptr %add.ptr.i36 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %27, ptr %add.ptr.i36, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_dat_commit_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_btnode_commit_change_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagevec_lookup_range_tag(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_dat_prepare_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_dat_commit_start(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_btree_propagate_gc(ptr noundef %btree, ptr nocapture noundef readonly %bh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nilfs_bmap_get_dat(ptr noundef %btree) #8
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %0 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %b_blocknr, align 8
  %call1 = tail call i32 @nilfs_dat_mark_dirty(ptr noundef %call, i64 noundef %1) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_btree_assign_gc(ptr noundef %btree, ptr nocapture noundef readonly %bh, i64 noundef %blocknr, ptr nocapture noundef writeonly %binfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nilfs_bmap_get_dat(ptr noundef %btree) #8
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bh, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %b_blocknr, align 8
  %call1 = tail call i32 @nilfs_dat_move(ptr noundef %call, i64 noundef %3, i64 noundef %blocknr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bh, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %8 = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 5
  %9 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_data, align 4
  %add.ptr.i.i = getelementptr %struct.nilfs_btree_node, ptr %10, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  %13 = shl i8 %12, 3
  %14 = and i8 %13, 8
  %15 = xor i8 %14, 8
  %16 = zext i8 %15 to i32
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %16
  %17 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %add.ptr1.i.i, align 8
  %19 = tail call i64 @llvm.bswap.i64(i64 %18) #8
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i64 @nilfs_bmap_data_get_key(ptr noundef %btree, ptr noundef %5) #8
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %key.0 = phi i64 [ %19, %if.then3 ], [ %call5, %if.else ]
  %20 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bh, align 4
  %b_blocknr7 = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %b_blocknr7 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %b_blocknr7, align 8
  %24 = tail call i64 @llvm.bswap.i64(i64 %23)
  %25 = ptrtoint ptr %binfo to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %binfo, align 8
  %26 = tail call i64 @llvm.bswap.i64(i64 %key.0)
  %bi_blkoff = getelementptr inbounds %struct.nilfs_binfo_v, ptr %binfo, i32 0, i32 1
  %27 = ptrtoint ptr %bi_blkoff to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %bi_blkoff, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_dat_move(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nilfs2/btree.c", i32 354, i32 3}
!2 = !{ptr @nilfs_btree_ops, !3, !"nilfs_btree_ops", i1 false, i1 false}
!3 = !{!"../fs/nilfs2/btree.c", i32 2342, i32 43}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/nilfs2/btree.c", i32 582, i32 4}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nilfs2/btree.c", i32 511, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/buffer_head.h", i32 354, i32 2}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nilfs2/btree.c", i32 453, i32 3}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/nilfs2/btree.c", i32 2076, i32 4}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/nilfs2/btree.c", i32 2116, i32 3}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/nilfs2/btree.c", i32 384, i32 3}
!20 = !{ptr @nilfs_btree_ops_gc, !21, !"nilfs_btree_ops_gc", i1 false, i1 false}
!21 = !{!"../fs/nilfs2/btree.c", i32 2364, i32 43}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"branch_weights", i32 7818360, i32 -388717296}
!32 = !{i64 2154999213, i64 2154999696, i64 2154999250, i64 2154999306, i64 2154999340, i64 2154999364, i64 2154999405, i64 2154999426, i64 2154999454, i64 2154999488}
!33 = !{!"branch_weights", i32 6003000, i32 -294967296}
!34 = !{!"auto-init"}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{!"branch_weights", i32 1, i32 2000}
!37 = !{i64 2148642413, i64 2148642439, i64 2148642468, i64 2148642502, i64 2148642533, i64 2148642556}
!38 = !{i64 2150661716, i64 2150662207, i64 2150661753, i64 2150661809, i64 2150661843, i64 2150661867, i64 2150661908, i64 2150661929, i64 2150661957, i64 2150661991}
!39 = !{i64 2155004582, i64 2155005065, i64 2155004619, i64 2155004675, i64 2155004709, i64 2155004733, i64 2155004774, i64 2155004795, i64 2155004823, i64 2155004857}
