; ModuleID = '/llk/IR_all_yes/fs/hfsplus/bfind.c_pt.bc'
source_filename = "../fs/hfsplus/bfind.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hfs_find_data = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.hfs_btree = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, %struct.spinlock, [256 x ptr], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.hfsplus_ext_key = type { i16, i8, i8, i32, i32 }
%struct.hfsplus_cat_key = type <{ i16, i32, %struct.hfsplus_unistr }>
%struct.hfsplus_unistr = type { i16, [255 x i16] }
%struct.hfsplus_attr_key = type { i16, i16, i32, i32, %struct.hfsplus_attr_unistr }
%struct.hfsplus_attr_unistr = type { i16, [127 x i16] }
%struct.hfs_bnode = type { ptr, i32, i32, i32, i32, i16, i8, i8, ptr, i32, %struct.wait_queue_head, %struct.atomic_t, i32, [0 x ptr] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }

@hfsplus_brec_find._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013hfsplus: inconsistency in B*Tree (%d,%d,%d,%u,%u)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hfsplus_brec_find\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/hfsplus/bfind.c\00", [45 x i8] zeroinitializer }, align 32
@hfsplus_brec_find._entry_ptr = internal global ptr @hfsplus_brec_find._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 8]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 8]
@___asan_gen_.4 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [22 x i8] c"../fs/hfsplus/bfind.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 210, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @hfsplus_brec_find._entry, ptr @hfsplus_brec_find._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_brec_find._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_find_init(ptr noundef %tree, ptr nocapture noundef writeonly %fd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tree1 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 2
  %0 = ptrtoint ptr %tree1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %tree, ptr %tree1, align 4
  %bnode = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %1 = ptrtoint ptr %bnode to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %bnode, align 4
  %max_key_len = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 13
  %2 = ptrtoint ptr %max_key_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_key_len, align 4
  %mul = shl i32 %3, 1
  %add = add i32 %mul, 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #8
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %fd to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i, ptr %fd, align 4
  %5 = ptrtoint ptr %max_key_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_key_len, align 4
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %6
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 2
  %key = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 1
  %7 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr3, ptr %key, align 4
  %cnid = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 3
  %8 = ptrtoint ptr %cnid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cnid, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.body8 [
    i32 4, label %if.end.cleanup.sink.split_crit_edge
    i32 3, label %sw.bb4
    i32 8, label %sw.bb6
  ]

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/hfsplus/bfind.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 39, 0\0A.popsection", ""() #5, !srcloc !15
  unreachable

cleanup.sink.split:                               ; preds = %sw.bb6, %sw.bb4, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 1, %sw.bb4 ], [ 2, %sw.bb6 ], [ 0, %if.end.cleanup.sink.split_crit_edge ]
  %tree_lock = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %tree_lock, i32 noundef %.sink) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfsplus_find_exit(ptr nocapture noundef %fd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bnode = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %0 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bnode, align 4
  tail call void @hfsplus_bnode_put(ptr noundef %1) #5
  %2 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fd, align 4
  tail call void @kfree(ptr noundef %3) #5
  %tree = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 2
  %4 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tree, align 4
  %tree_lock = getelementptr inbounds %struct.hfs_btree, ptr %5, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %tree_lock) #5
  %6 = ptrtoint ptr %tree to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tree, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_bnode_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfs_find_1st_rec_by_cnid(ptr nocapture noundef readonly %bnode, ptr nocapture noundef readonly %fd, ptr nocapture noundef %begin, ptr nocapture noundef writeonly %end, ptr nocapture noundef readonly %cur_rec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bnode, align 4
  %cnid = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cnid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cnid, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %3, label %if.else19 [
    i32 3, label %if.then
    i32 4, label %if.then6
    i32 8, label %if.then14
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %key = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 1
  %5 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %key, align 4
  %cnid1 = getelementptr inbounds %struct.hfsplus_ext_key, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fd, align 4
  %cnid2 = getelementptr inbounds %struct.hfsplus_ext_key, ptr %8, i32 0, i32 3
  br label %if.end24

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %key7 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 1
  %9 = ptrtoint ptr %key7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %key7, align 4
  %parent = getelementptr inbounds %struct.hfsplus_cat_key, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fd, align 4
  %parent9 = getelementptr inbounds %struct.hfsplus_cat_key, ptr %12, i32 0, i32 1
  br label %if.end24

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %key15 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 1
  %13 = ptrtoint ptr %key15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %key15, align 4
  %cnid16 = getelementptr inbounds %struct.hfsplus_attr_key, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fd, align 4
  %cnid18 = getelementptr inbounds %struct.hfsplus_attr_key, ptr %16, i32 0, i32 2
  br label %if.end24

if.else19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/hfsplus/bfind.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 75, 0\0A.popsection", ""() #5, !srcloc !16
  unreachable

if.end24:                                         ; preds = %if.then14, %if.then6, %if.then
  %cur_cnid.0.in = phi ptr [ %cnid1, %if.then ], [ %parent, %if.then6 ], [ %cnid16, %if.then14 ]
  %search_cnid.0.in = phi ptr [ %cnid2, %if.then ], [ %parent9, %if.then6 ], [ %cnid18, %if.then14 ]
  %17 = ptrtoint ptr %search_cnid.0.in to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %search_cnid.0 = load i32, ptr %search_cnid.0.in, align 1
  %18 = ptrtoint ptr %cur_cnid.0.in to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %cur_cnid.0 = load i32, ptr %cur_cnid.0.in, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_cnid.0, i32 %search_cnid.0)
  %cmp25 = icmp eq i32 %cur_cnid.0, %search_cnid.0
  br i1 %cmp25, label %if.then26, label %if.else30

if.then26:                                        ; preds = %if.end24
  %19 = ptrtoint ptr %cur_rec to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cur_rec, align 4
  %21 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %end, align 4
  %22 = ptrtoint ptr %begin to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %begin, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %20)
  %cmp27 = icmp eq i32 %23, %20
  br i1 %cmp27, label %if.then26.cleanup_crit_edge, label %if.then26.if.end35_crit_edge

if.then26.if.end35_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_cnid.0, i32 %search_cnid.0)
  %cmp31 = icmp ult i32 %cur_cnid.0, %search_cnid.0
  %24 = ptrtoint ptr %cur_rec to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cur_rec, align 4
  %. = select i1 %cmp31, i32 1, i32 -1
  %begin.end = select i1 %cmp31, ptr %begin, ptr %end
  %add = add i32 %25, %.
  %26 = ptrtoint ptr %begin.end to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add, ptr %begin.end, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else30, %if.then26.if.end35_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then26.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ 1, %if.then26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfs_find_rec_by_key(ptr nocapture noundef readonly %bnode, ptr nocapture noundef readonly %fd, ptr nocapture noundef writeonly %begin, ptr nocapture noundef writeonly %end, ptr nocapture noundef readonly %cur_rec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bnode, align 4
  %keycmp = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %keycmp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %keycmp, align 4
  %key = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 1
  %4 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %key, align 4
  %6 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fd, align 4
  %call = tail call i32 %3(ptr noundef %5, ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %cur_rec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur_rec, align 4
  %10 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %end, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %11 = ptrtoint ptr %cur_rec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cur_rec, align 4
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %add = add i32 %12, 1
  %13 = ptrtoint ptr %begin to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %begin, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add i32 %12, -1
  %14 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %end, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then1, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.else ], [ 0, %if.then1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__hfsplus_brec_find(ptr noundef %bnode, ptr noundef %fd, ptr noundef readonly %rec_found) local_unnamed_addr #0 align 64 {
entry:
  %off = alloca i16, align 2
  %rec = alloca i32, align 4
  %b = alloca i32, align 4
  %e = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %off) #5
  %0 = ptrtoint ptr %off to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %off, align 2, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rec) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e) #5
  %tobool.not = icmp eq ptr %rec_found, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !18

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/hfsplus/bfind.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 122, 0\0A.popsection", ""() #5, !srcloc !19
  unreachable

do.end9:                                          ; preds = %entry
  %1 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %b, align 4
  %num_recs = getelementptr inbounds %struct.hfs_bnode, ptr %bnode, i32 0, i32 5
  %2 = ptrtoint ptr %num_recs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_recs, align 4
  %conv = zext i16 %3 to i32
  %sub = add nsw i32 %conv, -1
  %4 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %e, align 4
  %key = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 1
  br label %do.body10

do.body10:                                        ; preds = %do.cond24.do.body10_crit_edge, %do.end9
  %5 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %e, align 4
  %7 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %b, align 4
  %add = add i32 %8, %6
  %div = sdiv i32 %add, 2
  %9 = ptrtoint ptr %rec to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div, ptr %rec, align 4
  %conv11 = trunc i32 %div to i16
  %call = call zeroext i16 @hfsplus_brec_lenoff(ptr noundef %bnode, i16 noundef zeroext %conv11, ptr noundef nonnull %off) #5
  %10 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rec, align 4
  %conv12 = trunc i32 %11 to i16
  %call13 = call zeroext i16 @hfsplus_brec_keylen(ptr noundef %bnode, i16 noundef zeroext %conv12) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call13)
  %cmp = icmp eq i16 %call13, 0
  br i1 %cmp, label %do.body10.fail_crit_edge, label %if.end17

do.body10.fail_crit_edge:                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.end17:                                         ; preds = %do.body10
  %conv14 = zext i16 %call13 to i32
  %12 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %key, align 4
  %14 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %off, align 2
  %conv18 = zext i16 %15 to i32
  call void @hfsplus_bnode_read(ptr noundef %bnode, ptr noundef %13, i32 noundef %conv18, i32 noundef %conv14) #5
  %call20 = call i32 %rec_found(ptr noundef %bnode, ptr noundef %fd, ptr noundef nonnull %b, ptr noundef nonnull %e, ptr noundef nonnull %rec) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.cond24, label %if.end17.done_crit_edge

if.end17.done_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

do.cond24:                                        ; preds = %if.end17
  %16 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %b, align 4
  %18 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %e, align 4
  %cmp25.not = icmp sgt i32 %17, %19
  br i1 %cmp25.not, label %do.end27, label %do.cond24.do.body10_crit_edge

do.cond24.do.body10_crit_edge:                    ; preds = %do.cond24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

do.end27:                                         ; preds = %do.cond24
  %20 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rec, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %19)
  %cmp28.not = icmp ne i32 %21, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp30 = icmp sgt i32 %19, -1
  %or.cond = and i1 %cmp30, %cmp28.not
  br i1 %or.cond, label %if.then32, label %do.end27.done_crit_edge

do.end27.done_crit_edge:                          ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.then32:                                        ; preds = %do.end27
  %conv33 = trunc i32 %19 to i16
  %call34 = call zeroext i16 @hfsplus_brec_lenoff(ptr noundef %bnode, i16 noundef zeroext %conv33, ptr noundef nonnull %off) #5
  %22 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %e, align 4
  %conv35 = trunc i32 %23 to i16
  %call36 = call zeroext i16 @hfsplus_brec_keylen(ptr noundef %bnode, i16 noundef zeroext %conv35) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call36)
  %cmp38 = icmp eq i16 %call36, 0
  br i1 %cmp38, label %if.then32.fail_crit_edge, label %if.end41

if.then32.fail_crit_edge:                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.end41:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  %conv37 = zext i16 %call36 to i32
  %24 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %key, align 4
  %26 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %off, align 2
  %conv43 = zext i16 %27 to i32
  call void @hfsplus_bnode_read(ptr noundef %bnode, ptr noundef %25, i32 noundef %conv43, i32 noundef %conv37) #5
  br label %done

done:                                             ; preds = %if.end41, %do.end27.done_crit_edge, %if.end17.done_crit_edge
  %conv47.pre-phi = phi i32 [ %conv14, %do.end27.done_crit_edge ], [ %conv37, %if.end41 ], [ %conv14, %if.end17.done_crit_edge ]
  %len.0 = phi i16 [ %call, %do.end27.done_crit_edge ], [ %call34, %if.end41 ], [ %call, %if.end17.done_crit_edge ]
  %res.0 = phi i32 [ -2, %do.end27.done_crit_edge ], [ -2, %if.end41 ], [ 0, %if.end17.done_crit_edge ]
  %28 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %e, align 4
  %record = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 4
  %30 = ptrtoint ptr %record to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %record, align 4
  %31 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %off, align 2
  %conv46 = zext i16 %32 to i32
  %keyoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 5
  %33 = ptrtoint ptr %keyoffset to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv46, ptr %keyoffset, align 4
  %keylength = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 6
  %34 = ptrtoint ptr %keylength to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv47.pre-phi, ptr %keylength, align 4
  %add50 = add nuw nsw i32 %conv47.pre-phi, %conv46
  %entryoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %35 = ptrtoint ptr %entryoffset to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add50, ptr %entryoffset, align 4
  %conv51 = zext i16 %len.0 to i32
  %sub53 = sub nsw i32 %conv51, %conv47.pre-phi
  %entrylength = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 8
  %36 = ptrtoint ptr %entrylength to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub53, ptr %entrylength, align 4
  br label %fail

fail:                                             ; preds = %done, %if.then32.fail_crit_edge, %do.body10.fail_crit_edge
  %res.1 = phi i32 [ %res.0, %done ], [ -22, %if.then32.fail_crit_edge ], [ -22, %do.body10.fail_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rec) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %off) #5
  ret i32 %res.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @hfsplus_brec_lenoff(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @hfsplus_brec_keylen(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_bnode_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_brec_find(ptr noundef %fd, ptr noundef %do_key_compare) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !17
  %tree1 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 2
  %1 = ptrtoint ptr %tree1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tree1, align 4
  %bnode2 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %3 = ptrtoint ptr %bnode2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bnode2, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @hfsplus_bnode_put(ptr noundef nonnull %4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %bnode2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %bnode2, align 4
  %root = getelementptr inbounds %struct.hfs_btree, ptr %2, i32 0, i32 4
  %6 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %root, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %depth = getelementptr inbounds %struct.hfs_btree, ptr %2, i32 0, i32 14
  %8 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %depth, align 4
  %call85 = call ptr @hfsplus_bnode_find(ptr noundef %2, i32 noundef %7) #5
  %cmp.i86 = icmp ugt ptr %call85, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i86, label %if.end7.if.then9_crit_edge, label %if.end11.lr.ph

if.end7.if.then9_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

if.end11.lr.ph:                                   ; preds = %if.end7
  %record = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 4
  %entryoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  br label %if.end11

if.then9:                                         ; preds = %if.end30.if.then9_crit_edge, %if.end7.if.then9_crit_edge
  %call.lcssa = phi ptr [ %call85, %if.end7.if.then9_crit_edge ], [ %call, %if.end30.if.then9_crit_edge ]
  %10 = ptrtoint ptr %call.lcssa to i32
  br label %for.end

if.end11:                                         ; preds = %if.end30.if.end11_crit_edge, %if.end11.lr.ph
  %call90 = phi ptr [ %call85, %if.end11.lr.ph ], [ %call, %if.end30.if.end11_crit_edge ]
  %height.089 = phi i32 [ %9, %if.end11.lr.ph ], [ %dec, %if.end30.if.end11_crit_edge ]
  %parent.088 = phi i32 [ 0, %if.end11.lr.ph ], [ %nidx.087, %if.end30.if.end11_crit_edge ]
  %nidx.087 = phi i32 [ %7, %if.end11.lr.ph ], [ %21, %if.end30.if.end11_crit_edge ]
  %height12 = getelementptr inbounds %struct.hfs_bnode, ptr %call90, i32 0, i32 7
  %11 = ptrtoint ptr %height12 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %height12, align 1
  %conv = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %height.089, i32 %conv)
  %cmp.not = icmp eq i32 %height.089, %conv
  br i1 %cmp.not, label %if.end15, label %if.end11.do.end_crit_edge

if.end11.do.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end15:                                         ; preds = %if.end11
  %type = getelementptr inbounds %struct.hfs_bnode, ptr %call90, i32 0, i32 6
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %type, align 2
  %conv16 = zext i8 %14 to i32
  %dec = add i32 %height.089, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool17.not = icmp eq i32 %dec, 0
  %cond = select i1 %tobool17.not, i32 255, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv16)
  %cmp18.not = icmp eq i32 %cond, %conv16
  br i1 %cmp18.not, label %if.end21, label %if.end15.do.end_crit_edge

if.end15.do.end_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end21:                                         ; preds = %if.end15
  %parent22 = getelementptr inbounds %struct.hfs_bnode, ptr %call90, i32 0, i32 4
  %15 = ptrtoint ptr %parent22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %parent.088, ptr %parent22, align 4
  %call23 = call i32 @__hfsplus_brec_find(ptr noundef %call90, ptr noundef %fd, ptr noundef %do_key_compare)
  br i1 %tobool17.not, label %if.end21.for.end_crit_edge, label %if.end26

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end26:                                         ; preds = %if.end21
  %16 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %record, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp27 = icmp slt i32 %17, 0
  br i1 %cmp27, label %if.end26.release_crit_edge, label %if.end30

if.end26.release_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %release

if.end30:                                         ; preds = %if.end26
  %18 = ptrtoint ptr %entryoffset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %entryoffset, align 4
  call void @hfsplus_bnode_read(ptr noundef %call90, ptr noundef nonnull %data, i32 noundef %19, i32 noundef 4) #5
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data, align 4
  call void @hfsplus_bnode_put(ptr noundef %call90) #5
  %call = call ptr @hfsplus_bnode_find(ptr noundef %2, i32 noundef %21) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end30.if.then9_crit_edge, label %if.end30.if.end11_crit_edge

if.end30.if.end11_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end30.if.then9_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

for.end:                                          ; preds = %if.end21.for.end_crit_edge, %if.then9
  %bnode.0 = phi ptr [ null, %if.then9 ], [ %call90, %if.end21.for.end_crit_edge ]
  %res.0 = phi i32 [ %10, %if.then9 ], [ %call23, %if.end21.for.end_crit_edge ]
  %22 = ptrtoint ptr %bnode2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %bnode.0, ptr %bnode2, align 4
  br label %cleanup

do.end:                                           ; preds = %if.end15.do.end_crit_edge, %if.end11.do.end_crit_edge
  %height.1 = phi i32 [ %height.089, %if.end11.do.end_crit_edge ], [ %dec, %if.end15.do.end_crit_edge ]
  %conv.le = zext i8 %12 to i32
  %type34 = getelementptr inbounds %struct.hfs_bnode, ptr %call90, i32 0, i32 6
  %23 = ptrtoint ptr %type34 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %type34, align 2
  %conv35 = zext i8 %24 to i32
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %height.1, i32 noundef %conv.le, i32 noundef %conv35, i32 noundef %nidx.087, i32 noundef %parent.088) #9
  br label %release

release:                                          ; preds = %do.end, %if.end26.release_crit_edge
  %res.1 = phi i32 [ -5, %do.end ], [ %call23, %if.end26.release_crit_edge ]
  call void @hfsplus_bnode_put(ptr noundef %call90) #5
  br label %cleanup

cleanup:                                          ; preds = %release, %for.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0, %for.end ], [ %res.1, %release ], [ -2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hfsplus_bnode_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_brec_read(ptr noundef %fd, ptr noundef %rec, i32 noundef %rec_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hfsplus_brec_find(ptr noundef %fd, ptr noundef nonnull @hfs_find_rec_by_key)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %entrylength = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 8
  %0 = ptrtoint ptr %entrylength to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entrylength, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rec_len)
  %cmp = icmp sgt i32 %1, %rec_len
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %bnode = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %2 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bnode, align 4
  %entryoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %4 = ptrtoint ptr %entryoffset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %entryoffset, align 4
  tail call void @hfsplus_bnode_read(ptr noundef %3, ptr noundef %rec, i32 noundef %5, i32 noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_brec_goto(ptr nocapture noundef %fd, i32 noundef %cnt) local_unnamed_addr #0 align 64 {
entry:
  %off = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %off) #5
  %0 = ptrtoint ptr %off to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %off, align 2, !annotation !17
  %bnode1 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %1 = ptrtoint ptr %bnode1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bnode1, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %cmp = icmp slt i32 %cnt, 0
  br i1 %cmp, label %if.then, label %while.cond15.preheader

while.cond15.preheader:                           ; preds = %entry
  %record18 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 4
  br label %while.cond15

if.then:                                          ; preds = %entry
  %sub = sub i32 0, %cnt
  %record = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %if.then
  %cnt.addr.0 = phi i32 [ %sub, %if.then ], [ %sub5, %if.end.while.cond_crit_edge ]
  %bnode.0 = phi ptr [ %2, %if.then ], [ %call, %if.end.while.cond_crit_edge ]
  %5 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %record, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %cnt.addr.0)
  %cmp3 = icmp slt i32 %6, %cnt.addr.0
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %num_recs = getelementptr inbounds %struct.hfs_bnode, ptr %bnode.0, i32 0, i32 5
  %7 = ptrtoint ptr %num_recs to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_recs, align 4
  %conv = zext i16 %8 to i32
  %sub6 = add nsw i32 %conv, -1
  %9 = ptrtoint ptr %record to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub6, ptr %record, align 4
  %prev = getelementptr inbounds %struct.hfs_bnode, ptr %bnode.0, i32 0, i32 1
  %10 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %prev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %while.body.out_crit_edge, label %if.end

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %while.body
  %add.neg = xor i32 %6, -1
  %sub5 = add i32 %cnt.addr.0, %add.neg
  tail call void @hfsplus_bnode_put(ptr noundef %bnode.0) #5
  %call = tail call ptr @hfsplus_bnode_find(ptr noundef %4, i32 noundef %11) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call to i32
  br label %out

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  %sub14 = sub i32 %6, %cnt.addr.0
  %13 = ptrtoint ptr %record to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub14, ptr %record, align 4
  br label %if.end40

while.cond15:                                     ; preds = %if.end31.while.cond15_crit_edge, %while.cond15.preheader
  %cnt.addr.1 = phi i32 [ %sub27, %if.end31.while.cond15_crit_edge ], [ %cnt, %while.cond15.preheader ]
  %bnode.1 = phi ptr [ %call32, %if.end31.while.cond15_crit_edge ], [ %2, %while.cond15.preheader ]
  %num_recs16 = getelementptr inbounds %struct.hfs_bnode, ptr %bnode.1, i32 0, i32 5
  %14 = ptrtoint ptr %num_recs16 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_recs16, align 4
  %conv17 = zext i16 %15 to i32
  %16 = ptrtoint ptr %record18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %record18, align 4
  %sub19 = sub i32 %conv17, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.addr.1, i32 %sub19)
  %cmp20.not = icmp slt i32 %cnt.addr.1, %sub19
  br i1 %cmp20.not, label %while.end37, label %while.body22

while.body22:                                     ; preds = %while.cond15
  %18 = ptrtoint ptr %record18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %record18, align 4
  %next = getelementptr inbounds %struct.hfs_bnode, ptr %bnode.1, i32 0, i32 3
  %19 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %next, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool29.not = icmp eq i32 %20, 0
  br i1 %tobool29.not, label %while.body22.out_crit_edge, label %if.end31

while.body22.out_crit_edge:                       ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end31:                                         ; preds = %while.body22
  %sub27 = sub i32 %cnt.addr.1, %sub19
  tail call void @hfsplus_bnode_put(ptr noundef %bnode.1) #5
  %call32 = tail call ptr @hfsplus_bnode_find(ptr noundef %4, i32 noundef %20) #5
  %cmp.i111 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i111, label %if.then34, label %if.end31.while.cond15_crit_edge

if.end31.while.cond15_crit_edge:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond15

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %call32 to i32
  br label %out

while.end37:                                      ; preds = %while.cond15
  call void @__sanitizer_cov_trace_pc() #7
  %add39 = add i32 %17, %cnt.addr.1
  %22 = ptrtoint ptr %record18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add39, ptr %record18, align 4
  br label %if.end40

if.end40:                                         ; preds = %while.end37, %while.end
  %bnode.2 = phi ptr [ %bnode.0, %while.end ], [ %bnode.1, %while.end37 ]
  %record41 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 4
  %23 = ptrtoint ptr %record41 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %record41, align 4
  %conv42 = trunc i32 %24 to i16
  %call43 = call zeroext i16 @hfsplus_brec_lenoff(ptr noundef %bnode.2, i16 noundef zeroext %conv42, ptr noundef nonnull %off) #5
  %25 = ptrtoint ptr %record41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %record41, align 4
  %conv45 = trunc i32 %26 to i16
  %call46 = call zeroext i16 @hfsplus_brec_keylen(ptr noundef %bnode.2, i16 noundef zeroext %conv45) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call46)
  %cmp48 = icmp eq i16 %call46, 0
  br i1 %cmp48, label %if.end40.out_crit_edge, label %if.end51

if.end40.out_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end51:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %conv47 = zext i16 %call46 to i32
  %27 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %off, align 2
  %conv52 = zext i16 %28 to i32
  %keyoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 5
  %29 = ptrtoint ptr %keyoffset to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv52, ptr %keyoffset, align 4
  %keylength = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 6
  %30 = ptrtoint ptr %keylength to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv47, ptr %keylength, align 4
  %add56 = add nuw nsw i32 %conv52, %conv47
  %entryoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %31 = ptrtoint ptr %entryoffset to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add56, ptr %entryoffset, align 4
  %conv57 = zext i16 %call43 to i32
  %sub59 = sub nsw i32 %conv57, %conv47
  %entrylength = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 8
  %32 = ptrtoint ptr %entrylength to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub59, ptr %entrylength, align 4
  %key = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 1
  %33 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %key, align 4
  call void @hfsplus_bnode_read(ptr noundef %bnode.2, ptr noundef %34, i32 noundef %conv52, i32 noundef %conv47) #5
  br label %out

out:                                              ; preds = %if.end51, %if.end40.out_crit_edge, %if.then34, %while.body22.out_crit_edge, %if.then10, %while.body.out_crit_edge
  %bnode.3 = phi ptr [ null, %if.then10 ], [ %bnode.2, %if.end51 ], [ null, %if.then34 ], [ %bnode.2, %if.end40.out_crit_edge ], [ %bnode.0, %while.body.out_crit_edge ], [ %bnode.1, %while.body22.out_crit_edge ]
  %res.0 = phi i32 [ %12, %if.then10 ], [ 0, %if.end51 ], [ %21, %if.then34 ], [ -22, %if.end40.out_crit_edge ], [ -2, %while.body.out_crit_edge ], [ -2, %while.body22.out_crit_edge ]
  %35 = ptrtoint ptr %bnode1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %bnode.3, ptr %bnode1, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %off) #5
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/hfsplus/bfind.c", i32 210, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hfsplus_brec_find._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hfsplus_brec_find._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 2154412012, i64 2154412494, i64 2154412049, i64 2154412105, i64 2154412139, i64 2154412163, i64 2154412204, i64 2154412225, i64 2154412253, i64 2154412287}
!16 = !{i64 2154415370, i64 2154415852, i64 2154415407, i64 2154415463, i64 2154415497, i64 2154415521, i64 2154415562, i64 2154415583, i64 2154415611, i64 2154415645}
!17 = !{!"auto-init"}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2154417069, i64 2154417552, i64 2154417106, i64 2154417162, i64 2154417196, i64 2154417220, i64 2154417261, i64 2154417282, i64 2154417310, i64 2154417344}
