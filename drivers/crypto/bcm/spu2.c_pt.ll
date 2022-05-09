; ModuleID = '/llk/IR_all_yes/drivers/crypto/bcm/spu2.c_pt.bc'
source_filename = "../drivers/crypto/bcm/spu2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.SPU2_FMD = type { i64, i64, i64, i64 }
%struct.spu_hash_parms = type { i32, i32, i32, i8, ptr, i16, i16, i32 }
%struct.spu_request_opts = type { i8, i8, i8, i8, i8, i8 }
%struct.spu_aead_parms = type { i32, i16, i8, i8, i8, i32, i32 }
%struct.spu_cipher_parms = type { i32, i32, i32, ptr, i16, ptr, i16 }

@switch.table.spu2_create_request = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 4, i32 3, i32 2, i32 6, i32 7, i32 5], [32 x i8] zeroinitializer }, align 32
@switch.table.spu2_create_request.121 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 2, i32 0, i32 3, i32 2, i32 2, i32 5, i32 6], [36 x i8] zeroinitializer }, align 32
@switch.table.spu2_cipher_req_init = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 256, i32 1024, i32 768, i32 512, i32 1536, i32 1792, i32 1280], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.122 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.123 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.124 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@___asan_gen_ = private constant [29 x i8] c"../drivers/crypto/bcm/spu2.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [33 x i8] c"switch.table.spu2_create_request\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [37 x i8] c"switch.table.spu2_create_request.121\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [34 x i8] c"switch.table.spu2_cipher_req_init\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @switch.table.spu2_create_request, ptr @switch.table.spu2_create_request.121, ptr @switch.table.spu2_cipher_req_init], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.spu2_create_request to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.spu2_create_request.121 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.spu2_cipher_req_init to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @spu2_dump_msg_hdr(ptr nocapture noundef %buf, i32 noundef %buf_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @spu2_ctx_max_payload(i32 noundef %cipher_alg, i32 noundef %cipher_mode, i32 noundef %blocksize) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %cipher_alg)
  %cmp = icmp eq i32 %cipher_alg, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cipher_mode)
  %cmp1 = icmp eq i32 %cipher_mode, 5
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rem = urem i32 -1, %blocksize
  %sub = xor i32 %rem, -1
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %sub, %if.then ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @spu2_payload_length(ptr nocapture noundef readonly %spu_hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl31 = getelementptr inbounds %struct.SPU2_FMD, ptr %spu_hdr, i32 0, i32 3
  %0 = ptrtoint ptr %ctrl31 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ctrl31, align 8
  %2 = and i64 %1, -4294967296
  %3 = tail call i64 @llvm.bswap.i64(i64 %2)
  %conv = trunc i64 %3 to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @spu2_response_hdr_len(i16 noundef zeroext %auth_key_len, i16 noundef zeroext %enc_key_len, i1 noundef zeroext %is_hash) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i16 32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @spu2_hash_pad_len(i32 noundef %hash_alg, i32 noundef %hash_mode, i32 noundef %chunksize, i16 noundef zeroext %hash_block_size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @spu2_gcm_ccm_pad_len(i32 noundef %cipher_mode, i32 noundef %data_size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @spu2_assoc_resp_len(i32 noundef %cipher_mode, i32 noundef %assoc_len, i32 noundef %iv_len, i1 noundef zeroext %is_encrypt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = select i1 %is_encrypt, i32 %iv_len, i32 0
  %spec.select = add i32 %add, %assoc_len
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @spu2_aead_ivlen(i32 noundef %cipher_mode, i16 noundef zeroext %iv_len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @spu2_hash_type(i32 noundef %src_sent) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @spu2_digest_size(i32 noundef returned %alg_digest_size, i32 noundef %alg, i32 noundef %htype) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %alg_digest_size
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @spu2_create_request(ptr nocapture noundef writeonly %spu_hdr, ptr nocapture noundef %req_opts, ptr nocapture noundef %cipher_parms, ptr nocapture noundef %hash_parms, ptr nocapture noundef readonly %aead_parms, i32 noundef %data_size) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prebuf_len = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 6
  %0 = ptrtoint ptr %prebuf_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prebuf_len, align 2
  %conv = zext i16 %1 to i32
  %add = add i32 %conv, %data_size
  %pad_len = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 7
  %2 = ptrtoint ptr %pad_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad_len, align 4
  %add1 = add i32 %add, %3
  %is_aead = getelementptr inbounds %struct.spu_request_opts, ptr %req_opts, i32 0, i32 2
  %4 = ptrtoint ptr %is_aead to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_aead, align 1, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %req_opts to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %req_opts, align 1, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %land.lhs.true.land.lhs.true24_crit_edge, label %cond.true

land.lhs.true.land.lhs.true24_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true24

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %digestsize = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 3
  %8 = ptrtoint ptr %digestsize to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %digestsize, align 4
  %conv5 = zext i8 %9 to i32
  br label %land.lhs.true24

cond.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %aead_parms to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %aead_parms, align 4
  %aad_pad_len = getelementptr inbounds %struct.spu_aead_parms, ptr %aead_parms, i32 0, i32 2
  %12 = ptrtoint ptr %aad_pad_len to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %aad_pad_len, align 2
  %conv6 = zext i8 %13 to i32
  %add7 = add i32 %11, %conv6
  %iv_len = getelementptr inbounds %struct.spu_aead_parms, ptr %aead_parms, i32 0, i32 1
  %14 = ptrtoint ptr %iv_len to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %iv_len, align 4
  %conv8 = zext i16 %15 to i32
  %add9 = add i32 %add7, %conv8
  br label %if.end47

land.lhs.true24:                                  ; preds = %cond.true, %land.lhs.true.land.lhs.true24_crit_edge
  %cond.ph = phi i32 [ 0, %land.lhs.true.land.lhs.true24_crit_edge ], [ %conv5, %cond.true ]
  %16 = ptrtoint ptr %aead_parms to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %aead_parms, align 4
  %aad_pad_len345 = getelementptr inbounds %struct.spu_aead_parms, ptr %aead_parms, i32 0, i32 2
  %18 = ptrtoint ptr %aad_pad_len345 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %aad_pad_len345, align 2
  %conv6346 = zext i8 %19 to i32
  %add7347 = add i32 %17, %conv6346
  %iv_len348 = getelementptr inbounds %struct.spu_aead_parms, ptr %aead_parms, i32 0, i32 1
  %20 = ptrtoint ptr %iv_len348 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %iv_len348, align 4
  %conv8349 = zext i16 %21 to i32
  %add9350 = add i32 %add7347, %conv8349
  %22 = ptrtoint ptr %cipher_parms to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cipher_parms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp = icmp eq i32 %23, 4
  br i1 %cmp, label %land.lhs.true26, label %land.lhs.true24.if.end47_crit_edge

land.lhs.true24.if.end47_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

land.lhs.true26:                                  ; preds = %land.lhs.true24
  %mode = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 1
  %24 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %25)
  %cmp27 = icmp eq i32 %25, 6
  br i1 %cmp27, label %if.then, label %land.lhs.true26.land.lhs.true34_crit_edge

land.lhs.true26.land.lhs.true34_crit_edge:        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true34

if.then:                                          ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %req_opts to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %req_opts, align 1, !range !265
  %auth_first = getelementptr inbounds %struct.spu_request_opts, ptr %req_opts, i32 0, i32 1
  %28 = ptrtoint ptr %auth_first to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %auth_first, align 1
  br label %land.lhs.true34

land.lhs.true34:                                  ; preds = %if.then, %land.lhs.true26.land.lhs.true34_crit_edge
  %29 = ptrtoint ptr %cipher_parms to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr = load i32, ptr %cipher_parms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %cmp36 = icmp eq i32 %.pr, 4
  br i1 %cmp36, label %land.lhs.true38, label %land.lhs.true34.if.end47_crit_edge

land.lhs.true34.if.end47_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

land.lhs.true38:                                  ; preds = %land.lhs.true34
  %30 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %31)
  %cmp40 = icmp eq i32 %31, 5
  br i1 %cmp40, label %if.then42, label %land.lhs.true38.if.end47_crit_edge

land.lhs.true38.if.end47_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then42:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %req_opts to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %req_opts, align 1, !range !265
  %auth_first45 = getelementptr inbounds %struct.spu_request_opts, ptr %req_opts, i32 0, i32 1
  %34 = xor i8 %33, 1
  %35 = ptrtoint ptr %auth_first45 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %auth_first45, align 1
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %land.lhs.true38.if.end47_crit_edge, %land.lhs.true34.if.end47_crit_edge, %land.lhs.true24.if.end47_crit_edge, %cond.end
  %add9355 = phi i32 [ %add9350, %land.lhs.true24.if.end47_crit_edge ], [ %add9, %cond.end ], [ %add9350, %if.then42 ], [ %add9350, %land.lhs.true38.if.end47_crit_edge ], [ %add9350, %land.lhs.true34.if.end47_crit_edge ]
  %36 = phi i32 [ %17, %land.lhs.true24.if.end47_crit_edge ], [ %11, %cond.end ], [ %17, %if.then42 ], [ %17, %land.lhs.true38.if.end47_crit_edge ], [ %17, %land.lhs.true34.if.end47_crit_edge ]
  %cond.ph.pn = phi i32 [ %cond.ph, %land.lhs.true24.if.end47_crit_edge ], [ 0, %cond.end ], [ %cond.ph, %if.then42 ], [ %cond.ph, %land.lhs.true38.if.end47_crit_edge ], [ %cond.ph, %land.lhs.true34.if.end47_crit_edge ]
  %sub352 = sub i32 %add1, %cond.ph.pn
  %auth_first51 = getelementptr inbounds %struct.spu_request_opts, ptr %req_opts, i32 0, i32 1
  %mode55 = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 1
  %type = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 2
  %key_len = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 4
  %key_buf = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 3
  %iv_len62 = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 6
  %iv_buf = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 5
  %mode67 = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 1
  %digestsize69 = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 3
  %key_len71 = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 5
  %key_buf73 = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 4
  %37 = ptrtoint ptr %mode55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mode55, align 4
  %39 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %38)
  %41 = icmp ult i32 %38, 8
  br i1 %41, label %switch.lookup, label %if.end47.spu2_cipher_xlate.exit_crit_edge

if.end47.spu2_cipher_xlate.exit_crit_edge:        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %spu2_cipher_xlate.exit

switch.lookup:                                    ; preds = %if.end47
  %42 = ptrtoint ptr %cipher_parms to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cipher_parms, align 4
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.spu2_create_request, i32 0, i32 %38
  %44 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %44)
  %switch.load = load i32, ptr %switch.gep, align 4
  %45 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %43, label %switch.lookup.spu2_cipher_xlate.exit_crit_edge [
    i32 0, label %switch.lookup.cleanup.sink.split.i_crit_edge
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb3.i
    i32 4, label %sw.bb4.i
  ]

switch.lookup.cleanup.sink.split.i_crit_edge:     ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

switch.lookup.spu2_cipher_xlate.exit_crit_edge:   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %spu2_cipher_xlate.exit

sw.bb1.i:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

sw.bb2.i:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

sw.bb3.i:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

sw.bb4.i:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %40)
  %46 = icmp ult i32 %40, 3
  br i1 %46, label %switch.lookup356, label %sw.bb4.i.spu2_cipher_xlate.exit_crit_edge

sw.bb4.i.spu2_cipher_xlate.exit_crit_edge:        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spu2_cipher_xlate.exit

switch.lookup356:                                 ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.offset = add i32 %40, 1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %switch.lookup356, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %switch.lookup.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 4, %sw.bb2.i ], [ 5, %sw.bb3.i ], [ 0, %sw.bb1.i ], [ %43, %switch.lookup.cleanup.sink.split.i_crit_edge ], [ %switch.offset, %switch.lookup356 ]
  %retval.0.ph.i = phi i32 [ 0, %sw.bb2.i ], [ 0, %sw.bb3.i ], [ -22, %sw.bb1.i ], [ %43, %switch.lookup.cleanup.sink.split.i_crit_edge ], [ 0, %switch.lookup356 ]
  br label %spu2_cipher_xlate.exit

spu2_cipher_xlate.exit:                           ; preds = %cleanup.sink.split.i, %sw.bb4.i.spu2_cipher_xlate.exit_crit_edge, %switch.lookup.spu2_cipher_xlate.exit_crit_edge, %if.end47.spu2_cipher_xlate.exit_crit_edge
  %spu2_ciph_type.0 = phi i32 [ 0, %if.end47.spu2_cipher_xlate.exit_crit_edge ], [ 0, %switch.lookup.spu2_cipher_xlate.exit_crit_edge ], [ 0, %sw.bb4.i.spu2_cipher_xlate.exit_crit_edge ], [ %.sink.i, %cleanup.sink.split.i ]
  %spu2_ciph_mode.0 = phi i32 [ -1, %if.end47.spu2_cipher_xlate.exit_crit_edge ], [ %switch.load, %switch.lookup.spu2_cipher_xlate.exit_crit_edge ], [ %switch.load, %sw.bb4.i.spu2_cipher_xlate.exit_crit_edge ], [ %switch.load, %cleanup.sink.split.i ]
  %retval.0.i = phi i32 [ -22, %if.end47.spu2_cipher_xlate.exit_crit_edge ], [ -22, %switch.lookup.spu2_cipher_xlate.exit_crit_edge ], [ -22, %sw.bb4.i.spu2_cipher_xlate.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  %is_rfc4543 = getelementptr inbounds %struct.spu_request_opts, ptr %req_opts, i32 0, i32 5
  %47 = ptrtoint ptr %is_rfc4543 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %is_rfc4543, align 1, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool85.not = icmp eq i8 %48, 0
  br i1 %tobool85.not, label %lor.lhs.false, label %spu2_cipher_xlate.exit.if.then92_crit_edge

spu2_cipher_xlate.exit.if.then92_crit_edge:       ; preds = %spu2_cipher_xlate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then92

lor.lhs.false:                                    ; preds = %spu2_cipher_xlate.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %spu2_ciph_mode.0)
  %cmp87 = icmp eq i32 %spu2_ciph_mode.0, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub352)
  %cmp90 = icmp eq i32 %sub352, 0
  %or.cond = select i1 %cmp87, i1 %cmp90, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.then92_crit_edge, label %lor.lhs.false.if.end105_crit_edge

lor.lhs.false.if.end105_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

lor.lhs.false.if.then92_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then92

if.then92:                                        ; preds = %lor.lhs.false.if.then92_crit_edge, %spu2_cipher_xlate.exit.if.then92_crit_edge
  %sub353 = phi i32 [ 0, %lor.lhs.false.if.then92_crit_edge ], [ %sub352, %spu2_cipher_xlate.exit.if.then92_crit_edge ]
  %49 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %key_len, align 4
  %51 = ptrtoint ptr %key_len71 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %key_len71, align 4
  %52 = ptrtoint ptr %key_buf73 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %key_buf73, align 4
  %54 = ptrtoint ptr %key_buf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %key_buf, align 4
  %56 = load i16, ptr %key_len, align 4
  %conv98 = zext i16 %56 to i32
  %57 = call ptr @memcpy(ptr %53, ptr %55, i32 %conv98)
  store i16 0, ptr %key_len, align 4
  %58 = ptrtoint ptr %is_rfc4543 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %is_rfc4543, align 1, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool101.not = icmp eq i8 %59, 0
  %add103 = select i1 %tobool101.not, i32 0, i32 %sub353
  %payload_len.0 = add i32 %add103, %36
  br label %if.end105

if.end105:                                        ; preds = %if.then92, %lor.lhs.false.if.end105_crit_edge
  %spu2_ciph_type.1 = phi i32 [ 0, %if.then92 ], [ %spu2_ciph_type.0, %lor.lhs.false.if.end105_crit_edge ]
  %payload_len.1 = phi i32 [ %payload_len.0, %if.then92 ], [ %sub352, %lor.lhs.false.if.end105_crit_edge ]
  %cipher_offset.0 = phi i32 [ 0, %if.then92 ], [ %add9355, %lor.lhs.false.if.end105_crit_edge ]
  %assoc_size19.0 = phi i32 [ 0, %if.then92 ], [ %36, %lor.lhs.false.if.end105_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool106.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool106.not, label %if.end108, label %if.end105.cleanup_crit_edge

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end108:                                        ; preds = %if.end105
  %60 = ptrtoint ptr %hash_parms to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %hash_parms, align 4
  %62 = ptrtoint ptr %mode67 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mode67, align 4
  %64 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %63)
  %66 = icmp ult i32 %63, 7
  br i1 %66, label %switch.hole_check, label %if.end108.cleanup_crit_edge

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.hole_check:                                ; preds = %if.end108
  %switch.maskindex = trunc i32 %63 to i8
  %switch.shifted = lshr i8 103, %switch.maskindex
  %67 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %switch.lobit.not = icmp eq i8 %67, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup358

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup358:                                 ; preds = %switch.hole_check
  %switch.gep359 = getelementptr inbounds [7 x i32], ptr @switch.table.spu2_create_request.121, i32 0, i32 %63
  %68 = ptrtoint ptr %switch.gep359 to i32
  call void @__asan_load4_noabort(i32 %68)
  %switch.load360 = load i32, ptr %switch.gep359, align 4
  %69 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %61, label %switch.lookup358.cleanup_crit_edge [
    i32 0, label %switch.lookup358.if.end118_crit_edge
    i32 1, label %sw.bb1.i321
    i32 2, label %sw.bb2.i322
    i32 3, label %sw.bb3.i323
    i32 4, label %sw.bb4.i324
    i32 6, label %sw.bb5.i
    i32 7, label %sw.bb6.i325
    i32 5, label %sw.bb7.i326
    i32 8, label %sw.bb11.i
    i32 9, label %sw.bb12.i
    i32 10, label %sw.bb13.i
    i32 11, label %sw.bb14.i
  ]

switch.lookup358.if.end118_crit_edge:             ; preds = %switch.lookup358
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

switch.lookup358.cleanup_crit_edge:               ; preds = %switch.lookup358
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1.i321:                                      ; preds = %switch.lookup358
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

sw.bb2.i322:                                      ; preds = %switch.lookup358
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

sw.bb3.i323:                                      ; preds = %switch.lookup358
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

sw.bb4.i324:                                      ; preds = %switch.lookup358
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

sw.bb5.i:                                         ; preds = %switch.lookup358
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

sw.bb6.i325:                                      ; preds = %switch.lookup358
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

sw.bb7.i326:                                      ; preds = %switch.lookup358
  %70 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %65, label %sw.bb7.i326.cleanup_crit_edge [
    i32 0, label %sw.bb7.i326.if.end118_crit_edge
    i32 1, label %sw.bb9.i
    i32 2, label %sw.bb10.i
  ]

sw.bb7.i326.if.end118_crit_edge:                  ; preds = %sw.bb7.i326
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

sw.bb7.i326.cleanup_crit_edge:                    ; preds = %sw.bb7.i326
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb9.i:                                         ; preds = %sw.bb7.i326
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

sw.bb10.i:                                        ; preds = %sw.bb7.i326
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

sw.bb11.i:                                        ; preds = %switch.lookup358
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

sw.bb12.i:                                        ; preds = %switch.lookup358
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

sw.bb13.i:                                        ; preds = %switch.lookup358
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

sw.bb14.i:                                        ; preds = %switch.lookup358
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

if.end118:                                        ; preds = %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb7.i326.if.end118_crit_edge, %sw.bb6.i325, %sw.bb5.i, %sw.bb4.i324, %sw.bb3.i323, %sw.bb2.i322, %sw.bb1.i321, %switch.lookup358.if.end118_crit_edge
  %cmp19.not.i = phi i1 [ true, %sw.bb14.i ], [ true, %sw.bb13.i ], [ true, %sw.bb12.i ], [ true, %sw.bb11.i ], [ true, %sw.bb10.i ], [ true, %sw.bb9.i ], [ true, %sw.bb7.i326.if.end118_crit_edge ], [ true, %sw.bb6.i325 ], [ true, %sw.bb5.i ], [ true, %sw.bb4.i324 ], [ true, %sw.bb3.i323 ], [ true, %sw.bb2.i322 ], [ true, %sw.bb1.i321 ], [ false, %switch.lookup358.if.end118_crit_edge ]
  %.sink.i327 = phi i32 [ 17, %sw.bb14.i ], [ 16, %sw.bb13.i ], [ 15, %sw.bb12.i ], [ 14, %sw.bb11.i ], [ 3, %sw.bb10.i ], [ 2, %sw.bb9.i ], [ 1, %sw.bb7.i326.if.end118_crit_edge ], [ 11, %sw.bb6.i325 ], [ 10, %sw.bb5.i ], [ 9, %sw.bb4.i324 ], [ 8, %sw.bb3.i323 ], [ 7, %sw.bb2.i322 ], [ 6, %sw.bb1.i321 ], [ %61, %switch.lookup358.if.end118_crit_edge ]
  %71 = ptrtoint ptr %req_opts to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %req_opts, align 1, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool122 = icmp ne i8 %72, 0
  %73 = ptrtoint ptr %auth_first51 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %auth_first51, align 1, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool124.not = icmp eq i8 %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spu2_ciph_type.1)
  %cmp.not.i = icmp ne i32 %spu2_ciph_type.1, 0
  %not.is_inbound.i = xor i1 %tobool122, true
  %narrow.i = and i1 %cmp.not.i, %not.is_inbound.i
  %ctrl0.0.i = zext i1 %narrow.i to i64
  %conv.i = zext i32 %spu2_ciph_type.1 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 4
  %conv2.i = zext i32 %spu2_ciph_mode.0 to i64
  %shl3.i = shl nuw nsw i64 %conv2.i, 8
  %or4.i = or i64 %shl.i, %shl3.i
  %or5.i = or i64 %or4.i, %ctrl0.0.i
  %or14.i = or i64 %or5.i, 16777216
  %ctrl0.2.i = select i1 %tobool124.not, i64 %or5.i, i64 %or14.i
  %75 = and i1 %cmp19.not.i, %tobool122
  %or22.i = or i64 %ctrl0.2.i, 33554432
  %ctrl0.3.i = select i1 %75, i64 %or22.i, i64 %ctrl0.2.i
  %conv24.i = zext i32 %.sink.i327 to i64
  %shl25.i = shl nuw nsw i64 %conv24.i, 28
  %conv26.i = zext i32 %switch.load360 to i64
  %shl27.i = shl nuw nsw i64 %conv26.i, 36
  %or28.i = or i64 %shl25.i, %shl27.i
  %or29.i = or i64 %ctrl0.3.i, %or28.i
  %76 = tail call i64 @llvm.bswap.i64(i64 %or29.i) #6
  %77 = ptrtoint ptr %spu_hdr to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %spu_hdr, align 8
  %78 = ptrtoint ptr %req_opts to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %req_opts, align 1, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool126 = icmp ne i8 %79, 0
  %80 = ptrtoint ptr %key_len71 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %key_len71, align 4
  %conv129 = zext i16 %81 to i64
  %82 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %key_len, align 4
  %conv131 = zext i16 %83 to i64
  %return_iv = getelementptr inbounds %struct.spu_aead_parms, ptr %aead_parms, i32 0, i32 4
  %84 = ptrtoint ptr %return_iv to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %return_iv, align 4, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool132.not = icmp eq i8 %85, 0
  %86 = ptrtoint ptr %iv_len62 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %iv_len62, align 4
  %conv136 = zext i16 %87 to i64
  %88 = ptrtoint ptr %digestsize69 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %digestsize69, align 4
  %conv138 = zext i8 %89 to i64
  %bd_suppress = getelementptr inbounds %struct.spu_request_opts, ptr %req_opts, i32 0, i32 4
  %90 = ptrtoint ptr %bd_suppress to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %bd_suppress, align 1, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool139.not = icmp eq i8 %91, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool6.not.i = icmp eq i8 %89, 0
  %tobool6.not.not.i = xor i1 %tobool6.not.i, true
  %not.or.cond.i = and i1 %tobool126, %tobool6.not.not.i
  %ctrl1.0.i = zext i1 %not.or.cond.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %assoc_size19.0)
  %tobool7.not.i = icmp eq i32 %assoc_size19.0, 0
  %or10.i = or i64 %ctrl1.0.i, 2305843009213693968
  %ctrl1.1.i = select i1 %tobool7.not.i, i64 %ctrl1.0.i, i64 %or10.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool12.not.i = icmp eq i16 %81, 0
  %shl.i330 = shl nuw nsw i64 %conv129, 8
  %and.i = and i64 %shl.i330, 65280
  %or14.i331 = select i1 %tobool12.not.i, i64 0, i64 %and.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool16.not.i = icmp eq i16 %83, 0
  %shl18.i = shl nuw nsw i64 %conv131, 20
  %and19.i = and i64 %shl18.i, 267386880
  %or20.i = select i1 %tobool16.not.i, i64 0, i64 %and19.i
  %ctrl1.2.i = or i64 %or20.i, %or14.i331
  %ctrl1.3.i = or i64 %ctrl1.2.i, %ctrl1.1.i
  br i1 %tobool132.not, label %if.end118.spu2_fmd_ctrl1_write.exit_crit_edge, label %if.then31.i

if.end118.spu2_fmd_ctrl1_write.exit_crit_edge:    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %spu2_fmd_ctrl1_write.exit

if.then31.i:                                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  %ret_iv_off = getelementptr inbounds %struct.spu_aead_parms, ptr %aead_parms, i32 0, i32 6
  %92 = ptrtoint ptr %ret_iv_off to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ret_iv_off, align 4
  %conv134 = zext i32 %93 to i64
  %ret_iv_len = getelementptr inbounds %struct.spu_aead_parms, ptr %aead_parms, i32 0, i32 5
  %94 = ptrtoint ptr %ret_iv_len to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ret_iv_len, align 4
  %conv133 = zext i32 %95 to i64
  %shl33.i = shl nuw i64 %conv133, 32
  %shl35.i = shl i64 %conv134, 36
  %or32.i = or i64 %ctrl1.3.i, %shl35.i
  %or34.i = or i64 %or32.i, %shl33.i
  %or36.i = or i64 %or34.i, 1073741824
  br label %spu2_fmd_ctrl1_write.exit

spu2_fmd_ctrl1_write.exit:                        ; preds = %if.then31.i, %if.end118.spu2_fmd_ctrl1_write.exit_crit_edge
  %ctrl1.6.i = phi i64 [ %or36.i, %if.then31.i ], [ %ctrl1.3.i, %if.end118.spu2_fmd_ctrl1_write.exit_crit_edge ]
  %shl38.i = shl nuw nsw i64 %conv136, 40
  %and39.i = and i64 %shl38.i, 34084860461056
  %shl43.i = shl nuw nsw i64 %conv138, 48
  %and44.i = and i64 %shl43.i, 35747322042253312
  %or45.i = select i1 %tobool6.not.i, i64 0, i64 %and44.i
  %ctrl1.9.v.i = select i1 %tobool139.not, i64 4755801206503243776, i64 144115188075855872
  %or40.i = or i64 %ctrl1.9.v.i, %and39.i
  %ctrl1.7.i = or i64 %or40.i, %or45.i
  %ctrl1.9.i = or i64 %ctrl1.7.i, %ctrl1.6.i
  %96 = tail call i64 @llvm.bswap.i64(i64 %ctrl1.9.i) #6
  %ctrl156.i = getelementptr inbounds %struct.SPU2_FMD, ptr %spu_hdr, i32 0, i32 1
  %97 = ptrtoint ptr %ctrl156.i to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %96, ptr %ctrl156.i, align 8
  %98 = tail call i32 @llvm.bswap.i32(i32 %cipher_offset.0)
  %99 = zext i32 %98 to i64
  %ctrl26.i = getelementptr inbounds %struct.SPU2_FMD, ptr %spu_hdr, i32 0, i32 2
  %100 = ptrtoint ptr %ctrl26.i to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %99, ptr %ctrl26.i, align 8
  %conv149 = zext i32 %payload_len.1 to i64
  %101 = tail call i64 @llvm.bswap.i64(i64 %conv149) #6
  %ctrl31.i = getelementptr inbounds %struct.SPU2_FMD, ptr %spu_hdr, i32 0, i32 3
  %102 = ptrtoint ptr %ctrl31.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %101, ptr %ctrl31.i, align 8
  %add.ptr = getelementptr %struct.SPU2_FMD, ptr %spu_hdr, i32 1
  %103 = ptrtoint ptr %key_len71 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %key_len71, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %tobool151.not = icmp eq i16 %104, 0
  br i1 %tobool151.not, label %spu2_fmd_ctrl1_write.exit.if.end162_crit_edge, label %if.then152

spu2_fmd_ctrl1_write.exit.if.end162_crit_edge:    ; preds = %spu2_fmd_ctrl1_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end162

if.then152:                                       ; preds = %spu2_fmd_ctrl1_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %105 = ptrtoint ptr %key_buf73 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %key_buf73, align 4
  %conv155 = zext i16 %104 to i32
  %107 = call ptr @memcpy(ptr %add.ptr, ptr %106, i32 %conv155)
  %108 = ptrtoint ptr %key_len71 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %key_len71, align 4
  %conv157 = zext i16 %109 to i32
  %add.ptr158 = getelementptr i8, ptr %add.ptr, i32 %conv157
  %add161 = add nuw nsw i32 %conv157, 32
  br label %if.end162

if.end162:                                        ; preds = %if.then152, %spu2_fmd_ctrl1_write.exit.if.end162_crit_edge
  %ptr.0 = phi ptr [ %add.ptr158, %if.then152 ], [ %add.ptr, %spu2_fmd_ctrl1_write.exit.if.end162_crit_edge ]
  %buf_len.0 = phi i32 [ %add161, %if.then152 ], [ 32, %spu2_fmd_ctrl1_write.exit.if.end162_crit_edge ]
  %110 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %key_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %tobool164.not = icmp eq i16 %111, 0
  br i1 %tobool164.not, label %if.end162.if.end175_crit_edge, label %if.then165

if.end162.if.end175_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end175

if.then165:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #8
  %112 = ptrtoint ptr %key_buf to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %key_buf, align 4
  %conv168 = zext i16 %111 to i32
  %114 = call ptr @memcpy(ptr %ptr.0, ptr %113, i32 %conv168)
  %115 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %key_len, align 4
  %conv170 = zext i16 %116 to i32
  %add.ptr171 = getelementptr i8, ptr %ptr.0, i32 %conv170
  %add174 = add nuw nsw i32 %buf_len.0, %conv170
  br label %if.end175

if.end175:                                        ; preds = %if.then165, %if.end162.if.end175_crit_edge
  %ptr.1 = phi ptr [ %add.ptr171, %if.then165 ], [ %ptr.0, %if.end162.if.end175_crit_edge ]
  %buf_len.1 = phi i32 [ %add174, %if.then165 ], [ %buf_len.0, %if.end162.if.end175_crit_edge ]
  %117 = ptrtoint ptr %iv_len62 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %iv_len62, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %118)
  %tobool177.not = icmp eq i16 %118, 0
  br i1 %tobool177.not, label %if.end175.cleanup_crit_edge, label %if.then178

if.end175.cleanup_crit_edge:                      ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then178:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  %119 = ptrtoint ptr %iv_buf to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %iv_buf, align 4
  %conv181 = zext i16 %118 to i32
  %121 = call ptr @memcpy(ptr %ptr.1, ptr %120, i32 %conv181)
  %122 = ptrtoint ptr %iv_len62 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %iv_len62, align 4
  %conv183 = zext i16 %123 to i32
  %add187 = add nuw nsw i32 %buf_len.1, %conv183
  br label %cleanup

cleanup:                                          ; preds = %if.then178, %if.end175.cleanup_crit_edge, %sw.bb7.i326.cleanup_crit_edge, %switch.lookup358.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %if.end108.cleanup_crit_edge, %if.end105.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end105.cleanup_crit_edge ], [ %add187, %if.then178 ], [ %buf_len.1, %if.end175.cleanup_crit_edge ], [ 0, %if.end108.cleanup_crit_edge ], [ 0, %sw.bb7.i326.cleanup_crit_edge ], [ 0, %switch.lookup358.cleanup_crit_edge ], [ 0, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @spu2_cipher_req_init(ptr nocapture noundef writeonly %spu_hdr, ptr nocapture noundef readonly %cipher_parms) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 1
  %type = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 2
  %iv_len = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 6
  %key_len = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 4
  %key_buf = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 3
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %4 = icmp ult i32 %1, 8
  br i1 %4, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %5 = ptrtoint ptr %cipher_parms to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cipher_parms, align 4
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.spu2_cipher_req_init, i32 0, i32 %1
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %8 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %6, label %switch.lookup.cleanup_crit_edge [
    i32 0, label %switch.lookup.if.end_crit_edge
    i32 4, label %sw.bb4.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb3.i
  ]

switch.lookup.if.end_crit_edge:                   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2.i:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb3.i:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb4.i:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %9 = icmp ult i32 %3, 3
  br i1 %9, label %switch.lookup77, label %sw.bb4.i.cleanup_crit_edge

sw.bb4.i.cleanup_crit_edge:                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup77:                                  ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.idx.mult = shl i32 %3, 4
  %switch.offset = add i32 %switch.idx.mult, 16
  br label %if.end

if.end:                                           ; preds = %switch.lookup77, %sw.bb3.i, %sw.bb2.i, %switch.lookup.if.end_crit_edge
  %.sink.i.ph = phi i32 [ %6, %switch.lookup.if.end_crit_edge ], [ 80, %sw.bb3.i ], [ 64, %sw.bb2.i ], [ %switch.offset, %switch.lookup77 ]
  %10 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %key_len, align 4
  %conv10 = zext i16 %11 to i32
  %12 = ptrtoint ptr %iv_len to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %iv_len, align 4
  %or.i = or i32 %.sink.i.ph, %switch.load
  %conv.i = zext i32 %or.i to i64
  %shl2.i = shl i32 %conv10, 20
  %conv3.i = zext i32 %shl2.i to i64
  %conv4.i = zext i16 %13 to i64
  %shl5.i = shl nuw nsw i64 %conv4.i, 40
  %or6.i = or i64 %shl5.i, %conv3.i
  %or8.i = or i64 %or6.i, 4755801206503243776
  %14 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #6
  %15 = ptrtoint ptr %spu_hdr to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %spu_hdr, align 8
  %16 = tail call i64 @llvm.bswap.i64(i64 %or8.i) #6
  %ctrl118.i = getelementptr inbounds %struct.SPU2_FMD, ptr %spu_hdr, i32 0, i32 1
  %17 = ptrtoint ptr %ctrl118.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %ctrl118.i, align 8
  %ctrl219.i = getelementptr inbounds %struct.SPU2_FMD, ptr %spu_hdr, i32 0, i32 2
  %18 = call ptr @memset(ptr %ctrl219.i, i32 0, i32 16)
  %add.ptr = getelementptr %struct.SPU2_FMD, ptr %spu_hdr, i32 1
  %19 = ptrtoint ptr %key_buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %key_buf, align 4
  %tobool18.not = icmp eq ptr %20, null
  br i1 %tobool18.not, label %if.end.if.end26_crit_edge, label %land.lhs.true

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end
  %21 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %key_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool21.not = icmp eq i16 %22, 0
  br i1 %tobool21.not, label %land.lhs.true.if.end26_crit_edge, label %if.then22

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %conv20 = zext i16 %22 to i32
  %23 = call ptr @memcpy(ptr %add.ptr, ptr %20, i32 %conv20)
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %land.lhs.true.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %24 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %key_len, align 4
  %add34 = add i16 %25, 32
  %26 = ptrtoint ptr %iv_len to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %iv_len, align 4
  %add37 = add i16 %add34, %27
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %sw.bb4.i.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %add37, %if.end26 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb4.i.cleanup_crit_edge ], [ 0, %switch.lookup.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @spu2_cipher_req_finish(ptr nocapture noundef %spu_hdr, i16 noundef zeroext %spu_req_hdr_len, i32 noundef %is_inbound, ptr nocapture noundef readonly %cipher_parms, i32 noundef %data_size) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iv_len = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 6
  %add.ptr = getelementptr %struct.SPU2_FMD, ptr %spu_hdr, i32 1
  %0 = ptrtoint ptr %spu_hdr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %spu_hdr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_inbound)
  %tobool.not = icmp eq i32 %is_inbound, 0
  %2 = and i64 %1, -72057594037927937
  %3 = tail call i64 @llvm.bswap.i64(i64 %2)
  %masksel = zext i1 %tobool.not to i64
  %ctrl0.0 = or i64 %3, %masksel
  %4 = tail call i64 @llvm.bswap.i64(i64 %ctrl0.0)
  %5 = ptrtoint ptr %spu_hdr to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %spu_hdr, align 8
  %6 = ptrtoint ptr %cipher_parms to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cipher_parms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %entry.if.end19_crit_edge, label %land.lhs.true

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

land.lhs.true:                                    ; preds = %entry
  %iv_buf = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 5
  %8 = ptrtoint ptr %iv_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iv_buf, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %land.lhs.true.if.end19_crit_edge, label %land.lhs.true9

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

land.lhs.true9:                                   ; preds = %land.lhs.true
  %10 = ptrtoint ptr %iv_len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %iv_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool12.not = icmp eq i16 %11, 0
  br i1 %tobool12.not, label %land.lhs.true9.if.end19_crit_edge, label %if.then13

land.lhs.true9.if.end19_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then13:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  %conv11 = zext i16 %11 to i32
  %key_len = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 4
  %12 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %key_len, align 4
  %conv14 = zext i16 %13 to i32
  %add.ptr15 = getelementptr i8, ptr %add.ptr, i32 %conv14
  %14 = call ptr @memcpy(ptr %add.ptr15, ptr %9, i32 %conv11)
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %land.lhs.true9.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %entry.if.end19_crit_edge
  %ctrl320 = getelementptr inbounds %struct.SPU2_FMD, ptr %spu_hdr, i32 0, i32 3
  %15 = ptrtoint ptr %ctrl320 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ctrl320, align 8
  %17 = tail call i64 @llvm.bswap.i64(i64 %16)
  %conv22 = zext i32 %data_size to i64
  %or23 = or i64 %17, %conv22
  %18 = tail call i64 @llvm.bswap.i64(i64 %or23)
  %19 = ptrtoint ptr %ctrl320 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %ctrl320, align 8
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @spu2_request_pad(ptr nocapture noundef writeonly %pad_start, i32 noundef %gcm_padding, i32 noundef %hash_pad_len, i32 noundef %auth_alg, i32 noundef %auth_mode, i32 noundef %total_sent, i32 noundef %status_padding) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gcm_padding)
  %cmp.not = icmp eq i32 %gcm_padding, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = call ptr @memset(ptr %pad_start, i32 0, i32 %gcm_padding)
  %add.ptr = getelementptr i8, ptr %pad_start, i32 %gcm_padding
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ptr.0 = phi ptr [ %add.ptr, %if.then ], [ %pad_start, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hash_pad_len)
  %cmp1.not = icmp eq i32 %hash_pad_len, 0
  br i1 %cmp1.not, label %if.end.if.end10_crit_edge, label %if.then2

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = call ptr @memset(ptr %ptr.0, i32 0, i32 %hash_pad_len)
  %2 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -128, ptr %ptr.0, align 1
  %sub = add i32 %hash_pad_len, -8
  %add.ptr3 = getelementptr i8, ptr %ptr.0, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %auth_alg)
  %cmp4 = icmp eq i32 %auth_alg, 1
  %conv = zext i32 %total_sent to i64
  %mul = shl nuw nsw i64 %conv, 3
  %3 = tail call i64 @llvm.bswap.i64(i64 %mul)
  %storemerge = select i1 %cmp4, i64 %3, i64 %mul
  %4 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %storemerge, ptr %add.ptr3, align 8
  %add.ptr9 = getelementptr i8, ptr %ptr.0, i32 %hash_pad_len
  br label %if.end10

if.end10:                                         ; preds = %if.then2, %if.end.if.end10_crit_edge
  %ptr.1 = phi ptr [ %add.ptr9, %if.then2 ], [ %ptr.0, %if.end.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status_padding)
  %cmp11.not = icmp eq i32 %status_padding, 0
  br i1 %cmp11.not, label %if.end10.if.end15_crit_edge, label %if.then13

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %5 = call ptr @memset(ptr %ptr.1, i32 0, i32 %status_padding)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10.if.end15_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @spu2_xts_tweak_in_payload() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @spu2_tx_status_len() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @spu2_rx_status_len() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @spu2_status_process(ptr nocapture noundef readonly %statp) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %statp to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %statp, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %1)
  %cmp4 = icmp eq i16 %1, 256
  %. = select i1 %cmp4, i32 1, i32 -74
  %retval.0 = select i1 %cmp, i32 0, i32 %.
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @spu2_ccm_update_iv(i32 noundef %digestsize, ptr nocapture noundef %cipher_parms, i32 noundef %assoclen, i32 noundef %chunksize, i1 noundef zeroext %is_encrypt, i1 noundef zeroext %is_esp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %is_esp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %iv_buf = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 5
  %0 = ptrtoint ptr %iv_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iv_buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %4 = and i8 %3, 7
  %narrow = add nuw nsw i8 %4, 2
  %phi.bo = zext i8 %narrow to i16
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %L.0 = phi i16 [ %phi.bo, %if.else ], [ 5, %entry.if.end_crit_edge ]
  %iv_len = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 6
  %5 = ptrtoint ptr %iv_len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %iv_len, align 4
  %sub = sub i16 %6, %L.0
  store i16 %sub, ptr %iv_len, align 4
  %iv_buf5 = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 5
  %7 = ptrtoint ptr %iv_buf5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iv_buf5, align 4
  %arrayidx7 = getelementptr i8, ptr %8, i32 1
  %conv9 = zext i16 %sub to i32
  %9 = call ptr @memmove(ptr %8, ptr %arrayidx7, i32 %conv9)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @spu2_wordalign_padlen(i32 noundef %data_size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254}
!llvm.module.flags = !{!256, !257, !258, !259, !260, !261, !262, !263}
!llvm.ident = !{!264}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/bcm/spu2.c", i32 519, i32 13}
!2 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/crypto/bcm/spu2.c", i32 520, i32 13}
!4 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/crypto/bcm/spu2.c", i32 537, i32 8}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/crypto/bcm/spu2.c", i32 997, i32 11}
!8 = distinct !{null, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/crypto/bcm/spu2.c", i32 997, i32 21}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/crypto/bcm/spu2.c", i32 998, i32 11}
!12 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/crypto/bcm/spu2.c", i32 1000, i32 11}
!14 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/crypto/bcm/spu2.c", i32 1002, i32 11}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/crypto/bcm/spu2.c", i32 1002, i32 48}
!18 = distinct !{null, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/crypto/bcm/spu2.c", i32 1002, i32 56}
!20 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/crypto/bcm/spu2.c", i32 1003, i32 11}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/crypto/bcm/spu2.c", i32 1004, i32 12}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/crypto/bcm/spu2.c", i32 1005, i32 11}
!26 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/crypto/bcm/spu2.c", i32 1006, i32 12}
!28 = distinct !{null, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/crypto/bcm/spu2.c", i32 1007, i32 11}
!30 = distinct !{null, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/crypto/bcm/spu2.c", i32 1009, i32 11}
!32 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/crypto/bcm/spu2.c", i32 1010, i32 11}
!34 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/crypto/bcm/spu2.c", i32 1011, i32 12}
!36 = distinct !{null, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/crypto/bcm/spu2.c", i32 1012, i32 11}
!38 = distinct !{null, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/crypto/bcm/spu2.c", i32 1013, i32 11}
!40 = distinct !{null, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/crypto/bcm/spu2.c", i32 1014, i32 11}
!42 = distinct !{null, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/crypto/bcm/spu2.c", i32 1015, i32 11}
!44 = distinct !{null, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/crypto/bcm/spu2.c", i32 1016, i32 11}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/crypto/bcm/spu2.c", i32 1017, i32 11}
!48 = distinct !{null, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/crypto/bcm/spu2.c", i32 1019, i32 11}
!50 = distinct !{null, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/crypto/bcm/spu2.c", i32 1053, i32 11}
!52 = distinct !{null, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/crypto/bcm/spu2.c", i32 1064, i32 11}
!54 = distinct !{null, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/crypto/bcm/spu2.c", i32 1107, i32 14}
!56 = distinct !{null, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/crypto/bcm/spu2.c", i32 1134, i32 21}
!58 = distinct !{null, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/crypto/bcm/spu2.c", i32 1137, i32 11}
!60 = distinct !{null, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/crypto/bcm/spu2.c", i32 1193, i32 21}
!62 = distinct !{null, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/crypto/bcm/spu2.c", i32 1194, i32 11}
!64 = distinct !{null, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/crypto/bcm/spu2.c", i32 1195, i32 11}
!66 = distinct !{null, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/crypto/bcm/spu2.c", i32 1197, i32 11}
!68 = distinct !{null, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/crypto/bcm/spu2.c", i32 1199, i32 11}
!70 = distinct !{null, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/crypto/bcm/spu2.c", i32 1253, i32 12}
!72 = distinct !{null, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/crypto/bcm/spu2.c", i32 1277, i32 12}
!74 = distinct !{null, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/crypto/bcm/spu2.c", i32 1333, i32 11}
!76 = distinct !{null, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/crypto/bcm/spu2.c", i32 321, i32 13}
!78 = distinct !{null, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/crypto/bcm/spu2.c", i32 323, i32 14}
!80 = distinct !{null, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/crypto/bcm/spu2.c", i32 325, i32 14}
!82 = distinct !{null, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/crypto/bcm/spu2.c", i32 329, i32 13}
!84 = distinct !{null, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/crypto/bcm/spu2.c", i32 334, i32 14}
!86 = distinct !{null, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/crypto/bcm/spu2.c", i32 338, i32 13}
!88 = distinct !{null, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/crypto/bcm/spu2.c", i32 341, i32 13}
!90 = distinct !{null, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/crypto/bcm/spu2.c", i32 344, i32 14}
!92 = distinct !{null, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/crypto/bcm/spu2.c", i32 346, i32 14}
!94 = distinct !{null, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/crypto/bcm/spu2.c", i32 349, i32 14}
!96 = distinct !{null, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/crypto/bcm/spu2.c", i32 353, i32 13}
!98 = distinct !{null, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/crypto/bcm/spu2.c", i32 358, i32 14}
!100 = distinct !{null, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/crypto/bcm/spu2.c", i32 362, i32 14}
!102 = distinct !{null, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/crypto/bcm/spu2.c", i32 378, i32 13}
!104 = distinct !{null, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/crypto/bcm/spu2.c", i32 380, i32 14}
!106 = distinct !{null, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/crypto/bcm/spu2.c", i32 382, i32 13}
!108 = distinct !{null, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/crypto/bcm/spu2.c", i32 384, i32 14}
!110 = distinct !{null, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/crypto/bcm/spu2.c", i32 386, i32 14}
!112 = distinct !{null, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/crypto/bcm/spu2.c", i32 388, i32 14}
!114 = distinct !{null, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/crypto/bcm/spu2.c", i32 390, i32 14}
!116 = distinct !{null, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/crypto/bcm/spu2.c", i32 392, i32 14}
!118 = distinct !{null, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/crypto/bcm/spu2.c", i32 396, i32 13}
!120 = distinct !{null, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/crypto/bcm/spu2.c", i32 399, i32 13}
!122 = distinct !{null, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/crypto/bcm/spu2.c", i32 402, i32 14}
!124 = distinct !{null, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/crypto/bcm/spu2.c", i32 405, i32 14}
!126 = distinct !{null, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/crypto/bcm/spu2.c", i32 408, i32 14}
!128 = distinct !{null, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/crypto/bcm/spu2.c", i32 411, i32 13}
!130 = distinct !{null, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/crypto/bcm/spu2.c", i32 415, i32 13}
!132 = distinct !{null, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/crypto/bcm/spu2.c", i32 418, i32 13}
!134 = distinct !{null, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/crypto/bcm/spu2.c", i32 421, i32 13}
!136 = distinct !{null, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/crypto/bcm/spu2.c", i32 423, i32 13}
!138 = distinct !{null, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/crypto/bcm/spu2.c", i32 426, i32 14}
!140 = distinct !{null, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/crypto/bcm/spu2.c", i32 428, i32 14}
!142 = distinct !{null, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/crypto/bcm/spu2.c", i32 430, i32 14}
!144 = distinct !{null, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/crypto/bcm/spu2.c", i32 440, i32 14}
!146 = distinct !{null, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/crypto/bcm/spu2.c", i32 447, i32 13}
!148 = distinct !{null, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/crypto/bcm/spu2.c", i32 449, i32 13}
!150 = distinct !{null, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/crypto/bcm/spu2.c", i32 452, i32 13}
!152 = distinct !{null, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/crypto/bcm/spu2.c", i32 454, i32 13}
!154 = distinct !{null, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/crypto/bcm/spu2.c", i32 461, i32 13}
!156 = distinct !{null, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/crypto/bcm/spu2.c", i32 463, i32 13}
!158 = distinct !{null, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/crypto/bcm/spu2.c", i32 464, i32 13}
!160 = distinct !{null, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/crypto/bcm/spu2.c", i32 481, i32 13}
!162 = distinct !{null, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/crypto/bcm/spu2.c", i32 484, i32 14}
!164 = distinct !{null, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/crypto/bcm/spu2.c", i32 485, i32 15}
!166 = distinct !{null, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/crypto/bcm/spu2.c", i32 490, i32 14}
!168 = distinct !{null, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/crypto/bcm/spu2.c", i32 496, i32 14}
!170 = distinct !{null, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/crypto/bcm/spu2.c", i32 497, i32 15}
!172 = distinct !{null, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/crypto/bcm/spu2.c", i32 502, i32 14}
!174 = distinct !{null, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/crypto/bcm/spu2.c", i32 503, i32 15}
!176 = distinct !{null, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/crypto/bcm/spu2.c", i32 146, i32 12}
!178 = distinct !{null, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/crypto/bcm/spu2.c", i32 187, i32 12}
!180 = distinct !{null, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/crypto/bcm/spu2.c", i32 62, i32 10}
!182 = distinct !{null, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/crypto/bcm/spu2.c", i32 41, i32 43}
!184 = distinct !{null, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/crypto/bcm/spu2.c", i32 41, i32 51}
!186 = distinct !{null, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/crypto/bcm/spu2.c", i32 41, i32 61}
!188 = distinct !{null, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/crypto/bcm/spu2.c", i32 41, i32 71}
!190 = distinct !{null, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/crypto/bcm/spu2.c", i32 42, i32 2}
!192 = distinct !{null, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/crypto/bcm/spu2.c", i32 42, i32 9}
!194 = distinct !{null, !195, !"spu2_cipher_type_names", i1 false, i1 false}
!195 = !{!"../drivers/crypto/bcm/spu2.c", i32 41, i32 14}
!196 = distinct !{null, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/crypto/bcm/spu2.c", i32 45, i32 43}
!198 = distinct !{null, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/crypto/bcm/spu2.c", i32 45, i32 50}
!200 = distinct !{null, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/crypto/bcm/spu2.c", i32 45, i32 57}
!202 = distinct !{null, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/crypto/bcm/spu2.c", i32 45, i32 64}
!204 = distinct !{null, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/crypto/bcm/spu2.c", i32 45, i32 71}
!206 = distinct !{null, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/crypto/bcm/spu2.c", i32 46, i32 2}
!208 = distinct !{null, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/crypto/bcm/spu2.c", i32 46, i32 9}
!210 = distinct !{null, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/crypto/bcm/spu2.c", i32 46, i32 16}
!212 = distinct !{null, !213, !"spu2_cipher_mode_names", i1 false, i1 false}
!213 = !{!"../drivers/crypto/bcm/spu2.c", i32 45, i32 14}
!214 = distinct !{null, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/crypto/bcm/spu2.c", i32 242, i32 12}
!216 = distinct !{null, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/crypto/bcm/spu2.c", i32 302, i32 12}
!218 = distinct !{null, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/crypto/bcm/spu2.c", i32 50, i32 26}
!220 = distinct !{null, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/crypto/bcm/spu2.c", i32 50, i32 33}
!222 = distinct !{null, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/crypto/bcm/spu2.c", i32 50, i32 41}
!224 = distinct !{null, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/crypto/bcm/spu2.c", i32 50, i32 51}
!226 = distinct !{null, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/crypto/bcm/spu2.c", i32 50, i32 61}
!228 = distinct !{null, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/crypto/bcm/spu2.c", i32 51, i32 2}
!230 = distinct !{null, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/crypto/bcm/spu2.c", i32 51, i32 12}
!232 = distinct !{null, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/crypto/bcm/spu2.c", i32 51, i32 26}
!234 = distinct !{null, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/crypto/bcm/spu2.c", i32 51, i32 40}
!236 = distinct !{null, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/crypto/bcm/spu2.c", i32 51, i32 52}
!238 = distinct !{null, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/crypto/bcm/spu2.c", i32 52, i32 2}
!240 = distinct !{null, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/crypto/bcm/spu2.c", i32 52, i32 14}
!242 = distinct !{null, !243, !"spu2_hash_type_names", i1 false, i1 false}
!243 = !{!"../drivers/crypto/bcm/spu2.c", i32 49, i32 14}
!244 = distinct !{null, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/crypto/bcm/spu2.c", i32 55, i32 41}
!246 = distinct !{null, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/crypto/bcm/spu2.c", i32 55, i32 49}
!248 = distinct !{null, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/crypto/bcm/spu2.c", i32 55, i32 60}
!250 = distinct !{null, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/crypto/bcm/spu2.c", i32 55, i32 72}
!252 = distinct !{null, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/crypto/bcm/spu2.c", i32 56, i32 2}
!254 = distinct !{null, !255, !"spu2_hash_mode_names", i1 false, i1 false}
!255 = !{!"../drivers/crypto/bcm/spu2.c", i32 55, i32 14}
!256 = !{i32 1, !"wchar_size", i32 2}
!257 = !{i32 1, !"min_enum_size", i32 4}
!258 = !{i32 8, !"branch-target-enforcement", i32 0}
!259 = !{i32 8, !"sign-return-address", i32 0}
!260 = !{i32 8, !"sign-return-address-all", i32 0}
!261 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!262 = !{i32 7, !"uwtable", i32 1}
!263 = !{i32 7, !"frame-pointer", i32 2}
!264 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!265 = !{i8 0, i8 2}
