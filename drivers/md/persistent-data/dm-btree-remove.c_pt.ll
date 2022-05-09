; ModuleID = '/llk/IR_all_yes/drivers/md/persistent-data/dm-btree-remove.c_pt.bc'
source_filename = "../drivers/md/persistent-data/dm-btree-remove.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dm_btree_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_btree_remove\09\09\09\09"
module asm "\09.long\09__crc_dm_btree_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_btree_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_btree_remove\22\09\09\09\09\09"
module asm "__kstrtabns_dm_btree_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_btree_remove_leaves\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_btree_remove_leaves\09\09\09\09"
module asm "\09.long\09__crc_dm_btree_remove_leaves\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_btree_remove_leaves:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_btree_remove_leaves\22\09\09\09\09\09"
module asm "__kstrtabns_dm_btree_remove_leaves:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dm_block_validator = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.shadow_spine = type { ptr, i32, [2 x ptr], i64 }
%struct.dm_btree_value_type = type { ptr, i32, ptr, ptr, ptr }
%struct.dm_btree_info = type { ptr, i32, %struct.dm_btree_value_type }
%struct.node_header = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.btree_node = type { %struct.node_header, [0 x i64] }
%struct.child = type { i32, ptr, ptr }

@__kstrtab_dm_btree_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_btree_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_btree_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_btree_remove to i32), ptr @__kstrtab_dm_btree_remove, ptr @__kstrtabns_dm_btree_remove }, section "___ksymtab_gpl+dm_btree_remove", align 4
@__kstrtab_dm_btree_remove_leaves = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_btree_remove_leaves = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_btree_remove_leaves = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_btree_remove_leaves to i32), ptr @__kstrtab_dm_btree_remove_leaves, ptr @__kstrtabns_dm_btree_remove_leaves }, section "___ksymtab_gpl+dm_btree_remove_leaves", align 4
@btree_node_validator = external dso_local global %struct.dm_block_validator, align 4
@node_copy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013device-mapper: btree: mismatched value size\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"node_copy\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/md/persistent-data/dm-btree-remove.c\00", [51 x i8] zeroinitializer }, align 32
@node_copy._entry_ptr = internal global ptr @node_copy._entry, section ".printk_index", align 4
@node_copy._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013device-mapper: btree: bad shift\0A\00", [61 x i8] zeroinitializer }, align 32
@node_copy._entry_ptr.5 = internal global ptr @node_copy._entry.3, section ".printk_index", align 4
@node_copy._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@node_copy._entry_ptr.7 = internal global ptr @node_copy._entry.6, section ".printk_index", align 4
@shift._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013device-mapper: btree: node max_entries mismatch\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"shift\00", [26 x i8] zeroinitializer }, align 32
@shift._entry_ptr = internal global ptr @shift._entry, section ".printk_index", align 4
@shift._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013device-mapper: btree: node shift out of bounds\0A\00", [46 x i8] zeroinitializer }, align 32
@shift._entry_ptr.12 = internal global ptr @shift._entry.10, section ".printk_index", align 4
@shift._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@shift._entry_ptr.14 = internal global ptr @shift._entry.13, section ".printk_index", align 4
@__rebalance3._entry = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 429, ptr null, ptr null }, align 1
@.str.15 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013device-mapper: btree: bad btree metadata, max_entries differ\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__rebalance3\00", [19 x i8] zeroinitializer }, align 32
@__rebalance3._entry_ptr = internal global ptr @__rebalance3._entry, section ".printk_index", align 4
@delete_center_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.17, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"delete_center_node\00", [45 x i8] zeroinitializer }, align 32
@delete_center_node._entry_ptr = internal global ptr @delete_center_node._entry, section ".printk_index", align 4
@delete_center_node._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.17, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@delete_center_node._entry_ptr.19 = internal global ptr @delete_center_node._entry.18, section ".printk_index", align 4
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 90, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 98, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 110, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 198, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 203, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 208, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 429, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 316, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private constant [48 x i8] c"../drivers/md/persistent-data/dm-btree-remove.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 327, i32 4 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__ksymtab_dm_btree_remove, ptr @__ksymtab_dm_btree_remove_leaves, ptr @__rebalance3._entry, ptr @__rebalance3._entry_ptr, ptr @delete_center_node._entry, ptr @delete_center_node._entry.18, ptr @delete_center_node._entry_ptr, ptr @delete_center_node._entry_ptr.19, ptr @node_copy._entry, ptr @node_copy._entry.3, ptr @node_copy._entry.6, ptr @node_copy._entry_ptr, ptr @node_copy._entry_ptr.5, ptr @node_copy._entry_ptr.7, ptr @shift._entry, ptr @shift._entry.10, ptr @shift._entry.13, ptr @shift._entry_ptr, ptr @shift._entry_ptr.12, ptr @shift._entry_ptr.14, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_copy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_copy._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_copy._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shift._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shift._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shift._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delete_center_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delete_center_node._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_btree_remove(ptr noundef %info, i64 noundef %root, ptr nocapture noundef readonly %keys, ptr nocapture noundef writeonly %new_root) #0 align 64 {
entry:
  %index = alloca i32, align 4
  %spine = alloca %struct.shadow_spine, align 8
  %le64_vt = alloca %struct.dm_btree_value_type, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %levels = getelementptr inbounds %struct.dm_btree_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %levels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %levels, align 4
  %sub = add i32 %1, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #5
  %2 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %spine) #5
  %3 = call ptr @memset(ptr %spine, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %le64_vt) #5
  %4 = call ptr @memset(ptr %le64_vt, i32 255, i32 20)
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info, align 4
  call void @init_le64_type(ptr noundef %6, ptr noundef nonnull %le64_vt) #5
  call void @init_shadow_spine(ptr noundef nonnull %spine, ptr noundef %info) #5
  %7 = ptrtoint ptr %levels to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %levels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp63.not = icmp eq i32 %8, 0
  br i1 %cmp63.not, label %entry.if.then30_crit_edge, label %for.body.lr.ph

entry.if.then30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

for.body.lr.ph:                                   ; preds = %entry
  %value_type = getelementptr inbounds %struct.dm_btree_info, ptr %info, i32 0, i32 2
  %dec = getelementptr inbounds %struct.dm_btree_info, ptr %info, i32 0, i32 2, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %level.065 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %root.addr.064 = phi i64 [ %root, %for.body.lr.ph ], [ %root.addr.1, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %level.065, i32 %sub)
  %cmp2 = icmp eq i32 %level.065, %sub
  %spec.select = select i1 %cmp2, ptr %value_type, ptr %le64_vt
  %arrayidx = getelementptr i64, ptr %keys, i32 %level.065
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx, align 8
  %call = call fastcc i32 @remove_raw(ptr noundef nonnull %spine, ptr noundef %info, ptr noundef %spec.select, i64 noundef %root.addr.064, i64 noundef %10, ptr noundef nonnull %index)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %for.body.if.end32_crit_edge, label %if.end

for.body.if.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.end:                                           ; preds = %for.body
  %call4 = call ptr @shadow_current(ptr noundef nonnull %spine) #5
  %call5 = call ptr @dm_block_data(ptr noundef %call4) #5
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  br i1 %cmp2, label %do.body, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %max_entries.i.i = getelementptr inbounds %struct.node_header, ptr %call5, i32 0, i32 4
  %13 = ptrtoint ptr %max_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_entries.i.i, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14) #5
  %arrayidx.i.i = getelementptr %struct.btree_node, ptr %call5, i32 0, i32 1, i32 %15
  %arrayidx.i = getelementptr i64, ptr %arrayidx.i.i, i32 %12
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx.i, align 8
  %18 = call i64 @llvm.bswap.i64(i64 %17) #5
  br label %for.inc

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp10 = icmp slt i32 %12, 0
  br i1 %cmp10, label %do.body.do.body14_crit_edge, label %lor.rhs, !prof !50

do.body.do.body14_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body14

lor.rhs:                                          ; preds = %do.body
  %nr_entries = getelementptr inbounds %struct.node_header, ptr %call5, i32 0, i32 3
  %19 = ptrtoint ptr %nr_entries to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr_entries, align 8
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %21)
  %cmp11.not = icmp ult i32 %12, %21
  br i1 %cmp11.not, label %do.end20, label %lor.rhs.do.body14_crit_edge, !prof !51

lor.rhs.do.body14_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body14

do.body14:                                        ; preds = %lor.rhs.do.body14_crit_edge, %do.body.do.body14_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/persistent-data/dm-btree-remove.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 614, 0\0A.popsection", ""() #5, !srcloc !52
  unreachable

do.end20:                                         ; preds = %lor.rhs
  %22 = ptrtoint ptr %dec to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dec, align 4
  %tobool22.not = icmp eq ptr %23, null
  br i1 %tobool22.not, label %do.end20.if.end28_crit_edge, label %if.then23

do.end20.if.end28_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then23:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %value_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %value_type, align 4
  %value_size1.i = getelementptr inbounds %struct.node_header, ptr %call5, i32 0, i32 5
  %26 = ptrtoint ptr %value_size1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value_size1.i, align 8
  %28 = call i32 @llvm.bswap.i32(i32 %27) #5
  %max_entries.i.i52 = getelementptr inbounds %struct.node_header, ptr %call5, i32 0, i32 4
  %29 = ptrtoint ptr %max_entries.i.i52 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_entries.i.i52, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30) #5
  %arrayidx.i.i53 = getelementptr %struct.btree_node, ptr %call5, i32 0, i32 1, i32 %31
  %mul.i = mul i32 %28, %12
  %add.ptr.i = getelementptr i8, ptr %arrayidx.i.i53, i32 %mul.i
  call void %23(ptr noundef %25, ptr noundef %add.ptr.i, i32 noundef 1) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %do.end20.if.end28_crit_edge
  %32 = ptrtoint ptr %nr_entries to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_entries, align 8
  %34 = call i32 @llvm.bswap.i32(i32 %33) #5
  %add.i = add nuw i32 %12, 1
  %sub.i = sub i32 %34, %add.i
  %value_size3.i = getelementptr inbounds %struct.node_header, ptr %call5, i32 0, i32 5
  %35 = ptrtoint ptr %value_size3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %value_size3.i, align 8
  %37 = call i32 @llvm.bswap.i32(i32 %36) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %12)
  %cmp.not.i = icmp ugt i32 %34, %12
  br i1 %cmp.not.i, label %do.end10.i, label %do.body5.i, !prof !51

do.body5.i:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/persistent-data/dm-btree-remove.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #5, !srcloc !53
  unreachable

do.end10.i:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %add.i)
  %tobool11.not.i = icmp eq i32 %34, %add.i
  br i1 %tobool11.not.i, label %do.end10.i.delete_at.exit_crit_edge, label %if.then12.i

do.end10.i.delete_at.exit_crit_edge:              ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %delete_at.exit

if.then12.i:                                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %keys.i.i = getelementptr inbounds %struct.btree_node, ptr %call5, i32 0, i32 1
  %add.ptr.i.i = getelementptr i64, ptr %keys.i.i, i32 %12
  %add.ptr.i39.i = getelementptr i64, ptr %keys.i.i, i32 %add.i
  %mul.i54 = shl i32 %sub.i, 3
  %38 = call ptr @memmove(ptr %add.ptr.i.i, ptr %add.ptr.i39.i, i32 %mul.i54)
  %39 = ptrtoint ptr %value_size3.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %value_size3.i, align 8
  %41 = call i32 @llvm.bswap.i32(i32 %40) #5
  %max_entries.i.i.i = getelementptr inbounds %struct.node_header, ptr %call5, i32 0, i32 4
  %42 = ptrtoint ptr %max_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_entries.i.i.i, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43) #5
  %arrayidx.i.i.i = getelementptr %struct.btree_node, ptr %call5, i32 0, i32 1, i32 %44
  %mul.i.i = mul i32 %41, %12
  %add.ptr.i40.i = getelementptr i8, ptr %arrayidx.i.i.i, i32 %mul.i.i
  %mul.i44.i = mul i32 %41, %add.i
  %add.ptr.i45.i = getelementptr i8, ptr %arrayidx.i.i.i, i32 %mul.i44.i
  %mul18.i = mul i32 %sub.i, %37
  %45 = call ptr @memmove(ptr %add.ptr.i40.i, ptr %add.ptr.i45.i, i32 %mul18.i)
  br label %delete_at.exit

delete_at.exit:                                   ; preds = %if.then12.i, %do.end10.i.delete_at.exit_crit_edge
  %sub20.i = add i32 %34, -1
  %46 = call i32 @llvm.bswap.i32(i32 %sub20.i) #5
  %47 = ptrtoint ptr %nr_entries to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %nr_entries, align 8
  br label %for.inc

for.inc:                                          ; preds = %delete_at.exit, %if.then7
  %root.addr.1 = phi i64 [ %18, %if.then7 ], [ %root.addr.064, %delete_at.exit ]
  %inc = add nuw i32 %level.065, 1
  %48 = ptrtoint ptr %levels to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %levels, align 4
  %cmp = icmp ult i32 %inc, %49
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool29.not = icmp eq i32 %call, 0
  br i1 %tobool29.not, label %for.end.if.then30_crit_edge, label %for.end.if.end32_crit_edge

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

for.end.if.then30_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

if.then30:                                        ; preds = %for.end.if.then30_crit_edge, %entry.if.then30_crit_edge
  %call31 = call i64 @shadow_root(ptr noundef nonnull %spine) #5
  %50 = ptrtoint ptr %new_root to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %call31, ptr %new_root, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %for.end.if.end32_crit_edge, %for.body.if.end32_crit_edge
  %r.157 = phi i32 [ 0, %if.then30 ], [ %call, %for.end.if.end32_crit_edge ], [ %call, %for.body.if.end32_crit_edge ]
  call void @exit_shadow_spine(ptr noundef nonnull %spine) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %le64_vt) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %spine) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #5
  ret i32 %r.157
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_le64_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_shadow_spine(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @remove_raw(ptr noundef %s, ptr nocapture noundef readonly %info, ptr noundef %vt, i64 noundef %root, i64 noundef %key, ptr nocapture noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call67 = tail call i32 @shadow_step(ptr noundef %s, i64 noundef %root, ptr noundef %vt) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %entry.cleanup_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.end27.if.end_crit_edge, %entry.if.end_crit_edge
  %i.069 = phi i32 [ %call28, %if.end27.if.end_crit_edge ], [ %1, %entry.if.end_crit_edge ]
  %call1 = tail call i32 @shadow_has_parent(ptr noundef %s) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call ptr @shadow_current(ptr noundef %s) #5
  %call4 = tail call i64 @dm_block_location(ptr noundef %call3) #5
  %2 = tail call i64 @llvm.bswap.i64(i64 %call4)
  %call5 = tail call ptr @shadow_parent(ptr noundef %s) #5
  %call6 = tail call ptr @dm_block_data(ptr noundef %call5) #5
  %value_size1.i = getelementptr inbounds %struct.node_header, ptr %call6, i32 0, i32 5
  %3 = ptrtoint ptr %value_size1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value_size1.i, align 8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  %max_entries.i.i = getelementptr inbounds %struct.node_header, ptr %call6, i32 0, i32 4
  %6 = ptrtoint ptr %max_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_entries.i.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %arrayidx.i.i = getelementptr %struct.btree_node, ptr %call6, i32 0, i32 1, i32 %8
  %mul.i = mul i32 %5, %i.069
  %add.ptr.i = getelementptr i8, ptr %arrayidx.i.i, i32 %mul.i
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %2, ptr %add.ptr.i, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then2, %if.end.if.end8_crit_edge
  %call9 = tail call ptr @shadow_current(ptr noundef %s) #5
  %call10 = tail call ptr @dm_block_data(ptr noundef %call9) #5
  %flags = getelementptr inbounds %struct.node_header, ptr %call10, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %12 = and i32 %11, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool11.not = icmp eq i32 %12, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end8
  %call.i = tail call i32 @lower_bound(ptr noundef %call10, i64 noundef %key) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then12.cleanup_crit_edge, label %lor.lhs.false.i

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.then12
  %nr_entries.i = getelementptr inbounds %struct.node_header, ptr %call10, i32 0, i32 3
  %13 = ptrtoint ptr %nr_entries.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_entries.i, align 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %15)
  %cmp1.not.i = icmp ult i32 %call.i, %15
  br i1 %cmp1.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %arrayidx.i = getelementptr %struct.btree_node, ptr %call10, i32 0, i32 1, i32 %call.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx.i, align 8
  %18 = tail call i64 @llvm.bswap.i64(i64 %17) #5
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %key)
  %cmp3.not.i = icmp eq i64 %18, %key
  br i1 %cmp3.not.i, label %lor.lhs.false2.i.cleanup.sink.split_crit_edge, label %lor.lhs.false2.i.cleanup_crit_edge

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false2.i.cleanup.sink.split_crit_edge:    ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end14:                                         ; preds = %if.end8
  %call15 = tail call fastcc i32 @rebalance_children(ptr noundef %s, ptr noundef %info, ptr noundef %vt, i64 noundef %key)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %call19 = tail call ptr @shadow_current(ptr noundef %s) #5
  %call20 = tail call ptr @dm_block_data(ptr noundef %call19) #5
  %flags22 = getelementptr inbounds %struct.node_header, ptr %call20, i32 0, i32 1
  %19 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags22, align 4
  %21 = and i32 %20, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool24.not = icmp eq i32 %21, 0
  %call28 = tail call i32 @lower_bound(ptr noundef %call20, i64 noundef %key) #5
  br i1 %tobool24.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp.i53 = icmp slt i32 %call28, 0
  br i1 %cmp.i53, label %if.then25.cleanup_crit_edge, label %lor.lhs.false.i56

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i56:                                ; preds = %if.then25
  %nr_entries.i54 = getelementptr inbounds %struct.node_header, ptr %call20, i32 0, i32 3
  %22 = ptrtoint ptr %nr_entries.i54 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_entries.i54, align 8
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call28, i32 %24)
  %cmp1.not.i55 = icmp ult i32 %call28, %24
  br i1 %cmp1.not.i55, label %lor.lhs.false2.i59, label %lor.lhs.false.i56.cleanup_crit_edge

lor.lhs.false.i56.cleanup_crit_edge:              ; preds = %lor.lhs.false.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false2.i59:                               ; preds = %lor.lhs.false.i56
  %arrayidx.i57 = getelementptr %struct.btree_node, ptr %call20, i32 0, i32 1, i32 %call28
  %25 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx.i57, align 8
  %27 = tail call i64 @llvm.bswap.i64(i64 %26) #5
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %key)
  %cmp3.not.i58 = icmp eq i64 %27, %key
  br i1 %cmp3.not.i58, label %lor.lhs.false2.i59.cleanup.sink.split_crit_edge, label %lor.lhs.false2.i59.cleanup_crit_edge

lor.lhs.false2.i59.cleanup_crit_edge:             ; preds = %lor.lhs.false2.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false2.i59.cleanup.sink.split_crit_edge:  ; preds = %lor.lhs.false2.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end27:                                         ; preds = %if.end18
  %max_entries.i.i63 = getelementptr inbounds %struct.node_header, ptr %call20, i32 0, i32 4
  %28 = ptrtoint ptr %max_entries.i.i63 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_entries.i.i63, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #5
  %arrayidx.i.i64 = getelementptr %struct.btree_node, ptr %call20, i32 0, i32 1, i32 %30
  %arrayidx.i65 = getelementptr i64, ptr %arrayidx.i.i64, i32 %call28
  %31 = ptrtoint ptr %arrayidx.i65 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx.i65, align 8
  %33 = tail call i64 @llvm.bswap.i64(i64 %32) #5
  %call = tail call i32 @shadow_step(ptr noundef %s, i64 noundef %33, ptr noundef %vt) #5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end27.cleanup_crit_edge, label %if.end27.if.end_crit_edge

if.end27.if.end_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %lor.lhs.false2.i59.cleanup.sink.split_crit_edge, %lor.lhs.false2.i.cleanup.sink.split_crit_edge
  %call.i52.sink = phi i32 [ %call.i, %lor.lhs.false2.i.cleanup.sink.split_crit_edge ], [ %call28, %lor.lhs.false2.i59.cleanup.sink.split_crit_edge ]
  %34 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call.i52.sink, ptr %index, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end27.cleanup_crit_edge, %lor.lhs.false2.i59.cleanup_crit_edge, %lor.lhs.false.i56.cleanup_crit_edge, %if.then25.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -61, %lor.lhs.false2.i.cleanup_crit_edge ], [ -61, %lor.lhs.false.i.cleanup_crit_edge ], [ -61, %if.then12.cleanup_crit_edge ], [ -61, %lor.lhs.false2.i59.cleanup_crit_edge ], [ -61, %lor.lhs.false.i56.cleanup_crit_edge ], [ -61, %if.then25.cleanup_crit_edge ], [ %call67, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ %call15, %if.end14.cleanup_crit_edge ], [ %call, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_block_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @shadow_current(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @shadow_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_shadow_spine(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_btree_remove_leaves(ptr noundef %info, i64 noundef %root, ptr nocapture noundef %first_key, i64 noundef %end_key, ptr nocapture noundef writeonly %new_root, ptr nocapture noundef %nr_removed) #0 align 64 {
entry:
  %index.i = alloca i32, align 4
  %spine.i = alloca %struct.shadow_spine, align 8
  %le64_vt.i = alloca %struct.dm_btree_value_type, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %levels.i = getelementptr inbounds %struct.dm_btree_info, ptr %info, i32 0, i32 1
  %value_type.i = getelementptr inbounds %struct.dm_btree_info, ptr %info, i32 0, i32 2
  %dec.i = getelementptr inbounds %struct.dm_btree_info, ptr %info, i32 0, i32 2, i32 3
  br label %do.body

do.body:                                          ; preds = %if.then, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %if.then ]
  %root.addr.0 = phi i64 [ %root, %entry ], [ %call33.i, %if.then ]
  %0 = ptrtoint ptr %nr_removed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %storemerge, ptr %nr_removed, align 4
  %1 = ptrtoint ptr %levels.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %levels.i, align 4
  %sub.i = add i32 %2, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.i) #5
  %3 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %index.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %spine.i) #5
  %4 = call ptr @memset(ptr %spine.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %le64_vt.i) #5
  %5 = call ptr @memset(ptr %le64_vt.i, i32 255, i32 20)
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  call void @init_le64_type(ptr noundef %7, ptr noundef nonnull %le64_vt.i) #5
  call void @init_shadow_spine(ptr noundef nonnull %spine.i, ptr noundef %info) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp19.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp19.not.i, label %do.body.for.end.i_crit_edge, label %do.body.for.body.i_crit_edge

do.body.for.body.i_crit_edge:                     ; preds = %do.body
  br label %for.body.i

do.body.for.end.i_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %do.body.for.body.i_crit_edge
  %level.021.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %do.body.for.body.i_crit_edge ]
  %root.addr.020.i = phi i64 [ %17, %if.end.i.for.body.i_crit_edge ], [ %root.addr.0, %do.body.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i64, ptr %first_key, i32 %level.021.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx.i, align 8
  %call.i = call fastcc i32 @remove_raw(ptr noundef nonnull %spine.i, ptr noundef %info, ptr noundef nonnull %le64_vt.i, i64 noundef %root.addr.020.i, i64 noundef %9, ptr noundef nonnull %index.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %for.body.i.remove_one.exit_crit_edge, label %if.end.i

for.body.i.remove_one.exit_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %remove_one.exit

if.end.i:                                         ; preds = %for.body.i
  %call2.i = call ptr @shadow_current(ptr noundef nonnull %spine.i) #5
  %call3.i = call ptr @dm_block_data(ptr noundef %call2.i) #5
  %10 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index.i, align 4
  %max_entries.i.i.i = getelementptr inbounds %struct.node_header, ptr %call3.i, i32 0, i32 4
  %12 = ptrtoint ptr %max_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_entries.i.i.i, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13) #5
  %arrayidx.i.i.i = getelementptr %struct.btree_node, ptr %call3.i, i32 0, i32 1, i32 %14
  %arrayidx.i.i = getelementptr i64, ptr %arrayidx.i.i.i, i32 %11
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx.i.i, align 8
  %17 = call i64 @llvm.bswap.i64(i64 %16) #5
  %inc.i = add nuw i32 %level.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub.i
  br i1 %exitcond.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %do.body.for.end.i_crit_edge
  %root.addr.0.lcssa.i = phi i64 [ %root.addr.0, %do.body.for.end.i_crit_edge ], [ %17, %if.end.i.for.end.i_crit_edge ]
  %arrayidx5.i = getelementptr i64, ptr %first_key, i32 %sub.i
  %18 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx5.i, align 8
  %20 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index.i, align 4
  %call55.i.i = call i32 @shadow_step(ptr noundef nonnull %spine.i, i64 noundef %root.addr.0.lcssa.i, ptr noundef %value_type.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %cmp56.i.i = icmp slt i32 %call55.i.i, 0
  br i1 %cmp56.i.i, label %for.end.i.remove_one.exit_crit_edge, label %for.end.i.if.end.i.i_crit_edge

for.end.i.if.end.i.i_crit_edge:                   ; preds = %for.end.i
  br label %if.end.i.i

for.end.i.remove_one.exit_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %remove_one.exit

if.end.i.i:                                       ; preds = %if.end27.i.i.if.end.i.i_crit_edge, %for.end.i.if.end.i.i_crit_edge
  %i.057.i.i = phi i32 [ %call28.i.i, %if.end27.i.i.if.end.i.i_crit_edge ], [ %21, %for.end.i.if.end.i.i_crit_edge ]
  %call1.i.i = call i32 @shadow_has_parent(ptr noundef nonnull %spine.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end8.i.i_crit_edge, label %if.then2.i.i

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i.i = call ptr @shadow_current(ptr noundef nonnull %spine.i) #5
  %call4.i.i = call i64 @dm_block_location(ptr noundef %call3.i.i) #5
  %22 = call i64 @llvm.bswap.i64(i64 %call4.i.i) #5
  %call5.i.i = call ptr @shadow_parent(ptr noundef nonnull %spine.i) #5
  %call6.i.i = call ptr @dm_block_data(ptr noundef %call5.i.i) #5
  %value_size1.i.i.i = getelementptr inbounds %struct.node_header, ptr %call6.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %value_size1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %value_size1.i.i.i, align 8
  %25 = call i32 @llvm.bswap.i32(i32 %24) #5
  %max_entries.i.i.i.i = getelementptr inbounds %struct.node_header, ptr %call6.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %max_entries.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_entries.i.i.i.i, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27) #5
  %arrayidx.i.i.i.i = getelementptr %struct.btree_node, ptr %call6.i.i, i32 0, i32 1, i32 %28
  %mul.i.i.i = mul i32 %25, %i.057.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %arrayidx.i.i.i.i, i32 %mul.i.i.i
  %29 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %22, ptr %add.ptr.i.i.i, align 1
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then2.i.i, %if.end.i.i.if.end8.i.i_crit_edge
  %call9.i.i = call ptr @shadow_current(ptr noundef nonnull %spine.i) #5
  %call10.i.i = call ptr @dm_block_data(ptr noundef %call9.i.i) #5
  %flags.i.i = getelementptr inbounds %struct.node_header, ptr %call10.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i.i, align 4
  %32 = and i32 %31, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool11.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool11.not.i.i, label %if.end14.i.i, label %if.end8.i.i.remove_nearest.exit.thread12.i_crit_edge

if.end8.i.i.remove_nearest.exit.thread12.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %remove_nearest.exit.thread12.i

if.end14.i.i:                                     ; preds = %if.end8.i.i
  %call15.i.i = call fastcc i32 @rebalance_children(ptr noundef nonnull %spine.i, ptr noundef %info, ptr noundef %value_type.i, i64 noundef %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end18.i.i, label %remove_nearest.exit.i

if.end18.i.i:                                     ; preds = %if.end14.i.i
  %call19.i.i = call ptr @shadow_current(ptr noundef nonnull %spine.i) #5
  %call20.i.i = call ptr @dm_block_data(ptr noundef %call19.i.i) #5
  %flags22.i.i = getelementptr inbounds %struct.node_header, ptr %call20.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %flags22.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags22.i.i, align 4
  %35 = and i32 %34, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool24.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool24.not.i.i, label %if.end27.i.i, label %if.end18.i.i.remove_nearest.exit.thread12.i_crit_edge

if.end18.i.i.remove_nearest.exit.thread12.i_crit_edge: ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %remove_nearest.exit.thread12.i

if.end27.i.i:                                     ; preds = %if.end18.i.i
  %call28.i.i = call i32 @lower_bound(ptr noundef %call20.i.i, i64 noundef %19) #5
  %max_entries.i.i52.i.i = getelementptr inbounds %struct.node_header, ptr %call20.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %max_entries.i.i52.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_entries.i.i52.i.i, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37) #5
  %arrayidx.i.i53.i.i = getelementptr %struct.btree_node, ptr %call20.i.i, i32 0, i32 1, i32 %38
  %arrayidx.i.i1.i = getelementptr i64, ptr %arrayidx.i.i53.i.i, i32 %call28.i.i
  %39 = ptrtoint ptr %arrayidx.i.i1.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx.i.i1.i, align 8
  %41 = call i64 @llvm.bswap.i64(i64 %40) #5
  %call.i.i = call i32 @shadow_step(ptr noundef nonnull %spine.i, i64 noundef %41, ptr noundef %value_type.i) #5
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end27.i.i.remove_one.exit_crit_edge, label %if.end27.i.i.if.end.i.i_crit_edge

if.end27.i.i.if.end.i.i_crit_edge:                ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.end27.i.i.remove_one.exit_crit_edge:           ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %remove_one.exit

remove_nearest.exit.thread12.i:                   ; preds = %if.end18.i.i.remove_nearest.exit.thread12.i_crit_edge, %if.end8.i.i.remove_nearest.exit.thread12.i_crit_edge
  %call20.lcssa.sink.i.i = phi ptr [ %call10.i.i, %if.end8.i.i.remove_nearest.exit.thread12.i_crit_edge ], [ %call20.i.i, %if.end18.i.i.remove_nearest.exit.thread12.i_crit_edge ]
  %call26.i.i = call i32 @lower_bound(ptr noundef %call20.lcssa.sink.i.i, i64 noundef %19) #5
  %42 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call26.i.i, ptr %index.i, align 4
  br label %if.end9.i

remove_nearest.exit.i:                            ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %cmp7.i = icmp slt i32 %call15.i.i, 0
  br i1 %cmp7.i, label %remove_nearest.exit.i.remove_one.exit_crit_edge, label %remove_nearest.exit.i.if.end9.i_crit_edge

remove_nearest.exit.i.if.end9.i_crit_edge:        ; preds = %remove_nearest.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

remove_nearest.exit.i.remove_one.exit_crit_edge:  ; preds = %remove_nearest.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %remove_one.exit

if.end9.i:                                        ; preds = %remove_nearest.exit.i.if.end9.i_crit_edge, %remove_nearest.exit.thread12.i
  %retval.0.i15.i = phi i32 [ 0, %remove_nearest.exit.thread12.i ], [ %call15.i.i, %remove_nearest.exit.i.if.end9.i_crit_edge ]
  %call10.i = call ptr @shadow_current(ptr noundef nonnull %spine.i) #5
  %call11.i = call ptr @dm_block_data(ptr noundef %call10.i) #5
  %43 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %index.i, align 4
  %45 = call i32 @llvm.smax.i32(i32 %44, i32 0) #5
  %nr_entries.i = getelementptr inbounds %struct.node_header, ptr %call11.i, i32 0, i32 3
  %46 = ptrtoint ptr %nr_entries.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nr_entries.i, align 8
  %48 = call i32 @llvm.bswap.i32(i32 %47) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %48)
  %cmp15.not.i = icmp ult i32 %45, %48
  br i1 %cmp15.not.i, label %if.end17.i, label %if.end9.i.remove_one.exit_crit_edge

if.end9.i.remove_one.exit_crit_edge:              ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %remove_one.exit

if.end17.i:                                       ; preds = %if.end9.i
  %arrayidx19.i = getelementptr %struct.btree_node, ptr %call11.i, i32 0, i32 1, i32 %45
  %49 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx19.i, align 8
  %51 = call i64 @llvm.bswap.i64(i64 %50) #5
  %52 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx5.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %51, i64 %53)
  %cmp21.not.i = icmp uge i64 %51, %53
  call void @__sanitizer_cov_trace_cmp8(i64 %51, i64 %end_key)
  %cmp22.i = icmp ult i64 %51, %end_key
  %or.cond.i = and i1 %cmp21.not.i, %cmp22.i
  br i1 %or.cond.i, label %if.then23.i, label %if.end17.i.remove_one.exit_crit_edge

if.end17.i.remove_one.exit_crit_edge:             ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %remove_one.exit

if.then23.i:                                      ; preds = %if.end17.i
  %54 = ptrtoint ptr %dec.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dec.i, align 4
  %tobool.not.i = icmp eq ptr %55, null
  br i1 %tobool.not.i, label %if.then23.i.if.end30.i_crit_edge, label %if.then25.i

if.then23.i.if.end30.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.i

if.then25.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %value_type.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %value_type.i, align 4
  %value_size1.i.i = getelementptr inbounds %struct.node_header, ptr %call11.i, i32 0, i32 5
  %58 = ptrtoint ptr %value_size1.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %value_size1.i.i, align 8
  %60 = call i32 @llvm.bswap.i32(i32 %59) #5
  %max_entries.i.i2.i = getelementptr inbounds %struct.node_header, ptr %call11.i, i32 0, i32 4
  %61 = ptrtoint ptr %max_entries.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_entries.i.i2.i, align 4
  %63 = call i32 @llvm.bswap.i32(i32 %62) #5
  %arrayidx.i.i3.i = getelementptr %struct.btree_node, ptr %call11.i, i32 0, i32 1, i32 %63
  %mul.i.i = mul i32 %60, %45
  %add.ptr.i.i = getelementptr i8, ptr %arrayidx.i.i3.i, i32 %mul.i.i
  call void %55(ptr noundef %57, ptr noundef %add.ptr.i.i, i32 noundef 1) #5
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then25.i, %if.then23.i.if.end30.i_crit_edge
  %64 = ptrtoint ptr %nr_entries.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nr_entries.i, align 8
  %66 = call i32 @llvm.bswap.i32(i32 %65) #5
  %add.i.i = add nuw i32 %45, 1
  %sub.i.i = sub i32 %66, %add.i.i
  %value_size3.i.i = getelementptr inbounds %struct.node_header, ptr %call11.i, i32 0, i32 5
  %67 = ptrtoint ptr %value_size3.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %value_size3.i.i, align 8
  %69 = call i32 @llvm.bswap.i32(i32 %68) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %45)
  %cmp.not.i.i = icmp ugt i32 %66, %45
  br i1 %cmp.not.i.i, label %do.end10.i.i, label %do.body5.i.i, !prof !51

do.body5.i.i:                                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/persistent-data/dm-btree-remove.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #5, !srcloc !53
  unreachable

do.end10.i.i:                                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %add.i.i)
  %tobool11.not.i4.i = icmp eq i32 %66, %add.i.i
  br i1 %tobool11.not.i4.i, label %do.end10.i.i.delete_at.exit.i_crit_edge, label %if.then12.i.i

do.end10.i.i.delete_at.exit.i_crit_edge:          ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %delete_at.exit.i

if.then12.i.i:                                    ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %keys.i.i.i = getelementptr inbounds %struct.btree_node, ptr %call11.i, i32 0, i32 1
  %add.ptr.i.i5.i = getelementptr i64, ptr %keys.i.i.i, i32 %45
  %add.ptr.i39.i.i = getelementptr i64, ptr %keys.i.i.i, i32 %add.i.i
  %mul.i6.i = shl i32 %sub.i.i, 3
  %70 = call ptr @memmove(ptr %add.ptr.i.i5.i, ptr %add.ptr.i39.i.i, i32 %mul.i6.i)
  %71 = ptrtoint ptr %value_size3.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %value_size3.i.i, align 8
  %73 = call i32 @llvm.bswap.i32(i32 %72) #5
  %max_entries.i.i.i7.i = getelementptr inbounds %struct.node_header, ptr %call11.i, i32 0, i32 4
  %74 = ptrtoint ptr %max_entries.i.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %max_entries.i.i.i7.i, align 4
  %76 = call i32 @llvm.bswap.i32(i32 %75) #5
  %arrayidx.i.i.i8.i = getelementptr %struct.btree_node, ptr %call11.i, i32 0, i32 1, i32 %76
  %mul.i.i9.i = mul i32 %73, %45
  %add.ptr.i40.i.i = getelementptr i8, ptr %arrayidx.i.i.i8.i, i32 %mul.i.i9.i
  %mul.i44.i.i = mul i32 %73, %add.i.i
  %add.ptr.i45.i.i = getelementptr i8, ptr %arrayidx.i.i.i8.i, i32 %mul.i44.i.i
  %mul18.i.i = mul i32 %sub.i.i, %69
  %77 = call ptr @memmove(ptr %add.ptr.i40.i.i, ptr %add.ptr.i45.i.i, i32 %mul18.i.i)
  br label %delete_at.exit.i

delete_at.exit.i:                                 ; preds = %if.then12.i.i, %do.end10.i.i.delete_at.exit.i_crit_edge
  %sub20.i.i = add i32 %66, -1
  %78 = call i32 @llvm.bswap.i32(i32 %sub20.i.i) #5
  %79 = ptrtoint ptr %nr_entries.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %nr_entries.i, align 8
  %add.i = add nuw i64 %51, 1
  %80 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %add.i, ptr %arrayidx5.i, align 8
  br label %remove_one.exit

remove_one.exit:                                  ; preds = %delete_at.exit.i, %if.end17.i.remove_one.exit_crit_edge, %if.end9.i.remove_one.exit_crit_edge, %remove_nearest.exit.i.remove_one.exit_crit_edge, %if.end27.i.i.remove_one.exit_crit_edge, %for.end.i.remove_one.exit_crit_edge, %for.body.i.remove_one.exit_crit_edge
  %r.0.i = phi i32 [ %call15.i.i, %remove_nearest.exit.i.remove_one.exit_crit_edge ], [ %retval.0.i15.i, %delete_at.exit.i ], [ -61, %if.end9.i.remove_one.exit_crit_edge ], [ -61, %if.end17.i.remove_one.exit_crit_edge ], [ %call55.i.i, %for.end.i.remove_one.exit_crit_edge ], [ %call.i.i, %if.end27.i.i.remove_one.exit_crit_edge ], [ %call.i, %for.body.i.remove_one.exit_crit_edge ]
  %call33.i = call i64 @shadow_root(ptr noundef nonnull %spine.i) #5
  call void @exit_shadow_spine(ptr noundef nonnull %spine.i) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %le64_vt.i) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %spine.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #5
  %tobool.not = icmp eq i32 %r.0.i, 0
  br i1 %tobool.not, label %if.then, label %do.end.critedge

if.then:                                          ; preds = %remove_one.exit
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %nr_removed to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nr_removed, align 4
  %inc = add i32 %82, 1
  br label %do.body

do.end.critedge:                                  ; preds = %remove_one.exit
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %new_root to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %call33.i, ptr %new_root, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %r.0.i)
  %cmp = icmp eq i32 %r.0.i, -61
  %cond = select i1 %cmp, i32 0, i32 %r.0.i
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shadow_step(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shadow_has_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dm_block_location(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @shadow_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rebalance_children(ptr noundef %s, ptr nocapture noundef readonly %info, ptr noundef %vt, i64 noundef %key) unnamed_addr #0 align 64 {
entry:
  %left.i = alloca %struct.child, align 4
  %center.i = alloca %struct.child, align 4
  %right.i = alloca %struct.child, align 4
  %child = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @shadow_current(ptr noundef %s) #5
  %call1 = tail call ptr @dm_block_data(ptr noundef %call) #5
  %nr_entries = getelementptr inbounds %struct.node_header, ptr %call1, i32 0, i32 3
  %0 = ptrtoint ptr %nr_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %1)
  %cmp = icmp eq i32 %1, 16777216
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %child) #5
  %2 = ptrtoint ptr %child to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %child, align 4, !annotation !54
  %max_entries.i.i = getelementptr inbounds %struct.node_header, ptr %call1, i32 0, i32 4
  %3 = ptrtoint ptr %max_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_entries.i.i, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  %arrayidx.i.i = getelementptr %struct.btree_node, ptr %call1, i32 0, i32 1, i32 %5
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx.i.i, align 8
  %8 = tail call i64 @llvm.bswap.i64(i64 %7) #5
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 4
  %call3 = call i32 @dm_tm_read_lock(ptr noundef %10, i64 noundef %8, ptr noundef nonnull @btree_node_validator, ptr noundef nonnull %child) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %child, align 4
  %call5 = call ptr @dm_block_data(ptr noundef %12) #5
  %13 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info, align 4
  %call7 = call ptr @dm_tm_get_bm(ptr noundef %14) #5
  %call8 = call i32 @dm_bm_block_size(ptr noundef %call7) #5
  %15 = call ptr @memcpy(ptr %call1, ptr %call5, i32 %call8)
  %16 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %info, align 4
  %18 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %child, align 4
  %call10 = call i64 @dm_block_location(ptr noundef %19) #5
  call void @dm_tm_dec(ptr noundef %17, i64 noundef %call10) #5
  %20 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info, align 4
  %22 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %child, align 4
  call void @dm_tm_unlock(ptr noundef %21, ptr noundef %23) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %child) #5
  br label %cleanup35

if.end13:                                         ; preds = %entry
  %call14 = tail call i32 @lower_bound(ptr noundef %call1, i64 noundef %key) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.cleanup35_crit_edge, label %if.end17

if.end13.cleanup35_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup35

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp18.not = icmp eq i32 %call14, 0
  br i1 %cmp18.not, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %call25 = tail call fastcc i32 @rebalance2(ptr noundef %s, ptr noundef %info, ptr noundef %vt, i32 noundef 0)
  br label %cleanup35

if.else:                                          ; preds = %if.end17
  %24 = ptrtoint ptr %nr_entries to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_entries, align 8
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %sub = add i32 %26, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call14, i32 %sub)
  %cmp21 = icmp ult i32 %call14, %sub
  %sub31 = add nsw i32 %call14, -1
  br i1 %cmp21, label %if.else30, label %if.then27

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = tail call fastcc i32 @rebalance2(ptr noundef %s, ptr noundef %info, ptr noundef %vt, i32 noundef %sub31)
  br label %cleanup35

if.else30:                                        ; preds = %if.else
  %call.i = tail call ptr @shadow_current(ptr noundef %s) #5
  %call1.i = tail call ptr @dm_block_data(ptr noundef %call.i) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %left.i) #5
  %27 = ptrtoint ptr %left.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %left.i, align 4, !annotation !54
  %28 = getelementptr inbounds %struct.child, ptr %left.i, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 -1 to ptr), ptr %28, align 4, !annotation !54
  %30 = getelementptr inbounds %struct.child, ptr %left.i, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 -1 to ptr), ptr %30, align 4, !annotation !54
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %center.i) #5
  %32 = ptrtoint ptr %center.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %center.i, align 4, !annotation !54
  %33 = getelementptr inbounds %struct.child, ptr %center.i, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 -1 to ptr), ptr %33, align 4, !annotation !54
  %35 = getelementptr inbounds %struct.child, ptr %center.i, i32 0, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 -1 to ptr), ptr %35, align 4, !annotation !54
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %right.i) #5
  %37 = ptrtoint ptr %right.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %right.i, align 4, !annotation !54
  %38 = getelementptr inbounds %struct.child, ptr %right.i, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 -1 to ptr), ptr %38, align 4, !annotation !54
  %40 = getelementptr inbounds %struct.child, ptr %right.i, i32 0, i32 2
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 -1 to ptr), ptr %40, align 4, !annotation !54
  %call2.i = call fastcc i32 @init_child(ptr noundef %info, ptr noundef %vt, ptr noundef %call1.i, i32 noundef %sub31, ptr noundef nonnull %left.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else30.rebalance3.exit_crit_edge

if.else30.rebalance3.exit_crit_edge:              ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #7
  br label %rebalance3.exit

if.end.i:                                         ; preds = %if.else30
  %call3.i = call fastcc i32 @init_child(ptr noundef %info, ptr noundef %vt, ptr noundef %call1.i, i32 noundef %call14, ptr noundef nonnull %center.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.cleanup.sink.split.i_crit_edge

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end6.i:                                        ; preds = %if.end.i
  %add7.i = add nuw i32 %call14, 1
  %call8.i = call fastcc i32 @init_child(ptr noundef %info, ptr noundef %vt, ptr noundef %call1.i, i32 noundef %add7.i, ptr noundef nonnull %right.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end6.i.cleanup.sink.split.sink.split.i_crit_edge

if.end6.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.sink.split.i

if.end11.i:                                       ; preds = %if.end6.i
  %42 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %30, align 4
  %44 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %35, align 4
  %46 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %40, align 4
  %nr_entries.i.i = getelementptr inbounds %struct.node_header, ptr %43, i32 0, i32 3
  %48 = ptrtoint ptr %nr_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nr_entries.i.i, align 8
  %50 = call i32 @llvm.bswap.i32(i32 %49) #5
  %nr_entries4.i.i = getelementptr inbounds %struct.node_header, ptr %45, i32 0, i32 3
  %51 = ptrtoint ptr %nr_entries4.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nr_entries4.i.i, align 8
  %53 = call i32 @llvm.bswap.i32(i32 %52) #5
  %nr_entries6.i.i = getelementptr inbounds %struct.node_header, ptr %47, i32 0, i32 3
  %54 = ptrtoint ptr %nr_entries6.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr_entries6.i.i, align 8
  %56 = call i32 @llvm.bswap.i32(i32 %55) #5
  %max_entries.i.i.i = getelementptr inbounds %struct.node_header, ptr %43, i32 0, i32 4
  %57 = ptrtoint ptr %max_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_entries.i.i.i, align 4
  %59 = call i32 @llvm.bswap.i32(i32 %58) #5
  %div.i.i.i = udiv i32 %59, 3
  %mul.i.i = shl i32 %div.i.i.i, 2
  %add.i.i = or i32 %mul.i.i, 1
  %max_entries9.i.i = getelementptr inbounds %struct.node_header, ptr %45, i32 0, i32 4
  %60 = ptrtoint ptr %max_entries9.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max_entries9.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %61)
  %cmp.not.i.i = icmp eq i32 %58, %61
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end11.i.do.end.i.i_crit_edge

if.end11.i.do.end.i.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i

lor.lhs.false.i.i:                                ; preds = %if.end11.i
  %max_entries13.i.i = getelementptr inbounds %struct.node_header, ptr %47, i32 0, i32 4
  %62 = ptrtoint ptr %max_entries13.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max_entries13.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %63)
  %cmp14.not.i.i = icmp eq i32 %58, %63
  br i1 %cmp14.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.do.end.i.i_crit_edge

lor.lhs.false.i.i.do.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %lor.lhs.false.i.i.do.end.i.i_crit_edge, %if.end11.i.do.end.i.i_crit_edge
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #8
  br label %__rebalance3.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %add16.i.i = add i32 %53, %50
  %add17.i.i = add i32 %add16.i.i, %56
  call void @__sanitizer_cov_trace_cmp4(i32 %add17.i.i, i32 %add.i.i)
  %cmp18.i.i = icmp ult i32 %add17.i.i, %add.i.i
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end21.i.i

if.then19.i.i:                                    ; preds = %if.end.i.i
  %sub.i.i.i = sub i32 %59, %50
  %64 = call i32 @llvm.umin.i32(i32 %sub.i.i.i, i32 %53) #5
  %add.i.i.i = add i32 %64, %50
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %59)
  %cmp2.i.i.i = icmp ugt i32 %add.i.i.i, %59
  br i1 %cmp2.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #8
  br label %__rebalance3.exit.i

if.end.i.i.i:                                     ; preds = %if.then19.i.i
  %sub4.i.i.i = sub i32 0, %64
  %call5.i.i.i = call fastcc i32 @node_copy(ptr noundef %43, ptr noundef %45, i32 noundef %sub4.i.i.i) #5
  %65 = call i32 @llvm.bswap.i32(i32 %add.i.i.i) #5
  %66 = ptrtoint ptr %nr_entries.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %nr_entries.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %53)
  %cmp8.not.not.i.i.i = icmp ult i32 %sub.i.i.i, %53
  br i1 %cmp8.not.not.i.i.i, label %if.then9.i.i.i, label %if.end.i.i.i.if.end24.i.i.i_crit_edge

if.end.i.i.i.if.end24.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i.i.i

if.then9.i.i.i:                                   ; preds = %if.end.i.i.i
  %sub10.i.i.i = sub i32 %53, %64
  %add11.i.i.i = add i32 %sub10.i.i.i, %56
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i.i.i, i32 %59)
  %cmp12.i.i.i = icmp ugt i32 %add11.i.i.i, %59
  br i1 %cmp12.i.i.i, label %do.end16.i.i.i, label %if.end19.i.i.i

do.end16.i.i.i:                                   ; preds = %if.then9.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call18.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #8
  br label %__rebalance3.exit.i

if.end19.i.i.i:                                   ; preds = %if.then9.i.i.i
  %67 = ptrtoint ptr %nr_entries6.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nr_entries6.i.i, align 8
  %69 = call i32 @llvm.bswap.i32(i32 %68) #5
  %value_size3.i.i.i.i = getelementptr inbounds %struct.node_header, ptr %47, i32 0, i32 5
  %70 = ptrtoint ptr %value_size3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %value_size3.i.i.i.i, align 8
  %72 = call i32 @llvm.bswap.i32(i32 %71) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %sub10.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.body39.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end19.i.i.i
  %sub.i.i.i.i = sub i32 0, %sub10.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %sub.i.i.i.i)
  %cmp4.i.i.i.i = icmp ult i32 %69, %sub.i.i.i.i
  br i1 %cmp4.i.i.i.i, label %do.body7.i.i.i.i, label %do.body13.i.i.i.i, !prof !50

do.body7.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/persistent-data/dm-btree-remove.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 66, 0\0A.popsection", ""() #5, !srcloc !55
  unreachable

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i.i
  %keys.i.i.i.i.i = getelementptr inbounds %struct.btree_node, ptr %47, i32 0, i32 1
  %add.ptr.i.i.i.i.i = getelementptr i64, ptr %keys.i.i.i.i.i, i32 %sub.i.i.i.i
  %73 = ptrtoint ptr %max_entries13.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %max_entries13.i.i, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %74) #5
  %arrayidx.i.i.i.i.i.i = getelementptr %struct.btree_node, ptr %47, i32 0, i32 1, i32 %75
  %mul.i.i.i.i.i = mul i32 %72, %sub.i.i.i.i
  %add.ptr.i94.i.i.i.i = getelementptr i8, ptr %arrayidx.i.i.i.i.i.i, i32 %mul.i.i.i.i.i
  %cmp15.not.i.i.i.i = icmp ult ptr %add.ptr.i.i.i.i.i, %add.ptr.i94.i.i.i.i
  br i1 %cmp15.not.i.i.i.i, label %do.end31.i.i.i.i, label %do.body23.i.i.i.i, !prof !51

do.body23.i.i.i.i:                                ; preds = %do.body13.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/persistent-data/dm-btree-remove.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 67, 0\0A.popsection", ""() #5, !srcloc !56
  unreachable

do.end31.i.i.i.i:                                 ; preds = %do.body13.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub34.i.i.i.i = add i32 %69, %sub10.i.i.i
  %mul.i.i.i.i = shl i32 %sub34.i.i.i.i, 3
  %76 = call ptr @memmove(ptr %keys.i.i.i.i.i, ptr %add.ptr.i.i.i.i.i, i32 %mul.i.i.i.i)
  %mul38.i.i.i.i = mul i32 %sub34.i.i.i.i, %72
  %77 = call ptr @memmove(ptr %arrayidx.i.i.i.i.i.i, ptr %add.ptr.i94.i.i.i.i, i32 %mul38.i.i.i.i)
  br label %node_shift.exit.i.i.i

do.body39.i.i.i.i:                                ; preds = %if.end19.i.i.i
  %add.i.i.i.i = add i32 %69, %sub10.i.i.i
  %78 = ptrtoint ptr %max_entries13.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %max_entries13.i.i, align 4
  %80 = call i32 @llvm.bswap.i32(i32 %79) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %80)
  %cmp41.i.i.i.i = icmp ugt i32 %add.i.i.i.i, %80
  br i1 %cmp41.i.i.i.i, label %do.body49.i.i.i.i, label %do.end57.i.i.i.i, !prof !50

do.body49.i.i.i.i:                                ; preds = %do.body39.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/persistent-data/dm-btree-remove.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 75, 0\0A.popsection", ""() #5, !srcloc !57
  unreachable

do.end57.i.i.i.i:                                 ; preds = %do.body39.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %keys.i106.i.i.i.i = getelementptr inbounds %struct.btree_node, ptr %47, i32 0, i32 1
  %add.ptr.i107.i.i.i.i = getelementptr i64, ptr %keys.i106.i.i.i.i, i32 %sub10.i.i.i
  %mul60.i.i.i.i = shl i32 %69, 3
  %81 = call ptr @memmove(ptr %add.ptr.i107.i.i.i.i, ptr %keys.i106.i.i.i.i, i32 %mul60.i.i.i.i)
  %82 = ptrtoint ptr %value_size3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %value_size3.i.i.i.i, align 8
  %84 = call i32 @llvm.bswap.i32(i32 %83) #5
  %85 = ptrtoint ptr %max_entries13.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %max_entries13.i.i, align 4
  %87 = call i32 @llvm.bswap.i32(i32 %86) #5
  %arrayidx.i.i111.i.i.i.i = getelementptr %struct.btree_node, ptr %47, i32 0, i32 1, i32 %87
  %mul.i112.i.i.i.i = mul i32 %84, %sub10.i.i.i
  %add.ptr.i113.i.i.i.i = getelementptr i8, ptr %arrayidx.i.i111.i.i.i.i, i32 %mul.i112.i.i.i.i
  %mul63.i.i.i.i = mul i32 %72, %69
  %88 = call ptr @memmove(ptr %add.ptr.i113.i.i.i.i, ptr %arrayidx.i.i111.i.i.i.i, i32 %mul63.i.i.i.i)
  br label %node_shift.exit.i.i.i

node_shift.exit.i.i.i:                            ; preds = %do.end57.i.i.i.i, %do.end31.i.i.i.i
  %call20.i.i.i = call fastcc i32 @node_copy(ptr noundef %45, ptr noundef %47, i32 noundef %sub10.i.i.i) #5
  %89 = call i32 @llvm.bswap.i32(i32 %add11.i.i.i) #5
  %90 = ptrtoint ptr %nr_entries6.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %nr_entries6.i.i, align 8
  br label %if.end24.i.i.i

if.end24.i.i.i:                                   ; preds = %node_shift.exit.i.i.i, %if.end.i.i.i.if.end24.i.i.i_crit_edge
  %keys.i.i.i = getelementptr inbounds %struct.btree_node, ptr %47, i32 0, i32 1
  %91 = ptrtoint ptr %keys.i.i.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %keys.i.i.i, align 8
  %93 = ptrtoint ptr %right.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %right.i, align 4
  %keys.i.i.i.i = getelementptr inbounds %struct.btree_node, ptr %call1.i, i32 0, i32 1
  %add.ptr.i.i.i.i = getelementptr i64, ptr %keys.i.i.i.i, i32 %94
  %95 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %92, ptr %add.ptr.i.i.i.i, align 8
  %96 = ptrtoint ptr %center.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %center.i, align 4
  %nr_entries1.i60.i.i.i = getelementptr inbounds %struct.node_header, ptr %call1.i, i32 0, i32 3
  %98 = ptrtoint ptr %nr_entries1.i60.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %nr_entries1.i60.i.i.i, align 8
  %100 = call i32 @llvm.bswap.i32(i32 %99) #5
  %add.i61.i.i.i = add i32 %97, 1
  %sub.i62.i.i.i = sub i32 %100, %add.i61.i.i.i
  %value_size3.i63.i.i.i = getelementptr inbounds %struct.node_header, ptr %call1.i, i32 0, i32 5
  %101 = ptrtoint ptr %value_size3.i63.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %value_size3.i63.i.i.i, align 8
  %103 = call i32 @llvm.bswap.i32(i32 %102) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %97)
  %cmp.not.i.i.i.i = icmp ugt i32 %100, %97
  br i1 %cmp.not.i.i.i.i, label %do.end10.i.i.i.i, label %do.body5.i.i.i.i, !prof !51

do.body5.i.i.i.i:                                 ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/persistent-data/dm-btree-remove.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #5, !srcloc !53
  unreachable

do.end10.i.i.i.i:                                 ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %add.i61.i.i.i)
  %tobool11.not.i.i.i.i = icmp eq i32 %100, %add.i61.i.i.i
  br i1 %tobool11.not.i.i.i.i, label %do.end10.i.i.i.i.delete_at.exit.i.i.i_crit_edge, label %if.then12.i.i.i.i

do.end10.i.i.i.i.delete_at.exit.i.i.i_crit_edge:  ; preds = %do.end10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %delete_at.exit.i.i.i

if.then12.i.i.i.i:                                ; preds = %do.end10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i65.i.i.i = getelementptr i64, ptr %keys.i.i.i.i, i32 %97
  %add.ptr.i39.i.i.i.i = getelementptr i64, ptr %keys.i.i.i.i, i32 %add.i61.i.i.i
  %mul.i66.i.i.i = shl i32 %sub.i62.i.i.i, 3
  %104 = call ptr @memmove(ptr %add.ptr.i.i65.i.i.i, ptr %add.ptr.i39.i.i.i.i, i32 %mul.i66.i.i.i)
  %105 = ptrtoint ptr %value_size3.i63.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %value_size3.i63.i.i.i, align 8
  %107 = call i32 @llvm.bswap.i32(i32 %106) #5
  %max_entries.i.i.i67.i.i.i = getelementptr inbounds %struct.node_header, ptr %call1.i, i32 0, i32 4
  %108 = ptrtoint ptr %max_entries.i.i.i67.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %max_entries.i.i.i67.i.i.i, align 4
  %110 = call i32 @llvm.bswap.i32(i32 %109) #5
  %arrayidx.i.i.i68.i.i.i = getelementptr %struct.btree_node, ptr %call1.i, i32 0, i32 1, i32 %110
  %mul.i.i69.i.i.i = mul i32 %107, %97
  %add.ptr.i40.i.i.i.i = getelementptr i8, ptr %arrayidx.i.i.i68.i.i.i, i32 %mul.i.i69.i.i.i
  %mul.i44.i.i.i.i = mul i32 %107, %add.i61.i.i.i
  %add.ptr.i45.i.i.i.i = getelementptr i8, ptr %arrayidx.i.i.i68.i.i.i, i32 %mul.i44.i.i.i.i
  %mul18.i.i.i.i = mul i32 %sub.i62.i.i.i, %103
  %111 = call ptr @memmove(ptr %add.ptr.i40.i.i.i.i, ptr %add.ptr.i45.i.i.i.i, i32 %mul18.i.i.i.i)
  br label %delete_at.exit.i.i.i

delete_at.exit.i.i.i:                             ; preds = %if.then12.i.i.i.i, %do.end10.i.i.i.i.delete_at.exit.i.i.i_crit_edge
  %sub20.i.i.i.i = add i32 %100, -1
  %112 = call i32 @llvm.bswap.i32(i32 %sub20.i.i.i.i) #5
  %113 = ptrtoint ptr %nr_entries1.i60.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %nr_entries1.i60.i.i.i, align 8
  %114 = ptrtoint ptr %right.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %right.i, align 4
  %dec.i.i.i = add i32 %115, -1
  store i32 %dec.i.i.i, ptr %right.i, align 4
  %116 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %info, align 4
  %118 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %33, align 4
  %call28.i.i.i = call i64 @dm_block_location(ptr noundef %119) #5
  call void @dm_tm_dec(ptr noundef %117, i64 noundef %call28.i.i.i) #5
  %call29.i.i.i = call fastcc i32 @__rebalance2(ptr noundef %info, ptr noundef %call1.i, ptr noundef nonnull %left.i, ptr noundef nonnull %right.i) #5
  br label %__rebalance3.exit.i

if.end21.i.i:                                     ; preds = %if.end.i.i
  %div.i56.i.i = udiv i32 %add17.i.i, 3
  %mul.i.i.i = mul nuw i32 %div.i56.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.i, i32 %add17.i.i)
  %cmp.i.i.i = icmp ne i32 %mul.i.i.i, %add17.i.i
  %conv.i.i.i = zext i1 %cmp.i.i.i to i32
  %add3.i.i.i = add nuw nsw i32 %div.i56.i.i, %conv.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i.i, i32 %59)
  %cmp4.i.i.i = icmp ugt i32 %add3.i.i.i, %59
  br i1 %cmp4.i.i.i, label %do.body7.i.i.i, label %do.body13.i.i.i, !prof !50

do.body7.i.i.i:                                   ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/persistent-data/dm-btree-remove.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 359, 0\0A.popsection", ""() #5, !srcloc !58
  unreachable

do.body13.i.i.i:                                  ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i56.i.i, i32 %59)
  %cmp14.i.i.i = icmp ugt i32 %div.i56.i.i, %59
  br i1 %cmp14.i.i.i, label %do.body23.i.i.i, label %do.end31.i.i.i, !prof !50

do.body23.i.i.i:                                  ; preds = %do.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/persistent-data/dm-btree-remove.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 360, 0\0A.popsection", ""() #5, !srcloc !59
  unreachable

do.end31.i.i.i:                                   ; preds = %do.body13.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %56)
  %cmp32.i.i.i = icmp ult i32 %50, %56
  br i1 %cmp32.i.i.i, label %if.then34.i.i.i, label %if.else61.i.i.i

if.then34.i.i.i:                                  ; preds = %do.end31.i.i.i
  %sub.i57.i.i = sub i32 %50, %add3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i57.i.i)
  %cmp35.i.i.i = icmp slt i32 %sub.i57.i.i, 0
  %sub37.i.i.i = sub i32 0, %sub.i57.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %sub37.i.i.i)
  %cmp38.i.i.i = icmp ult i32 %53, %sub37.i.i.i
  %or.cond.i.i.i = and i1 %cmp35.i.i.i, %cmp38.i.i.i
  br i1 %or.cond.i.i.i, label %if.then40.i.i.i, label %if.else.i.i.i

if.then40.i.i.i:                                  ; preds = %if.then34.i.i.i
  %sub41.i.i.i = sub i32 0, %53
  %call.i58.i.i = call fastcc i32 @shift(ptr noundef %43, ptr noundef %45, i32 noundef %sub41.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.i.i)
  %tobool42.not.i.i.i = icmp eq i32 %call.i58.i.i, 0
  br i1 %tobool42.not.i.i.i, label %if.end44.i.i.i, label %if.then40.i.i.i.__rebalance3.exit.i_crit_edge

if.then40.i.i.i.__rebalance3.exit.i_crit_edge:    ; preds = %if.then40.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rebalance3.exit.i

if.end44.i.i.i:                                   ; preds = %if.then40.i.i.i
  %add45.i.i.i = add i32 %sub.i57.i.i, %53
  %call46.i.i.i = call fastcc i32 @shift(ptr noundef %43, ptr noundef %47, i32 noundef %add45.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i.i)
  %tobool47.not.i.i.i = icmp eq i32 %call46.i.i.i, 0
  br i1 %tobool47.not.i.i.i, label %if.end49.i.i.i, label %if.end44.i.i.i.__rebalance3.exit.i_crit_edge

if.end44.i.i.i.__rebalance3.exit.i_crit_edge:     ; preds = %if.end44.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rebalance3.exit.i

if.end49.i.i.i:                                   ; preds = %if.end44.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add50.i.i.i = add i32 %add45.i.i.i, %56
  br label %if.end55.i.i.i

if.else.i.i.i:                                    ; preds = %if.then34.i.i.i
  %call51.i.i.i = call fastcc i32 @shift(ptr noundef %43, ptr noundef %45, i32 noundef %sub.i57.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i.i.i)
  %tobool52.not.i.i.i = icmp eq i32 %call51.i.i.i, 0
  br i1 %tobool52.not.i.i.i, label %if.else.i.i.i.if.end55.i.i.i_crit_edge, label %if.else.i.i.i.__rebalance3.exit.i_crit_edge

if.else.i.i.i.__rebalance3.exit.i_crit_edge:      ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rebalance3.exit.i

if.else.i.i.i.if.end55.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i.i.i

if.end55.i.i.i:                                   ; preds = %if.else.i.i.i.if.end55.i.i.i_crit_edge, %if.end49.i.i.i
  %nr_right.addr.0.i.i.i = phi i32 [ %add50.i.i.i, %if.end49.i.i.i ], [ %56, %if.else.i.i.i.if.end55.i.i.i_crit_edge ]
  %sub56.i.i.i = sub i32 %div.i56.i.i, %nr_right.addr.0.i.i.i
  %call57.i.i.i = call fastcc i32 @shift(ptr noundef %45, ptr noundef %47, i32 noundef %sub56.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i.i.i)
  %tobool58.not.i.i.i = icmp eq i32 %call57.i.i.i, 0
  br i1 %tobool58.not.i.i.i, label %if.end55.i.i.i.if.end90.i.i.i_crit_edge, label %if.end55.i.i.i.__rebalance3.exit.i_crit_edge

if.end55.i.i.i.__rebalance3.exit.i_crit_edge:     ; preds = %if.end55.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rebalance3.exit.i

if.end55.i.i.i.if.end90.i.i.i_crit_edge:          ; preds = %if.end55.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90.i.i.i

if.else61.i.i.i:                                  ; preds = %do.end31.i.i.i
  %sub62.i.i.i = sub i32 %div.i56.i.i, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub62.i.i.i)
  %cmp63.i.i.i = icmp sgt i32 %sub62.i.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub62.i.i.i, i32 %53)
  %cmp66.i.i.i = icmp ugt i32 %sub62.i.i.i, %53
  %or.cond1.i.i.i = and i1 %cmp63.i.i.i, %cmp66.i.i.i
  br i1 %or.cond1.i.i.i, label %if.then68.i.i.i, label %if.else79.i.i.i

if.then68.i.i.i:                                  ; preds = %if.else61.i.i.i
  %call69.i.i.i = call fastcc i32 @shift(ptr noundef %45, ptr noundef %47, i32 noundef %53) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i.i.i)
  %tobool70.not.i.i.i = icmp eq i32 %call69.i.i.i, 0
  br i1 %tobool70.not.i.i.i, label %if.end72.i.i.i, label %if.then68.i.i.i.__rebalance3.exit.i_crit_edge

if.then68.i.i.i.__rebalance3.exit.i_crit_edge:    ; preds = %if.then68.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rebalance3.exit.i

if.end72.i.i.i:                                   ; preds = %if.then68.i.i.i
  %sub73.i.i.i = sub i32 %sub62.i.i.i, %53
  %call74.i.i.i = call fastcc i32 @shift(ptr noundef %43, ptr noundef %47, i32 noundef %sub73.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i.i.i)
  %tobool75.not.i.i.i = icmp eq i32 %call74.i.i.i, 0
  br i1 %tobool75.not.i.i.i, label %if.end77.i.i.i, label %if.end72.i.i.i.__rebalance3.exit.i_crit_edge

if.end72.i.i.i.__rebalance3.exit.i_crit_edge:     ; preds = %if.end72.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rebalance3.exit.i

if.end77.i.i.i:                                   ; preds = %if.end72.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub78.i.i.i = sub i32 %50, %sub73.i.i.i
  br label %if.end84.i.i.i

if.else79.i.i.i:                                  ; preds = %if.else61.i.i.i
  %call80.i.i.i = call fastcc i32 @shift(ptr noundef %45, ptr noundef %47, i32 noundef %sub62.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i.i.i)
  %tobool81.not.i.i.i = icmp eq i32 %call80.i.i.i, 0
  br i1 %tobool81.not.i.i.i, label %if.else79.i.i.i.if.end84.i.i.i_crit_edge, label %if.else79.i.i.i.__rebalance3.exit.i_crit_edge

if.else79.i.i.i.__rebalance3.exit.i_crit_edge:    ; preds = %if.else79.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rebalance3.exit.i

if.else79.i.i.i.if.end84.i.i.i_crit_edge:         ; preds = %if.else79.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84.i.i.i

if.end84.i.i.i:                                   ; preds = %if.else79.i.i.i.if.end84.i.i.i_crit_edge, %if.end77.i.i.i
  %nr_left.addr.0.i.i.i = phi i32 [ %sub78.i.i.i, %if.end77.i.i.i ], [ %50, %if.else79.i.i.i.if.end84.i.i.i_crit_edge ]
  %sub85.i.i.i = sub i32 %nr_left.addr.0.i.i.i, %add3.i.i.i
  %call86.i.i.i = call fastcc i32 @shift(ptr noundef %43, ptr noundef %45, i32 noundef %sub85.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i.i.i)
  %tobool87.not.i.i.i = icmp eq i32 %call86.i.i.i, 0
  br i1 %tobool87.not.i.i.i, label %if.end84.i.i.i.if.end90.i.i.i_crit_edge, label %if.end84.i.i.i.__rebalance3.exit.i_crit_edge

if.end84.i.i.i.__rebalance3.exit.i_crit_edge:     ; preds = %if.end84.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rebalance3.exit.i

if.end84.i.i.i.if.end90.i.i.i_crit_edge:          ; preds = %if.end84.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90.i.i.i

if.end90.i.i.i:                                   ; preds = %if.end84.i.i.i.if.end90.i.i.i_crit_edge, %if.end55.i.i.i.if.end90.i.i.i_crit_edge
  %keys.i59.i.i = getelementptr inbounds %struct.btree_node, ptr %45, i32 0, i32 1
  %120 = ptrtoint ptr %keys.i59.i.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %keys.i59.i.i, align 8
  %122 = ptrtoint ptr %center.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %center.i, align 4
  %keys.i.i60.i.i = getelementptr inbounds %struct.btree_node, ptr %call1.i, i32 0, i32 1
  %add.ptr.i.i61.i.i = getelementptr i64, ptr %keys.i.i60.i.i, i32 %123
  %124 = ptrtoint ptr %add.ptr.i.i61.i.i to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %121, ptr %add.ptr.i.i61.i.i, align 8
  %keys92.i.i.i = getelementptr inbounds %struct.btree_node, ptr %47, i32 0, i32 1
  %125 = ptrtoint ptr %keys92.i.i.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %keys92.i.i.i, align 8
  %127 = ptrtoint ptr %right.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %right.i, align 4
  %add.ptr.i3.i.i.i = getelementptr i64, ptr %keys.i.i60.i.i, i32 %128
  %129 = ptrtoint ptr %add.ptr.i3.i.i.i to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %126, ptr %add.ptr.i3.i.i.i, align 8
  br label %__rebalance3.exit.i

__rebalance3.exit.i:                              ; preds = %if.end90.i.i.i, %if.end84.i.i.i.__rebalance3.exit.i_crit_edge, %if.else79.i.i.i.__rebalance3.exit.i_crit_edge, %if.end72.i.i.i.__rebalance3.exit.i_crit_edge, %if.then68.i.i.i.__rebalance3.exit.i_crit_edge, %if.end55.i.i.i.__rebalance3.exit.i_crit_edge, %if.else.i.i.i.__rebalance3.exit.i_crit_edge, %if.end44.i.i.i.__rebalance3.exit.i_crit_edge, %if.then40.i.i.i.__rebalance3.exit.i_crit_edge, %delete_at.exit.i.i.i, %do.end16.i.i.i, %do.end.i.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ -84, %do.end.i.i ], [ -22, %do.end.i.i.i ], [ -22, %do.end16.i.i.i ], [ %call29.i.i.i, %delete_at.exit.i.i.i ], [ 0, %if.end90.i.i.i ], [ %call.i58.i.i, %if.then40.i.i.i.__rebalance3.exit.i_crit_edge ], [ %call46.i.i.i, %if.end44.i.i.i.__rebalance3.exit.i_crit_edge ], [ %call51.i.i.i, %if.else.i.i.i.__rebalance3.exit.i_crit_edge ], [ %call57.i.i.i, %if.end55.i.i.i.__rebalance3.exit.i_crit_edge ], [ %call69.i.i.i, %if.then68.i.i.i.__rebalance3.exit.i_crit_edge ], [ %call74.i.i.i, %if.end72.i.i.i.__rebalance3.exit.i_crit_edge ], [ %call80.i.i.i, %if.else79.i.i.i.__rebalance3.exit.i_crit_edge ], [ %call86.i.i.i, %if.end84.i.i.i.__rebalance3.exit.i_crit_edge ]
  %130 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %info, align 4
  %132 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %28, align 4
  call void @dm_tm_unlock(ptr noundef %131, ptr noundef %133) #5
  br label %cleanup.sink.split.sink.split.i

cleanup.sink.split.sink.split.i:                  ; preds = %__rebalance3.exit.i, %if.end6.i.cleanup.sink.split.sink.split.i_crit_edge
  %.sink47.i = phi ptr [ %33, %__rebalance3.exit.i ], [ %28, %if.end6.i.cleanup.sink.split.sink.split.i_crit_edge ]
  %.sink45.ph.i = phi ptr [ %38, %__rebalance3.exit.i ], [ %33, %if.end6.i.cleanup.sink.split.sink.split.i_crit_edge ]
  %retval.0.ph.ph.i = phi i32 [ %retval.0.i.i, %__rebalance3.exit.i ], [ %call8.i, %if.end6.i.cleanup.sink.split.sink.split.i_crit_edge ]
  %134 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %info, align 4
  %136 = ptrtoint ptr %.sink47.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %.sink47.i, align 4
  call void @dm_tm_unlock(ptr noundef %135, ptr noundef %137) #5
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %cleanup.sink.split.sink.split.i, %if.end.i.cleanup.sink.split.i_crit_edge
  %.sink45.i = phi ptr [ %28, %if.end.i.cleanup.sink.split.i_crit_edge ], [ %.sink45.ph.i, %cleanup.sink.split.sink.split.i ]
  %retval.0.ph.i = phi i32 [ %call3.i, %if.end.i.cleanup.sink.split.i_crit_edge ], [ %retval.0.ph.ph.i, %cleanup.sink.split.sink.split.i ]
  %138 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %info, align 4
  %140 = ptrtoint ptr %.sink45.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %.sink45.i, align 4
  call void @dm_tm_unlock(ptr noundef %139, ptr noundef %141) #5
  br label %rebalance3.exit

rebalance3.exit:                                  ; preds = %cleanup.sink.split.i, %if.else30.rebalance3.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.else30.rebalance3.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %right.i) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %center.i) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %left.i) #5
  br label %cleanup35

cleanup35:                                        ; preds = %rebalance3.exit, %if.then27, %if.then24, %if.end13.cleanup35_crit_edge, %cleanup
  %retval.1 = phi i32 [ %call3, %cleanup ], [ -61, %if.end13.cleanup35_crit_edge ], [ %retval.0.i, %rebalance3.exit ], [ %call29, %if.then27 ], [ %call25, %if.then24 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lower_bound(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_tm_read_lock(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bm_block_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_tm_get_bm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_tm_dec(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_tm_unlock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rebalance2(ptr noundef %s, ptr nocapture noundef readonly %info, ptr noundef %vt, i32 noundef %left_index) unnamed_addr #0 align 64 {
entry:
  %left = alloca %struct.child, align 4
  %right = alloca %struct.child, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %left) #5
  %0 = ptrtoint ptr %left to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %left, align 4, !annotation !54
  %1 = getelementptr inbounds %struct.child, ptr %left, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !54
  %3 = getelementptr inbounds %struct.child, ptr %left, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !54
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %right) #5
  %5 = ptrtoint ptr %right to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %right, align 4, !annotation !54
  %6 = getelementptr inbounds %struct.child, ptr %right, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !54
  %8 = getelementptr inbounds %struct.child, ptr %right, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %8, align 4, !annotation !54
  %call = tail call ptr @shadow_current(ptr noundef %s) #5
  %call1 = tail call ptr @dm_block_data(ptr noundef %call) #5
  %call2 = call fastcc i32 @init_child(ptr noundef %info, ptr noundef %vt, ptr noundef %call1, i32 noundef %left_index, ptr noundef nonnull %left)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %left_index, 1
  %call3 = call fastcc i32 @init_child(ptr noundef %info, ptr noundef %vt, ptr noundef %call1, i32 noundef %add, ptr noundef nonnull %right)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = call fastcc i32 @__rebalance2(ptr noundef %info, ptr noundef %call1, ptr noundef nonnull %left, ptr noundef nonnull %right)
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  call void @dm_tm_unlock(ptr noundef %11, ptr noundef %13) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end6, %if.end.cleanup.sink.split_crit_edge
  %.sink27 = phi ptr [ %6, %if.end6 ], [ %1, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call7, %if.end6 ], [ %call3, %if.end.cleanup.sink.split_crit_edge ]
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info, align 4
  %16 = ptrtoint ptr %.sink27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %.sink27, align 4
  call void @dm_tm_unlock(ptr noundef %15, ptr noundef %17) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %right) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %left) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_child(ptr nocapture noundef readonly %info, ptr noundef %vt, ptr nocapture noundef %parent, i32 noundef %index, ptr noundef %result) unnamed_addr #0 align 64 {
entry:
  %inc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inc) #5
  %0 = ptrtoint ptr %inc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %inc, align 4, !annotation !54
  %1 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %index, ptr %result, align 4
  %max_entries.i.i = getelementptr inbounds %struct.node_header, ptr %parent, i32 0, i32 4
  %2 = ptrtoint ptr %max_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries.i.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #5
  %arrayidx.i.i = getelementptr %struct.btree_node, ptr %parent, i32 0, i32 1, i32 %4
  %arrayidx.i = getelementptr i64, ptr %arrayidx.i.i, i32 %index
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx.i, align 8
  %7 = tail call i64 @llvm.bswap.i64(i64 %6) #5
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info, align 4
  %block = getelementptr inbounds %struct.child, ptr %result, i32 0, i32 1
  %call2 = call i32 @dm_tm_shadow_block(ptr noundef %9, i64 noundef %7, ptr noundef nonnull @btree_node_validator, ptr noundef %block, ptr noundef nonnull %inc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %block, align 4
  %call4 = call ptr @dm_block_data(ptr noundef %11) #5
  %n = getelementptr inbounds %struct.child, ptr %result, i32 0, i32 2
  %12 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call4, ptr %n, align 4
  %13 = ptrtoint ptr %inc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %inc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info, align 4
  call void @inc_children(ptr noundef %16, ptr noundef %call4, ptr noundef %vt) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %17 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %block, align 4
  %call11 = call i64 @dm_block_location(ptr noundef %18) #5
  %19 = call i64 @llvm.bswap.i64(i64 %call11)
  %value_size1.i = getelementptr inbounds %struct.node_header, ptr %parent, i32 0, i32 5
  %20 = ptrtoint ptr %value_size1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %value_size1.i, align 8
  %22 = call i32 @llvm.bswap.i32(i32 %21) #5
  %23 = ptrtoint ptr %max_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_entries.i.i, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24) #5
  %arrayidx.i.i26 = getelementptr %struct.btree_node, ptr %parent, i32 0, i32 1, i32 %25
  %mul.i = mul i32 %22, %index
  %add.ptr.i = getelementptr i8, ptr %arrayidx.i.i26, i32 %mul.i
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %19, ptr %add.ptr.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inc) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__rebalance2(ptr nocapture noundef readonly %info, ptr nocapture noundef %parent, ptr nocapture noundef readonly %l, ptr nocapture noundef readonly %r) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %n = getelementptr inbounds %struct.child, ptr %l, i32 0, i32 2
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %n, align 4
  %n1 = getelementptr inbounds %struct.child, ptr %r, i32 0, i32 2
  %2 = ptrtoint ptr %n1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %n1, align 4
  %nr_entries = getelementptr inbounds %struct.node_header, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %nr_entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_entries, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %nr_entries3 = getelementptr inbounds %struct.node_header, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %nr_entries3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_entries3, align 8
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %max_entries.i = getelementptr inbounds %struct.node_header, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_entries.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  %div.i = udiv i32 %12, 3
  %add = shl nuw i32 %div.i, 1
  %mul = add nuw i32 %add, 2
  %add4 = add i32 %9, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %mul)
  %cmp = icmp ult i32 %add4, %mul
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sub = sub i32 0, %9
  %call5 = tail call fastcc i32 @node_copy(ptr noundef %1, ptr noundef %3, i32 noundef %sub)
  %13 = tail call i32 @llvm.bswap.i32(i32 %add4)
  %14 = ptrtoint ptr %nr_entries to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %nr_entries, align 8
  %15 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %r, align 4
  %nr_entries1.i = getelementptr inbounds %struct.node_header, ptr %parent, i32 0, i32 3
  %17 = ptrtoint ptr %nr_entries1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_entries1.i, align 8
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  %add.i = add i32 %16, 1
  %sub.i = sub i32 %19, %add.i
  %value_size3.i = getelementptr inbounds %struct.node_header, ptr %parent, i32 0, i32 5
  %20 = ptrtoint ptr %value_size3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %value_size3.i, align 8
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %16)
  %cmp.not.i = icmp ugt i32 %19, %16
  br i1 %cmp.not.i, label %do.end10.i, label %do.body5.i, !prof !51

do.body5.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/persistent-data/dm-btree-remove.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #5, !srcloc !53
  unreachable

do.end10.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %add.i)
  %tobool11.not.i = icmp eq i32 %19, %add.i
  br i1 %tobool11.not.i, label %do.end10.i.delete_at.exit_crit_edge, label %if.then12.i

do.end10.i.delete_at.exit_crit_edge:              ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %delete_at.exit

if.then12.i:                                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %keys.i.i = getelementptr inbounds %struct.btree_node, ptr %parent, i32 0, i32 1
  %add.ptr.i.i = getelementptr i64, ptr %keys.i.i, i32 %16
  %add.ptr.i39.i = getelementptr i64, ptr %keys.i.i, i32 %add.i
  %mul.i = shl i32 %sub.i, 3
  %23 = call ptr @memmove(ptr %add.ptr.i.i, ptr %add.ptr.i39.i, i32 %mul.i)
  %24 = ptrtoint ptr %value_size3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %value_size3.i, align 8
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  %max_entries.i.i.i = getelementptr inbounds %struct.node_header, ptr %parent, i32 0, i32 4
  %27 = ptrtoint ptr %max_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_entries.i.i.i, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  %arrayidx.i.i.i = getelementptr %struct.btree_node, ptr %parent, i32 0, i32 1, i32 %29
  %mul.i.i = mul i32 %26, %16
  %add.ptr.i40.i = getelementptr i8, ptr %arrayidx.i.i.i, i32 %mul.i.i
  %mul.i44.i = mul i32 %26, %add.i
  %add.ptr.i45.i = getelementptr i8, ptr %arrayidx.i.i.i, i32 %mul.i44.i
  %mul18.i = mul i32 %sub.i, %22
  %30 = call ptr @memmove(ptr %add.ptr.i40.i, ptr %add.ptr.i45.i, i32 %mul18.i)
  br label %delete_at.exit

delete_at.exit:                                   ; preds = %if.then12.i, %do.end10.i.delete_at.exit_crit_edge
  %sub20.i = add i32 %19, -1
  %31 = tail call i32 @llvm.bswap.i32(i32 %sub20.i) #5
  %32 = ptrtoint ptr %nr_entries1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %nr_entries1.i, align 8
  %33 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %info, align 4
  %block = getelementptr inbounds %struct.child, ptr %r, i32 0, i32 1
  %35 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %block, align 4
  %call9 = tail call i64 @dm_block_location(ptr noundef %36) #5
  tail call void @dm_tm_dec(ptr noundef %34, i64 noundef %call9) #5
  br label %cleanup17

if.else:                                          ; preds = %entry
  %div41 = lshr i32 %add4, 1
  %sub11 = sub i32 %6, %div41
  %call12 = tail call fastcc i32 @shift(ptr noundef %1, ptr noundef %3, i32 noundef %sub11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end, label %if.else.cleanup17_crit_edge

if.else.cleanup17_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup17

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %keys = getelementptr inbounds %struct.btree_node, ptr %3, i32 0, i32 1
  %37 = ptrtoint ptr %keys to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %keys, align 8
  %39 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %r, align 4
  %keys.i = getelementptr inbounds %struct.btree_node, ptr %parent, i32 0, i32 1
  %add.ptr.i = getelementptr i64, ptr %keys.i, i32 %40
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %38, ptr %add.ptr.i, align 8
  br label %cleanup17

cleanup17:                                        ; preds = %if.end, %if.else.cleanup17_crit_edge, %delete_at.exit
  %retval.1 = phi i32 [ 0, %if.end ], [ 0, %delete_at.exit ], [ %call12, %if.else.cleanup17_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_tm_shadow_block(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_children(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @node_copy(ptr nocapture noundef %left, ptr nocapture noundef %right, i32 noundef %shift) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_entries = getelementptr inbounds %struct.node_header, ptr %left, i32 0, i32 3
  %0 = ptrtoint ptr %nr_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_entries, align 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %value_size2 = getelementptr inbounds %struct.node_header, ptr %left, i32 0, i32 5
  %3 = ptrtoint ptr %value_size2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value_size2, align 8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %value_size4 = getelementptr inbounds %struct.node_header, ptr %right, i32 0, i32 5
  %6 = ptrtoint ptr %value_size4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value_size4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %7)
  %cmp.not = icmp eq i32 %4, %7
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shift)
  %cmp5 = icmp slt i32 %shift, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %add = sub i32 %2, %shift
  %max_entries = getelementptr inbounds %struct.node_header, ptr %left, i32 0, i32 4
  %8 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_entries, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %10)
  %cmp8 = icmp ugt i32 %add, %10
  br i1 %cmp8, label %do.end12, label %if.end15

do.end12:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end15:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %sub = sub i32 0, %shift
  %keys.i = getelementptr inbounds %struct.btree_node, ptr %left, i32 0, i32 1
  %add.ptr.i = getelementptr i64, ptr %keys.i, i32 %2
  %keys.i67 = getelementptr inbounds %struct.btree_node, ptr %right, i32 0, i32 1
  %mul = shl i32 %sub, 3
  %11 = call ptr @memcpy(ptr %add.ptr.i, ptr %keys.i67, i32 %mul)
  %12 = ptrtoint ptr %value_size2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value_size2, align 8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %15 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_entries, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  %arrayidx.i.i = getelementptr %struct.btree_node, ptr %left, i32 0, i32 1, i32 %17
  %mul.i = mul i32 %14, %2
  %add.ptr.i68 = getelementptr i8, ptr %arrayidx.i.i, i32 %mul.i
  %max_entries.i.i70 = getelementptr inbounds %struct.node_header, ptr %right, i32 0, i32 4
  %18 = ptrtoint ptr %max_entries.i.i70 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_entries.i.i70, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #5
  %arrayidx.i.i71 = getelementptr %struct.btree_node, ptr %right, i32 0, i32 1, i32 %20
  %mul20 = mul i32 %5, %sub
  %21 = call ptr @memcpy(ptr %add.ptr.i68, ptr %arrayidx.i.i71, i32 %mul20)
  br label %cleanup

if.else:                                          ; preds = %if.end
  %max_entries22 = getelementptr inbounds %struct.node_header, ptr %right, i32 0, i32 4
  %22 = ptrtoint ptr %max_entries22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_entries22, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %shift)
  %cmp23 = icmp ult i32 %24, %shift
  br i1 %cmp23, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end30:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %keys.i72 = getelementptr inbounds %struct.btree_node, ptr %right, i32 0, i32 1
  %sub32 = sub i32 %2, %shift
  %keys.i73 = getelementptr inbounds %struct.btree_node, ptr %left, i32 0, i32 1
  %add.ptr.i74 = getelementptr i64, ptr %keys.i73, i32 %sub32
  %mul34 = shl i32 %shift, 3
  %25 = call ptr @memcpy(ptr %keys.i72, ptr %add.ptr.i74, i32 %mul34)
  %arrayidx.i.i77 = getelementptr %struct.btree_node, ptr %right, i32 0, i32 1, i32 %24
  %26 = ptrtoint ptr %value_size2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value_size2, align 8
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #5
  %max_entries.i.i79 = getelementptr inbounds %struct.node_header, ptr %left, i32 0, i32 4
  %29 = ptrtoint ptr %max_entries.i.i79 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_entries.i.i79, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  %arrayidx.i.i80 = getelementptr %struct.btree_node, ptr %left, i32 0, i32 1, i32 %31
  %mul.i81 = mul i32 %28, %sub32
  %add.ptr.i82 = getelementptr i8, ptr %arrayidx.i.i80, i32 %mul.i81
  %mul38 = mul i32 %5, %shift
  %32 = call ptr @memcpy(ptr %arrayidx.i.i77, ptr %add.ptr.i82, i32 %mul38)
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end27, %if.end15, %do.end12, %do.end
  %retval.0 = phi i32 [ -84, %do.end ], [ -22, %do.end12 ], [ -22, %do.end27 ], [ 0, %if.end30 ], [ 0, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @shift(ptr nocapture noundef %left, ptr noundef %right, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_entries = getelementptr inbounds %struct.node_header, ptr %left, i32 0, i32 3
  %nr_entries2 = getelementptr inbounds %struct.node_header, ptr %right, i32 0, i32 3
  %0 = ptrtoint ptr %nr_entries2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_entries2, align 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %max_entries4 = getelementptr inbounds %struct.node_header, ptr %left, i32 0, i32 4
  %3 = ptrtoint ptr %max_entries4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_entries4, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %max_entries6 = getelementptr inbounds %struct.node_header, ptr %right, i32 0, i32 4
  %6 = ptrtoint ptr %max_entries6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_entries6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %7)
  %cmp.not = icmp eq i32 %4, %7
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %nr_entries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_entries, align 8
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %sub = sub i32 %10, %count
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %5)
  %cmp7 = icmp ugt i32 %sub, %5
  br i1 %cmp7, label %do.end11, label %if.end14

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %add = add i32 %2, %count
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp15 = icmp ugt i32 %add, %5
  br i1 %cmp15, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %if.end22.cleanup_crit_edge, label %if.end24

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp25 = icmp sgt i32 %count, 0
  br i1 %cmp25, label %node_shift.exit, label %if.else

node_shift.exit:                                  ; preds = %if.end24
  %value_size3.i = getelementptr inbounds %struct.node_header, ptr %right, i32 0, i32 5
  %11 = ptrtoint ptr %value_size3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value_size3.i, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  %keys.i106.i = getelementptr inbounds %struct.btree_node, ptr %right, i32 0, i32 1
  %add.ptr.i107.i = getelementptr i64, ptr %keys.i106.i, i32 %count
  %mul60.i = shl i32 %2, 3
  %14 = call ptr @memmove(ptr %add.ptr.i107.i, ptr %keys.i106.i, i32 %mul60.i)
  %15 = ptrtoint ptr %value_size3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value_size3.i, align 8
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  %18 = ptrtoint ptr %max_entries6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_entries6, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #5
  %arrayidx.i.i111.i = getelementptr %struct.btree_node, ptr %right, i32 0, i32 1, i32 %20
  %mul.i112.i = mul i32 %17, %count
  %add.ptr.i113.i = getelementptr i8, ptr %arrayidx.i.i111.i, i32 %mul.i112.i
  %mul63.i = mul i32 %13, %2
  %21 = call ptr @memmove(ptr %add.ptr.i113.i, ptr %arrayidx.i.i111.i, i32 %mul63.i)
  %call27 = tail call fastcc i32 @node_copy(ptr noundef %left, ptr noundef %right, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %node_shift.exit.if.end35_crit_edge, label %node_shift.exit.cleanup_crit_edge

node_shift.exit.cleanup_crit_edge:                ; preds = %node_shift.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

node_shift.exit.if.end35_crit_edge:               ; preds = %node_shift.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.else:                                          ; preds = %if.end24
  %call31 = tail call fastcc i32 @node_copy(ptr noundef %left, ptr noundef %right, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then.i77, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i77:                                      ; preds = %if.else
  %22 = ptrtoint ptr %nr_entries2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_entries2, align 8
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  %value_size3.i73 = getelementptr inbounds %struct.node_header, ptr %right, i32 0, i32 5
  %25 = ptrtoint ptr %value_size3.i73 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %value_size3.i73, align 8
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #5
  %sub.i75 = sub i32 0, %count
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %sub.i75)
  %cmp4.i76 = icmp ult i32 %24, %sub.i75
  br i1 %cmp4.i76, label %do.body7.i78, label %do.body13.i86, !prof !50

do.body7.i78:                                     ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/persistent-data/dm-btree-remove.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 66, 0\0A.popsection", ""() #5, !srcloc !55
  unreachable

do.body13.i86:                                    ; preds = %if.then.i77
  %keys.i.i79 = getelementptr inbounds %struct.btree_node, ptr %right, i32 0, i32 1
  %add.ptr.i.i80 = getelementptr i64, ptr %keys.i.i79, i32 %sub.i75
  %28 = ptrtoint ptr %max_entries6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_entries6, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #5
  %arrayidx.i.i.i82 = getelementptr %struct.btree_node, ptr %right, i32 0, i32 1, i32 %30
  %mul.i.i83 = mul i32 %27, %sub.i75
  %add.ptr.i94.i84 = getelementptr i8, ptr %arrayidx.i.i.i82, i32 %mul.i.i83
  %cmp15.not.i85 = icmp ult ptr %add.ptr.i.i80, %add.ptr.i94.i84
  br i1 %cmp15.not.i85, label %node_shift.exit105, label %do.body23.i87, !prof !51

do.body23.i87:                                    ; preds = %do.body13.i86
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/persistent-data/dm-btree-remove.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 67, 0\0A.popsection", ""() #5, !srcloc !56
  unreachable

node_shift.exit105:                               ; preds = %do.body13.i86
  call void @__sanitizer_cov_trace_pc() #7
  %sub34.i88 = add i32 %24, %count
  %mul.i89 = shl i32 %sub34.i88, 3
  %31 = call ptr @memmove(ptr %keys.i.i79, ptr %add.ptr.i.i80, i32 %mul.i89)
  %mul38.i90 = mul i32 %sub34.i88, %27
  %32 = call ptr @memmove(ptr %arrayidx.i.i.i82, ptr %add.ptr.i94.i84, i32 %mul38.i90)
  br label %if.end35

if.end35:                                         ; preds = %node_shift.exit105, %node_shift.exit.if.end35_crit_edge
  %33 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %34 = ptrtoint ptr %nr_entries to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %nr_entries, align 8
  %35 = tail call i32 @llvm.bswap.i32(i32 %add)
  %36 = ptrtoint ptr %nr_entries2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %nr_entries2, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.else.cleanup_crit_edge, %node_shift.exit.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.end19, %do.end11, %do.end
  %retval.0 = phi i32 [ -84, %do.end ], [ -22, %do.end11 ], [ -22, %do.end19 ], [ 0, %if.end35 ], [ 0, %if.end22.cleanup_crit_edge ], [ %call27, %node_shift.exit.cleanup_crit_edge ], [ %call31, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__ksymtab_dm_btree_remove, !1, !"__ksymtab_dm_btree_remove", i1 false, i1 false}
!1 = !{!"../drivers/md/persistent-data/dm-btree-remove.c", i32 629, i32 1}
!2 = !{ptr @__ksymtab_dm_btree_remove_leaves, !3, !"__ksymtab_dm_btree_remove_leaves", i1 false, i1 false}
!3 = !{!"../drivers/md/persistent-data/dm-btree-remove.c", i32 759, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/md/persistent-data/dm-btree-remove.c", i32 90, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @node_copy._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @node_copy._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/md/persistent-data/dm-btree-remove.c", i32 98, i32 4}
!12 = !{ptr @node_copy._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @node_copy._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @node_copy._entry.6, !15, !"_entry", i1 false, i1 false}
!15 = !{!"../drivers/md/persistent-data/dm-btree-remove.c", i32 110, i32 4}
!16 = !{ptr @node_copy._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/md/persistent-data/dm-btree-remove.c", i32 198, i32 3}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @shift._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @shift._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/md/persistent-data/dm-btree-remove.c", i32 203, i32 3}
!24 = !{ptr @shift._entry.10, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @shift._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @shift._entry.13, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../drivers/md/persistent-data/dm-btree-remove.c", i32 208, i32 3}
!28 = !{ptr @shift._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/md/persistent-data/dm-btree-remove.c", i32 429, i32 3}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @__rebalance3._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @__rebalance3._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/md/persistent-data/dm-btree-remove.c", i32 316, i32 3}
!36 = !{ptr @delete_center_node._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @delete_center_node._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @delete_center_node._entry.18, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../drivers/md/persistent-data/dm-btree-remove.c", i32 327, i32 4}
!40 = !{ptr @delete_center_node._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{i64 2154357816, i64 2154358325, i64 2154357853, i64 2154357909, i64 2154357943, i64 2154357967, i64 2154358008, i64 2154358029, i64 2154358057, i64 2154358091}
!53 = !{i64 2154334820, i64 2154335329, i64 2154334857, i64 2154334913, i64 2154334947, i64 2154334971, i64 2154335012, i64 2154335033, i64 2154335061, i64 2154335095}
!54 = !{!"auto-init"}
!55 = !{i64 2154318561, i64 2154319069, i64 2154318598, i64 2154318654, i64 2154318688, i64 2154318712, i64 2154318753, i64 2154318774, i64 2154318802, i64 2154318836}
!56 = !{i64 2154320287, i64 2154320795, i64 2154320324, i64 2154320380, i64 2154320414, i64 2154320438, i64 2154320479, i64 2154320500, i64 2154320528, i64 2154320562}
!57 = !{i64 2154326347, i64 2154326855, i64 2154326384, i64 2154326440, i64 2154326474, i64 2154326498, i64 2154326539, i64 2154326560, i64 2154326588, i64 2154326622}
!58 = !{i64 2154350429, i64 2154350938, i64 2154350466, i64 2154350522, i64 2154350556, i64 2154350580, i64 2154350621, i64 2154350642, i64 2154350670, i64 2154350704}
!59 = !{i64 2154352112, i64 2154352621, i64 2154352149, i64 2154352205, i64 2154352239, i64 2154352263, i64 2154352304, i64 2154352325, i64 2154352353, i64 2154352387}
