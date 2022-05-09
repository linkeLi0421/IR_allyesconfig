; ModuleID = '/llk/IR_all_yes/drivers/crypto/inside-secure/safexcel_ring.c_pt.bc'
source_filename = "../drivers/crypto/inside-secure/safexcel_ring.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.safexcel_crypto_priv = type { ptr, ptr, ptr, ptr, %struct.safexcel_config, i32, %struct.safexcel_register_offsets, %struct.safexcel_hwconfig, i32, ptr, %struct.atomic_t, ptr }
%struct.safexcel_config = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.safexcel_register_offsets = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.safexcel_hwconfig = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.safexcel_desc_ring = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32 }
%struct.safexcel_command_desc = type { i32, i32, i32, i32, i32, i32, %struct.safexcel_control_data_desc }
%struct.safexcel_control_data_desc = type { i32, i16, i16, i32, i32, i32, i32, [4 x i32] }
%struct.safexcel_ring = type { %struct.spinlock, ptr, %struct.safexcel_work_data, %struct.safexcel_desc_ring, %struct.safexcel_desc_ring, ptr, %struct.crypto_queue, %struct.spinlock, i32, i8, ptr, ptr, i32 }
%struct.safexcel_work_data = type { %struct.work_struct, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.safexcel_result_desc = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @safexcel_init_ring_descriptors(ptr nocapture noundef readonly %priv, ptr noundef %cdr, ptr noundef %rdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cd_offset = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %cd_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cd_offset, align 4
  %offset = getelementptr inbounds %struct.safexcel_desc_ring, ptr %cdr, i32 0, i32 9
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %offset, align 4
  %dev = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %mul = mul i32 %1, 400
  %base_dma = getelementptr inbounds %struct.safexcel_desc_ring, ptr %cdr, i32 0, i32 4
  %call.i = tail call ptr @dmam_alloc_attrs(ptr noundef %4, i32 noundef %mul, ptr noundef %base_dma, i32 noundef 3264, i32 noundef 0) #8
  %5 = ptrtoint ptr %cdr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %cdr, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %write = getelementptr inbounds %struct.safexcel_desc_ring, ptr %cdr, i32 0, i32 6
  %6 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %write, align 4
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset, align 4
  %mul6 = mul i32 %8, 399
  %add.ptr = getelementptr i8, ptr %call.i, i32 %mul6
  %base_end = getelementptr inbounds %struct.safexcel_desc_ring, ptr %cdr, i32 0, i32 2
  %9 = ptrtoint ptr %base_end to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %base_end, align 4
  %read = getelementptr inbounds %struct.safexcel_desc_ring, ptr %cdr, i32 0, i32 8
  %10 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %read, align 4
  %cdsh_offset = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4, i32 4
  %11 = ptrtoint ptr %cdsh_offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cdsh_offset, align 4
  %shoffset = getelementptr inbounds %struct.safexcel_desc_ring, ptr %cdr, i32 0, i32 10
  %13 = ptrtoint ptr %shoffset to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %shoffset, align 4
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %mul11 = mul i32 %12, 400
  %shbase_dma = getelementptr inbounds %struct.safexcel_desc_ring, ptr %cdr, i32 0, i32 5
  %call.i101 = tail call ptr @dmam_alloc_attrs(ptr noundef %15, i32 noundef %mul11, ptr noundef %shbase_dma, i32 noundef 3264, i32 noundef 0) #8
  %shbase = getelementptr inbounds %struct.safexcel_desc_ring, ptr %cdr, i32 0, i32 1
  %16 = ptrtoint ptr %shbase to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i101, ptr %shbase, align 4
  %tobool14.not = icmp eq ptr %call.i101, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %shwrite = getelementptr inbounds %struct.safexcel_desc_ring, ptr %cdr, i32 0, i32 7
  %17 = ptrtoint ptr %shwrite to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i101, ptr %shwrite, align 4
  %18 = ptrtoint ptr %shoffset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %shoffset, align 4
  %mul20 = mul i32 %19, 399
  %add.ptr21 = getelementptr i8, ptr %call.i101, i32 %mul20
  %shbase_end = getelementptr inbounds %struct.safexcel_desc_ring, ptr %cdr, i32 0, i32 3
  %20 = ptrtoint ptr %shbase_end to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr21, ptr %shbase_end, align 4
  %21 = ptrtoint ptr %cdr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cdr, align 4
  %23 = ptrtoint ptr %shbase_dma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %shbase_dma, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end16
  %atok.0105 = phi i32 [ %24, %if.end16 ], [ %add, %for.body.for.body_crit_edge ]
  %cdesc.0104 = phi ptr [ %22, %if.end16 ], [ %add.ptr26, %for.body.for.body_crit_edge ]
  %i.0103 = phi i32 [ 0, %if.end16 ], [ %inc, %for.body.for.body_crit_edge ]
  %atok_lo = getelementptr inbounds %struct.safexcel_command_desc, ptr %cdesc.0104, i32 0, i32 4
  %25 = ptrtoint ptr %atok_lo to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %atok.0105, ptr %atok_lo, align 1
  %atok_hi = getelementptr inbounds %struct.safexcel_command_desc, ptr %cdesc.0104, i32 0, i32 5
  %26 = ptrtoint ptr %atok_hi to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 0, ptr %atok_hi, align 1
  %27 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset, align 4
  %add.ptr26 = getelementptr i8, ptr %cdesc.0104, i32 %28
  %29 = ptrtoint ptr %shoffset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %shoffset, align 4
  %add = add i32 %30, %atok.0105
  %inc = add nuw nsw i32 %i.0103, 1
  %exitcond.not = icmp eq i32 %inc, 400
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %rd_offset = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4, i32 6
  %31 = ptrtoint ptr %rd_offset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rd_offset, align 4
  %offset29 = getelementptr inbounds %struct.safexcel_desc_ring, ptr %rdr, i32 0, i32 9
  %33 = ptrtoint ptr %offset29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %offset29, align 4
  %res_offset = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4, i32 7
  %34 = ptrtoint ptr %res_offset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %res_offset, align 4
  %shoffset31 = getelementptr inbounds %struct.safexcel_desc_ring, ptr %rdr, i32 0, i32 10
  %36 = ptrtoint ptr %shoffset31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %shoffset31, align 4
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %mul34 = mul i32 %32, 400
  %base_dma35 = getelementptr inbounds %struct.safexcel_desc_ring, ptr %rdr, i32 0, i32 4
  %call.i102 = tail call ptr @dmam_alloc_attrs(ptr noundef %38, i32 noundef %mul34, ptr noundef %base_dma35, i32 noundef 3264, i32 noundef 0) #8
  %39 = ptrtoint ptr %rdr to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i102, ptr %rdr, align 4
  %tobool39.not = icmp eq ptr %call.i102, null
  br i1 %tobool39.not, label %for.end.cleanup_crit_edge, label %if.end41

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end41:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %write43 = getelementptr inbounds %struct.safexcel_desc_ring, ptr %rdr, i32 0, i32 6
  %40 = ptrtoint ptr %write43 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i102, ptr %write43, align 4
  %41 = ptrtoint ptr %offset29 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %offset29, align 4
  %mul46 = mul i32 %42, 399
  %add.ptr47 = getelementptr i8, ptr %call.i102, i32 %mul46
  %base_end48 = getelementptr inbounds %struct.safexcel_desc_ring, ptr %rdr, i32 0, i32 2
  %43 = ptrtoint ptr %base_end48 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr47, ptr %base_end48, align 4
  %read50 = getelementptr inbounds %struct.safexcel_desc_ring, ptr %rdr, i32 0, i32 8
  %44 = ptrtoint ptr %read50 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i102, ptr %read50, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end41 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @safexcel_select_ring(ptr noundef %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ring_used = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ring_used, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !9
  tail call void @llvm.prefetch.p0(ptr %ring_used, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ring_used, ptr %ring_used, i32 1, ptr elementtype(i32) %ring_used) #8, !srcloc !10
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !11
  %rings = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %rings to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rings, align 4
  %rem = urem i32 %asmresult.i.i.i.i, %2
  ret i32 %rem
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @safexcel_ring_next_rptr(ptr nocapture noundef readnone %priv, ptr nocapture noundef %ring) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %read = getelementptr inbounds %struct.safexcel_desc_ring, ptr %ring, i32 0, i32 8
  %0 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read, align 4
  %write = getelementptr inbounds %struct.safexcel_desc_ring, ptr %ring, i32 0, i32 6
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  %cmp = icmp eq ptr %3, %1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %base_end = getelementptr inbounds %struct.safexcel_desc_ring, ptr %ring, i32 0, i32 2
  %4 = ptrtoint ptr %base_end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_end, align 4
  %cmp3 = icmp eq ptr %1, %5
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring, align 4
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %offset = getelementptr inbounds %struct.safexcel_desc_ring, ptr %ring, i32 0, i32 9
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %9
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %storemerge = phi ptr [ %add.ptr, %if.else ], [ %7, %if.then4 ]
  %10 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %storemerge, ptr %read, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.end7 ], [ inttoptr (i32 -2 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @safexcel_ring_curr_rptr(ptr nocapture noundef readonly %priv, i32 noundef %ring) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ring1 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %ring1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring1, align 4
  %read = getelementptr %struct.safexcel_ring, ptr %1, i32 %ring, i32 4, i32 8
  %2 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read, align 4
  ret ptr %3
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @safexcel_ring_first_rdr_index(ptr nocapture noundef readonly %priv, i32 noundef %ring) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ring1 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %ring1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring1, align 4
  %rdr2 = getelementptr %struct.safexcel_ring, ptr %1, i32 %ring, i32 4
  %read = getelementptr %struct.safexcel_ring, ptr %1, i32 %ring, i32 4, i32 8
  %2 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read, align 4
  %4 = ptrtoint ptr %rdr2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdr2, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %offset = getelementptr %struct.safexcel_ring, ptr %1, i32 %ring, i32 4, i32 9
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %div = udiv i32 %sub.ptr.sub, %7
  ret i32 %div
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @safexcel_ring_rdr_rdesc_index(ptr nocapture noundef readonly %priv, i32 noundef %ring, ptr noundef %rdesc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ring1 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %ring1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring1, align 4
  %rdr2 = getelementptr %struct.safexcel_ring, ptr %1, i32 %ring, i32 4
  %2 = ptrtoint ptr %rdr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdr2, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %rdesc to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %offset = getelementptr %struct.safexcel_ring, ptr %1, i32 %ring, i32 4, i32 9
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %div = udiv i32 %sub.ptr.sub, %5
  ret i32 %div
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @safexcel_ring_rollback_wptr(ptr nocapture noundef readnone %priv, ptr nocapture noundef %ring) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %write = getelementptr inbounds %struct.safexcel_desc_ring, ptr %ring, i32 0, i32 6
  %0 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write, align 4
  %read = getelementptr inbounds %struct.safexcel_desc_ring, ptr %ring, i32 0, i32 8
  %2 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read, align 4
  %cmp = icmp eq ptr %1, %3
  br i1 %cmp, label %entry.if.end9_crit_edge, label %if.end

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring, align 4
  %cmp2 = icmp eq ptr %1, %5
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %base_end = getelementptr inbounds %struct.safexcel_desc_ring, ptr %ring, i32 0, i32 2
  %6 = ptrtoint ptr %base_end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_end, align 4
  %8 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %write, align 4
  %shbase_end = getelementptr inbounds %struct.safexcel_desc_ring, ptr %ring, i32 0, i32 3
  %9 = ptrtoint ptr %shbase_end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %shbase_end, align 4
  %shwrite = getelementptr inbounds %struct.safexcel_desc_ring, ptr %ring, i32 0, i32 7
  %11 = ptrtoint ptr %shwrite to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %shwrite, align 4
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %offset = getelementptr inbounds %struct.safexcel_desc_ring, ptr %ring, i32 0, i32 9
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  %idx.neg = sub i32 0, %13
  %add.ptr = getelementptr i8, ptr %1, i32 %idx.neg
  %14 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr, ptr %write, align 4
  %shoffset = getelementptr inbounds %struct.safexcel_desc_ring, ptr %ring, i32 0, i32 10
  %15 = ptrtoint ptr %shoffset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %shoffset, align 4
  %shwrite6 = getelementptr inbounds %struct.safexcel_desc_ring, ptr %ring, i32 0, i32 7
  %17 = ptrtoint ptr %shwrite6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %shwrite6, align 4
  %idx.neg7 = sub i32 0, %16
  %add.ptr8 = getelementptr i8, ptr %18, i32 %idx.neg7
  store ptr %add.ptr8, ptr %shwrite6, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then3, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @safexcel_add_cdesc(ptr nocapture noundef readonly %priv, i32 noundef %ring_id, i1 noundef zeroext %first, i1 noundef zeroext %last, i32 noundef %data, i32 noundef %data_len, i32 noundef %full_data_len, i32 noundef %context, ptr nocapture noundef writeonly %atoken) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ring = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 4
  %cdr = getelementptr %struct.safexcel_ring, ptr %1, i32 %ring_id, i32 3
  %write.i = getelementptr %struct.safexcel_ring, ptr %1, i32 %ring_id, i32 3, i32 6
  %2 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write.i, align 4
  br i1 %first, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shwrite.i = getelementptr %struct.safexcel_ring, ptr %1, i32 %ring_id, i32 3, i32 7
  %4 = ptrtoint ptr %shwrite.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shwrite.i, align 4
  %6 = ptrtoint ptr %atoken to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %atoken, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write.i, align 4
  %read.i = getelementptr %struct.safexcel_ring, ptr %1, i32 %ring_id, i32 3, i32 8
  %9 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i, align 4
  %offset.i = getelementptr %struct.safexcel_ring, ptr %1, i32 %ring_id, i32 3, i32 9
  %11 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset.i, align 4
  %idx.neg.i = sub i32 0, %12
  %add.ptr.i = getelementptr i8, ptr %10, i32 %idx.neg.i
  %cmp.i = icmp eq ptr %8, %add.ptr.i
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %lor.lhs.false.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end.i
  %13 = ptrtoint ptr %cdr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cdr, align 4
  %cmp3.i = icmp eq ptr %10, %14
  br i1 %cmp3.i, label %land.lhs.true.i, label %lor.lhs.false.i.if.end7.i_crit_edge

lor.lhs.false.i.if.end7.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %base_end.i = getelementptr %struct.safexcel_ring, ptr %1, i32 %ring_id, i32 3, i32 2
  %15 = ptrtoint ptr %base_end.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_end.i, align 4
  %cmp5.i = icmp eq ptr %8, %16
  br i1 %cmp5.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end7.i_crit_edge

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i:                                        ; preds = %land.lhs.true.i.if.end7.i_crit_edge, %lor.lhs.false.i.if.end7.i_crit_edge
  %base_end9.i = getelementptr %struct.safexcel_ring, ptr %1, i32 %ring_id, i32 3, i32 2
  %17 = ptrtoint ptr %base_end9.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base_end9.i, align 4
  %cmp10.i = icmp eq ptr %8, %18
  br i1 %cmp10.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %14, ptr %write.i, align 4
  %shbase.i = getelementptr %struct.safexcel_ring, ptr %1, i32 %ring_id, i32 3, i32 1
  %20 = ptrtoint ptr %shbase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %shbase.i, align 4
  %shwrite14.i = getelementptr %struct.safexcel_ring, ptr %1, i32 %ring_id, i32 3, i32 7
  %22 = ptrtoint ptr %shwrite14.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %shwrite14.i, align 4
  br label %safexcel_ring_next_cwptr.exit

if.else.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr17.i = getelementptr i8, ptr %8, i32 %12
  %23 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr17.i, ptr %write.i, align 4
  %shoffset.i = getelementptr %struct.safexcel_ring, ptr %1, i32 %ring_id, i32 3, i32 10
  %24 = ptrtoint ptr %shoffset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %shoffset.i, align 4
  %shwrite18.i = getelementptr %struct.safexcel_ring, ptr %1, i32 %ring_id, i32 3, i32 7
  %26 = ptrtoint ptr %shwrite18.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shwrite18.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %27, i32 %25
  store ptr %add.ptr19.i, ptr %shwrite18.i, align 4
  br label %safexcel_ring_next_cwptr.exit

safexcel_ring_next_cwptr.exit:                    ; preds = %if.else.i, %if.then11.i
  %cmp.i66 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i66, label %safexcel_ring_next_cwptr.exit.cleanup_crit_edge, label %if.end

safexcel_ring_next_cwptr.exit.cleanup_crit_edge:  ; preds = %safexcel_ring_next_cwptr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %safexcel_ring_next_cwptr.exit
  %bf.shl = shl i32 %data_len, 15
  %bf.shl9 = select i1 %last, i32 512, i32 0
  %bf.set11 = or i32 %bf.shl, %bf.shl9
  %bf.shl16 = select i1 %first, i32 256, i32 0
  %bf.set18 = or i32 %bf.set11, %bf.shl16
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %bf.set18, ptr %3, align 1
  %rsvd1 = getelementptr inbounds %struct.safexcel_command_desc, ptr %3, i32 0, i32 1
  %29 = ptrtoint ptr %rsvd1 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 0, ptr %rsvd1, align 1
  %data_lo = getelementptr inbounds %struct.safexcel_command_desc, ptr %3, i32 0, i32 2
  %30 = ptrtoint ptr %data_lo to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %data, ptr %data_lo, align 1
  %data_hi = getelementptr inbounds %struct.safexcel_command_desc, ptr %3, i32 0, i32 3
  %31 = ptrtoint ptr %data_hi to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 0, ptr %data_hi, align 1
  br i1 %first, label %if.then25, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %full_data_len)
  %tobool26.not = icmp eq i32 %full_data_len, 0
  %control_data = getelementptr inbounds %struct.safexcel_command_desc, ptr %3, i32 0, i32 6
  %full_data_len.op = shl i32 %full_data_len, 15
  %full_data_len.op.op = or i32 %full_data_len.op, 1100
  %bf.set35 = select i1 %tobool26.not, i32 33868, i32 %full_data_len.op.op
  %32 = ptrtoint ptr %control_data to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %bf.set35, ptr %control_data, align 1
  %or = or i32 %context, 2
  %context_lo = getelementptr inbounds %struct.safexcel_command_desc, ptr %3, i32 0, i32 6, i32 3
  %33 = ptrtoint ptr %context_lo to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %or, ptr %context_lo, align 1
  %context_hi = getelementptr inbounds %struct.safexcel_command_desc, ptr %3, i32 0, i32 6, i32 4
  %34 = ptrtoint ptr %context_hi to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 0, ptr %context_hi, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end.cleanup_crit_edge, %safexcel_ring_next_cwptr.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0.i69 = phi ptr [ %3, %if.end.cleanup_crit_edge ], [ %3, %if.then25 ], [ %3, %safexcel_ring_next_cwptr.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %land.lhs.true.i.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0.i69
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @safexcel_add_rdesc(ptr nocapture noundef readonly %priv, i32 noundef %ring_id, i1 noundef zeroext %first, i1 noundef zeroext %last, i32 noundef %data, i32 noundef %len) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ring = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 4
  %write.i = getelementptr %struct.safexcel_ring, ptr %1, i32 %ring_id, i32 4, i32 6
  %2 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write.i, align 4
  %shoffset.i = getelementptr %struct.safexcel_ring, ptr %1, i32 %ring_id, i32 4, i32 10
  %4 = ptrtoint ptr %shoffset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %shoffset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %5
  %read.i = getelementptr %struct.safexcel_ring, ptr %1, i32 %ring_id, i32 4, i32 8
  %6 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i, align 4
  %offset.i = getelementptr %struct.safexcel_ring, ptr %1, i32 %ring_id, i32 4, i32 9
  %8 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset.i, align 4
  %idx.neg.i = sub i32 0, %9
  %add.ptr3.i = getelementptr i8, ptr %7, i32 %idx.neg.i
  %cmp.i = icmp eq ptr %3, %add.ptr3.i
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %rdr = getelementptr %struct.safexcel_ring, ptr %1, i32 %ring_id, i32 4
  %10 = ptrtoint ptr %rdr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rdr, align 4
  %cmp5.i = icmp eq ptr %7, %11
  br i1 %cmp5.i, label %land.lhs.true.i, label %lor.lhs.false.i.safexcel_ring_next_rwptr.exit_crit_edge

lor.lhs.false.i.safexcel_ring_next_rwptr.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %safexcel_ring_next_rwptr.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %base_end.i = getelementptr %struct.safexcel_ring, ptr %1, i32 %ring_id, i32 4, i32 2
  %12 = ptrtoint ptr %base_end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base_end.i, align 4
  %cmp7.i = icmp eq ptr %3, %13
  br i1 %cmp7.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.safexcel_ring_next_rwptr.exit_crit_edge

land.lhs.true.i.safexcel_ring_next_rwptr.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %safexcel_ring_next_rwptr.exit

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

safexcel_ring_next_rwptr.exit:                    ; preds = %land.lhs.true.i.safexcel_ring_next_rwptr.exit_crit_edge, %lor.lhs.false.i.safexcel_ring_next_rwptr.exit_crit_edge
  %base_end9.i = getelementptr %struct.safexcel_ring, ptr %1, i32 %ring_id, i32 4, i32 2
  %14 = ptrtoint ptr %base_end9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base_end9.i, align 4
  %cmp10.i = icmp eq ptr %3, %15
  %add.ptr16.i = getelementptr i8, ptr %3, i32 %9
  %spec.select.i = select i1 %cmp10.i, ptr %11, ptr %add.ptr16.i
  %16 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %spec.select.i, ptr %write.i, align 4
  %cmp.i50 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50, label %safexcel_ring_next_rwptr.exit.cleanup_crit_edge, label %if.end

safexcel_ring_next_rwptr.exit.cleanup_crit_edge:  ; preds = %safexcel_ring_next_rwptr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %safexcel_ring_next_rwptr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %bf.shl = shl i32 %len, 15
  %bf.shl14 = select i1 %last, i32 512, i32 0
  %bf.set11 = or i32 %bf.shl, %bf.shl14
  %bf.shl21 = select i1 %first, i32 256, i32 0
  %bf.set16 = or i32 %bf.set11, %bf.shl21
  %bf.set27 = or i32 %bf.set16, 3080
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %bf.set27, ptr %3, align 1
  %rsvd1 = getelementptr inbounds %struct.safexcel_result_desc, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %rsvd1 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 0, ptr %rsvd1, align 1
  %data_lo = getelementptr inbounds %struct.safexcel_result_desc, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %data_lo to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %data, ptr %data_lo, align 1
  %data_hi = getelementptr inbounds %struct.safexcel_result_desc, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %data_hi to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 0, ptr %data_hi, align 1
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 5)
  %bf.load29 = load i40, ptr %add.ptr.i, align 1
  %bf.clear33 = and i40 %bf.load29, 255
  %bf.set34 = or i40 %bf.clear33, 8388352
  store i40 %bf.set34, ptr %add.ptr.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %safexcel_ring_next_rwptr.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0.i53 = phi ptr [ %3, %safexcel_ring_next_rwptr.exit.cleanup_crit_edge ], [ %3, %if.end ], [ inttoptr (i32 -12 to ptr), %land.lhs.true.i.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0.i53
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

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
!9 = !{i64 2148598556}
!10 = !{i64 2148513865, i64 2148513897, i64 2148513926, i64 2148513960, i64 2148513991, i64 2148514014}
!11 = !{i64 2148598785}
