; ModuleID = '/llk/IR_all_yes/crypto/rsa_helper.c_pt.bc'
source_filename = "../crypto/rsa_helper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rsa_parse_pub_key\22, \22a\22\09"
module asm "\09.weak\09__crc_rsa_parse_pub_key\09\09\09\09"
module asm "\09.long\09__crc_rsa_parse_pub_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rsa_parse_pub_key:\09\09\09\09\09"
module asm "\09.asciz \09\22rsa_parse_pub_key\22\09\09\09\09\09"
module asm "__kstrtabns_rsa_parse_pub_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rsa_parse_priv_key\22, \22a\22\09"
module asm "\09.weak\09__crc_rsa_parse_priv_key\09\09\09\09"
module asm "\09.long\09__crc_rsa_parse_priv_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rsa_parse_priv_key:\09\09\09\09\09"
module asm "\09.asciz \09\22rsa_parse_priv_key\22\09\09\09\09\09"
module asm "__kstrtabns_rsa_parse_priv_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.asn1_decoder = type opaque
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rsa_key = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }

@rsapubkey_decoder = external dso_local constant %struct.asn1_decoder, align 1
@__kstrtab_rsa_parse_pub_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_rsa_parse_pub_key = external dso_local constant [0 x i8], align 1
@__ksymtab_rsa_parse_pub_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rsa_parse_pub_key to i32), ptr @__kstrtab_rsa_parse_pub_key, ptr @__kstrtabns_rsa_parse_pub_key }, section "___ksymtab_gpl+rsa_parse_pub_key", align 4
@rsaprivkey_decoder = external dso_local constant %struct.asn1_decoder, align 1
@__kstrtab_rsa_parse_priv_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_rsa_parse_priv_key = external dso_local constant [0 x i8], align 1
@__ksymtab_rsa_parse_priv_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rsa_parse_priv_key to i32), ptr @__kstrtab_rsa_parse_priv_key, ptr @__kstrtabns_rsa_parse_priv_key }, section "___ksymtab_gpl+rsa_parse_priv_key", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_rsa_parse_priv_key, ptr @__ksymtab_rsa_parse_pub_key], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @rsa_get_n(ptr nocapture noundef writeonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %value, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vlen)
  %tobool1.not = icmp eq i32 %vlen, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %value, ptr %context, align 4
  %n_sz2 = getelementptr inbounds %struct.rsa_key, ptr %context, i32 0, i32 8
  %1 = ptrtoint ptr %n_sz2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %vlen, ptr %n_sz2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rsa_get_e(ptr nocapture noundef %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %value, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %n_sz = getelementptr inbounds %struct.rsa_key, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %n_sz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_sz, align 4
  %2 = add i32 %vlen, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %1)
  %.not = icmp ult i32 %2, %1
  br i1 %.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %e = getelementptr inbounds %struct.rsa_key, ptr %context, i32 0, i32 1
  %3 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %value, ptr %e, align 4
  %e_sz = getelementptr inbounds %struct.rsa_key, ptr %context, i32 0, i32 9
  %4 = ptrtoint ptr %e_sz to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %vlen, ptr %e_sz, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rsa_get_d(ptr nocapture noundef %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %value, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %n_sz = getelementptr inbounds %struct.rsa_key, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %n_sz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_sz, align 4
  %2 = add i32 %vlen, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %1)
  %.not = icmp ult i32 %2, %1
  br i1 %.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %d = getelementptr inbounds %struct.rsa_key, ptr %context, i32 0, i32 2
  %3 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %value, ptr %d, align 4
  %d_sz = getelementptr inbounds %struct.rsa_key, ptr %context, i32 0, i32 10
  %4 = ptrtoint ptr %d_sz to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %vlen, ptr %d_sz, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rsa_get_p(ptr nocapture noundef %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %value, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vlen)
  %tobool1.not = icmp eq i32 %vlen, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %n_sz = getelementptr inbounds %struct.rsa_key, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %n_sz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %vlen)
  %cmp = icmp ult i32 %1, %vlen
  br i1 %cmp, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  %p = getelementptr inbounds %struct.rsa_key, ptr %context, i32 0, i32 3
  %2 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %value, ptr %p, align 4
  %p_sz = getelementptr inbounds %struct.rsa_key, ptr %context, i32 0, i32 11
  %3 = ptrtoint ptr %p_sz to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %vlen, ptr %p_sz, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rsa_get_q(ptr nocapture noundef %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %value, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vlen)
  %tobool1.not = icmp eq i32 %vlen, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %n_sz = getelementptr inbounds %struct.rsa_key, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %n_sz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %vlen)
  %cmp = icmp ult i32 %1, %vlen
  br i1 %cmp, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  %q = getelementptr inbounds %struct.rsa_key, ptr %context, i32 0, i32 4
  %2 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %value, ptr %q, align 4
  %q_sz = getelementptr inbounds %struct.rsa_key, ptr %context, i32 0, i32 12
  %3 = ptrtoint ptr %q_sz to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %vlen, ptr %q_sz, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rsa_get_dp(ptr nocapture noundef %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %value, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vlen)
  %tobool1.not = icmp eq i32 %vlen, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %n_sz = getelementptr inbounds %struct.rsa_key, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %n_sz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %vlen)
  %cmp = icmp ult i32 %1, %vlen
  br i1 %cmp, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  %dp = getelementptr inbounds %struct.rsa_key, ptr %context, i32 0, i32 5
  %2 = ptrtoint ptr %dp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %value, ptr %dp, align 4
  %dp_sz = getelementptr inbounds %struct.rsa_key, ptr %context, i32 0, i32 13
  %3 = ptrtoint ptr %dp_sz to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %vlen, ptr %dp_sz, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rsa_get_dq(ptr nocapture noundef %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %value, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vlen)
  %tobool1.not = icmp eq i32 %vlen, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %n_sz = getelementptr inbounds %struct.rsa_key, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %n_sz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %vlen)
  %cmp = icmp ult i32 %1, %vlen
  br i1 %cmp, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  %dq = getelementptr inbounds %struct.rsa_key, ptr %context, i32 0, i32 6
  %2 = ptrtoint ptr %dq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %value, ptr %dq, align 4
  %dq_sz = getelementptr inbounds %struct.rsa_key, ptr %context, i32 0, i32 14
  %3 = ptrtoint ptr %dq_sz to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %vlen, ptr %dq_sz, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rsa_get_qinv(ptr nocapture noundef %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %value, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vlen)
  %tobool1.not = icmp eq i32 %vlen, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %n_sz = getelementptr inbounds %struct.rsa_key, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %n_sz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %vlen)
  %cmp = icmp ult i32 %1, %vlen
  br i1 %cmp, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  %qinv = getelementptr inbounds %struct.rsa_key, ptr %context, i32 0, i32 7
  %2 = ptrtoint ptr %qinv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %value, ptr %qinv, align 4
  %qinv_sz = getelementptr inbounds %struct.rsa_key, ptr %context, i32 0, i32 15
  %3 = ptrtoint ptr %qinv_sz to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %vlen, ptr %qinv_sz, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsa_parse_pub_key(ptr noundef %rsa_key, ptr noundef %key, i32 noundef %key_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @asn1_ber_decoder(ptr noundef nonnull @rsapubkey_decoder, ptr noundef %rsa_key, ptr noundef %key, i32 noundef %key_len) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asn1_ber_decoder(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsa_parse_priv_key(ptr noundef %rsa_key, ptr noundef %key, i32 noundef %key_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @asn1_ber_decoder(ptr noundef nonnull @rsaprivkey_decoder, ptr noundef %rsa_key, ptr noundef %key, i32 noundef %key_len) #4
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_rsa_parse_pub_key, !1, !"__ksymtab_rsa_parse_pub_key", i1 false, i1 false}
!1 = !{!"../crypto/rsa_helper.c", i32 167, i32 1}
!2 = !{ptr @__ksymtab_rsa_parse_priv_key, !3, !"__ksymtab_rsa_parse_priv_key", i1 false, i1 false}
!3 = !{!"../crypto/rsa_helper.c", i32 186, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
