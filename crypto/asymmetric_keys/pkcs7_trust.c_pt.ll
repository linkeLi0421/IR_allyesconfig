; ModuleID = '/llk/IR_all_yes/crypto/asymmetric_keys/pkcs7_trust.c_pt.bc'
source_filename = "../crypto/asymmetric_keys/pkcs7_trust.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pkcs7_validate_trust\22, \22a\22\09"
module asm "\09.weak\09__crc_pkcs7_validate_trust\09\09\09\09"
module asm "\09.long\09__crc_pkcs7_validate_trust\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pkcs7_validate_trust:\09\09\09\09\09"
module asm "\09.asciz \09\22pkcs7_validate_trust\22\09\09\09\09\09"
module asm "__kstrtabns_pkcs7_validate_trust:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.x509_certificate = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8, i8, i8, i8 }
%struct.pkcs7_message = type { ptr, ptr, ptr, i8, i8, i32, i32, i32, ptr }
%struct.pkcs7_signed_info = type { ptr, ptr, i32, i8, i8, ptr, i32, i32, ptr, i32, i64, ptr }

@__kstrtab_pkcs7_validate_trust = external dso_local constant [0 x i8], align 1
@__kstrtabns_pkcs7_validate_trust = external dso_local constant [0 x i8], align 1
@__ksymtab_pkcs7_validate_trust = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pkcs7_validate_trust to i32), ptr @__kstrtab_pkcs7_validate_trust, ptr @__kstrtabns_pkcs7_validate_trust }, section "___ksymtab_gpl+pkcs7_validate_trust", align 4
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"crypto/asymmetric_keys/pkcs7_trust.c\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967170, i64 4294967231]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [40 x i8] c"../crypto/asymmetric_keys/pkcs7_trust.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 73, i32 3 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_pkcs7_validate_trust, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pkcs7_validate_trust(ptr nocapture noundef readonly %pkcs7, ptr noundef %trust_keyring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkcs7 to i32
  call void @__asan_load4_noabort(i32 %0)
  %p.041 = load ptr, ptr %pkcs7, align 4
  %tobool.not42 = icmp eq ptr %p.041, null
  br i1 %tobool.not42, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %p.043 = phi ptr [ %p.0, %for.body.for.body_crit_edge ], [ %p.041, %entry.for.body_crit_edge ]
  %seen = getelementptr inbounds %struct.x509_certificate, ptr %p.043, i32 0, i32 23
  %1 = ptrtoint ptr %seen to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %seen, align 4
  %2 = ptrtoint ptr %p.043 to i32
  call void @__asan_load4_noabort(i32 %2)
  %p.0 = load ptr, ptr %p.043, align 4
  %tobool.not = icmp eq ptr %p.0, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %signed_infos = getelementptr inbounds %struct.pkcs7_message, ptr %pkcs7, i32 0, i32 2
  %3 = ptrtoint ptr %signed_infos to i32
  call void @__asan_load4_noabort(i32 %3)
  %sinfo.046 = load ptr, ptr %signed_infos, align 4
  %tobool2.not47 = icmp eq ptr %sinfo.046, null
  br i1 %tobool2.not47, label %for.end.cleanup_crit_edge, label %for.end.for.body3_crit_edge

for.end.for.body3_crit_edge:                      ; preds = %for.end
  br label %for.body3

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.body3:                                        ; preds = %for.inc6.for.body3_crit_edge, %for.end.for.body3_crit_edge
  %sinfo.052 = phi ptr [ %sinfo.0, %for.inc6.for.body3_crit_edge ], [ %sinfo.046, %for.end.for.body3_crit_edge ]
  %cached_ret.048 = phi i32 [ %cached_ret.1, %for.inc6.for.body3_crit_edge ], [ -126, %for.end.for.body3_crit_edge ]
  %sig1.i = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo.052, i32 0, i32 11
  %unsupported_crypto.i = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo.052, i32 0, i32 3
  %4 = ptrtoint ptr %unsupported_crypto.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %unsupported_crypto.i, align 4, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body3.sw.bb4_crit_edge

for.body3.sw.bb4_crit_edge:                       ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb4

if.end.i:                                         ; preds = %for.body3
  %signer.i = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo.052, i32 0, i32 1
  %6 = ptrtoint ptr %signer.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %x509.018.i = load ptr, ptr %signer.i, align 4
  %tobool3.not19.i = icmp eq ptr %x509.018.i, null
  br i1 %tobool3.not19.i, label %if.end.i.if.end53.i_crit_edge, label %for.body.i.preheader

if.end.i.if.end53.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end53.i

for.body.i.preheader:                             ; preds = %if.end.i
  %7 = ptrtoint ptr %sig1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %sig.017.i = load ptr, ptr %sig1.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %do.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %x509.021.i = phi ptr [ %x509.0.i, %do.body.i.for.body.i_crit_edge ], [ %x509.018.i, %for.body.i.preheader ]
  %sig.020.i = phi ptr [ %sig.0.i, %do.body.i.for.body.i_crit_edge ], [ %sig.017.i, %for.body.i.preheader ]
  %seen.i = getelementptr inbounds %struct.x509_certificate, ptr %x509.021.i, i32 0, i32 23
  %8 = ptrtoint ptr %seen.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %seen.i, align 4, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not.i = icmp eq i8 %9, 0
  br i1 %tobool4.not.i, label %if.end10.i, label %if.then5.i

if.then5.i:                                       ; preds = %for.body.i
  %verified.i = getelementptr inbounds %struct.x509_certificate, ptr %x509.021.i, i32 0, i32 24
  %10 = ptrtoint ptr %verified.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %verified.i, align 1, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not.i = icmp eq i8 %11, 0
  br i1 %tobool6.not.i, label %if.then5.i.for.inc6_crit_edge, label %if.then5.i.if.then79.i_crit_edge

if.then5.i.if.then79.i_crit_edge:                 ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then79.i

if.then5.i.for.inc6_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc6

if.end10.i:                                       ; preds = %for.body.i
  %12 = ptrtoint ptr %seen.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %seen.i, align 4
  %id.i = getelementptr inbounds %struct.x509_certificate, ptr %x509.021.i, i32 0, i32 6
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %id.i, align 8
  %skid.i = getelementptr inbounds %struct.x509_certificate, ptr %x509.021.i, i32 0, i32 7
  %15 = ptrtoint ptr %skid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skid.i, align 4
  %call.i = tail call ptr @find_asymmetric_key(ptr noundef %trust_keyring, ptr noundef %14, ptr noundef %16, ptr noundef null, i1 noundef zeroext false) #2
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end15.i, label %if.end10.i.matched.i_crit_edge

if.end10.i.matched.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %matched.i

if.end15.i:                                       ; preds = %if.end10.i
  %cmp.i = icmp eq ptr %call.i, inttoptr (i32 -12 to ptr)
  br i1 %cmp.i, label %if.end15.i.cleanup_crit_edge, label %if.end18.i

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end18.i:                                       ; preds = %if.end15.i
  %signer19.i = getelementptr inbounds %struct.x509_certificate, ptr %x509.021.i, i32 0, i32 1
  %17 = ptrtoint ptr %signer19.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %signer19.i, align 4
  %cmp20.i = icmp eq ptr %18, %x509.021.i
  br i1 %cmp20.i, label %if.end18.i.for.inc6_crit_edge, label %do.body.i

if.end18.i.for.inc6_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc6

do.body.i:                                        ; preds = %if.end18.i
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 73) #2
  %sig27.i = getelementptr inbounds %struct.x509_certificate, ptr %x509.021.i, i32 0, i32 3
  %19 = ptrtoint ptr %sig27.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %sig.0.i = load ptr, ptr %sig27.i, align 4
  %20 = ptrtoint ptr %signer19.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %x509.0.i = load ptr, ptr %signer19.i, align 4
  %tobool3.not.i = icmp eq ptr %x509.0.i, null
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %do.body.i.for.body.i_crit_edge

do.body.i.for.body.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %21 = ptrtoint ptr %sig.0.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sig.0.i, align 4
  %tobool31.not.i = icmp eq ptr %22, null
  br i1 %tobool31.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.if.then36.i_crit_edge

land.lhs.true.i.if.then36.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then36.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %arrayidx34.i = getelementptr [3 x ptr], ptr %sig.0.i, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx34.i, align 4
  %tobool35.not.i = icmp eq ptr %24, null
  br i1 %tobool35.not.i, label %lor.lhs.false.i.if.end53.i_crit_edge, label %lor.lhs.false.i.if.then36.i_crit_edge

lor.lhs.false.i.if.then36.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then36.i

lor.lhs.false.i.if.end53.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end53.i

if.then36.i:                                      ; preds = %lor.lhs.false.i.if.then36.i_crit_edge, %land.lhs.true.i.if.then36.i_crit_edge
  %arrayidx42.i = getelementptr [3 x ptr], ptr %sig.0.i, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx42.i, align 4
  %call43.i = tail call ptr @find_asymmetric_key(ptr noundef %trust_keyring, ptr noundef %22, ptr noundef %26, ptr noundef null, i1 noundef zeroext false) #2
  %cmp.i1.i = icmp ugt ptr %call43.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1.i, label %if.end47.i, label %if.then36.i.matched.i_crit_edge

if.then36.i.matched.i_crit_edge:                  ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %matched.i

if.end47.i:                                       ; preds = %if.then36.i
  %cmp49.not.i = icmp eq ptr %call43.i, inttoptr (i32 -126 to ptr)
  br i1 %cmp49.not.i, label %if.end47.i.if.end53.i_crit_edge, label %if.end47.i.pkcs7_validate_trust_one.exit_crit_edge

if.end47.i.pkcs7_validate_trust_one.exit_crit_edge: ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %pkcs7_validate_trust_one.exit

if.end47.i.if.end53.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.end47.i.if.end53.i_crit_edge, %lor.lhs.false.i.if.end53.i_crit_edge, %if.end.i.if.end53.i_crit_edge
  %27 = ptrtoint ptr %sig1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sig1.i, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call57.i = tail call ptr @find_asymmetric_key(ptr noundef %trust_keyring, ptr noundef %30, ptr noundef null, ptr noundef null, i1 noundef zeroext false) #2
  %cmp.i2.i = icmp ugt ptr %call57.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i2.i, label %if.end53.i.pkcs7_validate_trust_one.exit_crit_edge, label %if.then59.i

if.end53.i.pkcs7_validate_trust_one.exit_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %pkcs7_validate_trust_one.exit

if.then59.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #4
  %31 = ptrtoint ptr %sig1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sig1.i, align 8
  br label %matched.i

matched.i:                                        ; preds = %if.then59.i, %if.then36.i.matched.i_crit_edge, %if.end10.i.matched.i_crit_edge
  %key.0.i = phi ptr [ %call57.i, %if.then59.i ], [ %call43.i, %if.then36.i.matched.i_crit_edge ], [ %call.i, %if.end10.i.matched.i_crit_edge ]
  %x509.1.i = phi ptr [ null, %if.then59.i ], [ %x509.021.i, %if.then36.i.matched.i_crit_edge ], [ %x509.021.i, %if.end10.i.matched.i_crit_edge ]
  %sig.1.i = phi ptr [ %32, %if.then59.i ], [ %sig.0.i, %if.then36.i.matched.i_crit_edge ], [ %sig.020.i, %if.end10.i.matched.i_crit_edge ]
  %call69.i = tail call i32 @verify_signature(ptr noundef %key.0.i, ptr noundef %sig.1.i) #2
  tail call void @key_put(ptr noundef %key.0.i) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %cmp70.i = icmp slt i32 %call69.i, 0
  br i1 %cmp70.i, label %if.then71.i, label %verified77.i

if.then71.i:                                      ; preds = %matched.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call69.i)
  %cmp72.i = icmp eq i32 %call69.i, -12
  %spec.select = select i1 %cmp72.i, i32 -12, i32 -129
  br label %cleanup

verified77.i:                                     ; preds = %matched.i
  %tobool78.not.i = icmp eq ptr %x509.1.i, null
  br i1 %tobool78.not.i, label %verified77.i.sw.bb5_crit_edge, label %verified77.i.if.then79.i_crit_edge

verified77.i.if.then79.i_crit_edge:               ; preds = %verified77.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then79.i

verified77.i.sw.bb5_crit_edge:                    ; preds = %verified77.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb5

if.then79.i:                                      ; preds = %verified77.i.if.then79.i_crit_edge, %if.then5.i.if.then79.i_crit_edge
  %x509.25.i = phi ptr [ %x509.1.i, %verified77.i.if.then79.i_crit_edge ], [ %x509.021.i, %if.then5.i.if.then79.i_crit_edge ]
  %verified80.i = getelementptr inbounds %struct.x509_certificate, ptr %x509.25.i, i32 0, i32 24
  %33 = ptrtoint ptr %verified80.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %verified80.i, align 1
  %34 = ptrtoint ptr %signer.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %p.023.i = load ptr, ptr %signer.i, align 4
  %cmp83.not24.i = icmp eq ptr %p.023.i, %x509.25.i
  br i1 %cmp83.not24.i, label %if.then79.i.sw.bb5_crit_edge, label %if.then79.i.for.body84.i_crit_edge

if.then79.i.for.body84.i_crit_edge:               ; preds = %if.then79.i
  br label %for.body84.i

if.then79.i.sw.bb5_crit_edge:                     ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb5

for.body84.i:                                     ; preds = %for.body84.i.for.body84.i_crit_edge, %if.then79.i.for.body84.i_crit_edge
  %p.025.i = phi ptr [ %p.0.i, %for.body84.i.for.body84.i_crit_edge ], [ %p.023.i, %if.then79.i.for.body84.i_crit_edge ]
  %verified85.i = getelementptr inbounds %struct.x509_certificate, ptr %p.025.i, i32 0, i32 24
  %35 = ptrtoint ptr %verified85.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %verified85.i, align 1
  %signer87.i = getelementptr inbounds %struct.x509_certificate, ptr %p.025.i, i32 0, i32 1
  %36 = ptrtoint ptr %signer87.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %p.0.i = load ptr, ptr %signer87.i, align 4
  %cmp83.not.i = icmp eq ptr %p.0.i, %x509.25.i
  br i1 %cmp83.not.i, label %for.body84.i.sw.bb5_crit_edge, label %for.body84.i.for.body84.i_crit_edge

for.body84.i.for.body84.i_crit_edge:              ; preds = %for.body84.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body84.i

for.body84.i.sw.bb5_crit_edge:                    ; preds = %for.body84.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb5

pkcs7_validate_trust_one.exit:                    ; preds = %if.end53.i.pkcs7_validate_trust_one.exit_crit_edge, %if.end47.i.pkcs7_validate_trust_one.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call43.i, %if.end47.i.pkcs7_validate_trust_one.exit_crit_edge ], [ %call57.i, %if.end53.i.pkcs7_validate_trust_one.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %37 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i, label %cleanup.loopexit65.split.loop.exit [
    i32 -126, label %pkcs7_validate_trust_one.exit.for.inc6_crit_edge
    i32 -65, label %pkcs7_validate_trust_one.exit.sw.bb4_crit_edge
    i32 0, label %pkcs7_validate_trust_one.exit.sw.bb5_crit_edge
  ]

pkcs7_validate_trust_one.exit.sw.bb5_crit_edge:   ; preds = %pkcs7_validate_trust_one.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb5

pkcs7_validate_trust_one.exit.sw.bb4_crit_edge:   ; preds = %pkcs7_validate_trust_one.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb4

pkcs7_validate_trust_one.exit.for.inc6_crit_edge: ; preds = %pkcs7_validate_trust_one.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc6

sw.bb4:                                           ; preds = %pkcs7_validate_trust_one.exit.sw.bb4_crit_edge, %for.body3.sw.bb4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %cached_ret.048)
  %cmp = icmp eq i32 %cached_ret.048, -126
  %spec.store.select = select i1 %cmp, i32 -65, i32 %cached_ret.048
  br label %for.inc6

sw.bb5:                                           ; preds = %pkcs7_validate_trust_one.exit.sw.bb5_crit_edge, %for.body84.i.sw.bb5_crit_edge, %if.then79.i.sw.bb5_crit_edge, %verified77.i.sw.bb5_crit_edge
  br label %for.inc6

for.inc6:                                         ; preds = %sw.bb5, %sw.bb4, %pkcs7_validate_trust_one.exit.for.inc6_crit_edge, %if.end18.i.for.inc6_crit_edge, %if.then5.i.for.inc6_crit_edge
  %cached_ret.1 = phi i32 [ 0, %sw.bb5 ], [ %spec.store.select, %sw.bb4 ], [ %cached_ret.048, %pkcs7_validate_trust_one.exit.for.inc6_crit_edge ], [ %cached_ret.048, %if.then5.i.for.inc6_crit_edge ], [ %cached_ret.048, %if.end18.i.for.inc6_crit_edge ]
  %38 = ptrtoint ptr %sinfo.052 to i32
  call void @__asan_load4_noabort(i32 %38)
  %sinfo.0 = load ptr, ptr %sinfo.052, align 4
  %tobool2.not = icmp eq ptr %sinfo.0, null
  br i1 %tobool2.not, label %for.inc6.cleanup_crit_edge, label %for.inc6.for.body3_crit_edge

for.inc6.for.body3_crit_edge:                     ; preds = %for.inc6
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body3

for.inc6.cleanup_crit_edge:                       ; preds = %for.inc6
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.loopexit65.split.loop.exit:               ; preds = %pkcs7_validate_trust_one.exit
  call void @__sanitizer_cov_trace_pc() #4
  %retval.0.i.le = ptrtoint ptr %retval.0.i.in to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit65.split.loop.exit, %for.inc6.cleanup_crit_edge, %if.then71.i, %if.end15.i.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then71.i ], [ -126, %for.end.cleanup_crit_edge ], [ %retval.0.i.le, %cleanup.loopexit65.split.loop.exit ], [ -12, %if.end15.i.cleanup_crit_edge ], [ %cached_ret.1, %for.inc6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_asymmetric_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @verify_signature(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_pkcs7_validate_trust, !1, !"__ksymtab_pkcs7_validate_trust", i1 false, i1 false}
!1 = !{!"../crypto/asymmetric_keys/pkcs7_trust.c", i32 188, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../crypto/asymmetric_keys/pkcs7_trust.c", i32 73, i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i8 0, i8 2}
