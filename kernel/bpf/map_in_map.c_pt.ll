; ModuleID = '/llk/IR_all_yes/kernel/bpf/map_in_map.c_pt.bc'
source_filename = "../kernel/bpf/map_in_map.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bpf_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.bpf_array = type { %struct.bpf_map, i32, i32, ptr, [4 x i8], %union.anon.104, [112 x i8] }
%union.anon.104 = type { [0 x ptr] }

@array_map_ops = external dso_local constant %struct.bpf_map_ops, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bpf_map_meta_alloc(i32 noundef %inner_map_ufd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__fdget(i32 noundef %inner_map_ufd) #4, !noalias !9
  %and.i.i = and i32 %call.i, -4
  %0 = inttoptr i32 %and.i.i to ptr
  %and1.i.i = and i32 %call.i, 3
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %and.i.i, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %and1.i.i, 1
  %call = tail call ptr @__bpf_map_get([2 x i32] %.fca.1.insert) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %inner_map_meta2 = getelementptr inbounds %struct.bpf_map, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %inner_map_meta2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %inner_map_meta2, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then3.cleanup_crit_edge, label %if.then3.cleanup.sink.split_crit_edge

if.then3.cleanup.sink.split_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 128
  %map_meta_equal = getelementptr inbounds %struct.bpf_map_ops, ptr %4, i32 0, i32 35
  %5 = ptrtoint ptr %map_meta_equal to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map_meta_equal, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %and.i117 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i117)
  %tobool.not.i118 = icmp eq i32 %and.i117, 0
  br i1 %tobool.not.i118, label %if.then7.cleanup_crit_edge, label %if.then7.cleanup.sink.split_crit_edge

if.then7.cleanup.sink.split_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %spin_lock_off.i = getelementptr inbounds %struct.bpf_map, ptr %call, i32 0, i32 9
  %7 = ptrtoint ptr %spin_lock_off.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %spin_lock_off.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i121 = icmp sgt i32 %8, -1
  br i1 %cmp.i121, label %if.then11, label %if.end8.i.i

if.then11:                                        ; preds = %if.end9
  %and.i122 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i122)
  %tobool.not.i123 = icmp eq i32 %and.i122, 0
  br i1 %tobool.not.i123, label %if.then11.cleanup_crit_edge, label %if.then11.cleanup.sink.split_crit_edge

if.then11.cleanup.sink.split_crit_edge:           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end9
  %cmp = icmp eq ptr %4, @array_map_ops
  %spec.store.select = select i1 %cmp, i32 512, i32 384
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.store.select, i32 noundef 1052096) #7
  %tobool18.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool18.not, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end8.i.i
  %and.i126 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i126)
  %tobool.not.i127 = icmp eq i32 %and.i126, 0
  br i1 %tobool.not.i127, label %if.then19.cleanup_crit_edge, label %if.then19.cleanup.sink.split_crit_edge

if.then19.cleanup.sink.split_crit_edge:           ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end21:                                         ; preds = %if.end8.i.i
  %map_type = getelementptr inbounds %struct.bpf_map, ptr %call, i32 0, i32 3
  %9 = ptrtoint ptr %map_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %map_type, align 4
  %map_type22 = getelementptr inbounds %struct.bpf_map, ptr %call9.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %map_type22 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %map_type22, align 4
  %key_size = getelementptr inbounds %struct.bpf_map, ptr %call, i32 0, i32 4
  %12 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %key_size, align 16
  %key_size23 = getelementptr inbounds %struct.bpf_map, ptr %call9.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %key_size23 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %key_size23, align 16
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %call, i32 0, i32 5
  %15 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value_size, align 4
  %value_size24 = getelementptr inbounds %struct.bpf_map, ptr %call9.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %value_size24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %value_size24, align 4
  %map_flags = getelementptr inbounds %struct.bpf_map, ptr %call, i32 0, i32 8
  %18 = ptrtoint ptr %map_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %map_flags, align 8
  %map_flags25 = getelementptr inbounds %struct.bpf_map, ptr %call9.i.i, i32 0, i32 8
  %20 = ptrtoint ptr %map_flags25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %map_flags25, align 8
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %call, i32 0, i32 6
  %21 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_entries, align 8
  %max_entries26 = getelementptr inbounds %struct.bpf_map, ptr %call9.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %max_entries26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %max_entries26, align 8
  %24 = ptrtoint ptr %spin_lock_off.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %spin_lock_off.i, align 4
  %spin_lock_off27 = getelementptr inbounds %struct.bpf_map, ptr %call9.i.i, i32 0, i32 9
  %26 = ptrtoint ptr %spin_lock_off27 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %spin_lock_off27, align 4
  %timer_off = getelementptr inbounds %struct.bpf_map, ptr %call, i32 0, i32 10
  %27 = ptrtoint ptr %timer_off to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %timer_off, align 16
  %timer_off28 = getelementptr inbounds %struct.bpf_map, ptr %call9.i.i, i32 0, i32 10
  %29 = ptrtoint ptr %timer_off28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %timer_off28, align 16
  %btf = getelementptr inbounds %struct.bpf_map, ptr %call, i32 0, i32 16
  %30 = ptrtoint ptr %btf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %btf, align 8
  %tobool29.not = icmp eq ptr %31, null
  br i1 %tobool29.not, label %if.end21.if.end34_crit_edge, label %if.then30

if.end21.if.end34_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then30:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @btf_get(ptr noundef nonnull %31) #4
  %32 = ptrtoint ptr %btf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %btf, align 8
  %btf33 = getelementptr inbounds %struct.bpf_map, ptr %call9.i.i, i32 0, i32 16
  %34 = ptrtoint ptr %btf33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %btf33, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end21.if.end34_crit_edge
  %35 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call, align 128
  %37 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %call9.i.i, align 128
  %cmp38 = icmp eq ptr %36, @array_map_ops
  br i1 %cmp38, label %if.then39, label %if.end34.if.end47_crit_edge

if.end34.if.end47_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  %bypass_spec_v1 = getelementptr inbounds %struct.bpf_map, ptr %call, i32 0, i32 19
  %38 = ptrtoint ptr %bypass_spec_v1 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bypass_spec_v1, align 32, !range !12
  %bypass_spec_v141 = getelementptr inbounds %struct.bpf_map, ptr %call9.i.i, i32 0, i32 19
  %40 = ptrtoint ptr %bypass_spec_v141 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %bypass_spec_v141, align 32
  %index_mask = getelementptr inbounds %struct.bpf_array, ptr %call, i32 0, i32 2
  %41 = ptrtoint ptr %index_mask to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %index_mask, align 4
  %index_mask46 = getelementptr inbounds %struct.bpf_array, ptr %call9.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %index_mask46 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %index_mask46, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then39, %if.end34.if.end47_crit_edge
  %and.i130 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130)
  %tobool.not.i131 = icmp eq i32 %and.i130, 0
  br i1 %tobool.not.i131, label %if.end47.cleanup_crit_edge, label %if.end47.cleanup.sink.split_crit_edge

if.end47.cleanup.sink.split_crit_edge:            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end47.cleanup.sink.split_crit_edge, %if.then19.cleanup.sink.split_crit_edge, %if.then11.cleanup.sink.split_crit_edge, %if.then7.cleanup.sink.split_crit_edge, %if.then3.cleanup.sink.split_crit_edge
  %retval.0.ph = phi ptr [ inttoptr (i32 -22 to ptr), %if.then3.cleanup.sink.split_crit_edge ], [ inttoptr (i32 -524 to ptr), %if.then7.cleanup.sink.split_crit_edge ], [ inttoptr (i32 -524 to ptr), %if.then11.cleanup.sink.split_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then19.cleanup.sink.split_crit_edge ], [ %call9.i.i, %if.end47.cleanup.sink.split_crit_edge ]
  tail call void @fput(ptr noundef %0) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end47.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then3.cleanup_crit_edge ], [ inttoptr (i32 -524 to ptr), %if.then7.cleanup_crit_edge ], [ inttoptr (i32 -524 to ptr), %if.then11.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then19.cleanup_crit_edge ], [ %call9.i.i, %if.end47.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bpf_map_get([2 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @btf_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_map_meta_free(ptr noundef %map_meta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %btf = getelementptr inbounds %struct.bpf_map, ptr %map_meta, i32 0, i32 16
  %0 = ptrtoint ptr %btf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btf, align 8
  tail call void @btf_put(ptr noundef %1) #4
  tail call void @kfree(ptr noundef %map_meta) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btf_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @bpf_map_meta_equal(ptr nocapture noundef readonly %meta0, ptr nocapture noundef readonly %meta1) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %map_type = getelementptr inbounds %struct.bpf_map, ptr %meta0, i32 0, i32 3
  %0 = ptrtoint ptr %map_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_type, align 4
  %map_type1 = getelementptr inbounds %struct.bpf_map, ptr %meta1, i32 0, i32 3
  %2 = ptrtoint ptr %map_type1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_type1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %key_size = getelementptr inbounds %struct.bpf_map, ptr %meta0, i32 0, i32 4
  %4 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key_size, align 16
  %key_size2 = getelementptr inbounds %struct.bpf_map, ptr %meta1, i32 0, i32 4
  %6 = ptrtoint ptr %key_size2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key_size2, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3 = icmp eq i32 %5, %7
  br i1 %cmp3, label %land.lhs.true4, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %meta0, i32 0, i32 5
  %8 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value_size, align 4
  %value_size5 = getelementptr inbounds %struct.bpf_map, ptr %meta1, i32 0, i32 5
  %10 = ptrtoint ptr %value_size5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value_size5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp6 = icmp eq i32 %9, %11
  br i1 %cmp6, label %land.lhs.true7, label %land.lhs.true4.land.end_crit_edge

land.lhs.true4.land.end_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %timer_off = getelementptr inbounds %struct.bpf_map, ptr %meta0, i32 0, i32 10
  %12 = ptrtoint ptr %timer_off to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timer_off, align 16
  %timer_off8 = getelementptr inbounds %struct.bpf_map, ptr %meta1, i32 0, i32 10
  %14 = ptrtoint ptr %timer_off8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %timer_off8, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp9 = icmp eq i32 %13, %15
  br i1 %cmp9, label %land.rhs, label %land.lhs.true7.land.end_crit_edge

land.lhs.true7.land.end_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #6
  %map_flags = getelementptr inbounds %struct.bpf_map, ptr %meta0, i32 0, i32 8
  %16 = ptrtoint ptr %map_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %map_flags, align 8
  %map_flags10 = getelementptr inbounds %struct.bpf_map, ptr %meta1, i32 0, i32 8
  %18 = ptrtoint ptr %map_flags10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %map_flags10, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp11 = icmp eq i32 %17, %19
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true7.land.end_crit_edge, %land.lhs.true4.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %20 = phi i1 [ false, %land.lhs.true7.land.end_crit_edge ], [ false, %land.lhs.true4.land.end_crit_edge ], [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %cmp11, %land.rhs ]
  ret i1 %20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bpf_map_fd_get_ptr(ptr nocapture noundef readonly %map, ptr nocapture noundef readnone %map_file, i32 noundef %ufd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__fdget(i32 noundef %ufd) #4, !noalias !13
  %and.i.i = and i32 %call.i, -4
  %0 = inttoptr i32 %and.i.i to ptr
  %and1.i.i = and i32 %call.i, 3
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %and.i.i, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %and1.i.i, 1
  %call = tail call ptr @__bpf_map_get([2 x i32] %.fca.1.insert) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %inner_map_meta2 = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 1
  %1 = ptrtoint ptr %inner_map_meta2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %inner_map_meta2, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 128
  %map_meta_equal = getelementptr inbounds %struct.bpf_map_ops, ptr %4, i32 0, i32 35
  %5 = ptrtoint ptr %map_meta_equal to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map_meta_equal, align 4
  %call3 = tail call zeroext i1 %6(ptr noundef %2, ptr noundef %call) #4
  br i1 %call3, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @bpf_map_inc(ptr noundef %call) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %inner_map.0 = phi ptr [ %call, %if.then4 ], [ inttoptr (i32 -22 to ptr), %if.end.if.end6_crit_edge ]
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end6.cleanup_crit_edge, label %if.then.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @fput(ptr noundef %0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %entry.cleanup_crit_edge ], [ %inner_map.0, %if.end6.cleanup_crit_edge ], [ %inner_map.0, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_inc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_map_fd_put_ptr(ptr noundef %ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @bpf_map_put(ptr noundef %ptr) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bpf_map_fd_sys_lookup_elem(ptr nocapture noundef readonly %ptr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.bpf_map, ptr %ptr, i32 0, i32 11
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"fdget: %agg.result"}
!11 = distinct !{!11, !"fdget"}
!12 = !{i8 0, i8 2}
!13 = !{!14}
!14 = distinct !{!14, !15, !"fdget: %agg.result"}
!15 = distinct !{!15, !"fdget"}
