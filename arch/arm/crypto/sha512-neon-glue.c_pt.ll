; ModuleID = '/llk/IR_all_yes/arch/arm/crypto/sha512-neon-glue.c_pt.bc'
source_filename = "../arch/arm/crypto/sha512-neon-glue.c"
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
%struct.sha512_state = type { [8 x i64], [2 x i64], [128 x i8] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@__UNIQUE_ID_alias_userspace173 = internal constant [29 x i8] c"sha512_arm.alias=sha384-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto174 = internal constant [36 x i8] c"sha512_arm.alias=crypto-sha384-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace175 = internal constant [29 x i8] c"sha512_arm.alias=sha512-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto176 = internal constant [36 x i8] c"sha512_arm.alias=crypto-sha512-neon\00", section ".modinfo", align 1
@sha512_neon_algs = dso_local local_unnamed_addr global [2 x %struct.shash_alg] [%struct.shash_alg { ptr @sha384_base_init, ptr @sha512_neon_update, ptr @sha512_neon_final, ptr @sha512_neon_finup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 208, [84 x i8] undef, i32 48, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 128, i32 0, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha384-neon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, %struct.shash_alg { ptr @sha512_base_init, ptr @sha512_neon_update, ptr @sha512_neon_final, ptr @sha512_neon_finup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 208, [84 x i8] undef, i32 64, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 128, i32 0, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha512-neon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }], align 128
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias_crypto174, ptr @__UNIQUE_ID_alias_crypto176, ptr @__UNIQUE_ID_alias_userspace173, ptr @__UNIQUE_ID_alias_userspace175], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sha384_base_init(ptr nocapture noundef writeonly %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -3766243637369397544, ptr %__ctx.i, align 8
  %arrayidx2 = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 7105036623409894663, ptr %arrayidx2, align 8
  %arrayidx4 = getelementptr %struct.shash_desc, ptr %desc, i32 3
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -7973340178411365097, ptr %arrayidx4, align 8
  %arrayidx6 = getelementptr %struct.shash_desc, ptr %desc, i32 4
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1526699215303891257, ptr %arrayidx6, align 8
  %arrayidx8 = getelementptr %struct.shash_desc, ptr %desc, i32 5
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 7436329637833083697, ptr %arrayidx8, align 8
  %arrayidx10 = getelementptr %struct.shash_desc, ptr %desc, i32 6
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -8163818279084223215, ptr %arrayidx10, align 8
  %arrayidx12 = getelementptr %struct.shash_desc, ptr %desc, i32 7
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -2662702644619276377, ptr %arrayidx12, align 8
  %arrayidx14 = getelementptr %struct.shash_desc, ptr %desc, i32 8
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 5167115440072839076, ptr %arrayidx14, align 8
  %count = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 9
  %8 = call ptr @memset(ptr %count, i32 0, i32 16)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sha512_neon_update(ptr noundef %desc, ptr noundef %data, i32 noundef %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = tail call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i6.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i6.i to ptr
  %preempt_count.i7.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i7.i, align 4
  %and2.i = and i32 %7, 983040
  %or.i = or i32 %and2.i, %and.i
  %8 = tail call i32 @llvm.read_register.i32(metadata !8) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %count = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 9
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %count, align 8
  %rem = and i64 %13, 127
  %conv = zext i32 %len to i64
  %add = add nuw nsw i64 %rem, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 128, i64 %add)
  %cmp = icmp ult i64 %add, 128
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call3 = tail call i32 @sha512_arm_update(ptr noundef %desc, ptr noundef %data, i32 noundef %len) #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @kernel_neon_begin() #5
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %count, align 8
  %16 = trunc i64 %15 to i32
  %conv.i = and i32 %16, 127
  %add.i = add i64 %15, %conv
  store i64 %add.i, ptr %count, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv)
  %cmp.i = icmp ult i64 %add.i, %conv
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx9.i = getelementptr %struct.shash_desc, ptr %desc, i32 10
  %17 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx9.i, align 8
  %inc.i = add i64 %18, 1
  store i64 %inc.i, ptr %arrayidx9.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %add10.i = add i32 %conv.i, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %add10.i)
  %cmp11.i = icmp ugt i32 %add10.i, 127
  br i1 %cmp11.i, label %if.then14.i, label %if.end.i.if.end27.i_crit_edge, !prof !18

if.end.i.if.end27.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool15.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool15.not.i, label %if.then14.i.if.end21.i_crit_edge, label %if.then16.i

if.then14.i.if.end21.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

if.then16.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = sub nuw nsw i32 128, %conv.i
  %buf.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 11
  %add.ptr.i = getelementptr i8, ptr %buf.i, i32 %conv.i
  %19 = call ptr @memcpy(ptr %add.ptr.i, ptr %data, i32 %sub.i)
  %add.ptr17.i = getelementptr i8, ptr %data, i32 %sub.i
  %sub18.i = sub i32 %len, %sub.i
  tail call void @sha512_block_data_order_neon(ptr noundef %__ctx.i, ptr noundef %buf.i, i32 noundef 1) #5
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then16.i, %if.then14.i.if.end21.i_crit_edge
  %len.addr.0.i = phi i32 [ %sub18.i, %if.then16.i ], [ %len, %if.then14.i.if.end21.i_crit_edge ]
  %data.addr.0.i = phi ptr [ %add.ptr17.i, %if.then16.i ], [ %data, %if.then14.i.if.end21.i_crit_edge ]
  %rem22.i = and i32 %len.addr.0.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %len.addr.0.i)
  %tobool23.not.i = icmp ult i32 %len.addr.0.i, 128
  br i1 %tobool23.not.i, label %if.end21.i.if.end27.i_crit_edge, label %if.then24.i

if.end21.i.if.end27.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %div1.i = lshr i32 %len.addr.0.i, 7
  tail call void @sha512_block_data_order_neon(ptr noundef %__ctx.i, ptr noundef %data.addr.0.i, i32 noundef %div1.i) #5
  %mul.i = and i32 %len.addr.0.i, -128
  %add.ptr25.i = getelementptr i8, ptr %data.addr.0.i, i32 %mul.i
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %if.end21.i.if.end27.i_crit_edge, %if.end.i.if.end27.i_crit_edge
  %len.addr.1.i = phi i32 [ %len, %if.end.i.if.end27.i_crit_edge ], [ %rem22.i, %if.then24.i ], [ %rem22.i, %if.end21.i.if.end27.i_crit_edge ]
  %partial.0.i = phi i32 [ %conv.i, %if.end.i.if.end27.i_crit_edge ], [ 0, %if.then24.i ], [ 0, %if.end21.i.if.end27.i_crit_edge ]
  %data.addr.2.i = phi ptr [ %data, %if.end.i.if.end27.i_crit_edge ], [ %add.ptr25.i, %if.then24.i ], [ %data.addr.0.i, %if.end21.i.if.end27.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.i)
  %tobool28.not.i = icmp eq i32 %len.addr.1.i, 0
  br i1 %tobool28.not.i, label %if.end27.i.sha512_base_do_update.exit_crit_edge, label %if.then29.i

if.end27.i.sha512_base_do_update.exit_crit_edge:  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sha512_base_do_update.exit

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %buf30.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 11
  %add.ptr32.i = getelementptr i8, ptr %buf30.i, i32 %partial.0.i
  %20 = call ptr @memcpy(ptr %add.ptr32.i, ptr %data.addr.2.i, i32 %len.addr.1.i)
  br label %sha512_base_do_update.exit

sha512_base_do_update.exit:                       ; preds = %if.then29.i, %if.end27.i.sha512_base_do_update.exit_crit_edge
  tail call void @kernel_neon_end() #5
  br label %cleanup

cleanup:                                          ; preds = %sha512_base_do_update.exit, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %sha512_base_do_update.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sha512_neon_final(ptr noundef %desc, ptr noundef %out) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sha512_neon_finup(ptr noundef %desc, ptr noundef null, i32 noundef 0, ptr noundef %out)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sha512_neon_finup(ptr noundef %desc, ptr noundef %data, i32 noundef %len, ptr noundef %out) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i6.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i6.i to ptr
  %preempt_count.i7.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i7.i, align 4
  %and2.i = and i32 %7, 983040
  %or.i = or i32 %and2.i, %and.i
  %8 = tail call i32 @llvm.read_register.i32(metadata !8) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @sha512_arm_finup(ptr noundef %desc, ptr noundef %data, i32 noundef %len, ptr noundef %out) #5
  br label %return

if.end:                                           ; preds = %entry
  tail call void @kernel_neon_begin() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then2:                                         ; preds = %if.end
  %__ctx.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %count.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 9
  %12 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %count.i, align 8
  %14 = trunc i64 %13 to i32
  %conv.i = and i32 %14, 127
  %conv1.i = zext i32 %len to i64
  %add.i = add i64 %13, %conv1.i
  store i64 %add.i, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv1.i)
  %cmp.i = icmp ult i64 %add.i, %conv1.i
  br i1 %cmp.i, label %if.then.i, label %if.then2.if.end.i_crit_edge

if.then2.if.end.i_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx9.i = getelementptr %struct.shash_desc, ptr %desc, i32 10
  %15 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx9.i, align 8
  %inc.i = add i64 %16, 1
  store i64 %inc.i, ptr %arrayidx9.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then2.if.end.i_crit_edge
  %add10.i = add i32 %conv.i, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %add10.i)
  %cmp11.i = icmp ugt i32 %add10.i, 127
  br i1 %cmp11.i, label %if.then14.i, label %if.end.i.if.then29.i_crit_edge, !prof !18

if.end.i.if.then29.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool15.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool15.not.i, label %if.then14.i.if.end21.i_crit_edge, label %if.then16.i

if.then14.i.if.end21.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

if.then16.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = sub nuw nsw i32 128, %conv.i
  %buf.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 11
  %add.ptr.i = getelementptr i8, ptr %buf.i, i32 %conv.i
  %17 = call ptr @memcpy(ptr %add.ptr.i, ptr %data, i32 %sub.i)
  %add.ptr17.i = getelementptr i8, ptr %data, i32 %sub.i
  %sub18.i = sub i32 %len, %sub.i
  tail call void @sha512_block_data_order_neon(ptr noundef %__ctx.i.i, ptr noundef %buf.i, i32 noundef 1) #5
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then16.i, %if.then14.i.if.end21.i_crit_edge
  %len.addr.0.i = phi i32 [ %sub18.i, %if.then16.i ], [ %len, %if.then14.i.if.end21.i_crit_edge ]
  %data.addr.0.i = phi ptr [ %add.ptr17.i, %if.then16.i ], [ %data, %if.then14.i.if.end21.i_crit_edge ]
  %rem22.i = and i32 %len.addr.0.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %len.addr.0.i)
  %tobool23.not.i = icmp ult i32 %len.addr.0.i, 128
  br i1 %tobool23.not.i, label %if.end21.i.if.end27.i_crit_edge, label %if.then24.i

if.end21.i.if.end27.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %div1.i = lshr i32 %len.addr.0.i, 7
  tail call void @sha512_block_data_order_neon(ptr noundef %__ctx.i.i, ptr noundef %data.addr.0.i, i32 noundef %div1.i) #5
  %mul.i = and i32 %len.addr.0.i, -128
  %add.ptr25.i = getelementptr i8, ptr %data.addr.0.i, i32 %mul.i
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %if.end21.i.if.end27.i_crit_edge
  %data.addr.2.i = phi ptr [ %add.ptr25.i, %if.then24.i ], [ %data.addr.0.i, %if.end21.i.if.end27.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem22.i)
  %tobool28.not.i = icmp eq i32 %rem22.i, 0
  br i1 %tobool28.not.i, label %if.end27.i.if.end4_crit_edge, label %if.end27.i.if.then29.i_crit_edge

if.end27.i.if.then29.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29.i

if.end27.i.if.end4_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then29.i:                                      ; preds = %if.end27.i.if.then29.i_crit_edge, %if.end.i.if.then29.i_crit_edge
  %data.addr.2.i35 = phi ptr [ %data.addr.2.i, %if.end27.i.if.then29.i_crit_edge ], [ %data, %if.end.i.if.then29.i_crit_edge ]
  %partial.0.i34 = phi i32 [ 0, %if.end27.i.if.then29.i_crit_edge ], [ %conv.i, %if.end.i.if.then29.i_crit_edge ]
  %len.addr.1.i33 = phi i32 [ %rem22.i, %if.end27.i.if.then29.i_crit_edge ], [ %len, %if.end.i.if.then29.i_crit_edge ]
  %buf30.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 11
  %add.ptr32.i = getelementptr i8, ptr %buf30.i, i32 %partial.0.i34
  %18 = call ptr @memcpy(ptr %add.ptr32.i, ptr %data.addr.2.i35, i32 %len.addr.1.i33)
  br label %if.end4

if.end4:                                          ; preds = %if.then29.i, %if.end27.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %__ctx.i.i14 = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %buf.i15 = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 11
  %count.i16 = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 9
  %19 = ptrtoint ptr %count.i16 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %count.i16, align 8
  %21 = trunc i64 %20 to i32
  %conv.i17 = and i32 %21, 127
  %inc.i18 = add nuw nsw i32 %conv.i17, 1
  %arrayidx2.i = getelementptr %struct.sha512_state, ptr %__ctx.i.i14, i32 0, i32 2, i32 %conv.i17
  %22 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -128, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 111, i32 %conv.i17)
  %cmp.i19 = icmp ugt i32 %conv.i17, 111
  br i1 %cmp.i19, label %if.then.i21, label %if.end4.sha512_base_do_finalize.exit_crit_edge

if.end4.sha512_base_do_finalize.exit_crit_edge:   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sha512_base_do_finalize.exit

if.then.i21:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr6.i = getelementptr i8, ptr %buf.i15, i32 %inc.i18
  %sub.i20 = xor i32 %conv.i17, 127
  %23 = call ptr @memset(ptr %add.ptr6.i, i32 0, i32 %sub.i20)
  tail call void @sha512_block_data_order_neon(ptr noundef %__ctx.i.i14, ptr noundef %buf.i15, i32 noundef 1) #5
  br label %sha512_base_do_finalize.exit

sha512_base_do_finalize.exit:                     ; preds = %if.then.i21, %if.end4.sha512_base_do_finalize.exit_crit_edge
  %partial.0.i22 = phi i32 [ 0, %if.then.i21 ], [ %inc.i18, %if.end4.sha512_base_do_finalize.exit_crit_edge ]
  %add.ptr.i23 = getelementptr %struct.shash_desc, ptr %desc, i32 25
  %add.ptr11.i = getelementptr i8, ptr %buf.i15, i32 %partial.0.i22
  %sub12.i = sub nuw nsw i32 112, %partial.0.i22
  %24 = call ptr @memset(ptr %add.ptr11.i, i32 0, i32 %sub12.i)
  %arrayidx14.i = getelementptr %struct.shash_desc, ptr %desc, i32 10
  %25 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx14.i, align 8
  %27 = ptrtoint ptr %count.i16 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %count.i16, align 8
  %or.i24 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %28, i64 3) #5
  %29 = ptrtoint ptr %add.ptr.i23 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %or.i24, ptr %add.ptr.i23, align 8
  %shl20.i = shl i64 %28, 3
  %arrayidx21.i = getelementptr %struct.shash_desc, ptr %desc, i32 26
  %30 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %shl20.i, ptr %arrayidx21.i, align 8
  tail call void @sha512_block_data_order_neon(ptr noundef %__ctx.i.i14, ptr noundef %buf.i15, i32 noundef 1) #5
  tail call void @kernel_neon_end() #5
  %31 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %desc, align 8
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %32, i32 0, i32 2, i32 3
  %33 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %digestsize.i.i = getelementptr i8, ptr %34, i32 -128
  %35 = ptrtoint ptr %digestsize.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %digestsize.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.not1.i = icmp eq i32 %36, 0
  br i1 %cmp.not1.i, label %sha512_base_do_finalize.exit.sha512_base_finish.exit_crit_edge, label %sha512_base_do_finalize.exit.for.body.i_crit_edge

sha512_base_do_finalize.exit.for.body.i_crit_edge: ; preds = %sha512_base_do_finalize.exit
  br label %for.body.i

sha512_base_do_finalize.exit.sha512_base_finish.exit_crit_edge: ; preds = %sha512_base_do_finalize.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sha512_base_finish.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sha512_base_do_finalize.exit.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i27, %for.body.i.for.body.i_crit_edge ], [ 0, %sha512_base_do_finalize.exit.for.body.i_crit_edge ]
  %digest.03.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %out, %sha512_base_do_finalize.exit.for.body.i_crit_edge ]
  %digest_size.02.i = phi i32 [ %sub.i28, %for.body.i.for.body.i_crit_edge ], [ %36, %sha512_base_do_finalize.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x i64], ptr %__ctx.i.i14, i32 0, i32 %i.04.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx.i, align 8
  %incdec.ptr.i = getelementptr i64, ptr %digest.03.i, i32 1
  %39 = ptrtoint ptr %digest.03.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 %38, ptr %digest.03.i, align 1
  %inc.i27 = add i32 %i.04.i, 1
  %sub.i28 = add i32 %digest_size.02.i, -8
  %cmp.not.i = icmp eq i32 %sub.i28, 0
  br i1 %cmp.not.i, label %for.body.i.sha512_base_finish.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.sha512_base_finish.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sha512_base_finish.exit

sha512_base_finish.exit:                          ; preds = %for.body.i.sha512_base_finish.exit_crit_edge, %sha512_base_do_finalize.exit.sha512_base_finish.exit_crit_edge
  %40 = call ptr @memset(ptr %__ctx.i.i14, i32 0, i32 208)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %__ctx.i.i14) #5, !srcloc !19
  br label %return

return:                                           ; preds = %sha512_base_finish.exit, %if.then
  %retval.0 = phi i32 [ 0, %sha512_base_finish.exit ], [ %call1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sha512_base_init(ptr nocapture noundef writeonly %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 7640891576956012808, ptr %__ctx.i, align 8
  %arrayidx2 = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -4942790177534073029, ptr %arrayidx2, align 8
  %arrayidx4 = getelementptr %struct.shash_desc, ptr %desc, i32 3
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 4354685564936845355, ptr %arrayidx4, align 8
  %arrayidx6 = getelementptr %struct.shash_desc, ptr %desc, i32 4
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -6534734903238641935, ptr %arrayidx6, align 8
  %arrayidx8 = getelementptr %struct.shash_desc, ptr %desc, i32 5
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 5840696475078001361, ptr %arrayidx8, align 8
  %arrayidx10 = getelementptr %struct.shash_desc, ptr %desc, i32 6
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -7276294671716946913, ptr %arrayidx10, align 8
  %arrayidx12 = getelementptr %struct.shash_desc, ptr %desc, i32 7
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 2270897969802886507, ptr %arrayidx12, align 8
  %arrayidx14 = getelementptr %struct.shash_desc, ptr %desc, i32 8
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 6620516959819538809, ptr %arrayidx14, align 8
  %count = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 9
  %8 = call ptr @memset(ptr %count, i32 0, i32 16)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sha512_arm_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_begin() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sha512_block_data_order_neon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_end() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sha512_arm_finup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6}
!llvm.named.register.sp = !{!8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__UNIQUE_ID_alias_userspace173, !1, !"__UNIQUE_ID_alias_userspace173", i1 false, i1 false}
!1 = !{!"../arch/arm/crypto/sha512-neon-glue.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_alias_crypto174, !1, !"__UNIQUE_ID_alias_crypto174", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias_userspace175, !4, !"__UNIQUE_ID_alias_userspace175", i1 false, i1 false}
!4 = !{!"../arch/arm/crypto/sha512-neon-glue.c", i32 21, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias_crypto176, !4, !"__UNIQUE_ID_alias_crypto176", i1 false, i1 false}
!6 = !{ptr @sha512_neon_algs, !7, !"sha512_neon_algs", i1 false, i1 false}
!7 = !{!"../arch/arm/crypto/sha512-neon-glue.c", i32 65, i32 18}
!8 = !{!"sp"}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2149222341}
