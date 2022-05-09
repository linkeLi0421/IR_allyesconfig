; ModuleID = '/llk/IR_all_yes/kernel/bpf/bloom_filter.c_pt.bc'
source_filename = "../kernel/bpf/bloom_filter.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bpf_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i32, i64 }
%struct.bpf_bloom_filter = type { %struct.bpf_map, i32, i32, i32, i32, [0 x i32], [112 x i8] }
%struct.bpf_map = type { ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], i8, i8, [30 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, %struct.atomic64_t, [96 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.27 }
%union.anon.27 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bpf_bloom_filter\00", [47 x i8] zeroinitializer }, align 32
@bpf_bloom_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@bloom_filter_map_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr null, ptr @bloom_map_alloc, ptr null, ptr @bloom_map_free, ptr @bloom_map_get_next_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bloom_map_lookup_elem, ptr @bloom_map_update_elem, ptr @bloom_map_delete_elem, ptr @bloom_map_push_elem, ptr @bloom_map_pop_elem, ptr @bloom_map_peek_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bloom_map_check_btf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bpf_map_meta_equal, ptr null, ptr null, ptr @.str, ptr @bpf_bloom_map_btf_id, ptr null }, [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 208, i32 18 }
@___asan_gen_.5 = private unnamed_addr constant [21 x i8] c"bpf_bloom_map_btf_id\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 195, i32 12 }
@___asan_gen_.8 = private unnamed_addr constant [21 x i8] c"bloom_filter_map_ops\00", align 1
@___asan_gen_.9 = private constant [29 x i8] c"../kernel/bpf/bloom_filter.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 196, i32 26 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @bpf_bloom_map_btf_id, ptr @bloom_filter_map_ops], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_bloom_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bloom_filter_map_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bloom_map_alloc(ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %map_flags.i = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 4
  %0 = ptrtoint ptr %map_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_flags.i, align 8
  %and.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.bpf_map_attr_numa_node.exit_crit_edge, label %cond.true.i

entry.bpf_map_attr_numa_node.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %bpf_map_attr_numa_node.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %numa_node.i = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 6
  %2 = ptrtoint ptr %numa_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %numa_node.i, align 8
  br label %bpf_map_attr_numa_node.exit

bpf_map_attr_numa_node.exit:                      ; preds = %cond.true.i, %entry.bpf_map_attr_numa_node.exit_crit_edge
  %cond.i = phi i32 [ %3, %cond.true.i ], [ -1, %entry.bpf_map_attr_numa_node.exit_crit_edge ]
  %call.i = tail call zeroext i1 @capable(i32 noundef 39) #6
  br i1 %call.i, label %bpf_map_attr_numa_node.exit.if.end_crit_edge, label %bpf_capable.exit

bpf_map_attr_numa_node.exit.if.end_crit_edge:     ; preds = %bpf_map_attr_numa_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

bpf_capable.exit:                                 ; preds = %bpf_map_attr_numa_node.exit
  %call1.i = tail call zeroext i1 @capable(i32 noundef 21) #6
  br i1 %call1.i, label %bpf_capable.exit.if.end_crit_edge, label %bpf_capable.exit.cleanup_crit_edge

bpf_capable.exit.cleanup_crit_edge:               ; preds = %bpf_capable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

bpf_capable.exit.if.end_crit_edge:                ; preds = %bpf_capable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %bpf_capable.exit.if.end_crit_edge, %bpf_map_attr_numa_node.exit.if.end_crit_edge
  %key_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %value_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3 = icmp eq i32 %7, 0
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %max_entries = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 3
  %8 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp5 = icmp eq i32 %9, 0
  br i1 %cmp5, label %lor.lhs.false4.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %10 = ptrtoint ptr %map_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %map_flags.i, align 8
  %and = and i32 %11, -477
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and.i142 = and i32 %11, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %and.i142)
  %cmp.i = icmp ne i32 %and.i142, 384
  %or.cond145 = and i1 %tobool.not, %cmp.i
  br i1 %or.cond145, label %lor.lhs.false10, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %map_extra = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 13
  %12 = ptrtoint ptr %map_extra to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %map_extra, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %13)
  %tobool12.not = icmp ult i64 %13, 16
  br i1 %tobool12.not, label %if.end15, label %lor.lhs.false10.cleanup_crit_edge

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false10
  %conv = trunc i64 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp17 = icmp eq i32 %conv, 0
  %spec.store.select = select i1 %cmp17, i32 5, i32 %conv
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 %spec.store.select)
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %if.end15.if.end78_crit_edge, label %lor.lhs.false29

if.end15.if.end78_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

lor.lhs.false29:                                  ; preds = %if.end15
  %16 = extractvalue { i32, i1 } %14, 0
  %div = udiv i32 %16, 5
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div, i32 7)
  %18 = extractvalue { i32, i1 } %17, 1
  %19 = extractvalue { i32, i1 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %19)
  %cmp43 = icmp ugt i32 %19, -2147483648
  %or.cond = or i1 %18, %cmp43
  br i1 %or.cond, label %lor.lhs.false29.if.end78_crit_edge, label %if.else

lor.lhs.false29.if.end78_crit_edge:               ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.else:                                          ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %19, -1
  %20 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 false) #6, !range !15
  %add = sub nuw nsw i32 32, %20
  %shl = shl nuw i32 1, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %19)
  %cmp46.inv = icmp ugt i32 %19, 32
  %nr_bits.0 = select i1 %cmp46.inv, i32 %shl, i32 32
  %sub75 = add i32 %nr_bits.0, 7
  %div76137 = lshr i32 %sub75, 3
  %sub77 = add i32 %nr_bits.0, -1
  %phi.bo = add nuw nsw i32 %div76137, 3
  %phi.bo138139 = and i32 %phi.bo, 1073741820
  %phi.bo140 = add nuw nsw i32 %phi.bo138139, 512
  br label %if.end78

if.end78:                                         ; preds = %if.else, %lor.lhs.false29.if.end78_crit_edge, %if.end15.if.end78_crit_edge
  %bitset_mask.0 = phi i32 [ %sub77, %if.else ], [ -1, %lor.lhs.false29.if.end78_crit_edge ], [ -1, %if.end15.if.end78_crit_edge ]
  %bitset_bytes.0 = phi i32 [ %phi.bo140, %if.else ], [ 512, %lor.lhs.false29.if.end78_crit_edge ], [ 512, %if.end15.if.end78_crit_edge ]
  %conv84 = zext i32 %bitset_bytes.0 to i64
  %call85 = tail call ptr @bpf_map_area_alloc(i64 noundef %conv84, i32 noundef %cond.i) #6
  %tobool86.not = icmp eq ptr %call85, null
  br i1 %tobool86.not, label %if.end78.cleanup_crit_edge, label %if.end89

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end89:                                         ; preds = %if.end78
  tail call void @bpf_map_init_from_attr(ptr noundef nonnull %call85, ptr noundef %attr) #6
  %nr_hash_funcs90 = getelementptr inbounds %struct.bpf_bloom_filter, ptr %call85, i32 0, i32 4
  %21 = ptrtoint ptr %nr_hash_funcs90 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.store.select, ptr %nr_hash_funcs90, align 4
  %bitset_mask91 = getelementptr inbounds %struct.bpf_bloom_filter, ptr %call85, i32 0, i32 1
  %22 = ptrtoint ptr %bitset_mask91 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %bitset_mask.0, ptr %bitset_mask91, align 128
  %23 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %value_size, align 8
  %and93 = and i32 %24, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %cmp94 = icmp eq i32 %and93, 0
  br i1 %cmp94, label %if.then96, label %if.end89.if.end99_crit_edge

if.end89.if.end99_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

if.then96:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  %div98141 = lshr i32 %24, 2
  %aligned_u32_count = getelementptr inbounds %struct.bpf_bloom_filter, ptr %call85, i32 0, i32 3
  %25 = ptrtoint ptr %aligned_u32_count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div98141, ptr %aligned_u32_count, align 8
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %if.end89.if.end99_crit_edge
  %26 = ptrtoint ptr %map_flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %map_flags.i, align 8
  %and101 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.then103, label %if.end99.cleanup_crit_edge

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then103:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  %call.i144 = tail call i32 @get_random_u32() #6
  %hash_seed = getelementptr inbounds %struct.bpf_bloom_filter, ptr %call85, i32 0, i32 2
  %28 = ptrtoint ptr %hash_seed to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call.i144, ptr %hash_seed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then103, %if.end99.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %bpf_capable.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call85, %if.then103 ], [ %call85, %if.end99.cleanup_crit_edge ], [ inttoptr (i32 -1 to ptr), %bpf_capable.exit.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false10.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false6.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false4.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end78.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bloom_map_free(ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @bpf_map_area_free(ptr noundef %map) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bloom_map_get_next_key(ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %key, ptr nocapture noundef readnone %next_key) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @bloom_map_lookup_elem(ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %key) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr inttoptr (i32 -22 to ptr)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bloom_map_update_elem(ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %key, ptr nocapture noundef readnone %value, i64 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bloom_map_delete_elem(ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bloom_map_push_elem(ptr noundef %map, ptr nocapture noundef readonly %value, i64 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %flags)
  %cmp.not = icmp eq i64 %flags, 0
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %nr_hash_funcs = getelementptr inbounds %struct.bpf_bloom_filter, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %nr_hash_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_hash_funcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp19.not = icmp eq i32 %1, 0
  br i1 %cmp19.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %bitset = getelementptr inbounds %struct.bpf_bloom_filter, ptr %map, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value_size, align 4
  %call = tail call fastcc i32 @hash(ptr noundef %map, ptr noundef %value, i32 noundef %3, i32 noundef %i.010)
  tail call void @_set_bit(i32 noundef %call, ptr noundef %bitset) #6
  %inc = add nuw i32 %i.010, 1
  %4 = ptrtoint ptr %nr_hash_funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_hash_funcs, align 4
  %cmp1 = icmp ult i32 %inc, %5
  br i1 %cmp1, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bloom_map_pop_elem(ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bloom_map_peek_elem(ptr noundef %map, ptr nocapture noundef readonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_hash_funcs = getelementptr inbounds %struct.bpf_bloom_filter, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %nr_hash_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_hash_funcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9.not = icmp eq i32 %1, 0
  br i1 %cmp9.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %2 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value_size, align 4
  %bitset = getelementptr inbounds %struct.bpf_bloom_filter, ptr %map, i32 0, i32 5
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %call = tail call fastcc i32 @hash(ptr noundef %map, ptr noundef %value, i32 noundef %3, i32 noundef %i.010)
  %div3.i = lshr i32 %call, 5
  %arrayidx.i = getelementptr i32, ptr %bitset, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %call, 31
  %6 = shl nuw i32 1, %and.i
  %7 = and i32 %6, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ -2, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bloom_map_check_btf(ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %btf, ptr noundef %key_type, ptr nocapture noundef readnone %value_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @btf_type_is_void(ptr noundef %key_type) #6
  %cond = select i1 %call, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bpf_map_meta_equal(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_area_alloc(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_init_from_attr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_area_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hash(ptr nocapture noundef readonly %bloom, ptr nocapture noundef readonly %value, i32 noundef %value_size, i32 noundef %index) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %aligned_u32_count = getelementptr inbounds %struct.bpf_bloom_filter, ptr %bloom, i32 0, i32 3
  %0 = ptrtoint ptr %aligned_u32_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %aligned_u32_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %hash_seed2 = getelementptr inbounds %struct.bpf_bloom_filter, ptr %bloom, i32 0, i32 2
  %2 = ptrtoint ptr %hash_seed2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hash_seed2, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %shl.i = shl i32 %1, 2
  %add = add i32 %index, -559038737
  %add.i = add i32 %add, %shl.i
  %add1.i = add i32 %add.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp147.i = icmp ugt i32 %1, 3
  br i1 %cmp147.i, label %if.then.while.body.i_crit_edge, label %if.then.while.end.i_crit_edge

if.then.while.end.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %c.0152.i = phi i32 [ %xor26.i, %while.body.i.while.body.i_crit_edge ], [ %add1.i, %if.then.while.body.i_crit_edge ]
  %b.0151.i = phi i32 [ %add27.i, %while.body.i.while.body.i_crit_edge ], [ %add1.i, %if.then.while.body.i_crit_edge ]
  %a.0150.i = phi i32 [ %add23.i, %while.body.i.while.body.i_crit_edge ], [ %add1.i, %if.then.while.body.i_crit_edge ]
  %k.addr.0149.i = phi ptr [ %add.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %value, %if.then.while.body.i_crit_edge ]
  %length.addr.0148.i = phi i32 [ %sub28.i, %while.body.i.while.body.i_crit_edge ], [ %1, %if.then.while.body.i_crit_edge ]
  %4 = ptrtoint ptr %k.addr.0149.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %k.addr.0149.i, align 4
  %add2.i = add i32 %5, %a.0150.i
  %arrayidx3.i = getelementptr i32, ptr %k.addr.0149.i, i32 1
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3.i, align 4
  %add4.i = add i32 %7, %b.0151.i
  %arrayidx5.i = getelementptr i32, ptr %k.addr.0149.i, i32 2
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5.i, align 4
  %add6.i = add i32 %9, %c.0152.i
  %sub.i = sub i32 %add2.i, %add6.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i, i32 %add6.i, i32 4) #6
  %xor.i = xor i32 %sub.i, %or.i.i
  %add7.i = add i32 %add6.i, %add4.i
  %sub8.i = sub i32 %add4.i, %xor.i
  %or.i135.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #6
  %xor10.i = xor i32 %sub8.i, %or.i135.i
  %add11.i = add i32 %xor.i, %add7.i
  %sub12.i = sub i32 %add7.i, %xor10.i
  %or.i136.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i, i32 %xor10.i, i32 8) #6
  %xor14.i = xor i32 %sub12.i, %or.i136.i
  %add15.i = add i32 %xor10.i, %add11.i
  %sub16.i = sub i32 %add11.i, %xor14.i
  %or.i137.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i, i32 %xor14.i, i32 16) #6
  %xor18.i = xor i32 %sub16.i, %or.i137.i
  %add19.i = add i32 %xor14.i, %add15.i
  %sub20.i = sub i32 %add15.i, %xor18.i
  %or.i138.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i, i32 %xor18.i, i32 19) #6
  %xor22.i = xor i32 %sub20.i, %or.i138.i
  %add23.i = add i32 %xor18.i, %add19.i
  %sub24.i = sub i32 %add19.i, %xor22.i
  %or.i139.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i, i32 %xor22.i, i32 4) #6
  %xor26.i = xor i32 %sub24.i, %or.i139.i
  %add27.i = add i32 %xor22.i, %add23.i
  %sub28.i = add i32 %length.addr.0148.i, -3
  %add.ptr.i = getelementptr i32, ptr %k.addr.0149.i, i32 3
  %cmp.i = icmp ugt i32 %sub28.i, 3
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.then.while.end.i_crit_edge
  %length.addr.0.lcssa.i = phi i32 [ %1, %if.then.while.end.i_crit_edge ], [ %sub28.i, %while.body.i.while.end.i_crit_edge ]
  %k.addr.0.lcssa.i = phi ptr [ %value, %if.then.while.end.i_crit_edge ], [ %add.ptr.i, %while.body.i.while.end.i_crit_edge ]
  %a.0.lcssa.i = phi i32 [ %add1.i, %if.then.while.end.i_crit_edge ], [ %add23.i, %while.body.i.while.end.i_crit_edge ]
  %b.0.lcssa.i = phi i32 [ %add1.i, %if.then.while.end.i_crit_edge ], [ %add27.i, %while.body.i.while.end.i_crit_edge ]
  %c.0.lcssa.i = phi i32 [ %add1.i, %if.then.while.end.i_crit_edge ], [ %xor26.i, %while.body.i.while.end.i_crit_edge ]
  %10 = zext i32 %length.addr.0.lcssa.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %length.addr.0.lcssa.i, label %while.end.i.if.end_crit_edge [
    i32 3, label %sw.bb.i
    i32 2, label %while.end.i.sw.bb31.i_crit_edge
    i32 1, label %while.end.i.sw.bb34.i_crit_edge
  ]

while.end.i.sw.bb34.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb34.i

while.end.i.sw.bb31.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb31.i

while.end.i.if.end_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb.i:                                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx29.i = getelementptr i32, ptr %k.addr.0.lcssa.i, i32 2
  %11 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx29.i, align 4
  %add30.i = add i32 %12, %c.0.lcssa.i
  br label %sw.bb31.i

sw.bb31.i:                                        ; preds = %sw.bb.i, %while.end.i.sw.bb31.i_crit_edge
  %c.1.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb31.i_crit_edge ], [ %add30.i, %sw.bb.i ]
  %arrayidx32.i = getelementptr i32, ptr %k.addr.0.lcssa.i, i32 1
  %13 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx32.i, align 4
  %add33.i = add i32 %14, %b.0.lcssa.i
  br label %sw.bb34.i

sw.bb34.i:                                        ; preds = %sw.bb31.i, %while.end.i.sw.bb34.i_crit_edge
  %b.1.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb34.i_crit_edge ], [ %add33.i, %sw.bb31.i ]
  %c.2.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb34.i_crit_edge ], [ %c.1.i, %sw.bb31.i ]
  %15 = ptrtoint ptr %k.addr.0.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %k.addr.0.lcssa.i, align 4
  %add36.i = add i32 %16, %a.0.lcssa.i
  %xor37.i = xor i32 %c.2.i, %b.1.i
  %or.i140.i = tail call i32 @llvm.fshl.i32(i32 %b.1.i, i32 %b.1.i, i32 14) #6
  %sub39.i = sub i32 %xor37.i, %or.i140.i
  %xor40.i = xor i32 %add36.i, %sub39.i
  %or.i141.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #6
  %sub42.i = sub i32 %xor40.i, %or.i141.i
  %xor43.i = xor i32 %sub42.i, %b.1.i
  %or.i142.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #6
  %sub45.i = sub i32 %xor43.i, %or.i142.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i143.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #6
  %sub48.i = sub i32 %xor46.i, %or.i143.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i144.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #6
  %sub51.i = sub i32 %xor49.i, %or.i144.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i145.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #6
  %sub54.i = sub i32 %xor52.i, %or.i145.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i146.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #6
  %sub57.i = sub i32 %xor55.i, %or.i146.i
  br label %if.end

if.else:                                          ; preds = %entry
  %add3 = add i32 %index, -559038737
  %add.i11 = add i32 %add3, %value_size
  %add1.i12 = add i32 %add.i11, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %value_size)
  %cmp213.i = icmp ugt i32 %value_size, 12
  br i1 %cmp213.i, label %if.else.while.body.i21_crit_edge, label %if.else.while.end.i26_crit_edge

if.else.while.end.i26_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i26

if.else.while.body.i21_crit_edge:                 ; preds = %if.else
  br label %while.body.i21

while.body.i21:                                   ; preds = %while.body.i21.while.body.i21_crit_edge, %if.else.while.body.i21_crit_edge
  %k.0218.i = phi ptr [ %add.ptr31.i, %while.body.i21.while.body.i21_crit_edge ], [ %value, %if.else.while.body.i21_crit_edge ]
  %c.0217.i = phi i32 [ %xor28.i, %while.body.i21.while.body.i21_crit_edge ], [ %add1.i12, %if.else.while.body.i21_crit_edge ]
  %b.0216.i = phi i32 [ %add29.i, %while.body.i21.while.body.i21_crit_edge ], [ %add1.i12, %if.else.while.body.i21_crit_edge ]
  %a.0215.i = phi i32 [ %add25.i, %while.body.i21.while.body.i21_crit_edge ], [ %add1.i12, %if.else.while.body.i21_crit_edge ]
  %length.addr.0214.i = phi i32 [ %sub30.i, %while.body.i21.while.body.i21_crit_edge ], [ %value_size, %if.else.while.body.i21_crit_edge ]
  %17 = ptrtoint ptr %k.0218.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %k.0218.i, align 1
  %add2.i13 = add i32 %18, %a.0215.i
  %add.ptr.i14 = getelementptr i8, ptr %k.0218.i, i32 4
  %19 = ptrtoint ptr %add.ptr.i14 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %add.ptr.i14, align 1
  %add4.i15 = add i32 %20, %b.0216.i
  %add.ptr5.i = getelementptr i8, ptr %k.0218.i, i32 8
  %21 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %add.ptr5.i, align 1
  %add7.i16 = add i32 %22, %c.0217.i
  %sub.i17 = sub i32 %add2.i13, %add7.i16
  %or.i.i18 = tail call i32 @llvm.fshl.i32(i32 %add7.i16, i32 %add7.i16, i32 4) #6
  %xor.i19 = xor i32 %sub.i17, %or.i.i18
  %add9.i = add i32 %add7.i16, %add4.i15
  %sub10.i = sub i32 %add4.i15, %xor.i19
  %or.i201.i = tail call i32 @llvm.fshl.i32(i32 %xor.i19, i32 %xor.i19, i32 6) #6
  %xor12.i = xor i32 %sub10.i, %or.i201.i
  %add13.i = add i32 %xor.i19, %add9.i
  %sub14.i = sub i32 %add9.i, %xor12.i
  %or.i202.i = tail call i32 @llvm.fshl.i32(i32 %xor12.i, i32 %xor12.i, i32 8) #6
  %xor16.i = xor i32 %sub14.i, %or.i202.i
  %add17.i = add i32 %xor12.i, %add13.i
  %sub18.i = sub i32 %add13.i, %xor16.i
  %or.i203.i = tail call i32 @llvm.fshl.i32(i32 %xor16.i, i32 %xor16.i, i32 16) #6
  %xor20.i = xor i32 %sub18.i, %or.i203.i
  %add21.i = add i32 %xor16.i, %add17.i
  %sub22.i = sub i32 %add17.i, %xor20.i
  %or.i204.i = tail call i32 @llvm.fshl.i32(i32 %xor20.i, i32 %xor20.i, i32 19) #6
  %xor24.i = xor i32 %sub22.i, %or.i204.i
  %add25.i = add i32 %xor20.i, %add21.i
  %sub26.i = sub i32 %add21.i, %xor24.i
  %or.i205.i = tail call i32 @llvm.fshl.i32(i32 %xor24.i, i32 %xor24.i, i32 4) #6
  %xor28.i = xor i32 %sub26.i, %or.i205.i
  %add29.i = add i32 %xor24.i, %add25.i
  %sub30.i = add i32 %length.addr.0214.i, -12
  %add.ptr31.i = getelementptr i8, ptr %k.0218.i, i32 12
  %cmp.i20 = icmp ugt i32 %sub30.i, 12
  br i1 %cmp.i20, label %while.body.i21.while.body.i21_crit_edge, label %while.body.i21.while.end.i26_crit_edge

while.body.i21.while.end.i26_crit_edge:           ; preds = %while.body.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i26

while.body.i21.while.body.i21_crit_edge:          ; preds = %while.body.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i21

while.end.i26:                                    ; preds = %while.body.i21.while.end.i26_crit_edge, %if.else.while.end.i26_crit_edge
  %length.addr.0.lcssa.i22 = phi i32 [ %value_size, %if.else.while.end.i26_crit_edge ], [ %sub30.i, %while.body.i21.while.end.i26_crit_edge ]
  %a.0.lcssa.i23 = phi i32 [ %add1.i12, %if.else.while.end.i26_crit_edge ], [ %add25.i, %while.body.i21.while.end.i26_crit_edge ]
  %b.0.lcssa.i24 = phi i32 [ %add1.i12, %if.else.while.end.i26_crit_edge ], [ %add29.i, %while.body.i21.while.end.i26_crit_edge ]
  %c.0.lcssa.i25 = phi i32 [ %add1.i12, %if.else.while.end.i26_crit_edge ], [ %xor28.i, %while.body.i21.while.end.i26_crit_edge ]
  %k.0.lcssa.i = phi ptr [ %value, %if.else.while.end.i26_crit_edge ], [ %add.ptr31.i, %while.body.i21.while.end.i26_crit_edge ]
  %23 = zext i32 %length.addr.0.lcssa.i22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %length.addr.0.lcssa.i22, label %while.end.i26.if.end_crit_edge [
    i32 12, label %sw.bb.i28
    i32 11, label %while.end.i26.sw.bb33.i_crit_edge
    i32 10, label %while.end.i26.sw.bb38.i_crit_edge
    i32 9, label %while.end.i26.sw.bb43.i_crit_edge
    i32 8, label %while.end.i26.sw.bb47.i_crit_edge
    i32 7, label %while.end.i26.sw.bb52.i_crit_edge
    i32 6, label %while.end.i26.sw.bb57.i_crit_edge
    i32 5, label %while.end.i26.sw.bb62.i_crit_edge
    i32 4, label %while.end.i26.sw.bb66.i_crit_edge
    i32 3, label %while.end.i26.sw.bb71.i_crit_edge
    i32 2, label %while.end.i26.sw.bb76.i_crit_edge
    i32 1, label %while.end.i26.sw.bb81.i_crit_edge
  ]

while.end.i26.sw.bb81.i_crit_edge:                ; preds = %while.end.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb81.i

while.end.i26.sw.bb76.i_crit_edge:                ; preds = %while.end.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb76.i

while.end.i26.sw.bb71.i_crit_edge:                ; preds = %while.end.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb71.i

while.end.i26.sw.bb66.i_crit_edge:                ; preds = %while.end.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb66.i

while.end.i26.sw.bb62.i_crit_edge:                ; preds = %while.end.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb62.i

while.end.i26.sw.bb57.i_crit_edge:                ; preds = %while.end.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb57.i

while.end.i26.sw.bb52.i_crit_edge:                ; preds = %while.end.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb52.i

while.end.i26.sw.bb47.i_crit_edge:                ; preds = %while.end.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47.i

while.end.i26.sw.bb43.i_crit_edge:                ; preds = %while.end.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb43.i

while.end.i26.sw.bb38.i_crit_edge:                ; preds = %while.end.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb38.i

while.end.i26.sw.bb33.i_crit_edge:                ; preds = %while.end.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb33.i

while.end.i26.if.end_crit_edge:                   ; preds = %while.end.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb.i28:                                        ; preds = %while.end.i26
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr i8, ptr %k.0.lcssa.i, i32 11
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %25 to i32
  %shl.i27 = shl nuw i32 %conv.i, 24
  %add32.i = add i32 %shl.i27, %c.0.lcssa.i25
  br label %sw.bb33.i

sw.bb33.i:                                        ; preds = %sw.bb.i28, %while.end.i26.sw.bb33.i_crit_edge
  %c.1.i29 = phi i32 [ %c.0.lcssa.i25, %while.end.i26.sw.bb33.i_crit_edge ], [ %add32.i, %sw.bb.i28 ]
  %arrayidx34.i = getelementptr i8, ptr %k.0.lcssa.i, i32 10
  %26 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = zext i8 %27 to i32
  %shl36.i = shl nuw nsw i32 %conv35.i, 16
  %add37.i = add i32 %shl36.i, %c.1.i29
  br label %sw.bb38.i

sw.bb38.i:                                        ; preds = %sw.bb33.i, %while.end.i26.sw.bb38.i_crit_edge
  %c.2.i30 = phi i32 [ %c.0.lcssa.i25, %while.end.i26.sw.bb38.i_crit_edge ], [ %add37.i, %sw.bb33.i ]
  %arrayidx39.i = getelementptr i8, ptr %k.0.lcssa.i, i32 9
  %28 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx39.i, align 1
  %conv40.i = zext i8 %29 to i32
  %shl41.i = shl nuw nsw i32 %conv40.i, 8
  %add42.i = add i32 %shl41.i, %c.2.i30
  br label %sw.bb43.i

sw.bb43.i:                                        ; preds = %sw.bb38.i, %while.end.i26.sw.bb43.i_crit_edge
  %c.3.i31 = phi i32 [ %c.0.lcssa.i25, %while.end.i26.sw.bb43.i_crit_edge ], [ %add42.i, %sw.bb38.i ]
  %arrayidx44.i = getelementptr i8, ptr %k.0.lcssa.i, i32 8
  %30 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx44.i, align 1
  %conv45.i = zext i8 %31 to i32
  %add46.i = add i32 %c.3.i31, %conv45.i
  br label %sw.bb47.i

sw.bb47.i:                                        ; preds = %sw.bb43.i, %while.end.i26.sw.bb47.i_crit_edge
  %c.4.i = phi i32 [ %c.0.lcssa.i25, %while.end.i26.sw.bb47.i_crit_edge ], [ %add46.i, %sw.bb43.i ]
  %arrayidx48.i = getelementptr i8, ptr %k.0.lcssa.i, i32 7
  %32 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = zext i8 %33 to i32
  %shl50.i = shl nuw i32 %conv49.i, 24
  %add51.i = add i32 %shl50.i, %b.0.lcssa.i24
  br label %sw.bb52.i

sw.bb52.i:                                        ; preds = %sw.bb47.i, %while.end.i26.sw.bb52.i_crit_edge
  %b.1.i32 = phi i32 [ %b.0.lcssa.i24, %while.end.i26.sw.bb52.i_crit_edge ], [ %add51.i, %sw.bb47.i ]
  %c.5.i = phi i32 [ %c.0.lcssa.i25, %while.end.i26.sw.bb52.i_crit_edge ], [ %c.4.i, %sw.bb47.i ]
  %arrayidx53.i = getelementptr i8, ptr %k.0.lcssa.i, i32 6
  %34 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx53.i, align 1
  %conv54.i = zext i8 %35 to i32
  %shl55.i = shl nuw nsw i32 %conv54.i, 16
  %add56.i = add i32 %shl55.i, %b.1.i32
  br label %sw.bb57.i

sw.bb57.i:                                        ; preds = %sw.bb52.i, %while.end.i26.sw.bb57.i_crit_edge
  %b.2.i = phi i32 [ %b.0.lcssa.i24, %while.end.i26.sw.bb57.i_crit_edge ], [ %add56.i, %sw.bb52.i ]
  %c.6.i = phi i32 [ %c.0.lcssa.i25, %while.end.i26.sw.bb57.i_crit_edge ], [ %c.5.i, %sw.bb52.i ]
  %arrayidx58.i = getelementptr i8, ptr %k.0.lcssa.i, i32 5
  %36 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx58.i, align 1
  %conv59.i = zext i8 %37 to i32
  %shl60.i = shl nuw nsw i32 %conv59.i, 8
  %add61.i = add i32 %shl60.i, %b.2.i
  br label %sw.bb62.i

sw.bb62.i:                                        ; preds = %sw.bb57.i, %while.end.i26.sw.bb62.i_crit_edge
  %b.3.i = phi i32 [ %b.0.lcssa.i24, %while.end.i26.sw.bb62.i_crit_edge ], [ %add61.i, %sw.bb57.i ]
  %c.7.i = phi i32 [ %c.0.lcssa.i25, %while.end.i26.sw.bb62.i_crit_edge ], [ %c.6.i, %sw.bb57.i ]
  %arrayidx63.i = getelementptr i8, ptr %k.0.lcssa.i, i32 4
  %38 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx63.i, align 1
  %conv64.i = zext i8 %39 to i32
  %add65.i = add i32 %b.3.i, %conv64.i
  br label %sw.bb66.i

sw.bb66.i:                                        ; preds = %sw.bb62.i, %while.end.i26.sw.bb66.i_crit_edge
  %b.4.i = phi i32 [ %b.0.lcssa.i24, %while.end.i26.sw.bb66.i_crit_edge ], [ %add65.i, %sw.bb62.i ]
  %c.8.i = phi i32 [ %c.0.lcssa.i25, %while.end.i26.sw.bb66.i_crit_edge ], [ %c.7.i, %sw.bb62.i ]
  %arrayidx67.i = getelementptr i8, ptr %k.0.lcssa.i, i32 3
  %40 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx67.i, align 1
  %conv68.i = zext i8 %41 to i32
  %shl69.i = shl nuw i32 %conv68.i, 24
  %add70.i = add i32 %shl69.i, %a.0.lcssa.i23
  br label %sw.bb71.i

sw.bb71.i:                                        ; preds = %sw.bb66.i, %while.end.i26.sw.bb71.i_crit_edge
  %a.1.i = phi i32 [ %a.0.lcssa.i23, %while.end.i26.sw.bb71.i_crit_edge ], [ %add70.i, %sw.bb66.i ]
  %b.5.i = phi i32 [ %b.0.lcssa.i24, %while.end.i26.sw.bb71.i_crit_edge ], [ %b.4.i, %sw.bb66.i ]
  %c.9.i = phi i32 [ %c.0.lcssa.i25, %while.end.i26.sw.bb71.i_crit_edge ], [ %c.8.i, %sw.bb66.i ]
  %arrayidx72.i = getelementptr i8, ptr %k.0.lcssa.i, i32 2
  %42 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx72.i, align 1
  %conv73.i = zext i8 %43 to i32
  %shl74.i = shl nuw nsw i32 %conv73.i, 16
  %add75.i = add i32 %shl74.i, %a.1.i
  br label %sw.bb76.i

sw.bb76.i:                                        ; preds = %sw.bb71.i, %while.end.i26.sw.bb76.i_crit_edge
  %a.2.i = phi i32 [ %a.0.lcssa.i23, %while.end.i26.sw.bb76.i_crit_edge ], [ %add75.i, %sw.bb71.i ]
  %b.6.i = phi i32 [ %b.0.lcssa.i24, %while.end.i26.sw.bb76.i_crit_edge ], [ %b.5.i, %sw.bb71.i ]
  %c.10.i = phi i32 [ %c.0.lcssa.i25, %while.end.i26.sw.bb76.i_crit_edge ], [ %c.9.i, %sw.bb71.i ]
  %arrayidx77.i = getelementptr i8, ptr %k.0.lcssa.i, i32 1
  %44 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx77.i, align 1
  %conv78.i = zext i8 %45 to i32
  %shl79.i = shl nuw nsw i32 %conv78.i, 8
  %add80.i = add i32 %shl79.i, %a.2.i
  br label %sw.bb81.i

sw.bb81.i:                                        ; preds = %sw.bb76.i, %while.end.i26.sw.bb81.i_crit_edge
  %a.3.i = phi i32 [ %a.0.lcssa.i23, %while.end.i26.sw.bb81.i_crit_edge ], [ %add80.i, %sw.bb76.i ]
  %b.7.i = phi i32 [ %b.0.lcssa.i24, %while.end.i26.sw.bb81.i_crit_edge ], [ %b.6.i, %sw.bb76.i ]
  %c.11.i = phi i32 [ %c.0.lcssa.i25, %while.end.i26.sw.bb81.i_crit_edge ], [ %c.10.i, %sw.bb76.i ]
  %46 = ptrtoint ptr %k.0.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %k.0.lcssa.i, align 1
  %conv83.i = zext i8 %47 to i32
  %add84.i = add i32 %a.3.i, %conv83.i
  %xor85.i = xor i32 %c.11.i, %b.7.i
  %or.i206.i = tail call i32 @llvm.fshl.i32(i32 %b.7.i, i32 %b.7.i, i32 14) #6
  %sub87.i = sub i32 %xor85.i, %or.i206.i
  %xor88.i = xor i32 %add84.i, %sub87.i
  %or.i207.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i, i32 %sub87.i, i32 11) #6
  %sub90.i = sub i32 %xor88.i, %or.i207.i
  %xor91.i = xor i32 %sub90.i, %b.7.i
  %or.i208.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i, i32 %sub90.i, i32 25) #6
  %sub93.i = sub i32 %xor91.i, %or.i208.i
  %xor94.i = xor i32 %sub93.i, %sub87.i
  %or.i209.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i, i32 %sub93.i, i32 16) #6
  %sub96.i = sub i32 %xor94.i, %or.i209.i
  %xor97.i = xor i32 %sub96.i, %sub90.i
  %or.i210.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i, i32 %sub96.i, i32 4) #6
  %sub99.i = sub i32 %xor97.i, %or.i210.i
  %xor100.i = xor i32 %sub99.i, %sub93.i
  %or.i211.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i, i32 %sub99.i, i32 14) #6
  %sub102.i = sub i32 %xor100.i, %or.i211.i
  %xor103.i = xor i32 %sub102.i, %sub96.i
  %or.i212.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i, i32 %sub102.i, i32 24) #6
  %sub105.i = sub i32 %xor103.i, %or.i212.i
  br label %if.end

if.end:                                           ; preds = %sw.bb81.i, %while.end.i26.if.end_crit_edge, %sw.bb34.i, %while.end.i.if.end_crit_edge
  %h.0 = phi i32 [ %c.0.lcssa.i, %while.end.i.if.end_crit_edge ], [ %sub57.i, %sw.bb34.i ], [ %c.0.lcssa.i25, %while.end.i26.if.end_crit_edge ], [ %sub105.i, %sw.bb81.i ]
  %bitset_mask = getelementptr inbounds %struct.bpf_bloom_filter, ptr %bloom, i32 0, i32 1
  %48 = ptrtoint ptr %bitset_mask to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bitset_mask, align 128
  %and = and i32 %49, %h.0
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @btf_type_is_void(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/bpf/bloom_filter.c", i32 208, i32 18}
!2 = !{ptr @bloom_filter_map_ops, !3, !"bloom_filter_map_ops", i1 false, i1 false}
!3 = !{!"../kernel/bpf/bloom_filter.c", i32 196, i32 26}
!4 = !{ptr @bpf_bloom_map_btf_id, !5, !"bpf_bloom_map_btf_id", i1 false, i1 false}
!5 = !{!"../kernel/bpf/bloom_filter.c", i32 195, i32 12}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i32 0, i32 33}
