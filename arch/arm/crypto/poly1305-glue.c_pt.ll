; ModuleID = '/llk/IR_all_yes/arch/arm/crypto/poly1305-glue.c_pt.bc'
source_filename = "../arch/arm/crypto/poly1305-glue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+poly1305_init_arch\22, \22a\22\09"
module asm "\09.weak\09__crc_poly1305_init_arch\09\09\09\09"
module asm "\09.long\09__crc_poly1305_init_arch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_poly1305_init_arch:\09\09\09\09\09"
module asm "\09.asciz \09\22poly1305_init_arch\22\09\09\09\09\09"
module asm "__kstrtabns_poly1305_init_arch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+poly1305_update_arch\22, \22a\22\09"
module asm "\09.weak\09__crc_poly1305_update_arch\09\09\09\09"
module asm "\09.long\09__crc_poly1305_update_arch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_poly1305_update_arch:\09\09\09\09\09"
module asm "\09.asciz \09\22poly1305_update_arch\22\09\09\09\09\09"
module asm "__kstrtabns_poly1305_update_arch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+poly1305_final_arch\22, \22a\22\09"
module asm "\09.weak\09__crc_poly1305_final_arch\09\09\09\09"
module asm "\09.long\09__crc_poly1305_final_arch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_poly1305_final_arch:\09\09\09\09\09"
module asm "\09.asciz \09\22poly1305_final_arch\22\09\09\09\09\09"
module asm "__kstrtabns_poly1305_final_arch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [84 x i8], i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.3, ptr, ptr, ptr, ptr, %union.anon.47, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.3 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.47 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.poly1305_desc_ctx = type { [16 x i8], i32, i16, i8, [4 x i32], %struct.poly1305_state, %union.anon.0 }
%struct.poly1305_state = type { %union.anon }
%union.anon = type { [3 x i64] }
%union.anon.0 = type { [9 x %struct.poly1305_key] }
%struct.poly1305_key = type { %union.anon.1 }
%union.anon.1 = type { [3 x i64] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }

@__kstrtab_poly1305_init_arch = external dso_local constant [0 x i8], align 1
@__kstrtabns_poly1305_init_arch = external dso_local constant [0 x i8], align 1
@__ksymtab_poly1305_init_arch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @poly1305_init_arch to i32), ptr @__kstrtab_poly1305_init_arch, ptr @__kstrtabns_poly1305_init_arch }, section "___ksymtab+poly1305_init_arch", align 4
@__kstrtab_poly1305_update_arch = external dso_local constant [0 x i8], align 1
@__kstrtabns_poly1305_update_arch = external dso_local constant [0 x i8], align 1
@__ksymtab_poly1305_update_arch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @poly1305_update_arch to i32), ptr @__kstrtab_poly1305_update_arch, ptr @__kstrtabns_poly1305_update_arch }, section "___ksymtab+poly1305_update_arch", align 4
@__kstrtab_poly1305_final_arch = external dso_local constant [0 x i8], align 1
@__kstrtabns_poly1305_final_arch = external dso_local constant [0 x i8], align 1
@__ksymtab_poly1305_final_arch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @poly1305_final_arch to i32), ptr @__kstrtab_poly1305_final_arch, ptr @__kstrtabns_poly1305_final_arch }, section "___ksymtab+poly1305_final_arch", align 4
@arm_poly1305_algs = internal global [2 x %struct.shash_alg] [%struct.shash_alg { ptr @arm_poly1305_init, ptr @arm_poly1305_update, ptr @arm_poly1305_final, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 280, [84 x i8] undef, i32 16, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 150, %struct.refcount_struct zeroinitializer, [128 x i8] c"poly1305\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"poly1305-arm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.3 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.47 zeroinitializer, [120 x i8] undef } }, %struct.shash_alg { ptr @arm_poly1305_init, ptr @arm_poly1305_update_neon, ptr @arm_poly1305_final, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 280, [84 x i8] undef, i32 16, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"poly1305\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"poly1305-neon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.3 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.47 zeroinitializer, [120 x i8] undef } }], align 128
@__initcall__kmod_poly1305_arm__179_267_arm_poly1305_mod_init6 = internal global ptr @arm_poly1305_mod_init, section ".initcall6.init", align 4
@__exitcall_arm_poly1305_mod_exit = internal global ptr @arm_poly1305_mod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file180 = internal constant [47 x i8] c"poly1305_arm.file=arch/arm/crypto/poly1305-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_license181 = internal constant [28 x i8] c"poly1305_arm.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace182 = internal constant [28 x i8] c"poly1305_arm.alias=poly1305\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto183 = internal constant [35 x i8] c"poly1305_arm.alias=crypto-poly1305\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace184 = internal constant [32 x i8] c"poly1305_arm.alias=poly1305-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto185 = internal constant [39 x i8] c"poly1305_arm.alias=crypto-poly1305-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace186 = internal constant [33 x i8] c"poly1305_arm.alias=poly1305-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto187 = internal constant [40 x i8] c"poly1305_arm.alias=crypto-poly1305-neon\00", section ".modinfo", align 1
@have_neon = internal global { { %struct.atomic_t, { ptr } } } zeroinitializer, section ".data..ro_after_init", align 4
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_alias_crypto183, ptr @__UNIQUE_ID_alias_crypto185, ptr @__UNIQUE_ID_alias_crypto187, ptr @__UNIQUE_ID_alias_userspace182, ptr @__UNIQUE_ID_alias_userspace184, ptr @__UNIQUE_ID_alias_userspace186, ptr @__UNIQUE_ID_file180, ptr @__UNIQUE_ID_license181, ptr @__exitcall_arm_poly1305_mod_exit, ptr @__initcall__kmod_poly1305_arm__179_267_arm_poly1305_mod_init6, ptr @__ksymtab_poly1305_final_arch, ptr @__ksymtab_poly1305_init_arch, ptr @__ksymtab_poly1305_update_arch, ptr @arm_poly1305_mod_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @poly1305_blocks_neon(ptr noundef %state, ptr noundef %src, i32 noundef %len, i32 noundef %hibit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @poly1305_init_arch(ptr noundef %dctx, ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %h = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 5
  tail call void @poly1305_init_arm(ptr noundef %h, ptr noundef %key) #6
  %add.ptr = getelementptr i8, ptr %key, i32 16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %add.ptr, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  %s = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 4
  %3 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %s, align 8
  %add.ptr1 = getelementptr i8, ptr %key, i32 20
  %4 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr1, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  %arrayidx4 = getelementptr %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx4, align 4
  %add.ptr5 = getelementptr i8, ptr %key, i32 24
  %8 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %add.ptr5, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  %arrayidx8 = getelementptr %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx8, align 8
  %add.ptr9 = getelementptr i8, ptr %key, i32 28
  %12 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %add.ptr9, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  %arrayidx12 = getelementptr %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 4, i32 3
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx12, align 4
  %buflen = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 1
  %16 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %buflen, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @poly1305_init_arm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @poly1305_update_arch(ptr noundef %dctx, ptr noundef %src, i32 noundef %nbytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !26) #6
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !26) #6
  %and.i.i6.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i6.i to ptr
  %preempt_count.i7.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i7.i, align 4
  %and2.i = and i32 %7, 983040
  %or.i = or i32 %and2.i, %and.i
  %8 = tail call i32 @llvm.read_register.i32(metadata !26) #6
  %and.i.i8.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i8.i to ptr
  %preempt_count.i9.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i9.i, align 4
  %and4.i = and i32 %11, 65280
  %or5.i = or i32 %or.i, %and4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %tobool.not.i.not = icmp eq i32 %or5.i, 0
  %buflen = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 1
  %12 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buflen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then, !prof !36

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then:                                          ; preds = %entry
  %sub = sub i32 16, %13
  %14 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %nbytes)
  %add.ptr = getelementptr i8, ptr %dctx, i32 %13
  %15 = call ptr @memcpy(ptr %add.ptr, ptr %src, i32 %14)
  %add.ptr5 = getelementptr i8, ptr %src, i32 %14
  %sub6 = sub i32 %nbytes, %14
  %16 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buflen, align 8
  %add = add i32 %17, %14
  store i32 %add, ptr %buflen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add)
  %cmp9 = icmp eq i32 %add, 16
  br i1 %cmp9, label %if.then10, label %if.then.if.end14_crit_edge

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %h = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 5
  tail call void @poly1305_blocks_arm(ptr noundef %h, ptr noundef %dctx, i32 noundef 16, i32 noundef 1) #6
  %18 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %buflen, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.then.if.end14_crit_edge, %entry.if.end14_crit_edge
  %nbytes.addr.0 = phi i32 [ %nbytes, %entry.if.end14_crit_edge ], [ %sub6, %if.then10 ], [ %sub6, %if.then.if.end14_crit_edge ]
  %src.addr.0 = phi ptr [ %src, %entry.if.end14_crit_edge ], [ %add.ptr5, %if.then10 ], [ %add.ptr5, %if.then.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %nbytes.addr.0)
  %cmp15 = icmp ugt i32 %nbytes.addr.0, 15
  br i1 %cmp15, label %if.then22, label %if.end14.if.end50_crit_edge, !prof !36

if.end14.if.end50_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then22:                                        ; preds = %if.end14
  %and = and i32 %nbytes.addr.0, -16
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @have_neon, i32 1), ptr blockaddress(@poly1305_update_arch, %if.else)) #6
          to label %arch_static_branch_jump.exit [label %if.else], !srcloc !37

arch_static_branch_jump.exit:                     ; preds = %if.then22
  br i1 %tobool.not.i.not, label %do.body.preheader, label %arch_static_branch_jump.exit.if.else_crit_edge

arch_static_branch_jump.exit.if.else_crit_edge:   ; preds = %arch_static_branch_jump.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

do.body.preheader:                                ; preds = %arch_static_branch_jump.exit
  %h43 = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader
  %len.0 = phi i32 [ %sub44, %do.body.do.body_crit_edge ], [ %and, %do.body.preheader ]
  %src.addr.1 = phi ptr [ %add.ptr45, %do.body.do.body_crit_edge ], [ %src.addr.0, %do.body.preheader ]
  %19 = tail call i32 @llvm.umin.i32(i32 %len.0, i32 4096)
  tail call void @kernel_neon_begin() #6
  tail call void @poly1305_blocks_neon(ptr noundef %h43, ptr noundef %src.addr.1, i32 noundef %19, i32 noundef 1)
  tail call void @kernel_neon_end() #6
  %sub44 = sub i32 %len.0, %19
  %add.ptr45 = getelementptr i8, ptr %src.addr.1, i32 %19
  %tobool46.not = icmp eq i32 %sub44, 0
  br i1 %tobool46.not, label %do.body.if.end49_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body.if.end49_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.else:                                          ; preds = %arch_static_branch_jump.exit.if.else_crit_edge, %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %h47 = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 5
  tail call void @poly1305_blocks_arm(ptr noundef %h47, ptr noundef %src.addr.0, i32 noundef %and, i32 noundef 1) #6
  %add.ptr48 = getelementptr i8, ptr %src.addr.0, i32 %and
  br label %if.end49

if.end49:                                         ; preds = %if.else, %do.body.if.end49_crit_edge
  %src.addr.2 = phi ptr [ %add.ptr48, %if.else ], [ %add.ptr45, %do.body.if.end49_crit_edge ]
  %rem = and i32 %nbytes.addr.0, 15
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end14.if.end50_crit_edge
  %nbytes.addr.1 = phi i32 [ %rem, %if.end49 ], [ %nbytes.addr.0, %if.end14.if.end50_crit_edge ]
  %src.addr.3 = phi ptr [ %src.addr.2, %if.end49 ], [ %src.addr.0, %if.end14.if.end50_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.addr.1)
  %tobool51.not = icmp eq i32 %nbytes.addr.1, 0
  br i1 %tobool51.not, label %if.end50.if.end62_crit_edge, label %if.then58, !prof !36

if.end50.if.end62_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then58:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %nbytes.addr.1, ptr %buflen, align 8
  %21 = call ptr @memcpy(ptr %dctx, ptr %src.addr.3, i32 %nbytes.addr.1)
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %if.end50.if.end62_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @poly1305_blocks_arm(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_begin() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_end() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @poly1305_final_arch(ptr noundef %dctx, ptr noundef %dst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %buflen = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 1
  %0 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buflen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !36

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i32 %1, 1
  %2 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc, ptr %buflen, align 8
  %arrayidx = getelementptr [16 x i8], ptr %dctx, i32 0, i32 %1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %arrayidx, align 1
  %4 = load i32, ptr %buflen, align 8
  %add.ptr = getelementptr i8, ptr %dctx, i32 %4
  %sub = sub i32 16, %4
  %5 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  %h = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 5
  tail call void @poly1305_blocks_arm(ptr noundef %h, ptr noundef %dctx, i32 noundef 16, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %h9 = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 5
  %s = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 4
  tail call void @poly1305_emit_arm(ptr noundef %h9, ptr noundef %dst, ptr noundef %s) #6
  %6 = call ptr @memset(ptr %dctx, i32 0, i32 280)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @poly1305_emit_arm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @arm_poly1305_mod_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @have_neon, i32 1), ptr blockaddress(@arm_poly1305_mod_exit, %if.then)) #6
          to label %if.end [label %if.then], !srcloc !37

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @crypto_unregister_shash(ptr noundef nonnull @arm_poly1305_algs) #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @crypto_unregister_shashes(ptr noundef nonnull @arm_poly1305_algs, i32 noundef 2) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shashes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_poly1305_mod_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %0 = load i32, ptr @elf_hwcap, align 4
  %and = and i32 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @static_key_enable(ptr noundef nonnull @have_neon) #6
  %call1 = tail call i32 @crypto_register_shashes(ptr noundef nonnull @arm_poly1305_algs, i32 noundef 2) #6
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @crypto_register_shash(ptr noundef nonnull @arm_poly1305_algs) #6
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @arm_poly1305_init(ptr nocapture noundef writeonly %desc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %buflen = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 3
  %0 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %buflen, align 8
  %rset = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 3, i32 1
  %1 = ptrtoint ptr %rset to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %rset, align 4
  %sset = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 3, i32 1, i32 2
  %2 = ptrtoint ptr %sset to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %sset, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_poly1305_update(ptr noundef %desc, ptr noundef %src, i32 noundef %srclen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %buflen.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 3
  %0 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buflen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.if.end14.i_crit_edge, label %if.then.i, !prof !36

entry.if.end14.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.then.i:                                        ; preds = %entry
  %sub.i = sub i32 16, %1
  %2 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %srclen) #6
  %add.ptr.i = getelementptr i8, ptr %__ctx.i, i32 %1
  %3 = call ptr @memcpy(ptr %add.ptr.i, ptr %src, i32 %2)
  %add.ptr5.i = getelementptr i8, ptr %src, i32 %2
  %sub6.i = sub i32 %srclen, %2
  %4 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buflen.i, align 8
  %add.i = add i32 %5, %2
  store i32 %add.i, ptr %buflen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add.i)
  %cmp9.i = icmp eq i32 %add.i, 16
  br i1 %cmp9.i, label %if.then10.i, label %if.then.i.if.end14.i_crit_edge

if.then.i.if.end14.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.then10.i:                                      ; preds = %if.then.i
  %sset.i8 = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 3, i32 1, i32 2
  %6 = ptrtoint ptr %sset.i8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sset.i8, align 2, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i9 = icmp eq i8 %7, 0
  br i1 %tobool.not.i9, label %if.then.i12, label %if.end28.i34, !prof !39

if.then.i12:                                      ; preds = %if.then10.i
  %rset.i10 = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 3, i32 1
  %8 = ptrtoint ptr %rset.i10 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rset.i10, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool4.not.i11 = icmp eq i16 %9, 0
  br i1 %tobool4.not.i11, label %if.end.i19, label %if.end24.i30

if.end.i19:                                       ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #8
  %h.i13 = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  tail call void @poly1305_init_arm(ptr noundef %h.i13, ptr noundef %__ctx.i) #6
  %10 = ptrtoint ptr %rset.i10 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %rset.i10, align 4
  br label %arm_poly1305_blocks.exit38

if.end24.i30:                                     ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %__ctx.i, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  %s.i20 = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 4
  %14 = ptrtoint ptr %s.i20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %s.i20, align 8
  %add.ptr9.i21 = getelementptr %struct.shash_desc, ptr %desc, i32 1, i32 1
  %15 = ptrtoint ptr %add.ptr9.i21 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %add.ptr9.i21, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  %arrayidx12.i22 = getelementptr %struct.shash_desc, ptr %desc, i32 4, i32 1
  %18 = ptrtoint ptr %arrayidx12.i22 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx12.i22, align 4
  %add.ptr13.i23 = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %19 = ptrtoint ptr %add.ptr13.i23 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %add.ptr13.i23, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  %arrayidx16.i24 = getelementptr %struct.shash_desc, ptr %desc, i32 5
  %22 = ptrtoint ptr %arrayidx16.i24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx16.i24, align 8
  %add.ptr17.i25 = getelementptr %struct.shash_desc, ptr %desc, i32 2, i32 1
  %23 = ptrtoint ptr %add.ptr17.i25 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %add.ptr17.i25, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  %arrayidx20.i26 = getelementptr %struct.shash_desc, ptr %desc, i32 5, i32 1
  %26 = ptrtoint ptr %arrayidx20.i26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx20.i26, align 4
  %27 = ptrtoint ptr %sset.i8 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %sset.i8, align 2
  br label %arm_poly1305_blocks.exit38

if.end28.i34:                                     ; preds = %if.then10.i
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @have_neon, i32 1), ptr blockaddress(@arm_poly1305_update, %if.else.i37)) #6
          to label %arch_static_branch_jump.exit.i35 [label %if.else.i37], !srcloc !37

arch_static_branch_jump.exit.i35:                 ; preds = %if.end28.i34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i37

if.else.i37:                                      ; preds = %arch_static_branch_jump.exit.i35, %if.end28.i34
  %h49.i36 = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  tail call void @poly1305_blocks_arm(ptr noundef %h49.i36, ptr noundef %__ctx.i, i32 noundef 16, i32 noundef 1) #6
  br label %arm_poly1305_blocks.exit38

arm_poly1305_blocks.exit38:                       ; preds = %if.else.i37, %if.end24.i30, %if.end.i19
  %28 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %buflen.i, align 8
  br label %if.end14.i

if.end14.i:                                       ; preds = %arm_poly1305_blocks.exit38, %if.then.i.if.end14.i_crit_edge, %entry.if.end14.i_crit_edge
  %len.addr.0.i = phi i32 [ %srclen, %entry.if.end14.i_crit_edge ], [ %sub6.i, %arm_poly1305_blocks.exit38 ], [ %sub6.i, %if.then.i.if.end14.i_crit_edge ]
  %src.addr.0.i = phi ptr [ %src, %entry.if.end14.i_crit_edge ], [ %add.ptr5.i, %arm_poly1305_blocks.exit38 ], [ %add.ptr5.i, %if.then.i.if.end14.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %len.addr.0.i)
  %cmp15.i = icmp ugt i32 %len.addr.0.i, 15
  br i1 %cmp15.i, label %if.then22.i, label %if.end14.i.if.end25.i_crit_edge, !prof !36

if.end14.i.if.end25.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

if.then22.i:                                      ; preds = %if.end14.i
  %sset.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 3, i32 1, i32 2
  %29 = ptrtoint ptr %sset.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sset.i, align 2, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i1 = icmp eq i8 %30, 0
  br i1 %tobool.not.i1, label %if.then.i2, label %if.then22.i.if.end28.i_crit_edge, !prof !39

if.then22.i.if.end28.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

if.then.i2:                                       ; preds = %if.then22.i
  %rset.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 3, i32 1
  %31 = ptrtoint ptr %rset.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %rset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool4.not.i = icmp eq i16 %32, 0
  br i1 %tobool4.not.i, label %if.end.i, label %if.then.i2.if.end24.i_crit_edge

if.then.i2.if.end24.i_crit_edge:                  ; preds = %if.then.i2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

if.end.i:                                         ; preds = %if.then.i2
  %h.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  tail call void @poly1305_init_arm(ptr noundef %h.i, ptr noundef %src.addr.0.i) #6
  %add.ptr.i3 = getelementptr i8, ptr %src.addr.0.i, i32 16
  %sub.i4 = add i32 %len.addr.0.i, -16
  %33 = ptrtoint ptr %rset.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %rset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.i4)
  %cmp.i = icmp ugt i32 %sub.i4, 15
  br i1 %cmp.i, label %if.end.i.if.end24.i_crit_edge, label %if.end.i.arm_poly1305_blocks.exit_crit_edge

if.end.i.arm_poly1305_blocks.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %arm_poly1305_blocks.exit

if.end.i.if.end24.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end.i.if.end24.i_crit_edge, %if.then.i2.if.end24.i_crit_edge
  %src.addr.0.i648 = phi ptr [ %add.ptr.i3, %if.end.i.if.end24.i_crit_edge ], [ %src.addr.0.i, %if.then.i2.if.end24.i_crit_edge ]
  %len.addr.0.i547 = phi i32 [ %sub.i4, %if.end.i.if.end24.i_crit_edge ], [ %len.addr.0.i, %if.then.i2.if.end24.i_crit_edge ]
  %34 = ptrtoint ptr %src.addr.0.i648 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %src.addr.0.i648, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  %s.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 4
  %37 = ptrtoint ptr %s.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %s.i, align 8
  %add.ptr9.i = getelementptr i8, ptr %src.addr.0.i648, i32 4
  %38 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %add.ptr9.i, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #6
  %arrayidx12.i = getelementptr %struct.shash_desc, ptr %desc, i32 4, i32 1
  %41 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx12.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %src.addr.0.i648, i32 8
  %42 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %add.ptr13.i, align 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #6
  %arrayidx16.i = getelementptr %struct.shash_desc, ptr %desc, i32 5
  %45 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx16.i, align 8
  %add.ptr17.i = getelementptr i8, ptr %src.addr.0.i648, i32 12
  %46 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %add.ptr17.i, align 1
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #6
  %arrayidx20.i = getelementptr %struct.shash_desc, ptr %desc, i32 5, i32 1
  %49 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx20.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %src.addr.0.i648, i32 16
  %sub22.i = add i32 %len.addr.0.i547, -16
  %50 = ptrtoint ptr %sset.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %sset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub22.i)
  %cmp25.i = icmp ult i32 %sub22.i, 16
  br i1 %cmp25.i, label %if.end24.i.arm_poly1305_blocks.exit_crit_edge, label %if.end24.i.if.end28.i_crit_edge

if.end24.i.if.end28.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

if.end24.i.arm_poly1305_blocks.exit_crit_edge:    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %arm_poly1305_blocks.exit

if.end28.i:                                       ; preds = %if.end24.i.if.end28.i_crit_edge, %if.then22.i.if.end28.i_crit_edge
  %len.addr.2.i = phi i32 [ %sub22.i, %if.end24.i.if.end28.i_crit_edge ], [ %len.addr.0.i, %if.then22.i.if.end28.i_crit_edge ]
  %src.addr.2.i = phi ptr [ %add.ptr21.i, %if.end24.i.if.end28.i_crit_edge ], [ %src.addr.0.i, %if.then22.i.if.end28.i_crit_edge ]
  %and.i7 = and i32 %len.addr.2.i, -16
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @have_neon, i32 1), ptr blockaddress(@arm_poly1305_update, %if.else.i)) #6
          to label %arch_static_branch_jump.exit.i [label %if.else.i], !srcloc !37

arch_static_branch_jump.exit.i:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.else.i:                                        ; preds = %arch_static_branch_jump.exit.i, %if.end28.i
  %h49.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  tail call void @poly1305_blocks_arm(ptr noundef %h49.i, ptr noundef %src.addr.2.i, i32 noundef %and.i7, i32 noundef 1) #6
  br label %arm_poly1305_blocks.exit

arm_poly1305_blocks.exit:                         ; preds = %if.else.i, %if.end24.i.arm_poly1305_blocks.exit_crit_edge, %if.end.i.arm_poly1305_blocks.exit_crit_edge
  %and.i = and i32 %len.addr.0.i, -16
  %add.ptr24.i = getelementptr i8, ptr %src.addr.0.i, i32 %and.i
  %rem.i = and i32 %len.addr.0.i, 15
  br label %if.end25.i

if.end25.i:                                       ; preds = %arm_poly1305_blocks.exit, %if.end14.i.if.end25.i_crit_edge
  %len.addr.1.i = phi i32 [ %rem.i, %arm_poly1305_blocks.exit ], [ %len.addr.0.i, %if.end14.i.if.end25.i_crit_edge ]
  %src.addr.1.i = phi ptr [ %add.ptr24.i, %arm_poly1305_blocks.exit ], [ %src.addr.0.i, %if.end14.i.if.end25.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.i)
  %tobool26.not.i = icmp eq i32 %len.addr.1.i, 0
  br i1 %tobool26.not.i, label %if.end25.i.arm_poly1305_do_update.exit_crit_edge, label %if.then33.i, !prof !36

if.end25.i.arm_poly1305_do_update.exit_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %arm_poly1305_do_update.exit

if.then33.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %len.addr.1.i, ptr %buflen.i, align 8
  %52 = call ptr @memcpy(ptr %__ctx.i, ptr %src.addr.1.i, i32 %len.addr.1.i)
  br label %arm_poly1305_do_update.exit

arm_poly1305_do_update.exit:                      ; preds = %if.then33.i, %if.end25.i.arm_poly1305_do_update.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_poly1305_final(ptr noundef %desc, ptr noundef %dst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %sset = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 3, i32 1, i32 2
  %0 = ptrtoint ptr %sset to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sset, align 2, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !39

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %buflen.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 3
  %2 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buflen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.poly1305_final_arch.exit_crit_edge, label %if.then.i, !prof !36

if.end.poly1305_final_arch.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %poly1305_final_arch.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i = add i32 %3, 1
  %4 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %inc.i, ptr %buflen.i, align 8
  %arrayidx.i = getelementptr [16 x i8], ptr %__ctx.i, i32 0, i32 %3
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %arrayidx.i, align 1
  %6 = load i32, ptr %buflen.i, align 8
  %add.ptr.i = getelementptr i8, ptr %__ctx.i, i32 %6
  %sub.i = sub i32 16, %6
  %7 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i)
  %h.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  tail call void @poly1305_blocks_arm(ptr noundef %h.i, ptr noundef %__ctx.i, i32 noundef 16, i32 noundef 0) #6
  br label %poly1305_final_arch.exit

poly1305_final_arch.exit:                         ; preds = %if.then.i, %if.end.poly1305_final_arch.exit_crit_edge
  %h9.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  %s.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 4
  tail call void @poly1305_emit_arm(ptr noundef %h9.i, ptr noundef %dst, ptr noundef %s.i) #6
  %8 = call ptr @memset(ptr %__ctx.i, i32 0, i32 280)
  br label %cleanup

cleanup:                                          ; preds = %poly1305_final_arch.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %poly1305_final_arch.exit ], [ -126, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_poly1305_update_neon(ptr noundef %desc, ptr noundef %src, i32 noundef %srclen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = tail call i32 @llvm.read_register.i32(metadata !26) #6
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !26) #6
  %and.i.i6.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i6.i to ptr
  %preempt_count.i7.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i7.i, align 4
  %and2.i = and i32 %7, 983040
  %or.i = or i32 %and2.i, %and.i
  %8 = tail call i32 @llvm.read_register.i32(metadata !26) #6
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %srclen)
  %cmp = icmp ugt i32 %srclen, 128
  %spec.select = and i1 %cmp, %tobool.not.i
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @have_neon, i32 1), ptr blockaddress(@arm_poly1305_update_neon, %if.end)) #6
          to label %arch_static_branch_jump.exit [label %if.end], !srcloc !37

arch_static_branch_jump.exit:                     ; preds = %entry
  br i1 %spec.select, label %if.then, label %arch_static_branch_jump.exit.if.end_crit_edge

arch_static_branch_jump.exit.if.end_crit_edge:    ; preds = %arch_static_branch_jump.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %arch_static_branch_jump.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kernel_neon_begin() #6
  br label %if.end

if.end:                                           ; preds = %if.then, %arch_static_branch_jump.exit.if.end_crit_edge, %entry
  %spec.select.not45.in = phi i1 [ false, %arch_static_branch_jump.exit.if.end_crit_edge ], [ true, %if.then ], [ %spec.select, %entry ]
  %buflen.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 3
  %12 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buflen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i34 = icmp eq i32 %13, 0
  br i1 %tobool.not.i34, label %if.end.if.end14.i_crit_edge, label %if.then.i, !prof !36

if.end.if.end14.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.then.i:                                        ; preds = %if.end
  %sub.i = sub i32 16, %13
  %14 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %srclen) #6
  %add.ptr.i = getelementptr i8, ptr %__ctx.i, i32 %13
  %15 = call ptr @memcpy(ptr %add.ptr.i, ptr %src, i32 %14)
  %add.ptr5.i = getelementptr i8, ptr %src, i32 %14
  %sub6.i = sub i32 %srclen, %14
  %16 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buflen.i, align 8
  %add.i = add i32 %17, %14
  store i32 %add.i, ptr %buflen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add.i)
  %cmp9.i = icmp eq i32 %add.i, 16
  br i1 %cmp9.i, label %if.then10.i, label %if.then.i.if.end14.i_crit_edge

if.then.i.if.end14.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.then10.i:                                      ; preds = %if.then.i
  %sset.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 3, i32 1, i32 2
  %18 = ptrtoint ptr %sset.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sset.i, align 2, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i36 = icmp eq i8 %19, 0
  br i1 %tobool.not.i36, label %if.then.i37, label %if.end28.i, !prof !39

if.then.i37:                                      ; preds = %if.then10.i
  %rset.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 3, i32 1
  %20 = ptrtoint ptr %rset.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %rset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool4.not.i = icmp eq i16 %21, 0
  br i1 %tobool4.not.i, label %if.end.i, label %if.end24.i

if.end.i:                                         ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #8
  %h.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  tail call void @poly1305_init_arm(ptr noundef %h.i, ptr noundef %__ctx.i) #6
  %22 = ptrtoint ptr %rset.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %rset.i, align 4
  br label %arm_poly1305_blocks.exit

if.end24.i:                                       ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %__ctx.i, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  %s.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 4
  %26 = ptrtoint ptr %s.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %s.i, align 8
  %add.ptr9.i = getelementptr %struct.shash_desc, ptr %desc, i32 1, i32 1
  %27 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %add.ptr9.i, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #6
  %arrayidx12.i = getelementptr %struct.shash_desc, ptr %desc, i32 4, i32 1
  %30 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx12.i, align 4
  %add.ptr13.i = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %31 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %add.ptr13.i, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #6
  %arrayidx16.i = getelementptr %struct.shash_desc, ptr %desc, i32 5
  %34 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx16.i, align 8
  %add.ptr17.i = getelementptr %struct.shash_desc, ptr %desc, i32 2, i32 1
  %35 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %add.ptr17.i, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #6
  %arrayidx20.i = getelementptr %struct.shash_desc, ptr %desc, i32 5, i32 1
  %38 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx20.i, align 4
  %39 = ptrtoint ptr %sset.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %sset.i, align 2
  br label %arm_poly1305_blocks.exit

if.end28.i:                                       ; preds = %if.then10.i
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @have_neon, i32 1), ptr blockaddress(@arm_poly1305_update_neon, %if.else.i)) #6
          to label %arch_static_branch_jump.exit.i [label %if.else.i], !srcloc !37

arch_static_branch_jump.exit.i:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.else.i:                                        ; preds = %arch_static_branch_jump.exit.i, %if.end28.i
  %h49.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  tail call void @poly1305_blocks_arm(ptr noundef %h49.i, ptr noundef %__ctx.i, i32 noundef 16, i32 noundef 1) #6
  br label %arm_poly1305_blocks.exit

arm_poly1305_blocks.exit:                         ; preds = %if.else.i, %if.end24.i, %if.end.i
  %40 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %buflen.i, align 8
  br label %if.end14.i

if.end14.i:                                       ; preds = %arm_poly1305_blocks.exit, %if.then.i.if.end14.i_crit_edge, %if.end.if.end14.i_crit_edge
  %len.addr.0.i = phi i32 [ %srclen, %if.end.if.end14.i_crit_edge ], [ %sub6.i, %arm_poly1305_blocks.exit ], [ %sub6.i, %if.then.i.if.end14.i_crit_edge ]
  %src.addr.0.i = phi ptr [ %src, %if.end.if.end14.i_crit_edge ], [ %add.ptr5.i, %arm_poly1305_blocks.exit ], [ %add.ptr5.i, %if.then.i.if.end14.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %len.addr.0.i)
  %cmp15.i = icmp ugt i32 %len.addr.0.i, 15
  br i1 %cmp15.i, label %if.then22.i, label %if.end14.i.if.end25.i_crit_edge, !prof !36

if.end14.i.if.end25.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

if.then22.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @arm_poly1305_blocks(ptr noundef %__ctx.i, ptr noundef %src.addr.0.i, i32 noundef %len.addr.0.i, i1 noundef zeroext %spec.select) #6
  %and.i35 = and i32 %len.addr.0.i, -16
  %add.ptr24.i = getelementptr i8, ptr %src.addr.0.i, i32 %and.i35
  %rem.i = and i32 %len.addr.0.i, 15
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then22.i, %if.end14.i.if.end25.i_crit_edge
  %len.addr.1.i = phi i32 [ %rem.i, %if.then22.i ], [ %len.addr.0.i, %if.end14.i.if.end25.i_crit_edge ]
  %src.addr.1.i = phi ptr [ %add.ptr24.i, %if.then22.i ], [ %src.addr.0.i, %if.end14.i.if.end25.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.i)
  %tobool26.not.i = icmp eq i32 %len.addr.1.i, 0
  br i1 %tobool26.not.i, label %if.end25.i.arm_poly1305_do_update.exit_crit_edge, label %if.then33.i, !prof !36

if.end25.i.arm_poly1305_do_update.exit_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %arm_poly1305_do_update.exit

if.then33.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %len.addr.1.i, ptr %buflen.i, align 8
  %42 = call ptr @memcpy(ptr %__ctx.i, ptr %src.addr.1.i, i32 %len.addr.1.i)
  br label %arm_poly1305_do_update.exit

arm_poly1305_do_update.exit:                      ; preds = %if.then33.i, %if.end25.i.arm_poly1305_do_update.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @have_neon, i32 1), ptr blockaddress(@arm_poly1305_update_neon, %if.end25)) #6
          to label %arch_static_branch_jump.exit33 [label %if.end25], !srcloc !37

arch_static_branch_jump.exit33:                   ; preds = %arm_poly1305_do_update.exit
  br i1 %spec.select.not45.in, label %if.then24, label %arch_static_branch_jump.exit33.if.end25_crit_edge

arch_static_branch_jump.exit33.if.end25_crit_edge: ; preds = %arch_static_branch_jump.exit33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then24:                                        ; preds = %arch_static_branch_jump.exit33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kernel_neon_end() #6
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %arch_static_branch_jump.exit33.if.end25_crit_edge, %arm_poly1305_do_update.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arm_poly1305_blocks(ptr noundef %dctx, ptr noundef %src, i32 noundef %len, i1 noundef zeroext %do_neon) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sset = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 3
  %0 = ptrtoint ptr %sset to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sset, align 2, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end28_crit_edge, !prof !39

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then:                                          ; preds = %entry
  %rset = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 2
  %2 = ptrtoint ptr %rset to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rset, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool4.not = icmp eq i16 %3, 0
  br i1 %tobool4.not, label %if.then5, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %h = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 5
  tail call void @poly1305_init_arm(ptr noundef %h, ptr noundef %src) #6
  %add.ptr = getelementptr i8, ptr %src, i32 16
  %sub = add i32 %len, -16
  %4 = ptrtoint ptr %rset to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %rset, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %len.addr.0 = phi i32 [ %len, %if.then.if.end_crit_edge ], [ %sub, %if.then5 ]
  %src.addr.0 = phi ptr [ %src, %if.then.if.end_crit_edge ], [ %add.ptr, %if.then5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %len.addr.0)
  %cmp = icmp ugt i32 %len.addr.0, 15
  br i1 %cmp, label %if.end24, label %if.end.if.end50_crit_edge

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.end24:                                         ; preds = %if.end
  %5 = ptrtoint ptr %src.addr.0 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %src.addr.0, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  %s = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 4
  %8 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %s, align 8
  %add.ptr9 = getelementptr i8, ptr %src.addr.0, i32 4
  %9 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %add.ptr9, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  %arrayidx12 = getelementptr %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx12, align 4
  %add.ptr13 = getelementptr i8, ptr %src.addr.0, i32 8
  %13 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %add.ptr13, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  %arrayidx16 = getelementptr %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx16, align 8
  %add.ptr17 = getelementptr i8, ptr %src.addr.0, i32 12
  %17 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %add.ptr17, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  %arrayidx20 = getelementptr %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 4, i32 3
  %20 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx20, align 4
  %add.ptr21 = getelementptr i8, ptr %src.addr.0, i32 16
  %sub22 = add i32 %len.addr.0, -16
  %21 = ptrtoint ptr %sset to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %sset, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub22)
  %cmp25 = icmp ult i32 %sub22, 16
  br i1 %cmp25, label %if.end24.if.end50_crit_edge, label %if.end24.if.end28_crit_edge

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end24.if.end50_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.end28:                                         ; preds = %if.end24.if.end28_crit_edge, %entry.if.end28_crit_edge
  %len.addr.2 = phi i32 [ %sub22, %if.end24.if.end28_crit_edge ], [ %len, %entry.if.end28_crit_edge ]
  %src.addr.2 = phi ptr [ %add.ptr21, %if.end24.if.end28_crit_edge ], [ %src, %entry.if.end28_crit_edge ]
  %and = and i32 %len.addr.2, -16
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @have_neon, i32 1), ptr blockaddress(@arm_poly1305_blocks, %if.else)) #6
          to label %arch_static_branch_jump.exit [label %if.else], !srcloc !37

arch_static_branch_jump.exit:                     ; preds = %if.end28
  br i1 %do_neon, label %if.then47, label %arch_static_branch_jump.exit.if.else_crit_edge, !prof !40

arch_static_branch_jump.exit.if.else_crit_edge:   ; preds = %arch_static_branch_jump.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then47:                                        ; preds = %arch_static_branch_jump.exit
  call void @__sanitizer_cov_trace_pc() #8
  %h48 = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 5
  tail call void @poly1305_blocks_neon(ptr noundef %h48, ptr noundef %src.addr.2, i32 noundef %and, i32 noundef 1)
  br label %if.end50

if.else:                                          ; preds = %arch_static_branch_jump.exit.if.else_crit_edge, %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %h49 = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 5
  tail call void @poly1305_blocks_arm(ptr noundef %h49, ptr noundef %src.addr.2, i32 noundef %and, i32 noundef 1) #6
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then47, %if.end24.if.end50_crit_edge, %if.end.if.end50_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shashes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24}
!llvm.named.register.sp = !{!26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__ksymtab_poly1305_init_arch, !1, !"__ksymtab_poly1305_init_arch", i1 false, i1 false}
!1 = !{!"../arch/arm/crypto/poly1305-glue.c", i32 41, i32 1}
!2 = !{ptr @__ksymtab_poly1305_update_arch, !3, !"__ksymtab_poly1305_update_arch", i1 false, i1 false}
!3 = !{!"../arch/arm/crypto/poly1305-glue.c", i32 186, i32 1}
!4 = !{ptr @__ksymtab_poly1305_final_arch, !5, !"__ksymtab_poly1305_final_arch", i1 false, i1 false}
!5 = !{!"../arch/arm/crypto/poly1305-glue.c", i32 200, i32 1}
!6 = !{ptr @__initcall__kmod_poly1305_arm__179_267_arm_poly1305_mod_init6, !7, !"__initcall__kmod_poly1305_arm__179_267_arm_poly1305_mod_init6", i1 false, i1 false}
!7 = !{!"../arch/arm/crypto/poly1305-glue.c", i32 267, i32 1}
!8 = !{ptr @__exitcall_arm_poly1305_mod_exit, !9, !"__exitcall_arm_poly1305_mod_exit", i1 false, i1 false}
!9 = !{!"../arch/arm/crypto/poly1305-glue.c", i32 268, i32 1}
!10 = !{ptr @__UNIQUE_ID_file180, !11, !"__UNIQUE_ID_file180", i1 false, i1 false}
!11 = !{!"../arch/arm/crypto/poly1305-glue.c", i32 270, i32 1}
!12 = !{ptr @__UNIQUE_ID_license181, !11, !"__UNIQUE_ID_license181", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_alias_userspace182, !14, !"__UNIQUE_ID_alias_userspace182", i1 false, i1 false}
!14 = !{!"../arch/arm/crypto/poly1305-glue.c", i32 271, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias_crypto183, !14, !"__UNIQUE_ID_alias_crypto183", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_alias_userspace184, !17, !"__UNIQUE_ID_alias_userspace184", i1 false, i1 false}
!17 = !{!"../arch/arm/crypto/poly1305-glue.c", i32 272, i32 1}
!18 = !{ptr @__UNIQUE_ID_alias_crypto185, !17, !"__UNIQUE_ID_alias_crypto185", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_alias_userspace186, !20, !"__UNIQUE_ID_alias_userspace186", i1 false, i1 false}
!20 = !{!"../arch/arm/crypto/poly1305-glue.c", i32 273, i32 1}
!21 = !{ptr @__UNIQUE_ID_alias_crypto187, !20, !"__UNIQUE_ID_alias_crypto187", i1 false, i1 false}
!22 = !{ptr @have_neon, !23, !"have_neon", i1 false, i1 false}
!23 = !{!"../arch/arm/crypto/poly1305-glue.c", i32 30, i32 24}
!24 = !{ptr @arm_poly1305_algs, !25, !"arm_poly1305_algs", i1 false, i1 false}
!25 = !{!"../arch/arm/crypto/poly1305-glue.c", i32 213, i32 25}
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
!37 = !{i64 2148168502, i64 2148168507, i64 2148168528, i64 2148168572, i64 2148168606, i64 2148168627}
!38 = !{i8 0, i8 2}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{!"branch_weights", i32 2000, i32 2002}
