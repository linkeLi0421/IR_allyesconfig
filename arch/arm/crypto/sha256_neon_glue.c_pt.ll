; ModuleID = '/llk/IR_all_yes/arch/arm/crypto/sha256_neon_glue.c_pt.bc'
source_filename = "../arch/arm/crypto/sha256_neon_glue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [84 x i8], i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.44, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.44 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sha256_state = type { [8 x i32], i64, [64 x i8] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@sha256_neon_algs = dso_local local_unnamed_addr global [2 x %struct.shash_alg] [%struct.shash_alg { ptr @sha256_base_init, ptr @crypto_sha256_neon_update, ptr @crypto_sha256_neon_final, ptr @crypto_sha256_neon_finup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 104, [84 x i8] undef, i32 32, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 250, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha256-neon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, %struct.shash_alg { ptr @sha224_base_init, ptr @crypto_sha256_neon_update, ptr @crypto_sha256_neon_final, ptr @crypto_sha256_neon_finup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 104, [84 x i8] undef, i32 28, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 250, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha224-neon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }], align 128
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sha256_base_init(ptr nocapture noundef writeonly %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1779033703, ptr %__ctx.i, align 8
  %arrayidx2.i = getelementptr %struct.shash_desc, ptr %desc, i32 1, i32 1
  %1 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1150833019, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %2 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1013904242, ptr %arrayidx4.i, align 8
  %arrayidx6.i = getelementptr %struct.shash_desc, ptr %desc, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1521486534, ptr %arrayidx6.i, align 4
  %arrayidx8.i = getelementptr %struct.shash_desc, ptr %desc, i32 3
  %4 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1359893119, ptr %arrayidx8.i, align 8
  %arrayidx10.i = getelementptr %struct.shash_desc, ptr %desc, i32 3, i32 1
  %5 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1694144372, ptr %arrayidx10.i, align 4
  %arrayidx12.i = getelementptr %struct.shash_desc, ptr %desc, i32 4
  %6 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 528734635, ptr %arrayidx12.i, align 8
  %arrayidx14.i = getelementptr %struct.shash_desc, ptr %desc, i32 4, i32 1
  %7 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1541459225, ptr %arrayidx14.i, align 4
  %count.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 5
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %count.i, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_sha256_neon_update(ptr noundef %desc, ptr noundef %data, i32 noundef %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = tail call i32 @llvm.read_register.i32(metadata !2) #4
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !2) #4
  %and.i.i6.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i6.i to ptr
  %preempt_count.i7.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i7.i, align 4
  %and2.i = and i32 %7, 983040
  %or.i = or i32 %and2.i, %and.i
  %8 = tail call i32 @llvm.read_register.i32(metadata !2) #4
  %and.i.i8.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i8.i to ptr
  %preempt_count.i9.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i9.i, align 4
  %and4.i = and i32 %11, 65280
  %or5.i = or i32 %or.i, %and4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %tobool.not.i = icmp eq i32 %or5.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %count = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 5
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %count, align 8
  %rem = and i64 %13, 63
  %conv = zext i32 %len to i64
  %add = add nuw nsw i64 %rem, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 64, i64 %add)
  %cmp = icmp ult i64 %add, 64
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call3 = tail call i32 @crypto_sha256_arm_update(ptr noundef %desc, ptr noundef %data, i32 noundef %len) #4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @kernel_neon_begin() #4
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %count, align 8
  %16 = trunc i64 %15 to i32
  %conv.i = and i32 %16, 63
  %add.i = add i64 %15, %conv
  store i64 %add.i, ptr %count, align 8
  %add3.i = add i32 %conv.i, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %add3.i)
  %cmp.i = icmp ugt i32 %add3.i, 63
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end17.i_crit_edge, !prof !12

if.end.if.end17.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool6.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool6.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then7.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i = sub nuw nsw i32 64, %conv.i
  %buf.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  %add.ptr.i = getelementptr i8, ptr %buf.i, i32 %conv.i
  %17 = call ptr @memcpy(ptr %add.ptr.i, ptr %data, i32 %sub.i)
  %add.ptr8.i = getelementptr i8, ptr %data, i32 %sub.i
  %sub9.i = sub i32 %len, %sub.i
  tail call void @sha256_block_data_order_neon(ptr noundef %__ctx.i, ptr noundef %buf.i, i32 noundef 1) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then7.i, %if.then.i.if.end.i_crit_edge
  %len.addr.0.i = phi i32 [ %sub9.i, %if.then7.i ], [ %len, %if.then.i.if.end.i_crit_edge ]
  %data.addr.0.i = phi ptr [ %add.ptr8.i, %if.then7.i ], [ %data, %if.then.i.if.end.i_crit_edge ]
  %rem12.i = and i32 %len.addr.0.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %len.addr.0.i)
  %tobool13.not.i = icmp ult i32 %len.addr.0.i, 64
  br i1 %tobool13.not.i, label %if.end.i.if.end17.i_crit_edge, label %if.then14.i

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %div1.i = lshr i32 %len.addr.0.i, 6
  tail call void @sha256_block_data_order_neon(ptr noundef %__ctx.i, ptr noundef %data.addr.0.i, i32 noundef %div1.i) #4
  %mul.i = and i32 %len.addr.0.i, -64
  %add.ptr15.i = getelementptr i8, ptr %data.addr.0.i, i32 %mul.i
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.end.i.if.end17.i_crit_edge, %if.end.if.end17.i_crit_edge
  %len.addr.1.i = phi i32 [ %len, %if.end.if.end17.i_crit_edge ], [ %rem12.i, %if.then14.i ], [ %rem12.i, %if.end.i.if.end17.i_crit_edge ]
  %partial.0.i = phi i32 [ %conv.i, %if.end.if.end17.i_crit_edge ], [ 0, %if.then14.i ], [ 0, %if.end.i.if.end17.i_crit_edge ]
  %data.addr.2.i = phi ptr [ %data, %if.end.if.end17.i_crit_edge ], [ %add.ptr15.i, %if.then14.i ], [ %data.addr.0.i, %if.end.i.if.end17.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.i)
  %tobool18.not.i = icmp eq i32 %len.addr.1.i, 0
  br i1 %tobool18.not.i, label %if.end17.i.sha256_base_do_update.exit_crit_edge, label %if.then19.i

if.end17.i.sha256_base_do_update.exit_crit_edge:  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sha256_base_do_update.exit

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  %buf20.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  %add.ptr22.i = getelementptr i8, ptr %buf20.i, i32 %partial.0.i
  %18 = call ptr @memcpy(ptr %add.ptr22.i, ptr %data.addr.2.i, i32 %len.addr.1.i)
  br label %sha256_base_do_update.exit

sha256_base_do_update.exit:                       ; preds = %if.then19.i, %if.end17.i.sha256_base_do_update.exit_crit_edge
  tail call void @kernel_neon_end() #4
  br label %cleanup

cleanup:                                          ; preds = %sha256_base_do_update.exit, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %sha256_base_do_update.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_sha256_neon_final(ptr noundef %desc, ptr noundef %out) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_sha256_neon_finup(ptr noundef %desc, ptr noundef null, i32 noundef 0, ptr noundef %out)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_sha256_neon_finup(ptr noundef %desc, ptr noundef %data, i32 noundef %len, ptr noundef %out) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !2) #4
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !2) #4
  %and.i.i6.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i6.i to ptr
  %preempt_count.i7.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i7.i, align 4
  %and2.i = and i32 %7, 983040
  %or.i = or i32 %and2.i, %and.i
  %8 = tail call i32 @llvm.read_register.i32(metadata !2) #4
  %and.i.i8.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i8.i to ptr
  %preempt_count.i9.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i9.i, align 4
  %and4.i = and i32 %11, 65280
  %or5.i = or i32 %or.i, %and4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %tobool.not.i = icmp eq i32 %or5.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 @crypto_sha256_arm_finup(ptr noundef %desc, ptr noundef %data, i32 noundef %len, ptr noundef %out) #4
  br label %return

if.end:                                           ; preds = %entry
  tail call void @kernel_neon_begin() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then2:                                         ; preds = %if.end
  %__ctx.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %count.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 5
  %12 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %count.i, align 8
  %14 = trunc i64 %13 to i32
  %conv.i = and i32 %14, 63
  %conv1.i = zext i32 %len to i64
  %add.i = add i64 %13, %conv1.i
  store i64 %add.i, ptr %count.i, align 8
  %add3.i = add i32 %conv.i, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %add3.i)
  %cmp.i = icmp ugt i32 %add3.i, 63
  br i1 %cmp.i, label %if.then.i, label %if.then2.if.then19.i_crit_edge, !prof !12

if.then2.if.then19.i_crit_edge:                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool6.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool6.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then7.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i = sub nuw nsw i32 64, %conv.i
  %buf.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  %add.ptr.i = getelementptr i8, ptr %buf.i, i32 %conv.i
  %15 = call ptr @memcpy(ptr %add.ptr.i, ptr %data, i32 %sub.i)
  %add.ptr8.i = getelementptr i8, ptr %data, i32 %sub.i
  %sub9.i = sub i32 %len, %sub.i
  tail call void @sha256_block_data_order_neon(ptr noundef %__ctx.i.i, ptr noundef %buf.i, i32 noundef 1) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then7.i, %if.then.i.if.end.i_crit_edge
  %len.addr.0.i = phi i32 [ %sub9.i, %if.then7.i ], [ %len, %if.then.i.if.end.i_crit_edge ]
  %data.addr.0.i = phi ptr [ %add.ptr8.i, %if.then7.i ], [ %data, %if.then.i.if.end.i_crit_edge ]
  %rem12.i = and i32 %len.addr.0.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %len.addr.0.i)
  %tobool13.not.i = icmp ult i32 %len.addr.0.i, 64
  br i1 %tobool13.not.i, label %if.end.i.if.end17.i_crit_edge, label %if.then14.i

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %div1.i = lshr i32 %len.addr.0.i, 6
  tail call void @sha256_block_data_order_neon(ptr noundef %__ctx.i.i, ptr noundef %data.addr.0.i, i32 noundef %div1.i) #4
  %mul.i = and i32 %len.addr.0.i, -64
  %add.ptr15.i = getelementptr i8, ptr %data.addr.0.i, i32 %mul.i
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.end.i.if.end17.i_crit_edge
  %data.addr.2.i = phi ptr [ %add.ptr15.i, %if.then14.i ], [ %data.addr.0.i, %if.end.i.if.end17.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem12.i)
  %tobool18.not.i = icmp eq i32 %rem12.i, 0
  br i1 %tobool18.not.i, label %if.end17.i.if.end4_crit_edge, label %if.end17.i.if.then19.i_crit_edge

if.end17.i.if.then19.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i

if.end17.i.if.end4_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then19.i:                                      ; preds = %if.end17.i.if.then19.i_crit_edge, %if.then2.if.then19.i_crit_edge
  %data.addr.2.i34 = phi ptr [ %data.addr.2.i, %if.end17.i.if.then19.i_crit_edge ], [ %data, %if.then2.if.then19.i_crit_edge ]
  %partial.0.i33 = phi i32 [ 0, %if.end17.i.if.then19.i_crit_edge ], [ %conv.i, %if.then2.if.then19.i_crit_edge ]
  %len.addr.1.i32 = phi i32 [ %rem12.i, %if.end17.i.if.then19.i_crit_edge ], [ %len, %if.then2.if.then19.i_crit_edge ]
  %buf20.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  %add.ptr22.i = getelementptr i8, ptr %buf20.i, i32 %partial.0.i33
  %16 = call ptr @memcpy(ptr %add.ptr22.i, ptr %data.addr.2.i34, i32 %len.addr.1.i32)
  br label %if.end4

if.end4:                                          ; preds = %if.then19.i, %if.end17.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %__ctx.i.i14 = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %buf.i15 = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  %count.i16 = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 5
  %17 = ptrtoint ptr %count.i16 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %count.i16, align 8
  %19 = trunc i64 %18 to i32
  %conv.i17 = and i32 %19, 63
  %inc.i = add nuw nsw i32 %conv.i17, 1
  %arrayidx.i = getelementptr %struct.sha256_state, ptr %__ctx.i.i14, i32 0, i32 2, i32 %conv.i17
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -128, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %conv.i17)
  %cmp.i18 = icmp ugt i32 %conv.i17, 55
  br i1 %cmp.i18, label %if.then.i20, label %if.end4.sha256_base_do_finalize.exit_crit_edge

if.end4.sha256_base_do_finalize.exit_crit_edge:   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %sha256_base_do_finalize.exit

if.then.i20:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr5.i = getelementptr i8, ptr %buf.i15, i32 %inc.i
  %sub.i19 = xor i32 %conv.i17, 63
  %21 = call ptr @memset(ptr %add.ptr5.i, i32 0, i32 %sub.i19)
  tail call void @sha256_block_data_order_neon(ptr noundef %__ctx.i.i14, ptr noundef %buf.i15, i32 noundef 1) #4
  br label %sha256_base_do_finalize.exit

sha256_base_do_finalize.exit:                     ; preds = %if.then.i20, %if.end4.sha256_base_do_finalize.exit_crit_edge
  %partial.0.i21 = phi i32 [ 0, %if.then.i20 ], [ %inc.i, %if.end4.sha256_base_do_finalize.exit_crit_edge ]
  %add.ptr.i22 = getelementptr %struct.shash_desc, ptr %desc, i32 13
  %add.ptr10.i = getelementptr i8, ptr %buf.i15, i32 %partial.0.i21
  %sub11.i = sub nuw nsw i32 56, %partial.0.i21
  %22 = call ptr @memset(ptr %add.ptr10.i, i32 0, i32 %sub11.i)
  %23 = ptrtoint ptr %count.i16 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %count.i16, align 8
  %shl.i = shl i64 %24, 3
  %25 = ptrtoint ptr %add.ptr.i22 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %shl.i, ptr %add.ptr.i22, align 8
  tail call void @sha256_block_data_order_neon(ptr noundef %__ctx.i.i14, ptr noundef %buf.i15, i32 noundef 1) #4
  tail call void @kernel_neon_end() #4
  %26 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %desc, align 8
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %27, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %digestsize.i.i = getelementptr i8, ptr %29, i32 -128
  %30 = ptrtoint ptr %digestsize.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %digestsize.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.not1.i = icmp eq i32 %31, 0
  br i1 %cmp.not1.i, label %sha256_base_do_finalize.exit.sha256_base_finish.exit_crit_edge, label %sha256_base_do_finalize.exit.for.body.i_crit_edge

sha256_base_do_finalize.exit.for.body.i_crit_edge: ; preds = %sha256_base_do_finalize.exit
  br label %for.body.i

sha256_base_do_finalize.exit.sha256_base_finish.exit_crit_edge: ; preds = %sha256_base_do_finalize.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sha256_base_finish.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sha256_base_do_finalize.exit.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i26, %for.body.i.for.body.i_crit_edge ], [ 0, %sha256_base_do_finalize.exit.for.body.i_crit_edge ]
  %digest.03.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %out, %sha256_base_do_finalize.exit.for.body.i_crit_edge ]
  %digest_size.02.i = phi i32 [ %sub.i27, %for.body.i.for.body.i_crit_edge ], [ %31, %sha256_base_do_finalize.exit.for.body.i_crit_edge ]
  %arrayidx.i25 = getelementptr [8 x i32], ptr %__ctx.i.i14, i32 0, i32 %i.04.i
  %32 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i25, align 4
  %incdec.ptr.i = getelementptr i32, ptr %digest.03.i, i32 1
  %34 = ptrtoint ptr %digest.03.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %digest.03.i, align 1
  %inc.i26 = add i32 %i.04.i, 1
  %sub.i27 = add i32 %digest_size.02.i, -4
  %cmp.not.i = icmp eq i32 %sub.i27, 0
  br i1 %cmp.not.i, label %for.body.i.sha256_base_finish.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.sha256_base_finish.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sha256_base_finish.exit

sha256_base_finish.exit:                          ; preds = %for.body.i.sha256_base_finish.exit_crit_edge, %sha256_base_do_finalize.exit.sha256_base_finish.exit_crit_edge
  %35 = call ptr @memset(ptr %__ctx.i.i14, i32 0, i32 104)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %__ctx.i.i14) #4, !srcloc !13
  br label %return

return:                                           ; preds = %sha256_base_finish.exit, %if.then
  %retval.0 = phi i32 [ 0, %sha256_base_finish.exit ], [ %call1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sha224_base_init(ptr nocapture noundef writeonly %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1056596264, ptr %__ctx.i, align 8
  %arrayidx2.i = getelementptr %struct.shash_desc, ptr %desc, i32 1, i32 1
  %1 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 914150663, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %2 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 812702999, ptr %arrayidx4.i, align 8
  %arrayidx6.i = getelementptr %struct.shash_desc, ptr %desc, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -150054599, ptr %arrayidx6.i, align 4
  %arrayidx8.i = getelementptr %struct.shash_desc, ptr %desc, i32 3
  %4 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -4191439, ptr %arrayidx8.i, align 8
  %arrayidx10.i = getelementptr %struct.shash_desc, ptr %desc, i32 3, i32 1
  %5 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1750603025, ptr %arrayidx10.i, align 4
  %arrayidx12.i = getelementptr %struct.shash_desc, ptr %desc, i32 4
  %6 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1694076839, ptr %arrayidx12.i, align 8
  %arrayidx14.i = getelementptr %struct.shash_desc, ptr %desc, i32 4, i32 1
  %7 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1090891868, ptr %arrayidx14.i, align 4
  %count.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 5
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %count.i, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_sha256_arm_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_begin() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sha256_block_data_order_neon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_end() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_sha256_arm_finup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.named.register.sp = !{!2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @sha256_neon_algs, !1, !"sha256_neon_algs", i1 false, i1 false}
!1 = !{!"../arch/arm/crypto/sha256_neon_glue.c", i32 66, i32 18}
!2 = !{!"sp"}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2149222501}
