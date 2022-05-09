; ModuleID = '/llk/IR_all_yes/fs/nfs/blocklayout/extent_tree.c_pt.bc'
source_filename = "../fs/nfs/blocklayout/extent_tree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.141 }
%struct.atomic_t = type { i32 }
%union.anon.141 = type { i32 }
%struct.pnfs_block_extent = type { %union.anon.166, ptr, i64, i64, i64, i32, i32 }
%union.anon.166 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.pnfs_block_layout = type { %struct.pnfs_layout_hdr, %struct.rb_root, %struct.rb_root, %struct.spinlock, i8, i64 }
%struct.pnfs_layout_hdr = type { %struct.refcount_struct, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, %struct.nfs4_stateid_struct, i32, i32, i32, i64, ptr, ptr, %struct.callback_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nfs4_stateid_struct = type { %union.anon, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, [12 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nfs4_deviceid_node = type { %struct.hlist_node, %struct.hlist_node, ptr, ptr, i32, i32, %struct.nfs4_deviceid, %struct.callback_head, %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%struct.nfs4_deviceid = type { [16 x i8] }
%struct.nfs4_layoutcommit_args = type { %struct.nfs4_sequence_args, %struct.nfs4_stateid_struct, i64, ptr, ptr, i32, ptr, ptr, ptr }
%struct.nfs4_sequence_args = type { ptr, i8 }
%struct.page = type { i32, %union.anon.22, %union.anon.139, %struct.atomic_t, i32 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.139 = type { %struct.atomic_t }

@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@ext_tree_insert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid extent type\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ext_tree_insert\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fs/nfs/blocklayout/extent_tree.c\00", [63 x i8] zeroinitializer }, align 32
@ext_tree_insert._entry_ptr = internal global ptr @ext_tree_insert._entry, section ".printk_index", align 4
@ext_tree_prepare_commit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s enter\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ext_tree_prepare_commit\00", [40 x i8] zeroinitializer }, align 32
@ext_tree_prepare_commit._entry_ptr = internal global ptr @ext_tree_prepare_commit._entry, section ".printk_index", align 4
@ext_tree_prepare_commit._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s found %zu ranges\0A\00", [43 x i8] zeroinitializer }, align 32
@ext_tree_prepare_commit._entry_ptr.7 = internal global ptr @ext_tree_prepare_commit._entry.5, section ".printk_index", align 4
@ext_tree_mark_committed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s status %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ext_tree_mark_committed\00", [40 x i8] zeroinitializer }, align 32
@ext_tree_mark_committed._entry_ptr = internal global ptr @ext_tree_mark_committed._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.12 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 271, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 563, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 610, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private constant [36 x i8] c"../fs/nfs/blocklayout/extent_tree.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 621, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 717, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 1160, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @ext_tree_insert._entry, ptr @ext_tree_insert._entry_ptr, ptr @ext_tree_mark_committed._entry, ptr @ext_tree_mark_committed._entry_ptr, ptr @ext_tree_prepare_commit._entry, ptr @ext_tree_prepare_commit._entry.5, ptr @ext_tree_prepare_commit._entry_ptr, ptr @ext_tree_prepare_commit._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext_tree_insert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext_tree_prepare_commit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext_tree_prepare_commit._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext_tree_mark_committed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext_tree_insert(ptr noundef %bl, ptr noundef %new) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %be_state = getelementptr inbounds %struct.pnfs_block_extent, ptr %new, i32 0, i32 5
  %0 = ptrtoint ptr %be_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %be_state, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.body [
    i32 0, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge201
    i32 1, label %entry.sw.bb1_crit_edge
    i32 3, label %entry.sw.bb1_crit_edge202
  ]

entry.sw.bb1_crit_edge202:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb_crit_edge201:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge201
  %bl_ext_rw = getelementptr inbounds %struct.pnfs_block_layout, ptr %bl, i32 0, i32 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge202
  %bl_ext_ro = getelementptr inbounds %struct.pnfs_block_layout, ptr %bl, i32 0, i32 2
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %3 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup68_crit_edge, label %do.end, !prof !36

do.body.cleanup68_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup68

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %cleanup68

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %root.0 = phi ptr [ %bl_ext_ro, %sw.bb1 ], [ %bl_ext_rw, %sw.bb ]
  %bl_ext_lock = getelementptr inbounds %struct.pnfs_block_layout, ptr %bl, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %bl_ext_lock) #9
  %be_f_offset = getelementptr inbounds %struct.pnfs_block_extent, ptr %new, i32 0, i32 2
  %4 = ptrtoint ptr %root.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %node.037.i162 = load ptr, ptr %root.0, align 4
  %tobool.not38.i163 = icmp eq ptr %node.037.i162, null
  br i1 %tobool.not38.i163, label %sw.epilog.if.then11_crit_edge, label %while.body.i.preheader.lr.ph

sw.epilog.if.then11_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

while.body.i.preheader.lr.ph:                     ; preds = %sw.epilog
  %be_length.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %new, i32 0, i32 3
  %be_v_offset = getelementptr inbounds %struct.pnfs_block_extent, ptr %new, i32 0, i32 4
  %be_device54 = getelementptr inbounds %struct.pnfs_block_extent, ptr %new, i32 0, i32 1
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %retry.backedge.while.body.i.preheader_crit_edge, %while.body.i.preheader.lr.ph
  %node.037.i164 = phi ptr [ %node.037.i162, %while.body.i.preheader.lr.ph ], [ %node.037.i, %retry.backedge.while.body.i.preheader_crit_edge ]
  %5 = ptrtoint ptr %be_f_offset to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %be_f_offset, align 8
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.backedge, %while.body.i.preheader
  %node.039.i = phi ptr [ %node.037.i164, %while.body.i.preheader ], [ %node.039.i.be, %while.body.i.backedge ]
  %be_f_offset.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %node.039.i, i32 0, i32 2
  %7 = ptrtoint ptr %be_f_offset.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %be_f_offset.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %6)
  %cmp.i = icmp ugt i64 %8, %6
  br i1 %cmp.i, label %if.end5.i, label %if.else.i

if.else.i:                                        ; preds = %while.body.i
  %be_length.i.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %node.039.i, i32 0, i32 3
  %9 = ptrtoint ptr %be_length.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %be_length.i.i, align 8
  %add.i.i = add i64 %10, %8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %6)
  %cmp2.not.i = icmp ugt i64 %add.i.i, %6
  br i1 %cmp2.not.i, label %if.else.i.lor.lhs.false_crit_edge, label %if.end5.i.thread

if.else.i.lor.lhs.false_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

if.end5.i:                                        ; preds = %while.body.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.039.i, i32 0, i32 2
  %11 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %node.0.i = load ptr, ptr %rb_left.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %if.end5.i.lor.lhs.false_crit_edge, label %if.end5.i.while.body.i.backedge_crit_edge

if.end5.i.while.body.i.backedge_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.backedge

if.end5.i.lor.lhs.false_crit_edge:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

while.body.i.backedge:                            ; preds = %if.end5.i.thread.while.body.i.backedge_crit_edge, %if.end5.i.while.body.i.backedge_crit_edge
  %node.039.i.be = phi ptr [ %node.0.i, %if.end5.i.while.body.i.backedge_crit_edge ], [ %node.0.i142, %if.end5.i.thread.while.body.i.backedge_crit_edge ]
  br label %while.body.i

if.end5.i.thread:                                 ; preds = %if.else.i
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.039.i, i32 0, i32 1
  %12 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %node.0.i142 = load ptr, ptr %rb_right.i, align 4
  %tobool.not.i143 = icmp eq ptr %node.0.i142, null
  br i1 %tobool.not.i143, label %if.end11.i, label %if.end5.i.thread.while.body.i.backedge_crit_edge

if.end5.i.thread.while.body.i.backedge_crit_edge: ; preds = %if.end5.i.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.backedge

if.end11.i:                                       ; preds = %if.end5.i.thread
  %13 = ptrtoint ptr %be_length.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %be_length.i.i, align 8
  %add.i34.i = add i64 %14, %8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i34.i, i64 %6)
  %cmp13.not.i = icmp ugt i64 %add.i34.i, %6
  br i1 %cmp13.not.i, label %if.end11.i.if.then11_crit_edge, label %__ext_tree_search.exit

if.end11.i.if.then11_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

__ext_tree_search.exit:                           ; preds = %if.end11.i
  %call.i.i = tail call ptr @rb_next(ptr noundef nonnull %node.039.i) #9
  %tobool8.not = icmp eq ptr %call.i.i, null
  br i1 %tobool8.not, label %__ext_tree_search.exit.if.then11_crit_edge, label %__ext_tree_search.exit.lor.lhs.false_crit_edge

__ext_tree_search.exit.lor.lhs.false_crit_edge:   ; preds = %__ext_tree_search.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

__ext_tree_search.exit.if.then11_crit_edge:       ; preds = %__ext_tree_search.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

lor.lhs.false:                                    ; preds = %__ext_tree_search.exit.lor.lhs.false_crit_edge, %if.end5.i.lor.lhs.false_crit_edge, %if.else.i.lor.lhs.false_crit_edge
  %retval.0.i150 = phi ptr [ %call.i.i, %__ext_tree_search.exit.lor.lhs.false_crit_edge ], [ %node.039.i, %if.else.i.lor.lhs.false_crit_edge ], [ %node.039.i, %if.end5.i.lor.lhs.false_crit_edge ]
  %be_f_offset9 = getelementptr inbounds %struct.pnfs_block_extent, ptr %retval.0.i150, i32 0, i32 2
  %15 = ptrtoint ptr %be_f_offset9 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %be_f_offset9, align 8
  %17 = ptrtoint ptr %be_f_offset to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %be_f_offset, align 8
  %19 = ptrtoint ptr %be_length.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %be_length.i, align 8
  %add.i = add i64 %20, %18
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %add.i)
  %cmp.not = icmp ult i64 %16, %add.i
  br i1 %cmp.not, label %if.else, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.then11:                                        ; preds = %retry.backedge.if.then11_crit_edge, %lor.lhs.false.if.then11_crit_edge, %__ext_tree_search.exit.if.then11_crit_edge, %if.end11.i.if.then11_crit_edge, %sw.epilog.if.then11_crit_edge
  tail call fastcc void @__ext_tree_insert(ptr noundef %root.0, ptr noundef %new, i1 noundef zeroext true)
  br label %out

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %18)
  %cmp14.not = icmp ugt i64 %16, %18
  %be_length.i133 = getelementptr inbounds %struct.pnfs_block_extent, ptr %retval.0.i150, i32 0, i32 3
  %21 = ptrtoint ptr %be_length.i133 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %be_length.i133, align 8
  %add.i134 = add i64 %22, %16
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %add.i134)
  %cmp32.not = icmp ugt i64 %add.i, %add.i134
  br i1 %cmp14.not, label %if.else29, label %if.then15

if.then15:                                        ; preds = %if.else
  br i1 %cmp32.not, label %if.else21, label %if.then19

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %be_device54 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %be_device54, align 4
  %call20 = tail call zeroext i1 @nfs4_put_deviceid_node(ptr noundef %24) #9
  tail call void @kfree(ptr noundef %new) #9
  br label %out

if.else21:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i64 %add.i, %add.i134
  %sub24 = sub i64 %20, %sub
  %add = add i64 %sub24, %18
  br label %retry.backedge

retry.backedge:                                   ; preds = %cleanup, %if.else21
  %add.sink = phi i64 [ %add, %if.else21 ], [ %add58, %cleanup ]
  %sub24.sink = phi i64 [ %sub24, %if.else21 ], [ %sub45, %cleanup ]
  %storemerge = phi i64 [ %sub, %if.else21 ], [ %sub42, %cleanup ]
  %25 = ptrtoint ptr %be_f_offset to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %add.sink, ptr %be_f_offset, align 8
  %26 = ptrtoint ptr %be_v_offset to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %be_v_offset, align 8
  %add26 = add i64 %27, %sub24.sink
  store i64 %add26, ptr %be_v_offset, align 8
  %28 = ptrtoint ptr %be_length.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %storemerge, ptr %be_length.i, align 8
  %29 = ptrtoint ptr %root.0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %node.037.i = load ptr, ptr %root.0, align 4
  %tobool.not38.i = icmp eq ptr %node.037.i, null
  br i1 %tobool.not38.i, label %retry.backedge.if.then11_crit_edge, label %retry.backedge.while.body.i.preheader_crit_edge

retry.backedge.while.body.i.preheader_crit_edge:  ; preds = %retry.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.preheader

retry.backedge.if.then11_crit_edge:               ; preds = %retry.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.else29:                                        ; preds = %if.else
  br i1 %cmp32.not, label %if.else38, label %if.then33

if.then33:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #11
  %sub36 = sub i64 %16, %18
  %30 = ptrtoint ptr %be_length.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %sub36, ptr %be_length.i, align 8
  tail call fastcc void @__ext_tree_insert(ptr noundef %root.0, ptr noundef %new, i1 noundef zeroext true)
  br label %out

if.else38:                                        ; preds = %if.else29
  %call46 = tail call ptr @kmemdup(ptr noundef %new, i32 noundef 48, i32 noundef 2592) #9
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.else38.out_crit_edge, label %cleanup

if.else38.out_crit_edge:                          ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

cleanup:                                          ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #11
  %sub42 = sub i64 %add.i, %add.i134
  %sub45 = sub i64 %20, %sub42
  %31 = ptrtoint ptr %be_f_offset9 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %be_f_offset9, align 8
  %be_f_offset51 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call46, i32 0, i32 2
  %33 = ptrtoint ptr %be_f_offset51 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %be_f_offset51, align 8
  %sub52 = sub i64 %32, %34
  %be_length53 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call46, i32 0, i32 3
  %35 = ptrtoint ptr %be_length53 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %sub52, ptr %be_length53, align 8
  %36 = ptrtoint ptr %be_device54 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %be_device54, align 4
  %ref.i = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %37, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #9
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #9, !srcloc !37
  %be_device56 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call46, i32 0, i32 1
  %39 = ptrtoint ptr %be_device56 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %37, ptr %be_device56, align 4
  tail call fastcc void @__ext_tree_insert(ptr noundef %root.0, ptr noundef nonnull %call46, i1 noundef zeroext true)
  %40 = ptrtoint ptr %be_f_offset to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %be_f_offset, align 8
  %add58 = add i64 %41, %sub45
  br label %retry.backedge

out:                                              ; preds = %if.else38.out_crit_edge, %if.then33, %if.then19, %if.then11
  %err.2 = phi i32 [ 0, %if.then11 ], [ 0, %if.then19 ], [ 0, %if.then33 ], [ -22, %if.else38.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %bl_ext_lock) #9
  br label %cleanup68

cleanup68:                                        ; preds = %out, %do.end, %do.body.cleanup68_crit_edge
  %retval.0 = phi i32 [ %err.2, %out ], [ -22, %do.end ], [ -22, %do.body.cleanup68_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ext_tree_insert(ptr noundef %root, ptr noundef %new, i1 noundef zeroext %merge_ok) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %tobool.not118 = icmp eq ptr %1, null
  br i1 %tobool.not118, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %be_f_offset = getelementptr inbounds %struct.pnfs_block_extent, ptr %new, i32 0, i32 2
  %2 = ptrtoint ptr %be_f_offset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %be_f_offset, align 8
  %be_state1.i70 = getelementptr inbounds %struct.pnfs_block_extent, ptr %new, i32 0, i32 5
  %be_device2.i73 = getelementptr inbounds %struct.pnfs_block_extent, ptr %new, i32 0, i32 1
  %be_v_offset14.i86 = getelementptr inbounds %struct.pnfs_block_extent, ptr %new, i32 0, i32 4
  %be_tag21.i92 = getelementptr inbounds %struct.pnfs_block_extent, ptr %new, i32 0, i32 6
  %be_length.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %new, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end31.while.body_crit_edge, %while.body.lr.ph
  %4 = phi ptr [ %1, %while.body.lr.ph ], [ %56, %if.end31.while.body_crit_edge ]
  %be_f_offset1 = getelementptr inbounds %struct.pnfs_block_extent, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %be_f_offset1 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %be_f_offset1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %6)
  %cmp = icmp ult i64 %3, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  br i1 %merge_ok, label %land.lhs.true, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

land.lhs.true:                                    ; preds = %if.then
  %7 = ptrtoint ptr %be_state1.i70 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %be_state1.i70, align 8
  %be_state1.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %4, i32 0, i32 5
  %9 = ptrtoint ptr %be_state1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %be_state1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not.i = icmp eq i32 %8, %10
  br i1 %cmp.not.i, label %if.end.i, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end.i:                                         ; preds = %land.lhs.true
  %11 = ptrtoint ptr %be_device2.i73 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %be_device2.i73, align 4
  %be_device2.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %4, i32 0, i32 1
  %13 = ptrtoint ptr %be_device2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %be_device2.i, align 4
  %cmp3.not.i = icmp eq ptr %12, %14
  br i1 %cmp3.not.i, label %if.end5.i, label %if.end.i.if.end12_crit_edge

if.end.i.if.end12_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end5.i:                                        ; preds = %if.end.i
  %15 = ptrtoint ptr %be_length.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %be_length.i, align 8
  %add.i = add i64 %16, %3
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %6)
  %cmp7.not.i = icmp eq i64 %add.i, %6
  br i1 %cmp7.not.i, label %if.end9.i, label %if.end5.i.if.end12_crit_edge

if.end5.i.if.end12_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp11.not.i = icmp eq i32 %8, 3
  br i1 %cmp11.not.i, label %if.then4, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end9.i
  %17 = ptrtoint ptr %be_v_offset14.i86 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %be_v_offset14.i86, align 8
  %add13.i = add i64 %18, %16
  %be_v_offset14.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %4, i32 0, i32 4
  %19 = ptrtoint ptr %be_v_offset14.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %be_v_offset14.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add13.i, i64 %20)
  %cmp15.not.i = icmp eq i64 %add13.i, %20
  br i1 %cmp15.not.i, label %if.end17.i, label %land.lhs.true.i.if.end12_crit_edge

land.lhs.true.i.if.end12_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end17.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp19.i = icmp eq i32 %8, 2
  br i1 %cmp19.i, label %land.lhs.true20.i, label %if.end17.i.if.then8_crit_edge

if.end17.i.if.then8_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

land.lhs.true20.i:                                ; preds = %if.end17.i
  %21 = ptrtoint ptr %be_tag21.i92 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %be_tag21.i92, align 4
  %be_tag21.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %4, i32 0, i32 6
  %23 = ptrtoint ptr %be_tag21.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %be_tag21.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp22.not.i = icmp eq i32 %22, %24
  br i1 %cmp22.not.i, label %land.lhs.true20.i.if.then8_crit_edge, label %land.lhs.true20.i.if.end12_crit_edge

land.lhs.true20.i.if.end12_crit_edge:             ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

land.lhs.true20.i.if.then8_crit_edge:             ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then4:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %be_f_offset1 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %3, ptr %be_f_offset1, align 8
  br label %if.end

if.then8:                                         ; preds = %land.lhs.true20.i.if.then8_crit_edge, %if.end17.i.if.then8_crit_edge
  %26 = ptrtoint ptr %be_f_offset1 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %3, ptr %be_f_offset1, align 8
  %27 = ptrtoint ptr %be_v_offset14.i86 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %be_v_offset14.i86, align 8
  %be_v_offset9 = getelementptr inbounds %struct.pnfs_block_extent, ptr %4, i32 0, i32 4
  %29 = ptrtoint ptr %be_v_offset9 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %be_v_offset9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then4
  %30 = ptrtoint ptr %be_length.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %be_length.i, align 8
  %be_length10 = getelementptr inbounds %struct.pnfs_block_extent, ptr %4, i32 0, i32 3
  %32 = ptrtoint ptr %be_length10 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %be_length10, align 8
  %add = add i64 %33, %31
  store i64 %add, ptr %be_length10, align 8
  %call11 = tail call fastcc ptr @ext_try_to_merge_left(ptr noundef %root, ptr noundef nonnull %4)
  br label %free_new

if.end12:                                         ; preds = %land.lhs.true20.i.if.end12_crit_edge, %land.lhs.true.i.if.end12_crit_edge, %if.end5.i.if.end12_crit_edge, %if.end.i.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %if.then.if.end12_crit_edge
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2
  br label %if.end31

if.else:                                          ; preds = %while.body
  %be_length.i67 = getelementptr inbounds %struct.pnfs_block_extent, ptr %4, i32 0, i32 3
  %34 = ptrtoint ptr %be_length.i67 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %be_length.i67, align 8
  %add.i68 = add i64 %35, %6
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %add.i68)
  %cmp15.not = icmp ult i64 %3, %add.i68
  br i1 %cmp15.not, label %do.body, label %if.then16

if.then16:                                        ; preds = %if.else
  br i1 %merge_ok, label %land.lhs.true18, label %if.then16.if.end25_crit_edge

if.then16.if.end25_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true18:                                  ; preds = %if.then16
  %be_state.i69 = getelementptr inbounds %struct.pnfs_block_extent, ptr %4, i32 0, i32 5
  %36 = ptrtoint ptr %be_state.i69 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %be_state.i69, align 8
  %38 = ptrtoint ptr %be_state1.i70 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %be_state1.i70, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp.not.i71 = icmp eq i32 %37, %39
  br i1 %cmp.not.i71, label %if.end.i75, label %land.lhs.true18.if.end25_crit_edge

land.lhs.true18.if.end25_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end.i75:                                       ; preds = %land.lhs.true18
  %be_device.i72 = getelementptr inbounds %struct.pnfs_block_extent, ptr %4, i32 0, i32 1
  %40 = ptrtoint ptr %be_device.i72 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %be_device.i72, align 4
  %42 = ptrtoint ptr %be_device2.i73 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %be_device2.i73, align 4
  %cmp3.not.i74 = icmp eq ptr %41, %43
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i68, i64 %3)
  %cmp7.not.i80 = icmp eq i64 %add.i68, %3
  %or.cond = select i1 %cmp3.not.i74, i1 %cmp7.not.i80, i1 false
  br i1 %or.cond, label %if.end9.i83, label %if.end.i75.if.end25_crit_edge

if.end.i75.if.end25_crit_edge:                    ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end9.i83:                                      ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp11.not.i82 = icmp eq i32 %37, 3
  br i1 %cmp11.not.i82, label %if.end9.i83.if.then20_crit_edge, label %land.lhs.true.i88

if.end9.i83.if.then20_crit_edge:                  ; preds = %if.end9.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

land.lhs.true.i88:                                ; preds = %if.end9.i83
  %be_v_offset.i84 = getelementptr inbounds %struct.pnfs_block_extent, ptr %4, i32 0, i32 4
  %44 = ptrtoint ptr %be_v_offset.i84 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %be_v_offset.i84, align 8
  %add13.i85 = add i64 %45, %35
  %46 = ptrtoint ptr %be_v_offset14.i86 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %be_v_offset14.i86, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add13.i85, i64 %47)
  %cmp15.not.i87 = icmp eq i64 %add13.i85, %47
  br i1 %cmp15.not.i87, label %if.end17.i90, label %land.lhs.true.i88.if.end25_crit_edge

land.lhs.true.i88.if.end25_crit_edge:             ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end17.i90:                                     ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp19.i89 = icmp eq i32 %37, 2
  br i1 %cmp19.i89, label %land.lhs.true20.i94, label %if.end17.i90.if.then20_crit_edge

if.end17.i90.if.then20_crit_edge:                 ; preds = %if.end17.i90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

land.lhs.true20.i94:                              ; preds = %if.end17.i90
  %be_tag.i91 = getelementptr inbounds %struct.pnfs_block_extent, ptr %4, i32 0, i32 6
  %48 = ptrtoint ptr %be_tag.i91 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %be_tag.i91, align 4
  %50 = ptrtoint ptr %be_tag21.i92 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %be_tag21.i92, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp22.not.i93 = icmp eq i32 %49, %51
  br i1 %cmp22.not.i93, label %land.lhs.true20.i94.if.then20_crit_edge, label %land.lhs.true20.i94.if.end25_crit_edge

land.lhs.true20.i94.if.end25_crit_edge:           ; preds = %land.lhs.true20.i94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true20.i94.if.then20_crit_edge:          ; preds = %land.lhs.true20.i94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

if.then20:                                        ; preds = %land.lhs.true20.i94.if.then20_crit_edge, %if.end17.i90.if.then20_crit_edge, %if.end9.i83.if.then20_crit_edge
  %52 = ptrtoint ptr %be_length.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %be_length.i, align 8
  %add23 = add i64 %53, %35
  %54 = ptrtoint ptr %be_length.i67 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %add23, ptr %be_length.i67, align 8
  %call24 = tail call fastcc ptr @ext_try_to_merge_right(ptr noundef %root, ptr noundef nonnull %4)
  br label %free_new

if.end25:                                         ; preds = %land.lhs.true20.i94.if.end25_crit_edge, %land.lhs.true.i88.if.end25_crit_edge, %if.end.i75.if.end25_crit_edge, %land.lhs.true18.if.end25_crit_edge, %if.then16.if.end25_crit_edge
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 1
  br label %if.end31

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/blocklayout/extent_tree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 164, 0\0A.popsection", ""() #9, !srcloc !38
  unreachable

if.end31:                                         ; preds = %if.end25, %if.end12
  %p.1 = phi ptr [ %rb_left, %if.end12 ], [ %rb_right, %if.end25 ]
  %55 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %p.1, align 4
  %tobool.not = icmp eq ptr %56, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %if.end31.while.body_crit_edge

if.end31.while.body_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.le = ptrtoint ptr %4 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  %p.0.lcssa = phi ptr [ %p.1, %while.cond.while.end_crit_edge ], [ %root, %entry.while.end_crit_edge ]
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %entry.while.end_crit_edge ]
  %57 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %parent.0.lcssa, ptr %new, align 4
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %new, i32 0, i32 1
  %58 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %new, i32 0, i32 2
  %59 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %rb_left.i, align 4
  %60 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %new, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %new, ptr noundef %root) #9
  br label %cleanup

free_new:                                         ; preds = %if.then20, %if.end
  %61 = ptrtoint ptr %be_device2.i73 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %be_device2.i73, align 4
  %call32 = tail call zeroext i1 @nfs4_put_deviceid_node(ptr noundef %62) #9
  tail call void @kfree(ptr noundef %new) #9
  br label %cleanup

cleanup:                                          ; preds = %free_new, %while.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs4_put_deviceid_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ext_tree_lookup(ptr noundef %bl, i64 noundef %isect, ptr nocapture noundef writeonly %ret, i1 noundef zeroext %rw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bl_ext_lock = getelementptr inbounds %struct.pnfs_block_layout, ptr %bl, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %bl_ext_lock) #9
  br i1 %rw, label %entry.if.then3_crit_edge, label %if.then

entry.if.then3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.then:                                          ; preds = %entry
  %bl_ext_ro = getelementptr inbounds %struct.pnfs_block_layout, ptr %bl, i32 0, i32 2
  %0 = ptrtoint ptr %bl_ext_ro to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.016.i = load ptr, ptr %bl_ext_ro, align 4
  %tobool.not17.i = icmp eq ptr %node.016.i, null
  br i1 %tobool.not17.i, label %if.then.if.then3_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.if.then3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

while.body.i:                                     ; preds = %if.end5.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %node.018.i = phi ptr [ %node.0.i, %if.end5.i.while.body.i_crit_edge ], [ %node.016.i, %if.then.while.body.i_crit_edge ]
  %be_f_offset.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %node.018.i, i32 0, i32 2
  %1 = ptrtoint ptr %be_f_offset.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %be_f_offset.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %isect)
  %cmp.i = icmp ugt i64 %2, %isect
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.018.i, i32 0, i32 2
  br label %if.end5.i

if.else.i:                                        ; preds = %while.body.i
  %be_length.i.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %node.018.i, i32 0, i32 3
  %3 = ptrtoint ptr %be_length.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %be_length.i.i, align 8
  %add.i.i = add i64 %4, %2
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %isect)
  %cmp2.not.i = icmp ugt i64 %add.i.i, %isect
  br i1 %cmp2.not.i, label %if.else.i.if.end6.sink.split_crit_edge, label %if.then3.i

if.else.i.if.end6.sink.split_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.sink.split

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.018.i, i32 0, i32 1
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.then.i
  %node.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then3.i ]
  %5 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %if.end5.i.if.then3_crit_edge, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end5.i.if.then3_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.then3:                                         ; preds = %if.end5.i.if.then3_crit_edge, %if.then.if.then3_crit_edge, %entry.if.then3_crit_edge
  %bl_ext_rw = getelementptr inbounds %struct.pnfs_block_layout, ptr %bl, i32 0, i32 1
  %6 = ptrtoint ptr %bl_ext_rw to i32
  call void @__asan_load4_noabort(i32 %6)
  %node.016.i17 = load ptr, ptr %bl_ext_rw, align 4
  %tobool.not17.i18 = icmp eq ptr %node.016.i17, null
  br i1 %tobool.not17.i18, label %if.then3.if.end6_crit_edge, label %if.then3.while.body.i22_crit_edge

if.then3.while.body.i22_crit_edge:                ; preds = %if.then3
  br label %while.body.i22

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

while.body.i22:                                   ; preds = %if.end5.i35.while.body.i22_crit_edge, %if.then3.while.body.i22_crit_edge
  %node.018.i19 = phi ptr [ %node.0.i33, %if.end5.i35.while.body.i22_crit_edge ], [ %node.016.i17, %if.then3.while.body.i22_crit_edge ]
  %be_f_offset.i20 = getelementptr inbounds %struct.pnfs_block_extent, ptr %node.018.i19, i32 0, i32 2
  %7 = ptrtoint ptr %be_f_offset.i20 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %be_f_offset.i20, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %isect)
  %cmp.i21 = icmp ugt i64 %8, %isect
  br i1 %cmp.i21, label %if.then.i24, label %if.else.i28

if.then.i24:                                      ; preds = %while.body.i22
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i23 = getelementptr inbounds %struct.rb_node, ptr %node.018.i19, i32 0, i32 2
  br label %if.end5.i35

if.else.i28:                                      ; preds = %while.body.i22
  %be_length.i.i25 = getelementptr inbounds %struct.pnfs_block_extent, ptr %node.018.i19, i32 0, i32 3
  %9 = ptrtoint ptr %be_length.i.i25 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %be_length.i.i25, align 8
  %add.i.i26 = add i64 %10, %8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i26, i64 %isect)
  %cmp2.not.i27 = icmp ugt i64 %add.i.i26, %isect
  br i1 %cmp2.not.i27, label %if.else.i28.if.end6.sink.split_crit_edge, label %if.then3.i30

if.else.i28.if.end6.sink.split_crit_edge:         ; preds = %if.else.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.sink.split

if.then3.i30:                                     ; preds = %if.else.i28
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i29 = getelementptr inbounds %struct.rb_node, ptr %node.018.i19, i32 0, i32 1
  br label %if.end5.i35

if.end5.i35:                                      ; preds = %if.then3.i30, %if.then.i24
  %node.1.in.i32 = phi ptr [ %rb_left.i23, %if.then.i24 ], [ %rb_right.i29, %if.then3.i30 ]
  %11 = ptrtoint ptr %node.1.in.i32 to i32
  call void @__asan_load4_noabort(i32 %11)
  %node.0.i33 = load ptr, ptr %node.1.in.i32, align 4
  %tobool.not.i34 = icmp eq ptr %node.0.i33, null
  br i1 %tobool.not.i34, label %if.end5.i35.if.end6_crit_edge, label %if.end5.i35.while.body.i22_crit_edge

if.end5.i35.while.body.i22_crit_edge:             ; preds = %if.end5.i35
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i22

if.end5.i35.if.end6_crit_edge:                    ; preds = %if.end5.i35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end6.sink.split:                               ; preds = %if.else.i28.if.end6.sink.split_crit_edge, %if.else.i.if.end6.sink.split_crit_edge
  %node.018.i19.lcssa.sink = phi ptr [ %node.018.i19, %if.else.i28.if.end6.sink.split_crit_edge ], [ %node.018.i, %if.else.i.if.end6.sink.split_crit_edge ]
  %12 = call ptr @memcpy(ptr %ret, ptr %node.018.i19.lcssa.sink, i32 48)
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %if.end5.i35.if.end6_crit_edge, %if.then3.if.end6_crit_edge
  %found.1.off0 = phi i1 [ false, %if.then3.if.end6_crit_edge ], [ true, %if.end6.sink.split ], [ false, %if.end5.i35.if.end6_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %bl_ext_lock) #9
  ret i1 %found.1.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext_tree_remove(ptr noundef %bl, i1 noundef zeroext %rw, i64 noundef %start, i64 noundef %end) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %tmp, i32 0, i32 1
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tmp, ptr %tmp, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmp, ptr %0, align 4
  %bl_ext_lock = getelementptr inbounds %struct.pnfs_block_layout, ptr %bl, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %bl_ext_lock) #9
  %bl_ext_ro = getelementptr inbounds %struct.pnfs_block_layout, ptr %bl, i32 0, i32 2
  %call = call fastcc i32 @__ext_tree_remove(ptr noundef %bl_ext_ro, i64 noundef %start, i64 noundef %end, ptr noundef nonnull %tmp)
  br i1 %rw, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bl_ext_rw = getelementptr inbounds %struct.pnfs_block_layout, ptr %bl, i32 0, i32 1
  %call1 = call fastcc i32 @__ext_tree_remove(ptr noundef %bl_ext_rw, i64 noundef %start, i64 noundef %end, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool2.not, i32 %call1, i32 %call
  br label %if.end4

if.end4:                                          ; preds = %if.then, %entry.if.end4_crit_edge
  %err.0 = phi i32 [ %call, %entry.if.end4_crit_edge ], [ %spec.select, %if.then ]
  call void @_raw_spin_unlock(ptr noundef %bl_ext_lock) #9
  %3 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tmp, align 4
  %cmp.not15.i = icmp eq ptr %4, %tmp
  br i1 %cmp.not15.i, label %if.end4.__ext_put_deviceids.exit_crit_edge, label %if.end4.for.body.i_crit_edge

if.end4.for.body.i_crit_edge:                     ; preds = %if.end4
  br label %for.body.i

if.end4.__ext_put_deviceids.exit_crit_edge:       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ext_put_deviceids.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end4.for.body.i_crit_edge
  %be.016.i = phi ptr [ %tmp.0.i, %for.body.i.for.body.i_crit_edge ], [ %4, %if.end4.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %be.016.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %tmp.0.i = load ptr, ptr %be.016.i, align 8
  %be_device.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.016.i, i32 0, i32 1
  %6 = ptrtoint ptr %be_device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %be_device.i, align 4
  %call.i = call zeroext i1 @nfs4_put_deviceid_node(ptr noundef %7) #9
  call void @kfree(ptr noundef %be.016.i) #9
  %cmp.not.i = icmp eq ptr %tmp.0.i, %tmp
  br i1 %cmp.not.i, label %for.body.i.__ext_put_deviceids.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.__ext_put_deviceids.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ext_put_deviceids.exit

__ext_put_deviceids.exit:                         ; preds = %for.body.i.__ext_put_deviceids.exit_crit_edge, %if.end4.__ext_put_deviceids.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #9
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ext_tree_remove(ptr noundef %root, i64 noundef %start, i64 noundef %end, ptr noundef %tmp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.037.i = load ptr, ptr %root, align 4
  %tobool.not38.i = icmp eq ptr %node.037.i, null
  br i1 %tobool.not38.i, label %entry.cleanup73_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.cleanup73_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup73

while.body.i:                                     ; preds = %while.body.i.backedge, %entry.while.body.i_crit_edge
  %node.039.i = phi ptr [ %node.039.i.be, %while.body.i.backedge ], [ %node.037.i, %entry.while.body.i_crit_edge ]
  %be_f_offset.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %node.039.i, i32 0, i32 2
  %1 = ptrtoint ptr %be_f_offset.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %be_f_offset.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %start)
  %cmp.i = icmp ugt i64 %2, %start
  br i1 %cmp.i, label %if.end5.i, label %if.else.i

if.else.i:                                        ; preds = %while.body.i
  %be_length.i.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %node.039.i, i32 0, i32 3
  %3 = ptrtoint ptr %be_length.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %be_length.i.i, align 8
  %add.i.i = add i64 %4, %2
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %start)
  %cmp2.not.i = icmp ugt i64 %add.i.i, %start
  br i1 %cmp2.not.i, label %if.else.i.if.end_crit_edge, label %if.end5.i.thread

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end5.i:                                        ; preds = %while.body.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.039.i, i32 0, i32 2
  %5 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %node.0.i = load ptr, ptr %rb_left.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %if.end5.i.if.end_crit_edge, label %if.end5.i.while.body.i.backedge_crit_edge

if.end5.i.while.body.i.backedge_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.backedge

if.end5.i.if.end_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.body.i.backedge:                            ; preds = %if.end5.i.thread.while.body.i.backedge_crit_edge, %if.end5.i.while.body.i.backedge_crit_edge
  %node.039.i.be = phi ptr [ %node.0.i, %if.end5.i.while.body.i.backedge_crit_edge ], [ %node.0.i153, %if.end5.i.thread.while.body.i.backedge_crit_edge ]
  br label %while.body.i

if.end5.i.thread:                                 ; preds = %if.else.i
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.039.i, i32 0, i32 1
  %6 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %node.0.i153 = load ptr, ptr %rb_right.i, align 4
  %tobool.not.i154 = icmp eq ptr %node.0.i153, null
  br i1 %tobool.not.i154, label %if.end11.i, label %if.end5.i.thread.while.body.i.backedge_crit_edge

if.end5.i.thread.while.body.i.backedge_crit_edge: ; preds = %if.end5.i.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.backedge

if.end11.i:                                       ; preds = %if.end5.i.thread
  %7 = ptrtoint ptr %be_length.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %be_length.i.i, align 8
  %add.i34.i = add i64 %8, %2
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i34.i, i64 %start)
  %cmp13.not.i = icmp ugt i64 %add.i34.i, %start
  br i1 %cmp13.not.i, label %if.end11.i.cleanup73_crit_edge, label %__ext_tree_search.exit

if.end11.i.cleanup73_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup73

__ext_tree_search.exit:                           ; preds = %if.end11.i
  %call.i.i = tail call ptr @rb_next(ptr noundef nonnull %node.039.i) #9
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %__ext_tree_search.exit.cleanup73_crit_edge, label %__ext_tree_search.exit.if.end_crit_edge

__ext_tree_search.exit.if.end_crit_edge:          ; preds = %__ext_tree_search.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

__ext_tree_search.exit.cleanup73_crit_edge:       ; preds = %__ext_tree_search.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup73

if.end:                                           ; preds = %__ext_tree_search.exit.if.end_crit_edge, %if.end5.i.if.end_crit_edge, %if.else.i.if.end_crit_edge
  %retval.0.i161 = phi ptr [ %call.i.i, %__ext_tree_search.exit.if.end_crit_edge ], [ %node.039.i, %if.else.i.if.end_crit_edge ], [ %node.039.i, %if.end5.i.if.end_crit_edge ]
  %be_f_offset = getelementptr inbounds %struct.pnfs_block_extent, ptr %retval.0.i161, i32 0, i32 2
  %9 = ptrtoint ptr %be_f_offset to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %be_f_offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %end)
  %cmp.not = icmp ult i64 %10, %end
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup73_crit_edge

if.end.cleanup73_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup73

if.end2:                                          ; preds = %if.end
  %be_v_offset = getelementptr inbounds %struct.pnfs_block_extent, ptr %retval.0.i161, i32 0, i32 4
  %11 = ptrtoint ptr %be_v_offset to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %be_v_offset, align 8
  %be_length = getelementptr inbounds %struct.pnfs_block_extent, ptr %retval.0.i161, i32 0, i32 3
  %13 = ptrtoint ptr %be_length to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %be_length, align 8
  %15 = tail call i64 @llvm.usub.sat.i64(i64 %start, i64 %10)
  %add.i = add i64 %14, %10
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %end)
  %cmp9 = icmp ugt i64 %add.i, %end
  br i1 %cmp9, label %if.end13, label %if.else45

if.end13:                                         ; preds = %if.end2
  %sub12 = sub i64 %add.i, %end
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %start)
  %cmp16.not.not = icmp ult i64 %10, %start
  br i1 %cmp16.not.not, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 2848, i32 noundef 48) #13
  %tobool19.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool19.not, label %if.then17.cleanup73_crit_edge, label %if.end21

if.then17.cleanup73_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup73

if.end21:                                         ; preds = %if.then17
  %17 = ptrtoint ptr %be_length to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %15, ptr %be_length, align 8
  %be_f_offset23 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %be_f_offset23 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %end, ptr %be_f_offset23, align 8
  %be_state = getelementptr inbounds %struct.pnfs_block_extent, ptr %retval.0.i161, i32 0, i32 5
  %19 = ptrtoint ptr %be_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %be_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp24.not = icmp eq i32 %20, 3
  br i1 %cmp24.not, label %if.end21.if.end28_crit_edge, label %if.then25

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i64 %14, %12
  %sub26 = sub i64 %add, %sub12
  %be_v_offset27 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call7.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %be_v_offset27 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %sub26, ptr %be_v_offset27, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end21.if.end28_crit_edge
  %be_length29 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call7.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %be_length29 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %sub12, ptr %be_length29, align 8
  %23 = ptrtoint ptr %be_state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %be_state, align 8
  %be_state31 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call7.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %be_state31 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %be_state31, align 8
  %be_tag = getelementptr inbounds %struct.pnfs_block_extent, ptr %retval.0.i161, i32 0, i32 6
  %26 = ptrtoint ptr %be_tag to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %be_tag, align 4
  %be_tag32 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call7.i.i, i32 0, i32 6
  %28 = ptrtoint ptr %be_tag32 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %be_tag32, align 4
  %be_device = getelementptr inbounds %struct.pnfs_block_extent, ptr %retval.0.i161, i32 0, i32 1
  %29 = ptrtoint ptr %be_device to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %be_device, align 4
  %ref.i = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %30, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #9
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #9, !srcloc !37
  %be_device34 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call7.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %be_device34 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %be_device34, align 4
  tail call fastcc void @__ext_tree_insert(ptr noundef %root, ptr noundef nonnull %call7.i.i, i1 noundef zeroext true)
  br label %cleanup73

if.else:                                          ; preds = %if.end13
  %33 = ptrtoint ptr %be_f_offset to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %end, ptr %be_f_offset, align 8
  %be_state36 = getelementptr inbounds %struct.pnfs_block_extent, ptr %retval.0.i161, i32 0, i32 5
  %34 = ptrtoint ptr %be_state36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %be_state36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp37.not = icmp eq i32 %35, 3
  br i1 %cmp37.not, label %if.else.if.end42_crit_edge, label %if.then38

if.else.if.end42_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %add39 = add i64 %14, %12
  %sub40 = sub i64 %add39, %sub12
  %36 = ptrtoint ptr %be_v_offset to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %sub40, ptr %be_v_offset, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.else.if.end42_crit_edge
  %37 = ptrtoint ptr %be_length to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %sub12, ptr %be_length, align 8
  br label %cleanup73

if.else45:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %start)
  %cmp46.not.not = icmp ult i64 %10, %start
  br i1 %cmp46.not.not, label %if.end50, label %if.else45.land.rhs.lr.ph_crit_edge

if.else45.land.rhs.lr.ph_crit_edge:               ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.lr.ph

if.end50:                                         ; preds = %if.else45
  %38 = ptrtoint ptr %be_length to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %15, ptr %be_length, align 8
  %call.i = tail call ptr @rb_next(ptr noundef nonnull %retval.0.i161) #9
  %tobool51.not169 = icmp eq ptr %call.i, null
  br i1 %tobool51.not169, label %if.end50.cleanup73_crit_edge, label %if.end50.land.rhs.lr.ph_crit_edge

if.end50.land.rhs.lr.ph_crit_edge:                ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.lr.ph

if.end50.cleanup73_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup73

land.rhs.lr.ph:                                   ; preds = %if.end50.land.rhs.lr.ph_crit_edge, %if.else45.land.rhs.lr.ph_crit_edge
  %be.0183 = phi ptr [ %call.i, %if.end50.land.rhs.lr.ph_crit_edge ], [ %retval.0.i161, %if.else45.land.rhs.lr.ph_crit_edge ]
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tmp, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %list_add_tail.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %be.1170 = phi ptr [ %be.0183, %land.rhs.lr.ph ], [ %call.i147, %list_add_tail.exit.land.rhs_crit_edge ]
  %be_f_offset.i144 = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.1170, i32 0, i32 2
  %39 = ptrtoint ptr %be_f_offset.i144 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %be_f_offset.i144, align 8
  %be_length.i145 = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.1170, i32 0, i32 3
  %41 = ptrtoint ptr %be_length.i145 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %be_length.i145, align 8
  %add.i146 = add i64 %42, %40
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i146, i64 %end)
  %cmp53.not = icmp ugt i64 %add.i146, %end
  br i1 %cmp53.not, label %land.lhs.true.critedge, label %while.body

while.body:                                       ; preds = %land.rhs
  %call.i147 = tail call ptr @rb_next(ptr noundef nonnull %be.1170) #9
  tail call void @rb_erase(ptr noundef nonnull %be.1170, ptr noundef %root) #9
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i, align 4
  %call.i.i148 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %be.1170, ptr noundef %44, ptr noundef %tmp) #9
  br i1 %call.i.i148, label %if.end.i.i, label %while.body.list_add_tail.exit_crit_edge

while.body.list_add_tail.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %be.1170, ptr %prev.i, align 4
  %46 = ptrtoint ptr %be.1170 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %tmp, ptr %be.1170, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %be.1170, i32 0, i32 1
  %47 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev3.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %be.1170, ptr %44, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %while.body.list_add_tail.exit_crit_edge
  %tobool51.not = icmp eq ptr %call.i147, null
  br i1 %tobool51.not, label %list_add_tail.exit.cleanup73_crit_edge, label %list_add_tail.exit.land.rhs_crit_edge

list_add_tail.exit.land.rhs_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

list_add_tail.exit.cleanup73_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup73

land.lhs.true.critedge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_cmp8(i64 %40, i64 %end)
  %cmp57 = icmp ult i64 %40, %end
  br i1 %cmp57, label %if.then58, label %land.lhs.true.critedge.cleanup73_crit_edge

land.lhs.true.critedge.cleanup73_crit_edge:       ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup73

if.then58:                                        ; preds = %land.lhs.true.critedge
  %sub60 = sub i64 %add.i146, %end
  %49 = ptrtoint ptr %be_f_offset.i144 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %end, ptr %be_f_offset.i144, align 8
  %be_state62 = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.1170, i32 0, i32 5
  %50 = ptrtoint ptr %be_state62 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %be_state62, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %51)
  %cmp63.not = icmp eq i32 %51, 3
  br i1 %cmp63.not, label %if.then58.if.end69_crit_edge, label %if.then64

if.then58.if.end69_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then64:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  %sub66 = sub i64 %42, %sub60
  %be_v_offset67 = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.1170, i32 0, i32 4
  %52 = ptrtoint ptr %be_v_offset67 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %be_v_offset67, align 8
  %add68 = add i64 %sub66, %53
  store i64 %add68, ptr %be_v_offset67, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %if.then58.if.end69_crit_edge
  %54 = ptrtoint ptr %be_length.i145 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %sub60, ptr %be_length.i145, align 8
  br label %cleanup73

cleanup73:                                        ; preds = %if.end69, %land.lhs.true.critedge.cleanup73_crit_edge, %list_add_tail.exit.cleanup73_crit_edge, %if.end50.cleanup73_crit_edge, %if.end42, %if.end28, %if.then17.cleanup73_crit_edge, %if.end.cleanup73_crit_edge, %__ext_tree_search.exit.cleanup73_crit_edge, %if.end11.i.cleanup73_crit_edge, %entry.cleanup73_crit_edge
  %retval.1 = phi i32 [ 0, %__ext_tree_search.exit.cleanup73_crit_edge ], [ 0, %if.end.cleanup73_crit_edge ], [ 0, %if.end28 ], [ 0, %land.lhs.true.critedge.cleanup73_crit_edge ], [ 0, %if.end69 ], [ 0, %if.end42 ], [ -12, %if.then17.cleanup73_crit_edge ], [ 0, %if.end11.i.cleanup73_crit_edge ], [ 0, %entry.cleanup73_crit_edge ], [ 0, %if.end50.cleanup73_crit_edge ], [ 0, %list_add_tail.exit.cleanup73_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext_tree_mark_written(ptr noundef %bl, i64 noundef %start, i64 noundef %len, i64 noundef %lwb) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bl_ext_rw = getelementptr inbounds %struct.pnfs_block_layout, ptr %bl, i32 0, i32 1
  %add = add i64 %len, %start
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %tmp, i32 0, i32 1
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tmp, ptr %tmp, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmp, ptr %0, align 4
  %bl_ext_lock = getelementptr inbounds %struct.pnfs_block_layout, ptr %bl, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %bl_ext_lock) #9
  %bl_ext_ro = getelementptr inbounds %struct.pnfs_block_layout, ptr %bl, i32 0, i32 2
  %call = call fastcc i32 @__ext_tree_remove(ptr noundef %bl_ext_ro, i64 noundef %start, i64 noundef %add, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %bl_ext_rw to i32
  call void @__asan_load4_noabort(i32 %3)
  %node.037.i = load ptr, ptr %bl_ext_rw, align 4
  %tobool.not38.i = icmp eq ptr %node.037.i, null
  br i1 %tobool.not38.i, label %if.end.out_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

while.body.i:                                     ; preds = %while.body.i.backedge, %if.end.while.body.i_crit_edge
  %node.039.i = phi ptr [ %node.039.i.be, %while.body.i.backedge ], [ %node.037.i, %if.end.while.body.i_crit_edge ]
  %be_f_offset.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %node.039.i, i32 0, i32 2
  %4 = ptrtoint ptr %be_f_offset.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %be_f_offset.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %start)
  %cmp.i = icmp ugt i64 %5, %start
  br i1 %cmp.i, label %if.end5.i, label %if.else.i

if.else.i:                                        ; preds = %while.body.i
  %be_length.i.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %node.039.i, i32 0, i32 3
  %6 = ptrtoint ptr %be_length.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %be_length.i.i, align 8
  %add.i.i = add i64 %7, %5
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %start)
  %cmp2.not.i = icmp ugt i64 %add.i.i, %start
  br i1 %cmp2.not.i, label %if.else.i.for.body.preheader_crit_edge, label %if.end5.i.thread

if.else.i.for.body.preheader_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

if.end5.i:                                        ; preds = %while.body.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.039.i, i32 0, i32 2
  %8 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %node.0.i = load ptr, ptr %rb_left.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %if.end5.i.for.body.preheader_crit_edge, label %if.end5.i.while.body.i.backedge_crit_edge

if.end5.i.while.body.i.backedge_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.backedge

if.end5.i.for.body.preheader_crit_edge:           ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

while.body.i.backedge:                            ; preds = %if.end5.i.thread.while.body.i.backedge_crit_edge, %if.end5.i.while.body.i.backedge_crit_edge
  %node.039.i.be = phi ptr [ %node.0.i, %if.end5.i.while.body.i.backedge_crit_edge ], [ %node.0.i186, %if.end5.i.thread.while.body.i.backedge_crit_edge ]
  br label %while.body.i

if.end5.i.thread:                                 ; preds = %if.else.i
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.039.i, i32 0, i32 1
  %9 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %node.0.i186 = load ptr, ptr %rb_right.i, align 4
  %tobool.not.i187 = icmp eq ptr %node.0.i186, null
  br i1 %tobool.not.i187, label %if.end11.i, label %if.end5.i.thread.while.body.i.backedge_crit_edge

if.end5.i.thread.while.body.i.backedge_crit_edge: ; preds = %if.end5.i.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.backedge

if.end11.i:                                       ; preds = %if.end5.i.thread
  %10 = ptrtoint ptr %be_length.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %be_length.i.i, align 8
  %add.i34.i = add i64 %11, %5
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i34.i, i64 %start)
  %cmp13.not.i = icmp ugt i64 %add.i34.i, %start
  br i1 %cmp13.not.i, label %if.end11.i.out_crit_edge, label %__ext_tree_search.exit

if.end11.i.out_crit_edge:                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

__ext_tree_search.exit:                           ; preds = %if.end11.i
  %call.i.i = call ptr @rb_next(ptr noundef nonnull %node.039.i) #9
  %tobool2.not198 = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not198, label %__ext_tree_search.exit.out_crit_edge, label %__ext_tree_search.exit.for.body.preheader_crit_edge

__ext_tree_search.exit.for.body.preheader_crit_edge: ; preds = %__ext_tree_search.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

__ext_tree_search.exit.out_crit_edge:             ; preds = %__ext_tree_search.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.preheader:                               ; preds = %__ext_tree_search.exit.for.body.preheader_crit_edge, %if.end5.i.for.body.preheader_crit_edge, %if.else.i.for.body.preheader_crit_edge
  %be.0199.ph = phi ptr [ %call.i.i, %__ext_tree_search.exit.for.body.preheader_crit_edge ], [ %node.039.i, %if.else.i.for.body.preheader_crit_edge ], [ %node.039.i, %if.end5.i.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %be.0199 = phi ptr [ %call.i181, %for.inc.for.body_crit_edge ], [ %be.0199.ph, %for.body.preheader ]
  %be_f_offset = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.0199, i32 0, i32 2
  %12 = ptrtoint ptr %be_f_offset to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %be_f_offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %add)
  %cmp.not = icmp ult i64 %13, %add
  br i1 %cmp.not, label %if.end4, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end4:                                          ; preds = %for.body
  %be_state = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.0199, i32 0, i32 5
  %14 = ptrtoint ptr %be_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %be_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp5.not = icmp eq i32 %15, 2
  br i1 %cmp5.not, label %lor.lhs.false, label %if.end4.for.inc_crit_edge

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end4
  %be_tag = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.0199, i32 0, i32 6
  %16 = ptrtoint ptr %be_tag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %be_tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool6.not = icmp eq i32 %17, 0
  br i1 %tobool6.not, label %if.end8, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end8:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %start)
  %cmp10 = icmp ult i64 %13, %start
  br i1 %cmp10, label %if.then11, label %if.end8.if.end28_crit_edge

if.end8.if.end28_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then11:                                        ; preds = %if.end8
  %call.i = call ptr @rb_prev(ptr noundef nonnull %be.0199) #9
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.then11.if.else_crit_edge, label %land.lhs.true

if.then11.if.else_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.then11
  %be_state.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %be_state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %be_state.i, align 8
  %20 = ptrtoint ptr %be_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %be_state, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.not.i = icmp eq i32 %19, %21
  br i1 %cmp.not.i, label %if.end.i, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end.i:                                         ; preds = %land.lhs.true
  %be_device.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %be_device.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %be_device.i, align 4
  %be_device2.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.0199, i32 0, i32 1
  %24 = ptrtoint ptr %be_device2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %be_device2.i, align 4
  %cmp3.not.i = icmp eq ptr %23, %25
  br i1 %cmp3.not.i, label %if.end5.i143, label %if.end.i.if.else_crit_edge

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end5.i143:                                     ; preds = %if.end.i
  %be_f_offset.i142 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %be_f_offset.i142 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %be_f_offset.i142, align 8
  %be_length.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %be_length.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %be_length.i, align 8
  %add.i = add i64 %29, %27
  %30 = ptrtoint ptr %be_f_offset to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %be_f_offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %31)
  %cmp7.not.i = icmp eq i64 %add.i, %31
  br i1 %cmp7.not.i, label %if.end9.i, label %if.end5.i143.if.else_crit_edge

if.end5.i143.if.else_crit_edge:                   ; preds = %if.end5.i143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end9.i:                                        ; preds = %if.end5.i143
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp11.not.i = icmp eq i32 %19, 3
  br i1 %cmp11.not.i, label %if.end9.i.if.then15_crit_edge, label %land.lhs.true.i

if.end9.i.if.then15_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

land.lhs.true.i:                                  ; preds = %if.end9.i
  %be_v_offset.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %call.i, i32 0, i32 4
  %32 = ptrtoint ptr %be_v_offset.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %be_v_offset.i, align 8
  %add13.i = add i64 %33, %29
  %be_v_offset14.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.0199, i32 0, i32 4
  %34 = ptrtoint ptr %be_v_offset14.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %be_v_offset14.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add13.i, i64 %35)
  %cmp15.not.i = icmp eq i64 %add13.i, %35
  br i1 %cmp15.not.i, label %if.end17.i, label %land.lhs.true.i.if.else_crit_edge

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end17.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp19.i = icmp eq i32 %19, 2
  br i1 %cmp19.i, label %land.lhs.true20.i, label %if.end17.i.if.then15_crit_edge

if.end17.i.if.then15_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

land.lhs.true20.i:                                ; preds = %if.end17.i
  %be_tag.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %call.i, i32 0, i32 6
  %36 = ptrtoint ptr %be_tag.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %be_tag.i, align 4
  %38 = ptrtoint ptr %be_tag to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %be_tag, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp22.not.i = icmp eq i32 %37, %39
  br i1 %cmp22.not.i, label %land.lhs.true20.i.if.then15_crit_edge, label %land.lhs.true20.i.if.else_crit_edge

land.lhs.true20.i.if.else_crit_edge:              ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true20.i.if.then15_crit_edge:            ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

if.then15:                                        ; preds = %land.lhs.true20.i.if.then15_crit_edge, %if.end17.i.if.then15_crit_edge, %if.end9.i.if.then15_crit_edge
  %40 = ptrtoint ptr %be_f_offset to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %be_f_offset, align 8
  %sub = sub i64 %start, %41
  %42 = ptrtoint ptr %be_length.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %be_length.i, align 8
  %add17 = add i64 %43, %sub
  store i64 %add17, ptr %be_length.i, align 8
  %44 = load i64, ptr %be_f_offset, align 8
  %add19 = add i64 %44, %sub
  store i64 %add19, ptr %be_f_offset, align 8
  %be_v_offset = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.0199, i32 0, i32 4
  %45 = ptrtoint ptr %be_v_offset to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %be_v_offset, align 8
  %add20 = add i64 %46, %sub
  store i64 %add20, ptr %be_v_offset, align 8
  %be_length21 = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.0199, i32 0, i32 3
  %47 = ptrtoint ptr %be_length21 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %be_length21, align 8
  %sub22 = sub i64 %48, %sub
  store i64 %sub22, ptr %be_length21, align 8
  br label %if.end28

if.else:                                          ; preds = %land.lhs.true20.i.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge, %if.end5.i143.if.else_crit_edge, %if.end.i.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.then11.if.else_crit_edge
  %call23 = call fastcc i32 @ext_tree_split(ptr noundef %bl_ext_rw, ptr noundef nonnull %be.0199, i64 noundef %start)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.else.if.end28_crit_edge, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.end28:                                         ; preds = %if.else.if.end28_crit_edge, %if.then15, %if.end8.if.end28_crit_edge
  %49 = ptrtoint ptr %be_f_offset to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %be_f_offset, align 8
  %be_length.i146 = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.0199, i32 0, i32 3
  %51 = ptrtoint ptr %be_length.i146 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %be_length.i146, align 8
  %add.i147 = add i64 %52, %50
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i147, i64 %add)
  %cmp30 = icmp ugt i64 %add.i147, %add
  br i1 %cmp30, label %if.then31, label %if.end28.if.end57_crit_edge

if.end28.if.end57_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then31:                                        ; preds = %if.end28
  %call.i148 = call ptr @rb_next(ptr noundef nonnull %be.0199) #9
  %tobool33.not = icmp eq ptr %call.i148, null
  br i1 %tobool33.not, label %if.then31.if.else48_crit_edge, label %land.lhs.true34

if.then31.if.else48_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else48

land.lhs.true34:                                  ; preds = %if.then31
  %53 = ptrtoint ptr %be_state to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %be_state, align 8
  %be_state1.i150 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call.i148, i32 0, i32 5
  %55 = ptrtoint ptr %be_state1.i150 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %be_state1.i150, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp.not.i151 = icmp eq i32 %54, %56
  br i1 %cmp.not.i151, label %if.end.i155, label %land.lhs.true34.if.else48_crit_edge

land.lhs.true34.if.else48_crit_edge:              ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else48

if.end.i155:                                      ; preds = %land.lhs.true34
  %be_device.i152 = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.0199, i32 0, i32 1
  %57 = ptrtoint ptr %be_device.i152 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %be_device.i152, align 4
  %be_device2.i153 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call.i148, i32 0, i32 1
  %59 = ptrtoint ptr %be_device2.i153 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %be_device2.i153, align 4
  %cmp3.not.i154 = icmp eq ptr %58, %60
  br i1 %cmp3.not.i154, label %if.end5.i161, label %if.end.i155.if.else48_crit_edge

if.end.i155.if.else48_crit_edge:                  ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else48

if.end5.i161:                                     ; preds = %if.end.i155
  %61 = ptrtoint ptr %be_f_offset to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %be_f_offset, align 8
  %63 = ptrtoint ptr %be_length.i146 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %be_length.i146, align 8
  %add.i158 = add i64 %64, %62
  %be_f_offset6.i159 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call.i148, i32 0, i32 2
  %65 = ptrtoint ptr %be_f_offset6.i159 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %be_f_offset6.i159, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i158, i64 %66)
  %cmp7.not.i160 = icmp eq i64 %add.i158, %66
  br i1 %cmp7.not.i160, label %if.end9.i163, label %if.end5.i161.if.else48_crit_edge

if.end5.i161.if.else48_crit_edge:                 ; preds = %if.end5.i161
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else48

if.end9.i163:                                     ; preds = %if.end5.i161
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %54)
  %cmp11.not.i162 = icmp eq i32 %54, 3
  br i1 %cmp11.not.i162, label %if.end9.i163.if.then36_crit_edge, label %land.lhs.true.i168

if.end9.i163.if.then36_crit_edge:                 ; preds = %if.end9.i163
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

land.lhs.true.i168:                               ; preds = %if.end9.i163
  %be_v_offset.i164 = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.0199, i32 0, i32 4
  %67 = ptrtoint ptr %be_v_offset.i164 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %be_v_offset.i164, align 8
  %add13.i165 = add i64 %68, %64
  %be_v_offset14.i166 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call.i148, i32 0, i32 4
  %69 = ptrtoint ptr %be_v_offset14.i166 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %be_v_offset14.i166, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add13.i165, i64 %70)
  %cmp15.not.i167 = icmp eq i64 %add13.i165, %70
  br i1 %cmp15.not.i167, label %if.end17.i170, label %land.lhs.true.i168.if.else48_crit_edge

land.lhs.true.i168.if.else48_crit_edge:           ; preds = %land.lhs.true.i168
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else48

if.end17.i170:                                    ; preds = %land.lhs.true.i168
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp19.i169 = icmp eq i32 %54, 2
  br i1 %cmp19.i169, label %land.lhs.true20.i174, label %if.end17.i170.if.then36_crit_edge

if.end17.i170.if.then36_crit_edge:                ; preds = %if.end17.i170
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

land.lhs.true20.i174:                             ; preds = %if.end17.i170
  %71 = ptrtoint ptr %be_tag to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %be_tag, align 4
  %be_tag21.i172 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call.i148, i32 0, i32 6
  %73 = ptrtoint ptr %be_tag21.i172 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %be_tag21.i172, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp22.not.i173 = icmp eq i32 %72, %74
  br i1 %cmp22.not.i173, label %land.lhs.true20.i174.if.then36_crit_edge, label %land.lhs.true20.i174.if.else48_crit_edge

land.lhs.true20.i174.if.else48_crit_edge:         ; preds = %land.lhs.true20.i174
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else48

land.lhs.true20.i174.if.then36_crit_edge:         ; preds = %land.lhs.true20.i174
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

if.then36:                                        ; preds = %land.lhs.true20.i174.if.then36_crit_edge, %if.end17.i170.if.then36_crit_edge, %if.end9.i163.if.then36_crit_edge
  %75 = ptrtoint ptr %be_f_offset to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %be_f_offset, align 8
  %sub39 = sub i64 %add, %76
  %77 = ptrtoint ptr %be_length.i146 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %be_length.i146, align 8
  %sub41 = sub i64 %78, %sub39
  store i64 %sub41, ptr %be_length.i146, align 8
  %79 = ptrtoint ptr %be_f_offset6.i159 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %be_f_offset6.i159, align 8
  %sub43 = sub i64 %80, %sub39
  store i64 %sub43, ptr %be_f_offset6.i159, align 8
  %be_v_offset44 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call.i148, i32 0, i32 4
  %81 = ptrtoint ptr %be_v_offset44 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %be_v_offset44, align 8
  %sub45 = sub i64 %82, %sub39
  store i64 %sub45, ptr %be_v_offset44, align 8
  %be_length46 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call.i148, i32 0, i32 3
  %83 = ptrtoint ptr %be_length46 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %be_length46, align 8
  %add47 = add i64 %84, %sub39
  store i64 %add47, ptr %be_length46, align 8
  br label %if.end57

if.else48:                                        ; preds = %land.lhs.true20.i174.if.else48_crit_edge, %land.lhs.true.i168.if.else48_crit_edge, %if.end5.i161.if.else48_crit_edge, %if.end.i155.if.else48_crit_edge, %land.lhs.true34.if.else48_crit_edge, %if.then31.if.else48_crit_edge
  %call49 = call fastcc i32 @ext_tree_split(ptr noundef %bl_ext_rw, ptr noundef nonnull %be.0199, i64 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.else48.if.end57_crit_edge, label %if.else48.out_crit_edge

if.else48.out_crit_edge:                          ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.else48.if.end57_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.end57:                                         ; preds = %if.else48.if.end57_crit_edge, %if.then36, %if.end28.if.end57_crit_edge
  %85 = ptrtoint ptr %be_f_offset to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %be_f_offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %86, i64 %start)
  %cmp59.not = icmp ult i64 %86, %start
  br i1 %cmp59.not, label %if.end57.for.inc_crit_edge, label %land.lhs.true60

if.end57.for.inc_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true60:                                  ; preds = %if.end57
  %87 = ptrtoint ptr %be_length.i146 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %be_length.i146, align 8
  %add.i180 = add i64 %88, %86
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i180, i64 %add)
  %cmp62.not = icmp ugt i64 %add.i180, %add
  br i1 %cmp62.not, label %land.lhs.true60.for.inc_crit_edge, label %if.then63

land.lhs.true60.for.inc_crit_edge:                ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then63:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %be_tag to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %be_tag, align 4
  %call65 = call fastcc ptr @ext_try_to_merge_left(ptr noundef %bl_ext_rw, ptr noundef nonnull %be.0199)
  %call66 = call fastcc ptr @ext_try_to_merge_right(ptr noundef %bl_ext_rw, ptr noundef %call65)
  br label %for.inc

for.inc:                                          ; preds = %if.then63, %land.lhs.true60.for.inc_crit_edge, %if.end57.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.end4.for.inc_crit_edge
  %be.1 = phi ptr [ %be.0199, %if.end4.for.inc_crit_edge ], [ %be.0199, %lor.lhs.false.for.inc_crit_edge ], [ %call65, %if.then63 ], [ %be.0199, %land.lhs.true60.for.inc_crit_edge ], [ %be.0199, %if.end57.for.inc_crit_edge ]
  %call.i181 = call ptr @rb_next(ptr noundef %be.1) #9
  %tobool2.not = icmp eq ptr %call.i181, null
  br i1 %tobool2.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %if.else48.out_crit_edge, %if.else.out_crit_edge, %for.body.out_crit_edge, %__ext_tree_search.exit.out_crit_edge, %if.end11.i.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.8 = phi i32 [ %call, %entry.out_crit_edge ], [ 0, %__ext_tree_search.exit.out_crit_edge ], [ 0, %if.end11.i.out_crit_edge ], [ 0, %if.end.out_crit_edge ], [ 0, %for.body.out_crit_edge ], [ 0, %for.inc.out_crit_edge ], [ %call23, %if.else.out_crit_edge ], [ %call49, %if.else48.out_crit_edge ]
  %bl_lwb = getelementptr inbounds %struct.pnfs_block_layout, ptr %bl, i32 0, i32 5
  %90 = ptrtoint ptr %bl_lwb to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %bl_lwb, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %91, i64 %lwb)
  %cmp69 = icmp ult i64 %91, %lwb
  br i1 %cmp69, label %if.then70, label %out.if.end72_crit_edge

out.if.end72_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then70:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %bl_lwb to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %lwb, ptr %bl_lwb, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %out.if.end72_crit_edge
  call void @_raw_spin_unlock(ptr noundef %bl_ext_lock) #9
  %93 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %tmp, align 4
  %cmp.not15.i = icmp eq ptr %94, %tmp
  br i1 %cmp.not15.i, label %if.end72.__ext_put_deviceids.exit_crit_edge, label %if.end72.for.body.i_crit_edge

if.end72.for.body.i_crit_edge:                    ; preds = %if.end72
  br label %for.body.i

if.end72.__ext_put_deviceids.exit_crit_edge:      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ext_put_deviceids.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end72.for.body.i_crit_edge
  %be.016.i = phi ptr [ %tmp.0.i, %for.body.i.for.body.i_crit_edge ], [ %94, %if.end72.for.body.i_crit_edge ]
  %95 = ptrtoint ptr %be.016.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %tmp.0.i = load ptr, ptr %be.016.i, align 8
  %be_device.i182 = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.016.i, i32 0, i32 1
  %96 = ptrtoint ptr %be_device.i182 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %be_device.i182, align 4
  %call.i183 = call zeroext i1 @nfs4_put_deviceid_node(ptr noundef %97) #9
  call void @kfree(ptr noundef %be.016.i) #9
  %cmp.not.i184 = icmp eq ptr %tmp.0.i, %tmp
  br i1 %cmp.not.i184, label %for.body.i.__ext_put_deviceids.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.__ext_put_deviceids.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ext_put_deviceids.exit

__ext_put_deviceids.exit:                         ; preds = %for.body.i.__ext_put_deviceids.exit_crit_edge, %if.end72.__ext_put_deviceids.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #9
  ret i32 %err.8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext_tree_split(ptr noundef %root, ptr nocapture noundef %be, i64 noundef %split) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %be_length = getelementptr inbounds %struct.pnfs_block_extent, ptr %be, i32 0, i32 3
  %0 = ptrtoint ptr %be_length to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %be_length, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 48) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %be_f_offset = getelementptr inbounds %struct.pnfs_block_extent, ptr %be, i32 0, i32 2
  %3 = ptrtoint ptr %be_f_offset to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %be_f_offset, align 8
  %sub = sub i64 %split, %4
  %5 = ptrtoint ptr %be_length to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %sub, ptr %be_length, align 8
  %be_f_offset2 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %be_f_offset2 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %split, ptr %be_f_offset2, align 8
  %be_state = getelementptr inbounds %struct.pnfs_block_extent, ptr %be, i32 0, i32 5
  %7 = ptrtoint ptr %be_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %be_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp.not = icmp eq i32 %8, 3
  br i1 %cmp.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %be_v_offset = getelementptr inbounds %struct.pnfs_block_extent, ptr %be, i32 0, i32 4
  %9 = ptrtoint ptr %be_v_offset to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %be_v_offset, align 8
  %add = add i64 %10, %sub
  %be_v_offset5 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %be_v_offset5 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %add, ptr %be_v_offset5, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %sub8 = sub i64 %1, %sub
  %be_length9 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %be_length9 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %sub8, ptr %be_length9, align 8
  %be_state11 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %be_state11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %8, ptr %be_state11, align 8
  %be_tag = getelementptr inbounds %struct.pnfs_block_extent, ptr %be, i32 0, i32 6
  %14 = ptrtoint ptr %be_tag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %be_tag, align 4
  %be_tag12 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call7.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %be_tag12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %be_tag12, align 4
  %be_device = getelementptr inbounds %struct.pnfs_block_extent, ptr %be, i32 0, i32 1
  %17 = ptrtoint ptr %be_device to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %be_device, align 4
  %ref.i = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %18, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #9
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #9, !srcloc !37
  %be_device14 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %be_device14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %be_device14, align 4
  %21 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %root, align 4
  %tobool.not118.i = icmp eq ptr %22, null
  br i1 %tobool.not118.i, label %if.end6.__ext_tree_insert.exit_crit_edge, label %while.body.lr.ph.i

if.end6.__ext_tree_insert.exit_crit_edge:         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ext_tree_insert.exit

while.body.lr.ph.i:                               ; preds = %if.end6
  %23 = ptrtoint ptr %be_f_offset2 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %be_f_offset2, align 8
  br label %while.body.i

while.body.i:                                     ; preds = %if.end31.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %25 = phi ptr [ %22, %while.body.lr.ph.i ], [ %31, %if.end31.i.while.body.i_crit_edge ]
  %be_f_offset1.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %be_f_offset1.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %be_f_offset1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %27)
  %cmp.i = icmp ult i64 %24, %27
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %25, i32 0, i32 2
  br label %if.end31.i

if.else.i:                                        ; preds = %while.body.i
  %be_length.i67.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %25, i32 0, i32 3
  %28 = ptrtoint ptr %be_length.i67.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %be_length.i67.i, align 8
  %add.i68.i = add i64 %29, %27
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %add.i68.i)
  %cmp15.not.i = icmp ult i64 %24, %add.i68.i
  br i1 %cmp15.not.i, label %do.body.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %25, i32 0, i32 1
  br label %if.end31.i

do.body.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/blocklayout/extent_tree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 164, 0\0A.popsection", ""() #9, !srcloc !38
  unreachable

if.end31.i:                                       ; preds = %if.then16.i, %if.then.i
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then16.i ]
  %30 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end31.i.while.body.i_crit_edge

if.end31.i.while.body.i_crit_edge:                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.le.i = ptrtoint ptr %25 to i32
  br label %__ext_tree_insert.exit

__ext_tree_insert.exit:                           ; preds = %while.cond.while.end_crit_edge.i, %if.end6.__ext_tree_insert.exit_crit_edge
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %root, %if.end6.__ext_tree_insert.exit_crit_edge ]
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end6.__ext_tree_insert.exit_crit_edge ]
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %parent.0.lcssa.i, ptr %call7.i.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %rb_left.i.i, align 8
  %35 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i, ptr noundef %root) #9
  br label %cleanup

cleanup:                                          ; preds = %__ext_tree_insert.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %__ext_tree_insert.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ext_try_to_merge_left(ptr noundef %root, ptr noundef %be) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @rb_prev(ptr noundef %be) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %be_state.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %call.i, i32 0, i32 5
  %0 = ptrtoint ptr %be_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %be_state.i, align 8
  %be_state1.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be, i32 0, i32 5
  %2 = ptrtoint ptr %be_state1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %be_state1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i = icmp eq i32 %1, %3
  br i1 %cmp.not.i, label %if.end.i, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true
  %be_device.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %be_device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %be_device.i, align 4
  %be_device2.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be, i32 0, i32 1
  %6 = ptrtoint ptr %be_device2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %be_device2.i, align 4
  %cmp3.not.i = icmp eq ptr %5, %7
  br i1 %cmp3.not.i, label %if.end5.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %be_f_offset.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %be_f_offset.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %be_f_offset.i, align 8
  %be_length.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %be_length.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %be_length.i, align 8
  %add.i = add i64 %11, %9
  %be_f_offset6.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be, i32 0, i32 2
  %12 = ptrtoint ptr %be_f_offset6.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %be_f_offset6.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %13)
  %cmp7.not.i = icmp eq i64 %add.i, %13
  br i1 %cmp7.not.i, label %if.end9.i, label %if.end5.i.cleanup_crit_edge

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp11.not.i = icmp eq i32 %1, 3
  br i1 %cmp11.not.i, label %if.end9.i.if.then_crit_edge, label %land.lhs.true.i

if.end9.i.if.then_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true.i:                                  ; preds = %if.end9.i
  %be_v_offset.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %be_v_offset.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %be_v_offset.i, align 8
  %add13.i = add i64 %15, %11
  %be_v_offset14.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be, i32 0, i32 4
  %16 = ptrtoint ptr %be_v_offset14.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %be_v_offset14.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add13.i, i64 %17)
  %cmp15.not.i = icmp eq i64 %add13.i, %17
  br i1 %cmp15.not.i, label %if.end17.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp19.i = icmp eq i32 %1, 2
  br i1 %cmp19.i, label %land.lhs.true20.i, label %if.end17.i.if.then_crit_edge

if.end17.i.if.then_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true20.i:                                ; preds = %if.end17.i
  %be_tag.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %be_tag.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %be_tag.i, align 4
  %be_tag21.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be, i32 0, i32 6
  %20 = ptrtoint ptr %be_tag21.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %be_tag21.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp22.not.i = icmp eq i32 %19, %21
  br i1 %cmp22.not.i, label %land.lhs.true20.i.if.then_crit_edge, label %land.lhs.true20.i.cleanup_crit_edge

land.lhs.true20.i.cleanup_crit_edge:              ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true20.i.if.then_crit_edge:              ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %land.lhs.true20.i.if.then_crit_edge, %if.end17.i.if.then_crit_edge, %if.end9.i.if.then_crit_edge
  %be_length = getelementptr inbounds %struct.pnfs_block_extent, ptr %be, i32 0, i32 3
  %22 = ptrtoint ptr %be_length to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %be_length, align 8
  %24 = ptrtoint ptr %be_length.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %be_length.i, align 8
  %add = add i64 %25, %23
  store i64 %add, ptr %be_length.i, align 8
  tail call void @rb_erase(ptr noundef %be, ptr noundef %root) #9
  %26 = ptrtoint ptr %be_device2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %be_device2.i, align 4
  %call3 = tail call zeroext i1 @nfs4_put_deviceid_node(ptr noundef %27) #9
  tail call void @kfree(ptr noundef %be) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true20.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.then ], [ %be, %entry.cleanup_crit_edge ], [ %be, %land.lhs.true.cleanup_crit_edge ], [ %be, %if.end.i.cleanup_crit_edge ], [ %be, %if.end5.i.cleanup_crit_edge ], [ %be, %land.lhs.true.i.cleanup_crit_edge ], [ %be, %land.lhs.true20.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ext_try_to_merge_right(ptr noundef %root, ptr noundef returned %be) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @rb_next(ptr noundef %be) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %be_state.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be, i32 0, i32 5
  %0 = ptrtoint ptr %be_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %be_state.i, align 8
  %be_state1.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %be_state1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %be_state1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i = icmp eq i32 %1, %3
  br i1 %cmp.not.i, label %if.end.i, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %land.lhs.true
  %be_device.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be, i32 0, i32 1
  %4 = ptrtoint ptr %be_device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %be_device.i, align 4
  %be_device2.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %be_device2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %be_device2.i, align 4
  %cmp3.not.i = icmp eq ptr %5, %7
  br i1 %cmp3.not.i, label %if.end5.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end5.i:                                        ; preds = %if.end.i
  %be_f_offset.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be, i32 0, i32 2
  %8 = ptrtoint ptr %be_f_offset.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %be_f_offset.i, align 8
  %be_length.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be, i32 0, i32 3
  %10 = ptrtoint ptr %be_length.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %be_length.i, align 8
  %add.i = add i64 %11, %9
  %be_f_offset6.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %be_f_offset6.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %be_f_offset6.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %13)
  %cmp7.not.i = icmp eq i64 %add.i, %13
  br i1 %cmp7.not.i, label %if.end9.i, label %if.end5.i.if.end_crit_edge

if.end5.i.if.end_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp11.not.i = icmp eq i32 %1, 3
  br i1 %cmp11.not.i, label %if.end9.i.if.then_crit_edge, label %land.lhs.true.i

if.end9.i.if.then_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true.i:                                  ; preds = %if.end9.i
  %be_v_offset.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be, i32 0, i32 4
  %14 = ptrtoint ptr %be_v_offset.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %be_v_offset.i, align 8
  %add13.i = add i64 %15, %11
  %be_v_offset14.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %be_v_offset14.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %be_v_offset14.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add13.i, i64 %17)
  %cmp15.not.i = icmp eq i64 %add13.i, %17
  br i1 %cmp15.not.i, label %if.end17.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end17.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp19.i = icmp eq i32 %1, 2
  br i1 %cmp19.i, label %land.lhs.true20.i, label %if.end17.i.if.then_crit_edge

if.end17.i.if.then_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true20.i:                                ; preds = %if.end17.i
  %be_tag.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be, i32 0, i32 6
  %18 = ptrtoint ptr %be_tag.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %be_tag.i, align 4
  %be_tag21.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %be_tag21.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %be_tag21.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp22.not.i = icmp eq i32 %19, %21
  br i1 %cmp22.not.i, label %land.lhs.true20.i.if.then_crit_edge, label %land.lhs.true20.i.if.end_crit_edge

land.lhs.true20.i.if.end_crit_edge:               ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true20.i.if.then_crit_edge:              ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %land.lhs.true20.i.if.then_crit_edge, %if.end17.i.if.then_crit_edge, %if.end9.i.if.then_crit_edge
  %be_length = getelementptr inbounds %struct.pnfs_block_extent, ptr %call.i, i32 0, i32 3
  %22 = ptrtoint ptr %be_length to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %be_length, align 8
  %24 = ptrtoint ptr %be_length.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %be_length.i, align 8
  %add = add i64 %25, %23
  store i64 %add, ptr %be_length.i, align 8
  tail call void @rb_erase(ptr noundef nonnull %call.i, ptr noundef %root) #9
  %26 = ptrtoint ptr %be_device2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %be_device2.i, align 4
  %call3 = tail call zeroext i1 @nfs4_put_deviceid_node(ptr noundef %27) #9
  tail call void @kfree(ptr noundef nonnull %call.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true20.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %if.end5.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %be
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext_tree_prepare_commit(ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %inode = getelementptr inbounds %struct.nfs4_layoutcommit_args, ptr %arg, i32 0, i32 3
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %layout = getelementptr i8, ptr %1, i32 -32
  %2 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %layout, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %4 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !36

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3136, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %layoutupdate_page = getelementptr inbounds %struct.nfs4_layoutcommit_args, ptr %arg, i32 0, i32 6
  %5 = ptrtoint ptr %layoutupdate_page to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call38.i.i.i, ptr %layoutupdate_page, align 4
  %tobool10.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool10.not, label %do.end7.cleanup_crit_edge, label %if.end12

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %do.end7
  %call14 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #9
  %layoutupdate_pages = getelementptr inbounds %struct.nfs4_layoutcommit_args, ptr %arg, i32 0, i32 7
  %6 = ptrtoint ptr %layoutupdate_pages to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %layoutupdate_page, ptr %layoutupdate_pages, align 8
  %lastbytewritten = getelementptr inbounds %struct.nfs4_layoutcommit_args, ptr %arg, i32 0, i32 2
  %bl_ext_lock.i = getelementptr inbounds %struct.pnfs_block_layout, ptr %3, i32 0, i32 3
  %bl_ext_rw.i = getelementptr inbounds %struct.pnfs_block_layout, ptr %3, i32 0, i32 1
  %bl_scsi_layout.i.i = getelementptr inbounds %struct.pnfs_block_layout, ptr %3, i32 0, i32 4
  %bl_lwb.i = getelementptr inbounds %struct.pnfs_block_layout, ptr %3, i32 0, i32 5
  br label %retry

retry:                                            ; preds = %if.end31.retry_crit_edge, %if.end12
  %buffer_size.0 = phi i32 [ 4096, %if.end12 ], [ %retval.0.i, %if.end31.retry_crit_edge ]
  %start_p.0 = phi ptr [ %call14, %if.end12 ], [ %call32, %if.end31.retry_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %bl_ext_lock.i) #9
  %call.i.i = tail call ptr @rb_first(ptr noundef %bl_ext_rw.i) #9
  %tobool.not35.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not35.i, label %retry.ext_tree_encode_commit.exit_crit_edge, label %for.body.lr.ph.i

retry.ext_tree_encode_commit.exit_crit_edge:      ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext_tree_encode_commit.exit

for.body.lr.ph.i:                                 ; preds = %retry
  %add.ptr = getelementptr i32, ptr %start_p.0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %count.1 = phi i32 [ 0, %for.body.lr.ph.i ], [ %count.2, %for.inc.i.for.body.i_crit_edge ]
  %ret.038.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %ret.1.i, %for.inc.i.for.body.i_crit_edge ]
  %be.037.i = phi ptr [ %call.i.i, %for.body.lr.ph.i ], [ %call.i34.i, %for.inc.i.for.body.i_crit_edge ]
  %p.addr.036.i = phi ptr [ %add.ptr, %for.body.lr.ph.i ], [ %p.addr.2.i, %for.inc.i.for.body.i_crit_edge ]
  %be_state.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.037.i, i32 0, i32 5
  %7 = ptrtoint ptr %be_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %be_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 2
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %be_tag.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.037.i, i32 0, i32 6
  %9 = ptrtoint ptr %be_tag.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %be_tag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp1.not.i = icmp eq i32 %10, 1
  br i1 %cmp1.not.i, label %if.end.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %inc.i = add i32 %count.1, 1
  %11 = ptrtoint ptr %bl_scsi_layout.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bl_scsi_layout.i.i, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i = icmp eq i8 %12, 0
  %mul.i.i = shl i32 %inc.i, 4
  %add.i.i = or i32 %mul.i.i, 4
  %mul1.i.i = mul i32 %inc.i, 44
  %add2.i.i = add i32 %mul1.i.i, 4
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %add2.i.i, i32 %add.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %buffer_size.0)
  %cmp3.i = icmp ugt i32 %retval.0.i.i, %buffer_size.0
  br i1 %cmp3.i, label %if.end.i.for.inc.i_crit_edge, label %if.end5.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end5.i:                                        ; preds = %if.end.i
  br i1 %tobool.not.i.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %be_f_offset.i.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.037.i, i32 0, i32 2
  %13 = ptrtoint ptr %be_f_offset.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %be_f_offset.i.i, align 8
  %shl.i.i = shl i64 %14, 9
  %15 = ptrtoint ptr %p.addr.036.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %shl.i.i, ptr %p.addr.036.i, align 1
  %add.ptr.i.i.i = getelementptr i32, ptr %p.addr.036.i, i32 2
  %be_length.i.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.037.i, i32 0, i32 3
  %16 = ptrtoint ptr %be_length.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %be_length.i.i, align 8
  %shl1.i.i = shl i64 %17, 9
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %shl1.i.i, ptr %add.ptr.i.i.i, align 1
  %add.ptr.i5.i.i = getelementptr i32, ptr %p.addr.036.i, i32 4
  br label %if.end10.i

if.else.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %be_device.i.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.037.i, i32 0, i32 1
  %19 = ptrtoint ptr %be_device.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %be_device.i.i, align 4
  %deviceid.i.i = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %20, i32 0, i32 6
  %call.i29.i = tail call ptr @xdr_encode_opaque_fixed(ptr noundef %p.addr.036.i, ptr noundef %deviceid.i.i, i32 noundef 16) #9
  %be_f_offset.i30.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.037.i, i32 0, i32 2
  %21 = ptrtoint ptr %be_f_offset.i30.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %be_f_offset.i30.i, align 8
  %shl.i31.i = shl i64 %22, 9
  %23 = ptrtoint ptr %call.i29.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %shl.i31.i, ptr %call.i29.i, align 1
  %add.ptr.i.i32.i = getelementptr i32, ptr %call.i29.i, i32 2
  %be_length.i33.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.037.i, i32 0, i32 3
  %24 = ptrtoint ptr %be_length.i33.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %be_length.i33.i, align 8
  %shl2.i.i = shl i64 %25, 9
  %26 = ptrtoint ptr %add.ptr.i.i32.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %shl2.i.i, ptr %add.ptr.i.i32.i, align 1
  %add.ptr.i12.i.i = getelementptr i32, ptr %call.i29.i, i32 4
  %27 = ptrtoint ptr %add.ptr.i12.i.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 0, ptr %add.ptr.i12.i.i, align 1
  %add.ptr.i13.i.i = getelementptr i32, ptr %call.i29.i, i32 6
  %incdec.ptr.i.i = getelementptr i32, ptr %call.i29.i, i32 7
  %28 = ptrtoint ptr %add.ptr.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %add.ptr.i13.i.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i, %if.then7.i
  %p.addr.1.i = phi ptr [ %add.ptr.i5.i.i, %if.then7.i ], [ %incdec.ptr.i.i, %if.else.i ]
  %29 = ptrtoint ptr %be_tag.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %be_tag.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end10.i, %if.end.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %count.2 = phi i32 [ %inc.i, %if.end.i.for.inc.i_crit_edge ], [ %inc.i, %if.end10.i ], [ %count.1, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %count.1, %for.body.i.for.inc.i_crit_edge ]
  %p.addr.2.i = phi ptr [ %p.addr.036.i, %if.end.i.for.inc.i_crit_edge ], [ %p.addr.1.i, %if.end10.i ], [ %p.addr.036.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %p.addr.036.i, %for.body.i.for.inc.i_crit_edge ]
  %ret.1.i = phi i32 [ -28, %if.end.i.for.inc.i_crit_edge ], [ %ret.038.i, %if.end10.i ], [ %ret.038.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %ret.038.i, %for.body.i.for.inc.i_crit_edge ]
  %call.i34.i = tail call ptr @rb_next(ptr noundef nonnull %be.037.i) #9
  %tobool.not.i = icmp eq ptr %call.i34.i, null
  br i1 %tobool.not.i, label %for.inc.i.ext_tree_encode_commit.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.ext_tree_encode_commit.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext_tree_encode_commit.exit

ext_tree_encode_commit.exit:                      ; preds = %for.inc.i.ext_tree_encode_commit.exit_crit_edge, %retry.ext_tree_encode_commit.exit_crit_edge
  %count.3 = phi i32 [ 0, %retry.ext_tree_encode_commit.exit_crit_edge ], [ %count.2, %for.inc.i.ext_tree_encode_commit.exit_crit_edge ]
  %ret.0.lcssa.i = phi i32 [ 0, %retry.ext_tree_encode_commit.exit_crit_edge ], [ %ret.1.i, %for.inc.i.ext_tree_encode_commit.exit_crit_edge ]
  %30 = ptrtoint ptr %bl_lwb.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %bl_lwb.i, align 8
  %sub.i = add i64 %31, -1
  %32 = ptrtoint ptr %lastbytewritten to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %sub.i, ptr %lastbytewritten, align 8
  store i64 0, ptr %bl_lwb.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %bl_ext_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa.i)
  %tobool17.not = icmp eq i32 %ret.0.lcssa.i, 0
  br i1 %tobool17.not, label %if.end37, label %if.then24, !prof !36

if.then24:                                        ; preds = %ext_tree_encode_commit.exit
  tail call fastcc void @ext_tree_free_commitdata(ptr noundef %arg, i32 noundef %buffer_size.0)
  %33 = ptrtoint ptr %bl_scsi_layout.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bl_scsi_layout.i.i, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i108 = icmp eq i8 %34, 0
  %mul.i = shl i32 %count.3, 4
  %add.i = or i32 %mul.i, 4
  %mul1.i = mul i32 %count.3, 44
  %add2.i = add i32 %mul1.i, 4
  %retval.0.i = select i1 %tobool.not.i108, i32 %add2.i, i32 %add.i
  %sub = add i32 %retval.0.i, 4095
  %35 = lshr i32 %sub, 10
  %36 = and i32 %35, 4194300
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %36, i32 noundef 3392) #14
  %37 = ptrtoint ptr %layoutupdate_pages to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call8.i.i, ptr %layoutupdate_pages, align 8
  %tobool29.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool29.not, label %if.then24.cleanup_crit_edge, label %if.end31

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31:                                         ; preds = %if.then24
  %call32 = tail call noalias ptr @__vmalloc(i32 noundef %retval.0.i, i32 noundef 3136) #14
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.then34, label %if.end31.retry_crit_edge

if.end31.retry_crit_edge:                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %layoutupdate_pages to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %layoutupdate_pages, align 8
  tail call void @kfree(ptr noundef %39) #9
  br label %cleanup

if.end37:                                         ; preds = %ext_tree_encode_commit.exit
  %40 = ptrtoint ptr %start_p.0 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %count.3, ptr %start_p.0, align 4
  %41 = ptrtoint ptr %bl_scsi_layout.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bl_scsi_layout.i.i, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i111 = icmp eq i8 %42, 0
  %mul.i112 = shl i32 %count.3, 4
  %add.i113 = or i32 %mul.i112, 4
  %mul1.i114 = mul i32 %count.3, 44
  %add2.i115 = add i32 %mul1.i114, 4
  %retval.0.i116 = select i1 %tobool.not.i111, i32 %add2.i115, i32 %add.i113
  %layoutupdate_len = getelementptr inbounds %struct.nfs4_layoutcommit_args, ptr %arg, i32 0, i32 5
  %43 = ptrtoint ptr %layoutupdate_len to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %retval.0.i116, ptr %layoutupdate_len, align 8
  %44 = ptrtoint ptr %layoutupdate_pages to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %layoutupdate_pages, align 8
  %cmp.not = icmp eq ptr %45, %layoutupdate_page
  br i1 %cmp.not, label %if.end37.do.body56_crit_edge, label %if.then47, !prof !36

if.end37.do.body56_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body56

if.then47:                                        ; preds = %if.end37
  %add.ptr49 = getelementptr i8, ptr %start_p.0, i32 %retval.0.i116
  %start_p50 = getelementptr inbounds %struct.nfs4_layoutcommit_args, ptr %arg, i32 0, i32 8
  %46 = ptrtoint ptr %start_p50 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %start_p.0, ptr %start_p50, align 4
  %cmp51130 = icmp ult ptr %start_p.0, %add.ptr49
  br i1 %cmp51130, label %if.then47.for.body_crit_edge, label %if.then47.do.body56_crit_edge

if.then47.do.body56_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body56

if.then47.for.body_crit_edge:                     ; preds = %if.then47
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then47.for.body_crit_edge
  %i.0132 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then47.for.body_crit_edge ]
  %p.0131 = phi ptr [ %add.ptr54, %for.body.for.body_crit_edge ], [ %start_p.0, %if.then47.for.body_crit_edge ]
  %call52 = tail call ptr @vmalloc_to_page(ptr noundef %p.0131) #9
  %47 = ptrtoint ptr %layoutupdate_pages to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %layoutupdate_pages, align 8
  %inc = add i32 %i.0132, 1
  %arrayidx = getelementptr ptr, ptr %48, i32 %i.0132
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call52, ptr %arrayidx, align 4
  tail call fastcc void @get_page(ptr noundef %call52)
  %add.ptr54 = getelementptr i8, ptr %p.0131, i32 4096
  %cmp51 = icmp ult ptr %add.ptr54, %add.ptr49
  br i1 %cmp51, label %for.body.for.body_crit_edge, label %for.body.do.body56_crit_edge

for.body.do.body56_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body56

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body56:                                        ; preds = %for.body.do.body56_crit_edge, %if.then47.do.body56_crit_edge, %if.end37.do.body56_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %50 = load i32, ptr @nfs_debug, align 4
  %and57 = and i32 %50, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %do.body56.cleanup_crit_edge, label %do.end68, !prof !36

do.body56.cleanup_crit_edge:                      ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end68:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %count.3) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %do.body56.cleanup_crit_edge, %if.then34, %if.then24.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then34 ], [ -12, %do.end7.cleanup_crit_edge ], [ 0, %do.end68 ], [ 0, %do.body56.cleanup_crit_edge ], [ -12, %if.then24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext_tree_free_commitdata(ptr noundef readonly %arg, i32 noundef %buffer_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %layoutupdate_pages = getelementptr inbounds %struct.nfs4_layoutcommit_args, ptr %arg, i32 0, i32 7
  %0 = ptrtoint ptr %layoutupdate_pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layoutupdate_pages, align 8
  %layoutupdate_page = getelementptr inbounds %struct.nfs4_layoutcommit_args, ptr %arg, i32 0, i32 6
  %cmp.not = icmp eq ptr %1, %layoutupdate_page
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sub = add i32 %buffer_size, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp133.not = icmp ult i32 %sub, 4096
  br i1 %cmp133.not, label %if.then.for.end_crit_edge, label %for.body.preheader

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %if.then
  %div12 = lshr i32 %sub, 12
  br label %for.body

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %for.body.preheader
  %i.034 = phi i32 [ %inc, %put_page.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %2 = ptrtoint ptr %layoutupdate_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %layoutupdate_pages, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.034
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !36

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %8, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %5 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %9, %if.end.i.i ]
  %10 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %11 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i.i.i = icmp eq i32 %12, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !40

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %13, ptr noundef nonnull @.str.11) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !41
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !43
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ext_tree_free_commitdata, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !45

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %10, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %10) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, %div12
  br i1 %exitcond.not, label %put_page.exit.for.end_crit_edge, label %put_page.exit.for.body_crit_edge

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

put_page.exit.for.end_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %put_page.exit.for.end_crit_edge, %if.then.for.end_crit_edge
  %start_p = getelementptr inbounds %struct.nfs4_layoutcommit_args, ptr %arg, i32 0, i32 8
  %15 = ptrtoint ptr %start_p to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %start_p, align 4
  tail call void @vfree(ptr noundef %16) #9
  %17 = ptrtoint ptr %layoutupdate_pages to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %layoutupdate_pages, align 8
  tail call void @kfree(ptr noundef %18) #9
  br label %if.end

if.else:                                          ; preds = %entry
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %21 = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and.i.i13 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i13)
  %tobool.not.i.i14 = icmp eq i32 %and.i.i13, 0
  br i1 %tobool.not.i.i14, label %if.end.i.i17, label %if.then.i.i16, !prof !36

if.then.i.i16:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i15 = add i32 %23, -1
  br label %_compound_head.exit.i22

if.end.i.i17:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %20 to i32
  br label %_compound_head.exit.i22

_compound_head.exit.i22:                          ; preds = %if.end.i.i17, %if.then.i.i16
  %retval.0.i.i18 = phi i32 [ %sub.i.i15, %if.then.i.i16 ], [ %24, %if.end.i.i17 ]
  %25 = inttoptr i32 %retval.0.i.i18 to ptr
  %_refcount.i.i.i.i.i19 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 3
  %call.i.i.i.i.i.i.i20 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i19, i32 noundef 4) #9
  %26 = ptrtoint ptr %_refcount.i.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %_refcount.i.i.i.i.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.i.i.i21 = icmp eq i32 %27, 0
  br i1 %cmp.i.i.i.i21, label %if.then.i.i.i.i23, label %do.end5.i.i.i.i27, !prof !40

if.then.i.i.i.i23:                                ; preds = %_compound_head.exit.i22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %25, ptr noundef nonnull @.str.11) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !41
  unreachable

do.end5.i.i.i.i27:                                ; preds = %_compound_head.exit.i22
  %call.i.i.i10.i.i.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i19, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i19, i32 1, i32 3, i32 1) #9
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i19, ptr %_refcount.i.i.i.i.i19, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i19) #9, !srcloc !43
  %asmresult.i.i.i.i.i.i.i.i.i.i25 = extractvalue { i32, i32 } %28, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i25)
  %cmp.i.i.i.i.i.i.i26 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i25, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ext_tree_free_commitdata, %if.then.i.i.i.i.i29)) #9
          to label %folio_put_testzero.exit.i.i30 [label %if.then.i.i.i.i.i29], !srcloc !45

if.then.i.i.i.i.i29:                              ; preds = %do.end5.i.i.i.i27
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i28 = zext i1 %cmp.i.i.i.i.i.i.i26 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %25, i32 noundef -1, i32 noundef %conv.i.i.i.i.i28) #9
  br label %folio_put_testzero.exit.i.i30

folio_put_testzero.exit.i.i30:                    ; preds = %if.then.i.i.i.i.i29, %do.end5.i.i.i.i27
  br i1 %cmp.i.i.i.i.i.i.i26, label %if.then.i4.i31, label %folio_put_testzero.exit.i.i30.if.end_crit_edge

folio_put_testzero.exit.i.i30.if.end_crit_edge:   ; preds = %folio_put_testzero.exit.i.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i4.i31:                                   ; preds = %folio_put_testzero.exit.i.i30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %25) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i4.i31, %folio_put_testzero.exit.i.i30.if.end_crit_edge, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_page(ptr noundef %page) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !36

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #9
  %5 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i, align 4
  %add.i = add i32 %6, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i)
  %cmp.i = icmp ult i32 %add.i, 128
  br i1 %cmp.i, label %if.then.i1, label %do.end5.i, !prof !40

if.then.i1:                                       ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.12) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #9, !srcloc !46
  unreachable

do.end5.i:                                        ; preds = %_compound_head.exit
  %call.i.i.i.i9.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i, ptr %_refcount.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i) #9, !srcloc !37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@get_page, %if.then.i.i.i)) #9
          to label %folio_get.exit [label %if.then.i.i.i], !srcloc !45

if.then.i.i.i:                                    ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__page_ref_mod(ptr noundef %4, i32 noundef 1) #9
  br label %folio_get.exit

folio_get.exit:                                   ; preds = %if.then.i.i.i, %do.end5.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext_tree_mark_committed(ptr noundef %arg, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %inode = getelementptr inbounds %struct.nfs4_layoutcommit_args, ptr %arg, i32 0, i32 3
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %layout = getelementptr i8, ptr %1, i32 -32
  %2 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %layout, align 8
  %bl_ext_rw = getelementptr inbounds %struct.pnfs_block_layout, ptr %3, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %4 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !36

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %status) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %layoutupdate_len = getelementptr inbounds %struct.nfs4_layoutcommit_args, ptr %arg, i32 0, i32 5
  %5 = ptrtoint ptr %layoutupdate_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %layoutupdate_len, align 8
  tail call fastcc void @ext_tree_free_commitdata(ptr noundef %arg, i32 noundef %6)
  %bl_ext_lock = getelementptr inbounds %struct.pnfs_block_layout, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %bl_ext_lock) #9
  %call.i = tail call ptr @rb_first(ptr noundef %bl_ext_rw) #9
  %tobool9.not39 = icmp eq ptr %call.i, null
  br i1 %tobool9.not39, label %do.end7.for.end_crit_edge, label %for.body.lr.ph

do.end7.for.end_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool13.not = icmp eq i32 %status, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %be.040 = phi ptr [ %call.i, %for.body.lr.ph ], [ %call.i38, %for.inc.for.body_crit_edge ]
  %be_state = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.040, i32 0, i32 5
  %7 = ptrtoint ptr %be_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %be_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.not = icmp eq i32 %8, 2
  br i1 %cmp.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %be_tag = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.040, i32 0, i32 6
  %9 = ptrtoint ptr %be_tag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %be_tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp10.not = icmp eq i32 %10, 2
  br i1 %cmp10.not, label %if.end12, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end12:                                         ; preds = %lor.lhs.false
  br i1 %tobool13.not, label %if.else, label %if.end12.if.end18_crit_edge

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %be_state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %be_state, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end12.if.end18_crit_edge
  %storemerge = phi i32 [ 0, %if.else ], [ 1, %if.end12.if.end18_crit_edge ]
  %12 = ptrtoint ptr %be_tag to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %storemerge, ptr %be_tag, align 4
  %call19 = tail call fastcc ptr @ext_try_to_merge_left(ptr noundef %bl_ext_rw, ptr noundef nonnull %be.040)
  %call20 = tail call fastcc ptr @ext_try_to_merge_right(ptr noundef %bl_ext_rw, ptr noundef %call19)
  br label %for.inc

for.inc:                                          ; preds = %if.end18, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %be.1 = phi ptr [ %be.040, %for.body.for.inc_crit_edge ], [ %be.040, %lor.lhs.false.for.inc_crit_edge ], [ %call19, %if.end18 ]
  %call.i38 = tail call ptr @rb_next(ptr noundef %be.1) #9
  %tobool9.not = icmp eq ptr %call.i38, null
  br i1 %tobool9.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end7.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %bl_ext_lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque_fixed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !24}
!llvm.named.register.sp = !{!26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfs/blocklayout/extent_tree.c", i32 271, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ext_tree_insert._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ext_tree_insert._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nfs/blocklayout/extent_tree.c", i32 563, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ext_tree_prepare_commit._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @ext_tree_prepare_commit._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/nfs/blocklayout/extent_tree.c", i32 610, i32 2}
!13 = !{ptr @ext_tree_prepare_commit._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @ext_tree_prepare_commit._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/nfs/blocklayout/extent_tree.c", i32 621, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ext_tree_mark_committed._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @ext_tree_mark_committed._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/mm.h", i32 717, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!26 = !{!"sp"}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i64 2148499472, i64 2148499498, i64 2148499527, i64 2148499561, i64 2148499592, i64 2148499615}
!38 = !{i64 2157719781, i64 2157720278, i64 2157719818, i64 2157719874, i64 2157719908, i64 2157719932, i64 2157719973, i64 2157719994, i64 2157720022, i64 2157720056}
!39 = !{i8 0, i8 2}
!40 = !{!"branch_weights", i32 1, i32 2000}
!41 = !{i64 2153237378, i64 2153237861, i64 2153237415, i64 2153237471, i64 2153237505, i64 2153237529, i64 2153237570, i64 2153237591, i64 2153237619, i64 2153237653}
!42 = !{i64 2148587948}
!43 = !{i64 2148502657, i64 2148502689, i64 2148502718, i64 2148502752, i64 2148502783, i64 2148502806}
!44 = !{i64 2148588177}
!45 = !{i64 2148324070, i64 2148324075, i64 2148324088, i64 2148324132, i64 2148324166, i64 2148324187}
!46 = !{i64 2153261351, i64 2153261835, i64 2153261388, i64 2153261444, i64 2153261478, i64 2153261502, i64 2153261543, i64 2153261564, i64 2153261592, i64 2153261626}
