; ModuleID = '/llk/IR_all_yes/arch/arm/crypto/curve25519-glue.c_pt.bc'
source_filename = "../arch/arm/crypto/curve25519-glue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+curve25519_arch\22, \22a\22\09"
module asm "\09.weak\09__crc_curve25519_arch\09\09\09\09"
module asm "\09.long\09__crc_curve25519_arch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_curve25519_arch:\09\09\09\09\09"
module asm "\09.asciz \09\22curve25519_arch\22\09\09\09\09\09"
module asm "__kstrtabns_curve25519_arch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+curve25519_base_arch\22, \22a\22\09"
module asm "\09.weak\09__crc_curve25519_base_arch\09\09\09\09"
module asm "\09.long\09__crc_curve25519_base_arch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_curve25519_base_arch:\09\09\09\09\09"
module asm "\09.asciz \09\22curve25519_base_arch\22\09\09\09\09\09"
module asm "__kstrtabns_curve25519_base_arch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kpp_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, [100 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.0, ptr, ptr, ptr, ptr, %union.anon.68, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.0 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.kpp_request = type { %struct.crypto_async_request, ptr, ptr, i32, i32, [88 x i8], [0 x ptr] }

@__kstrtab_curve25519_arch = external dso_local constant [0 x i8], align 1
@__kstrtabns_curve25519_arch = external dso_local constant [0 x i8], align 1
@__ksymtab_curve25519_arch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @curve25519_arch to i32), ptr @__kstrtab_curve25519_arch, ptr @__kstrtabns_curve25519_arch }, section "___ksymtab+curve25519_arch", align 4
@curve25519_base_point = external dso_local constant [0 x i8], align 1
@__kstrtab_curve25519_base_arch = external dso_local constant [0 x i8], align 1
@__kstrtabns_curve25519_base_arch = external dso_local constant [0 x i8], align 1
@__ksymtab_curve25519_base_arch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @curve25519_base_arch to i32), ptr @__kstrtab_curve25519_base_arch, ptr @__kstrtabns_curve25519_base_arch }, section "___ksymtab+curve25519_base_arch", align 4
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@curve25519_alg = internal global %struct.kpp_alg { ptr @curve25519_set_secret, ptr @curve25519_compute_value, ptr @curve25519_compute_value, ptr @curve25519_max_size, ptr null, ptr null, i32 0, [100 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 32, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"curve25519\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"curve25519-neon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.0 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, align 128
@__initcall__kmod_curve25519_neon__228_131_arm_curve25519_init6 = internal global ptr @arm_curve25519_init, section ".initcall6.init", align 4
@__exitcall_arm_curve25519_exit = internal global ptr @arm_curve25519_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias_userspace229 = internal constant [33 x i8] c"curve25519_neon.alias=curve25519\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto230 = internal constant [40 x i8] c"curve25519_neon.alias=crypto-curve25519\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace231 = internal constant [38 x i8] c"curve25519_neon.alias=curve25519-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto232 = internal constant [45 x i8] c"curve25519_neon.alias=crypto-curve25519-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [53 x i8] c"curve25519_neon.file=arch/arm/crypto/curve25519-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [31 x i8] c"curve25519_neon.license=GPL v2\00", section ".modinfo", align 1
@have_neon = internal global { { %struct.atomic_t, { ptr } } } zeroinitializer, section ".data..ro_after_init", align 4
@curve25519_null_point = external dso_local constant [0 x i8], align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 32]
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias_crypto230, ptr @__UNIQUE_ID_alias_crypto232, ptr @__UNIQUE_ID_alias_userspace229, ptr @__UNIQUE_ID_alias_userspace231, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_arm_curve25519_exit, ptr @__initcall__kmod_curve25519_neon__228_131_arm_curve25519_init6, ptr @__ksymtab_curve25519_arch, ptr @__ksymtab_curve25519_base_arch, ptr @arm_curve25519_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @curve25519_arch(ptr noundef %out, ptr noundef %scalar, ptr noundef %point) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @have_neon, i32 1), ptr blockaddress(@curve25519_arch, %if.else)) #7
          to label %land.lhs.true [label %if.else], !srcloc !31

land.lhs.true:                                    ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !21) #7
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !21) #7
  %and.i.i6.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i6.i to ptr
  %preempt_count.i7.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i7.i, align 4
  %and2.i = and i32 %7, 983040
  %or.i = or i32 %and2.i, %and.i
  %8 = tail call i32 @llvm.read_register.i32(metadata !21) #7
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
  br i1 %tobool.not.i, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kernel_neon_begin() #7
  tail call void @curve25519_neon(ptr noundef %out, ptr noundef %scalar, ptr noundef %point) #7
  tail call void @kernel_neon_end() #7
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @curve25519_generic(ptr noundef %out, ptr noundef %scalar, ptr noundef %point) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_begin() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @curve25519_neon(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_end() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @curve25519_generic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @curve25519_base_arch(ptr noundef %pub, ptr noundef %secret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @have_neon, i32 1), ptr blockaddress(@curve25519_base_arch, %if.else.i)) #7
          to label %land.lhs.true.i [label %if.else.i], !srcloc !31

land.lhs.true.i:                                  ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !21) #7
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %and.i.i = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !21) #7
  %and.i.i6.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i6.i.i to ptr
  %preempt_count.i7.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i7.i.i, align 4
  %and2.i.i = and i32 %7, 983040
  %or.i.i = or i32 %and2.i.i, %and.i.i
  %8 = tail call i32 @llvm.read_register.i32(metadata !21) #7
  %and.i.i8.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i8.i.i to ptr
  %preempt_count.i9.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i9.i.i, align 4
  %and4.i.i = and i32 %11, 65280
  %or5.i.i = or i32 %or.i.i, %and4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %tobool.not.i.i = icmp eq i32 %or5.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kernel_neon_begin() #7
  tail call void @curve25519_neon(ptr noundef %pub, ptr noundef %secret, ptr noundef nonnull @curve25519_base_point) #7
  tail call void @kernel_neon_end() #7
  br label %curve25519_arch.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @curve25519_generic(ptr noundef %pub, ptr noundef %secret, ptr noundef nonnull @curve25519_base_point) #7
  br label %curve25519_arch.exit

curve25519_arch.exit:                             ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @arm_curve25519_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %0 = load i32, ptr @elf_hwcap, align 4
  %and = and i32 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_kpp(ptr noundef nonnull @curve25519_alg) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_kpp(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_curve25519_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %0 = load i32, ptr @elf_hwcap, align 4
  %and = and i32 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @static_key_enable(ptr noundef nonnull @have_neon) #7
  %call = tail call i32 @crypto_register_kpp(ptr noundef nonnull @curve25519_alg) #7
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @curve25519_set_secret(ptr noundef %tfm, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %len, label %entry.cleanup_crit_edge [
    i32 0, label %if.then
    i32 32, label %land.lhs.true
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 @wait_for_random_bytes() #7
  tail call void @get_random_bytes(ptr noundef %__crt_ctx.i, i32 noundef 32) #7
  %1 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %__crt_ctx.i, align 1
  %3 = and i8 %2, -8
  store i8 %3, ptr %__crt_ctx.i, align 1
  %arrayidx2.i.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 15
  %4 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2.i.i, align 1
  %6 = and i8 %5, 63
  %7 = or i8 %6, 64
  store i8 %7, ptr %arrayidx2.i.i, align 1
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %call.i = tail call i32 @__crypto_memneq(ptr noundef %buf, ptr noundef nonnull @curve25519_null_point, i32 noundef 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i.not, label %land.lhs.true.cleanup_crit_edge, label %if.then3

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %8 = call ptr @memcpy(ptr %__crt_ctx.i, ptr %buf, i32 32)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %land.lhs.true.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then3 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @curve25519_compute_value(ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  %public_key = alloca [32 x i8], align 1
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %public_key) #7
  %2 = call ptr @memset(ptr %public_key, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #7
  %src = getelementptr inbounds %struct.kpp_request, ptr %req, i32 0, i32 1
  %3 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %4 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @sg_nents_for_len(ptr noundef nonnull %5, i64 noundef 32) #7
  %call5 = call i32 @sg_copy_to_buffer(ptr noundef nonnull %5, i32 noundef %call4, ptr noundef nonnull %public_key, i32 noundef 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 32
  br i1 %cmp.not, label %if.then.if.end8_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %bp.0 = phi ptr [ %public_key, %if.then.if.end8_crit_edge ], [ @curve25519_base_point, %entry.if.end8_crit_edge ]
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @have_neon, i32 1), ptr blockaddress(@curve25519_compute_value, %if.else.i)) #7
          to label %land.lhs.true.i [label %if.else.i], !srcloc !31

land.lhs.true.i:                                  ; preds = %if.end8
  %6 = call i32 @llvm.read_register.i32(metadata !21) #7
  %and.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %and.i.i = and i32 %9, 15728640
  %10 = call i32 @llvm.read_register.i32(metadata !21) #7
  %and.i.i6.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i6.i.i to ptr
  %preempt_count.i7.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i7.i.i, align 4
  %and2.i.i = and i32 %13, 983040
  %or.i.i = or i32 %and2.i.i, %and.i.i
  %14 = call i32 @llvm.read_register.i32(metadata !21) #7
  %and.i.i8.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i8.i.i to ptr
  %preempt_count.i9.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i9.i.i, align 4
  %and4.i.i = and i32 %17, 65280
  %or5.i.i = or i32 %or.i.i, %and4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %tobool.not.i.i = icmp eq i32 %or5.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kernel_neon_begin() #7
  call void @curve25519_neon(ptr noundef nonnull %buf, ptr noundef %__crt_ctx.i, ptr noundef nonnull %bp.0) #7
  call void @kernel_neon_end() #7
  br label %curve25519_arch.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  call void @curve25519_generic(ptr noundef nonnull %buf, ptr noundef %__crt_ctx.i, ptr noundef nonnull %bp.0) #7
  br label %curve25519_arch.exit

curve25519_arch.exit:                             ; preds = %if.else.i, %if.then.i
  %dst_len = getelementptr inbounds %struct.kpp_request, ptr %req, i32 0, i32 4
  %18 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dst_len, align 4
  %20 = call i32 @llvm.umin.i32(i32 %19, i32 32)
  %dst = getelementptr inbounds %struct.kpp_request, ptr %req, i32 0, i32 2
  %21 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dst, align 4
  %conv37 = zext i32 %20 to i64
  %call12 = call i32 @sg_nents_for_len(ptr noundef %22, i64 noundef %conv37) #7
  %call14 = call i32 @sg_copy_from_buffer(ptr noundef %22, i32 noundef %call12, ptr noundef nonnull %buf, i32 noundef %20) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call14, i32 %20)
  %cmp15.not = icmp eq i32 %call14, %20
  %spec.select = select i1 %cmp15.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %curve25519_arch.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ %spec.select, %curve25519_arch.exit ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %public_key) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @curve25519_max_size(ptr nocapture noundef readnone %tfm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_random_bytes() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_kpp(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !16, !17, !19}
!llvm.named.register.sp = !{!21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__ksymtab_curve25519_arch, !1, !"__ksymtab_curve25519_arch", i1 false, i1 false}
!1 = !{!"../arch/arm/crypto/curve25519-glue.c", i32 40, i32 1}
!2 = !{ptr @__ksymtab_curve25519_base_arch, !3, !"__ksymtab_curve25519_base_arch", i1 false, i1 false}
!3 = !{!"../arch/arm/crypto/curve25519-glue.c", i32 47, i32 1}
!4 = !{ptr @__initcall__kmod_curve25519_neon__228_131_arm_curve25519_init6, !5, !"__initcall__kmod_curve25519_neon__228_131_arm_curve25519_init6", i1 false, i1 false}
!5 = !{!"../arch/arm/crypto/curve25519-glue.c", i32 131, i32 1}
!6 = !{ptr @__exitcall_arm_curve25519_exit, !7, !"__exitcall_arm_curve25519_exit", i1 false, i1 false}
!7 = !{!"../arch/arm/crypto/curve25519-glue.c", i32 132, i32 1}
!8 = !{ptr @__UNIQUE_ID_alias_userspace229, !9, !"__UNIQUE_ID_alias_userspace229", i1 false, i1 false}
!9 = !{!"../arch/arm/crypto/curve25519-glue.c", i32 134, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias_crypto230, !9, !"__UNIQUE_ID_alias_crypto230", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias_userspace231, !12, !"__UNIQUE_ID_alias_userspace231", i1 false, i1 false}
!12 = !{!"../arch/arm/crypto/curve25519-glue.c", i32 135, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_crypto232, !12, !"__UNIQUE_ID_alias_crypto232", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_file233, !15, !"__UNIQUE_ID_file233", i1 false, i1 false}
!15 = !{!"../arch/arm/crypto/curve25519-glue.c", i32 136, i32 1}
!16 = !{ptr @__UNIQUE_ID_license234, !15, !"__UNIQUE_ID_license234", i1 false, i1 false}
!17 = !{ptr @have_neon, !18, !"have_neon", i1 false, i1 false}
!18 = !{!"../arch/arm/crypto/curve25519-glue.c", i32 26, i32 24}
!19 = !{ptr @curve25519_alg, !20, !"curve25519_alg", i1 false, i1 false}
!20 = !{!"../arch/arm/crypto/curve25519-glue.c", i32 102, i32 23}
!21 = !{!"sp"}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 2148164941, i64 2148164946, i64 2148164967, i64 2148165011, i64 2148165045, i64 2148165066}
