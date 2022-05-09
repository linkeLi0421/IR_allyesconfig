; ModuleID = '/llk/IR_all_yes/security/keys/trusted-keys/trusted_tpm2.c_pt.bc'
source_filename = "../security/keys/trusted-keys/trusted_tpm2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.tpm2_hash = type { i32, i32 }
%struct.asn1_decoder = type { ptr, i32, ptr }
%struct.tpm2_key_context = type { i32, ptr, i32, ptr, i32 }
%struct.tpm_buf = type { i32, ptr }
%struct.trusted_key_options = type { i16, i32, [20 x i8], i32, [20 x i8], i32, [64 x i8], i32, i32, i32, [64 x i8], i32 }
%struct.tpm_header = type <{ i16, i32, %union.anon.72 }>
%union.anon.72 = type { i32 }
%struct.trusted_key_payload = type { %struct.callback_head, i32, i32, i8, i8, [129 x i8], [512 x i8] }
%struct.callback_head = type { ptr, ptr }

@tpm2_key_type.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"trusted\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tpm2_key_type\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"security/keys/trusted-keys/trusted_tpm2.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"OID is \22%s\22 which is not TPMSealedData\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"trusted_key: OID is \22%s\22 which is not TPMSealedData\0A\00", [43 x i8] zeroinitializer }, align 32
@tpm2_hash_map = internal constant { [5 x %struct.tpm2_hash], [56 x i8] } { [5 x %struct.tpm2_hash] [%struct.tpm2_hash { i32 2, i32 4 }, %struct.tpm2_hash { i32 4, i32 11 }, %struct.tpm2_hash { i32 5, i32 12 }, %struct.tpm2_hash { i32 6, i32 13 }, %struct.tpm2_hash { i32 17, i32 18 }], [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sealing data\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/tpm.h\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tpm_buf: overflow\0A\00", [45 x i8] zeroinitializer }, align 32
@tpm2key_oid = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 2, i32 23, i32 133, i32 10, i32 1, i32 5], [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"BUG: Boolean failed to encode\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"BUG: scratch buffer is too small\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"BUG: ASN.1 encoder failed\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"loading blob\00", [19 x i8] zeroinitializer }, align 32
@tpm2key_decoder = external dso_local constant %struct.asn1_decoder, align 4
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"unsealing\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 4, i64 5, i64 6, i64 17]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 156, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"tpm2_hash_map\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 21, i32 25 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 311, i32 39 }
@___asan_gen_.38 = private unnamed_addr constant [23 x i8] c"../include/linux/tpm.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 376, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"tpm2key_oid\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 29, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 60, i32 7 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 71, i32 6 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 82, i32 6 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 430, i32 39 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [45 x i8] c"../security/keys/trusted-keys/trusted_tpm2.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 481, i32 39 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @tpm2_hash_map, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @tpm2key_oid, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm2_hash_map to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm2key_oid to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm2_key_parent(ptr nocapture noundef %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr nocapture noundef readonly %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %context, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vlen)
  %cmp7.not = icmp eq i32 %vlen, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %context, align 4
  %shl = shl i32 %2, 8
  store i32 %shl, ptr %context, align 4
  %arrayidx = getelementptr i8, ptr %value, i32 %i.08
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %or = or i32 %shl, %conv
  store i32 %or, ptr %context, align 4
  %inc = add nuw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, %vlen
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm2_key_type(ptr nocapture noundef readnone %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #2 align 64 {
entry:
  %buffer = alloca [50 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @look_up_OID(ptr noundef %value, i32 noundef %vlen) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 97, i32 %call)
  %cmp.not = icmp eq i32 %call, 97
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buffer) #7
  %0 = call ptr @memset(ptr %buffer, i32 255, i32 50)
  %call1 = call i32 @sprint_oid(ptr noundef %value, i32 noundef %vlen, ptr noundef nonnull %buffer, i32 noundef 50) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tpm2_key_type.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tpm2_key_type, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !35

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tpm2_key_type.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.4, ptr noundef nonnull %buffer) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buffer) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @look_up_OID(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprint_oid(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @tpm2_key_pub(ptr nocapture noundef writeonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pub = getelementptr inbounds %struct.tpm2_key_context, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %pub to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %value, ptr %pub, align 4
  %pub_len = getelementptr inbounds %struct.tpm2_key_context, ptr %context, i32 0, i32 2
  %1 = ptrtoint ptr %pub_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %vlen, ptr %pub_len, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @tpm2_key_priv(ptr nocapture noundef writeonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.tpm2_key_context, ptr %context, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %value, ptr %priv, align 4
  %priv_len = getelementptr inbounds %struct.tpm2_key_context, ptr %context, i32 0, i32 4
  %1 = ptrtoint ptr %priv_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %vlen, ptr %priv_len, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm2_seal_trusted(ptr noundef %chip, ptr noundef %payload, ptr noundef %options) local_unnamed_addr #2 align 64 {
entry:
  %buf = alloca %struct.tpm_buf, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #7
  %0 = getelementptr inbounds %struct.tpm_buf, ptr %buf, i32 0, i32 1
  %hash1 = getelementptr inbounds %struct.trusted_key_options, ptr %options, i32 0, i32 8
  %1 = ptrtoint ptr %hash1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hash1, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %entry.cleanup_crit_edge [
    i32 2, label %entry.if.end6_crit_edge
    i32 4, label %if.end6.fold.split
    i32 5, label %if.end6.fold.split330
    i32 6, label %if.end6.fold.split331
    i32 17, label %if.end6.fold.split332
  ]

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6.fold.split330:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6.fold.split331:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6.fold.split332:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6:                                          ; preds = %if.end6.fold.split332, %if.end6.fold.split331, %if.end6.fold.split330, %if.end6.fold.split, %entry.if.end6_crit_edge
  %i.0328.lcssa = phi i32 [ 0, %entry.if.end6_crit_edge ], [ 1, %if.end6.fold.split ], [ 2, %if.end6.fold.split330 ], [ 3, %if.end6.fold.split331 ], [ 4, %if.end6.fold.split332 ]
  %tpm_id = getelementptr [5 x %struct.tpm2_hash], ptr @tpm2_hash_map, i32 0, i32 %i.0328.lcssa, i32 1
  %4 = ptrtoint ptr %tpm_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tpm_id, align 4
  %phi.cast = trunc i32 %5 to i16
  %keyhandle = getelementptr inbounds %struct.trusted_key_options, ptr %options, i32 0, i32 1
  %6 = ptrtoint ptr %keyhandle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %keyhandle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end6.cleanup_crit_edge, label %if.end8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end6
  %call = tail call i32 @tpm_try_get_ops(ptr noundef %chip) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %call.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #7
  %8 = inttoptr i32 %call.i to ptr
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @tpm_put_ops(ptr noundef %chip) #7
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %buf, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 -32766, ptr %8, align 1
  %length.i.i = getelementptr inbounds %struct.tpm_header, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %length.i.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 10, ptr %length.i.i, align 1
  %13 = getelementptr inbounds %struct.tpm_header, ptr %8, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 339, ptr %13, align 1
  %15 = ptrtoint ptr %keyhandle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %keyhandle, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %0, align 4
  %length.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %length.i.i.i, align 1
  %21 = load i32, ptr %buf, align 4
  %and.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end15.tpm_buf_append_u32.exit_crit_edge

if.end15.tpm_buf_append_u32.exit_crit_edge:       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_buf_append_u32.exit

if.end.i.i:                                       ; preds = %if.end15
  %add.i.i = add i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 4096
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end20.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.7) #7
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buf, align 4
  %or.i.i = or i32 %23, 1
  store i32 %or.i.i, ptr %buf, align 4
  br label %tpm_buf_append_u32.exit

if.end20.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr i8, ptr %18, i32 %20
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %16, ptr %arrayidx.i.i, align 1
  %25 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %add.i.i, ptr %length.i.i.i, align 1
  br label %tpm_buf_append_u32.exit

tpm_buf_append_u32.exit:                          ; preds = %if.end20.i.i, %do.end.i.i, %if.end15.tpm_buf_append_u32.exit_crit_edge
  %keyauth = getelementptr inbounds %struct.trusted_key_options, ptr %options, i32 0, i32 2
  call fastcc void @tpm2_buf_append_auth(ptr noundef nonnull %buf, i32 noundef 1073741833, i8 noundef zeroext 0, ptr noundef %keyauth, i16 noundef zeroext 20)
  %blobauth_len = getelementptr inbounds %struct.trusted_key_options, ptr %options, i32 0, i32 3
  %26 = ptrtoint ptr %blobauth_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %blobauth_len, align 4
  %add = add i32 %27, 4
  %key_len = getelementptr inbounds %struct.trusted_key_payload, ptr %payload, i32 0, i32 1
  %28 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %key_len, align 4
  %add17 = add i32 %add, %29
  %conv = trunc i32 %add17 to i16
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %0, align 4
  %length.i.i.i134 = getelementptr inbounds %struct.tpm_header, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %length.i.i.i134 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %length.i.i.i134, align 1
  %34 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buf, align 4
  %and.i.i135 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i135)
  %tobool.not.i.i136 = icmp eq i32 %and.i.i135, 0
  br i1 %tobool.not.i.i136, label %if.end.i.i139, label %tpm_buf_append_u32.exit.tpm_buf_append_u16.exit_crit_edge

tpm_buf_append_u32.exit.tpm_buf_append_u16.exit_crit_edge: ; preds = %tpm_buf_append_u32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_buf_append_u16.exit

if.end.i.i139:                                    ; preds = %tpm_buf_append_u32.exit
  %add.i.i137 = add i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i137)
  %cmp.i.i138 = icmp ugt i32 %add.i.i137, 4096
  br i1 %cmp.i.i138, label %do.end.i.i141, label %if.end20.i.i143

do.end.i.i141:                                    ; preds = %if.end.i.i139
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.7) #7
  %36 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buf, align 4
  %or.i.i140 = or i32 %37, 1
  store i32 %or.i.i140, ptr %buf, align 4
  br label %tpm_buf_append_u16.exit

if.end20.i.i143:                                  ; preds = %if.end.i.i139
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i142 = getelementptr i8, ptr %31, i32 %33
  %38 = ptrtoint ptr %arrayidx.i.i142 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %conv, ptr %arrayidx.i.i142, align 1
  %39 = ptrtoint ptr %length.i.i.i134 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %add.i.i137, ptr %length.i.i.i134, align 1
  br label %tpm_buf_append_u16.exit

tpm_buf_append_u16.exit:                          ; preds = %if.end20.i.i143, %do.end.i.i141, %tpm_buf_append_u32.exit.tpm_buf_append_u16.exit_crit_edge
  %40 = ptrtoint ptr %blobauth_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %blobauth_len, align 4
  %conv19 = trunc i32 %41 to i16
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %0, align 4
  %length.i.i.i145 = getelementptr inbounds %struct.tpm_header, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %length.i.i.i145 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %length.i.i.i145, align 1
  %46 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %buf, align 4
  %and.i.i146 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i146)
  %tobool.not.i.i147 = icmp eq i32 %and.i.i146, 0
  br i1 %tobool.not.i.i147, label %if.end.i.i150, label %tpm_buf_append_u16.exit.tpm_buf_append_u16.exit155_crit_edge

tpm_buf_append_u16.exit.tpm_buf_append_u16.exit155_crit_edge: ; preds = %tpm_buf_append_u16.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_buf_append_u16.exit155

if.end.i.i150:                                    ; preds = %tpm_buf_append_u16.exit
  %add.i.i148 = add i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i148)
  %cmp.i.i149 = icmp ugt i32 %add.i.i148, 4096
  br i1 %cmp.i.i149, label %do.end.i.i152, label %if.end20.i.i154

do.end.i.i152:                                    ; preds = %if.end.i.i150
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.7) #7
  %48 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %buf, align 4
  %or.i.i151 = or i32 %49, 1
  store i32 %or.i.i151, ptr %buf, align 4
  br label %tpm_buf_append_u16.exit155

if.end20.i.i154:                                  ; preds = %if.end.i.i150
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i153 = getelementptr i8, ptr %43, i32 %45
  %50 = ptrtoint ptr %arrayidx.i.i153 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %conv19, ptr %arrayidx.i.i153, align 1
  %51 = ptrtoint ptr %length.i.i.i145 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %add.i.i148, ptr %length.i.i.i145, align 1
  br label %tpm_buf_append_u16.exit155

tpm_buf_append_u16.exit155:                       ; preds = %if.end20.i.i154, %do.end.i.i152, %tpm_buf_append_u16.exit.tpm_buf_append_u16.exit155_crit_edge
  %52 = ptrtoint ptr %blobauth_len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %blobauth_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool21.not = icmp eq i32 %53, 0
  br i1 %tobool21.not, label %tpm_buf_append_u16.exit155.if.end25_crit_edge, label %if.then22

tpm_buf_append_u16.exit155.if.end25_crit_edge:    ; preds = %tpm_buf_append_u16.exit155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then22:                                        ; preds = %tpm_buf_append_u16.exit155
  %blobauth = getelementptr inbounds %struct.trusted_key_options, ptr %options, i32 0, i32 4
  %54 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %0, align 4
  %length.i.i157 = getelementptr inbounds %struct.tpm_header, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %length.i.i157 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %length.i.i157, align 1
  %58 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %buf, align 4
  %and.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i158 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i158, label %if.end.i159, label %if.then22.if.end25_crit_edge

if.then22.if.end25_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.end.i159:                                      ; preds = %if.then22
  %add.i = add i32 %57, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 4096
  br i1 %cmp.i, label %do.end.i, label %if.end20.i

do.end.i:                                         ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.7) #7
  %60 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %buf, align 4
  %or.i = or i32 %61, 1
  store i32 %or.i, ptr %buf, align 4
  br label %if.end25

if.end20.i:                                       ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr i8, ptr %55, i32 %57
  %62 = call ptr @memcpy(ptr %arrayidx.i, ptr %blobauth, i32 %53)
  %63 = ptrtoint ptr %length.i.i157 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %add.i, ptr %length.i.i157, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.end20.i, %do.end.i, %if.then22.if.end25_crit_edge, %tpm_buf_append_u16.exit155.if.end25_crit_edge
  %64 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %key_len, align 4
  %conv27 = trunc i32 %65 to i16
  %66 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %0, align 4
  %length.i.i.i161 = getelementptr inbounds %struct.tpm_header, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %length.i.i.i161 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %length.i.i.i161, align 1
  %70 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %buf, align 4
  %and.i.i162 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i162)
  %tobool.not.i.i163 = icmp eq i32 %and.i.i162, 0
  br i1 %tobool.not.i.i163, label %if.end.i.i166, label %if.end25.tpm_buf_append_u16.exit171_crit_edge

if.end25.tpm_buf_append_u16.exit171_crit_edge:    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_buf_append_u16.exit171

if.end.i.i166:                                    ; preds = %if.end25
  %add.i.i164 = add i32 %69, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i164)
  %cmp.i.i165 = icmp ugt i32 %add.i.i164, 4096
  br i1 %cmp.i.i165, label %do.end.i.i168, label %if.end20.i.i170

do.end.i.i168:                                    ; preds = %if.end.i.i166
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.7) #7
  %72 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %buf, align 4
  %or.i.i167 = or i32 %73, 1
  store i32 %or.i.i167, ptr %buf, align 4
  br label %tpm_buf_append_u16.exit171

if.end20.i.i170:                                  ; preds = %if.end.i.i166
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i169 = getelementptr i8, ptr %67, i32 %69
  %74 = ptrtoint ptr %arrayidx.i.i169 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 2)
  store i16 %conv27, ptr %arrayidx.i.i169, align 1
  %75 = ptrtoint ptr %length.i.i.i161 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %add.i.i164, ptr %length.i.i.i161, align 1
  br label %tpm_buf_append_u16.exit171

tpm_buf_append_u16.exit171:                       ; preds = %if.end20.i.i170, %do.end.i.i168, %if.end25.tpm_buf_append_u16.exit171_crit_edge
  %key = getelementptr inbounds %struct.trusted_key_payload, ptr %payload, i32 0, i32 5
  %76 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %key_len, align 4
  %78 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %0, align 4
  %length.i.i173 = getelementptr inbounds %struct.tpm_header, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %length.i.i173 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %length.i.i173, align 1
  %82 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %buf, align 4
  %and.i174 = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i174)
  %tobool.not.i175 = icmp eq i32 %and.i174, 0
  br i1 %tobool.not.i175, label %if.end.i178, label %tpm_buf_append_u16.exit171.tpm_buf_append.exit183_crit_edge

tpm_buf_append_u16.exit171.tpm_buf_append.exit183_crit_edge: ; preds = %tpm_buf_append_u16.exit171
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_buf_append.exit183

if.end.i178:                                      ; preds = %tpm_buf_append_u16.exit171
  %add.i176 = add i32 %81, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i176)
  %cmp.i177 = icmp ugt i32 %add.i176, 4096
  br i1 %cmp.i177, label %do.end.i180, label %if.end20.i182

do.end.i180:                                      ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.7) #7
  %84 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %buf, align 4
  %or.i179 = or i32 %85, 1
  store i32 %or.i179, ptr %buf, align 4
  br label %tpm_buf_append.exit183

if.end20.i182:                                    ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i181 = getelementptr i8, ptr %79, i32 %81
  %86 = call ptr @memcpy(ptr %arrayidx.i181, ptr %key, i32 %77)
  %87 = ptrtoint ptr %length.i.i173 to i32
  call void @__asan_storeN_noabort(i32 %87, i32 4)
  store i32 %add.i176, ptr %length.i.i173, align 1
  br label %tpm_buf_append.exit183

tpm_buf_append.exit183:                           ; preds = %if.end20.i182, %do.end.i180, %tpm_buf_append_u16.exit171.tpm_buf_append.exit183_crit_edge
  %policydigest_len = getelementptr inbounds %struct.trusted_key_options, ptr %options, i32 0, i32 9
  %88 = ptrtoint ptr %policydigest_len to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %policydigest_len, align 4
  %90 = trunc i32 %89 to i16
  %conv31 = add i16 %90, 14
  %91 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %0, align 4
  %length.i.i.i185 = getelementptr inbounds %struct.tpm_header, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %length.i.i.i185 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %length.i.i.i185, align 1
  %95 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %buf, align 4
  %and.i.i186 = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i186)
  %tobool.not.i.i187 = icmp eq i32 %and.i.i186, 0
  br i1 %tobool.not.i.i187, label %if.end.i.i190, label %tpm_buf_append.exit183.tpm_buf_append_u16.exit195_crit_edge

tpm_buf_append.exit183.tpm_buf_append_u16.exit195_crit_edge: ; preds = %tpm_buf_append.exit183
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_buf_append_u16.exit195

if.end.i.i190:                                    ; preds = %tpm_buf_append.exit183
  %add.i.i188 = add i32 %94, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i188)
  %cmp.i.i189 = icmp ugt i32 %add.i.i188, 4096
  br i1 %cmp.i.i189, label %do.end.i.i192, label %if.end20.i.i194

do.end.i.i192:                                    ; preds = %if.end.i.i190
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.7) #7
  %97 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %buf, align 4
  %or.i.i191 = or i32 %98, 1
  store i32 %or.i.i191, ptr %buf, align 4
  br label %tpm_buf_append_u16.exit195

if.end20.i.i194:                                  ; preds = %if.end.i.i190
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i193 = getelementptr i8, ptr %92, i32 %94
  %99 = ptrtoint ptr %arrayidx.i.i193 to i32
  call void @__asan_storeN_noabort(i32 %99, i32 2)
  store i16 %conv31, ptr %arrayidx.i.i193, align 1
  %100 = ptrtoint ptr %length.i.i.i185 to i32
  call void @__asan_storeN_noabort(i32 %100, i32 4)
  store i32 %add.i.i188, ptr %length.i.i.i185, align 1
  br label %tpm_buf_append_u16.exit195

tpm_buf_append_u16.exit195:                       ; preds = %if.end20.i.i194, %do.end.i.i192, %tpm_buf_append.exit183.tpm_buf_append_u16.exit195_crit_edge
  %101 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %0, align 4
  %length.i.i.i197 = getelementptr inbounds %struct.tpm_header, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %length.i.i.i197 to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %length.i.i.i197, align 1
  %105 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %buf, align 4
  %and.i.i198 = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i198)
  %tobool.not.i.i199 = icmp eq i32 %and.i.i198, 0
  br i1 %tobool.not.i.i199, label %if.end.i.i202, label %tpm_buf_append_u16.exit195.tpm_buf_append_u16.exit207_crit_edge

tpm_buf_append_u16.exit195.tpm_buf_append_u16.exit207_crit_edge: ; preds = %tpm_buf_append_u16.exit195
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_buf_append_u16.exit207

if.end.i.i202:                                    ; preds = %tpm_buf_append_u16.exit195
  %add.i.i200 = add i32 %104, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i200)
  %cmp.i.i201 = icmp ugt i32 %add.i.i200, 4096
  br i1 %cmp.i.i201, label %do.end.i.i204, label %if.end20.i.i206

do.end.i.i204:                                    ; preds = %if.end.i.i202
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.7) #7
  %107 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %buf, align 4
  %or.i.i203 = or i32 %108, 1
  store i32 %or.i.i203, ptr %buf, align 4
  br label %tpm_buf_append_u16.exit207

if.end20.i.i206:                                  ; preds = %if.end.i.i202
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i205 = getelementptr i8, ptr %102, i32 %104
  %109 = ptrtoint ptr %arrayidx.i.i205 to i32
  call void @__asan_storeN_noabort(i32 %109, i32 2)
  store i16 8, ptr %arrayidx.i.i205, align 1
  %110 = ptrtoint ptr %length.i.i.i197 to i32
  call void @__asan_storeN_noabort(i32 %110, i32 4)
  store i32 %add.i.i200, ptr %length.i.i.i197, align 1
  br label %tpm_buf_append_u16.exit207

tpm_buf_append_u16.exit207:                       ; preds = %if.end20.i.i206, %do.end.i.i204, %tpm_buf_append_u16.exit195.tpm_buf_append_u16.exit207_crit_edge
  %111 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %0, align 4
  %length.i.i.i209 = getelementptr inbounds %struct.tpm_header, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %length.i.i.i209 to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %length.i.i.i209, align 1
  %115 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %buf, align 4
  %and.i.i210 = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i210)
  %tobool.not.i.i211 = icmp eq i32 %and.i.i210, 0
  br i1 %tobool.not.i.i211, label %if.end.i.i214, label %tpm_buf_append_u16.exit207.tpm_buf_append_u16.exit219_crit_edge

tpm_buf_append_u16.exit207.tpm_buf_append_u16.exit219_crit_edge: ; preds = %tpm_buf_append_u16.exit207
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_buf_append_u16.exit219

if.end.i.i214:                                    ; preds = %tpm_buf_append_u16.exit207
  %add.i.i212 = add i32 %114, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i212)
  %cmp.i.i213 = icmp ugt i32 %add.i.i212, 4096
  br i1 %cmp.i.i213, label %do.end.i.i216, label %if.end20.i.i218

do.end.i.i216:                                    ; preds = %if.end.i.i214
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.7) #7
  %117 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %buf, align 4
  %or.i.i215 = or i32 %118, 1
  store i32 %or.i.i215, ptr %buf, align 4
  br label %tpm_buf_append_u16.exit219

if.end20.i.i218:                                  ; preds = %if.end.i.i214
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i217 = getelementptr i8, ptr %112, i32 %114
  %119 = ptrtoint ptr %arrayidx.i.i217 to i32
  call void @__asan_storeN_noabort(i32 %119, i32 2)
  store i16 %phi.cast, ptr %arrayidx.i.i217, align 1
  %120 = ptrtoint ptr %length.i.i.i209 to i32
  call void @__asan_storeN_noabort(i32 %120, i32 4)
  store i32 %add.i.i212, ptr %length.i.i.i209, align 1
  br label %tpm_buf_append_u16.exit219

tpm_buf_append_u16.exit219:                       ; preds = %if.end20.i.i218, %do.end.i.i216, %tpm_buf_append_u16.exit207.tpm_buf_append_u16.exit219_crit_edge
  %121 = ptrtoint ptr %policydigest_len to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %policydigest_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool34.not = icmp eq i32 %122, 0
  %cond = select i1 %tobool34.not, i32 64, i32 0
  %migratable = getelementptr inbounds %struct.trusted_key_payload, ptr %payload, i32 0, i32 3
  %123 = ptrtoint ptr %migratable to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %migratable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool36.not = icmp eq i8 %124, 0
  %cond37 = select i1 %tobool36.not, i32 0, i32 18
  %or38 = or i32 %cond37, %cond
  %125 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %0, align 4
  %length.i.i.i221 = getelementptr inbounds %struct.tpm_header, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %length.i.i.i221 to i32
  call void @__asan_loadN_noabort(i32 %127, i32 4)
  %128 = load i32, ptr %length.i.i.i221, align 1
  %129 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %buf, align 4
  %and.i.i222 = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i222)
  %tobool.not.i.i223 = icmp eq i32 %and.i.i222, 0
  br i1 %tobool.not.i.i223, label %if.end.i.i226, label %tpm_buf_append_u16.exit219.tpm_buf_append_u32.exit231_crit_edge

tpm_buf_append_u16.exit219.tpm_buf_append_u32.exit231_crit_edge: ; preds = %tpm_buf_append_u16.exit219
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_buf_append_u32.exit231

if.end.i.i226:                                    ; preds = %tpm_buf_append_u16.exit219
  %add.i.i224 = add i32 %128, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i224)
  %cmp.i.i225 = icmp ugt i32 %add.i.i224, 4096
  br i1 %cmp.i.i225, label %do.end.i.i228, label %if.end20.i.i230

do.end.i.i228:                                    ; preds = %if.end.i.i226
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.7) #7
  %131 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %buf, align 4
  %or.i.i227 = or i32 %132, 1
  store i32 %or.i.i227, ptr %buf, align 4
  br label %tpm_buf_append_u32.exit231

if.end20.i.i230:                                  ; preds = %if.end.i.i226
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i229 = getelementptr i8, ptr %126, i32 %128
  %133 = ptrtoint ptr %arrayidx.i.i229 to i32
  call void @__asan_storeN_noabort(i32 %133, i32 4)
  store i32 %or38, ptr %arrayidx.i.i229, align 1
  %134 = ptrtoint ptr %length.i.i.i221 to i32
  call void @__asan_storeN_noabort(i32 %134, i32 4)
  store i32 %add.i.i224, ptr %length.i.i.i221, align 1
  br label %tpm_buf_append_u32.exit231

tpm_buf_append_u32.exit231:                       ; preds = %if.end20.i.i230, %do.end.i.i228, %tpm_buf_append_u16.exit219.tpm_buf_append_u32.exit231_crit_edge
  %135 = ptrtoint ptr %policydigest_len to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %policydigest_len, align 4
  %conv40 = trunc i32 %136 to i16
  %137 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %0, align 4
  %length.i.i.i233 = getelementptr inbounds %struct.tpm_header, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %length.i.i.i233 to i32
  call void @__asan_loadN_noabort(i32 %139, i32 4)
  %140 = load i32, ptr %length.i.i.i233, align 1
  %141 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %buf, align 4
  %and.i.i234 = and i32 %142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i234)
  %tobool.not.i.i235 = icmp eq i32 %and.i.i234, 0
  br i1 %tobool.not.i.i235, label %if.end.i.i238, label %tpm_buf_append_u32.exit231.tpm_buf_append_u16.exit243_crit_edge

tpm_buf_append_u32.exit231.tpm_buf_append_u16.exit243_crit_edge: ; preds = %tpm_buf_append_u32.exit231
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_buf_append_u16.exit243

if.end.i.i238:                                    ; preds = %tpm_buf_append_u32.exit231
  %add.i.i236 = add i32 %140, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i236)
  %cmp.i.i237 = icmp ugt i32 %add.i.i236, 4096
  br i1 %cmp.i.i237, label %do.end.i.i240, label %if.end20.i.i242

do.end.i.i240:                                    ; preds = %if.end.i.i238
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.7) #7
  %143 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %buf, align 4
  %or.i.i239 = or i32 %144, 1
  store i32 %or.i.i239, ptr %buf, align 4
  br label %tpm_buf_append_u16.exit243

if.end20.i.i242:                                  ; preds = %if.end.i.i238
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i241 = getelementptr i8, ptr %138, i32 %140
  %145 = ptrtoint ptr %arrayidx.i.i241 to i32
  call void @__asan_storeN_noabort(i32 %145, i32 2)
  store i16 %conv40, ptr %arrayidx.i.i241, align 1
  %146 = ptrtoint ptr %length.i.i.i233 to i32
  call void @__asan_storeN_noabort(i32 %146, i32 4)
  store i32 %add.i.i236, ptr %length.i.i.i233, align 1
  br label %tpm_buf_append_u16.exit243

tpm_buf_append_u16.exit243:                       ; preds = %if.end20.i.i242, %do.end.i.i240, %tpm_buf_append_u32.exit231.tpm_buf_append_u16.exit243_crit_edge
  %147 = ptrtoint ptr %policydigest_len to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %policydigest_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool42.not = icmp eq i32 %148, 0
  br i1 %tobool42.not, label %tpm_buf_append_u16.exit243.if.end46_crit_edge, label %if.then43

tpm_buf_append_u16.exit243.if.end46_crit_edge:    ; preds = %tpm_buf_append_u16.exit243
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then43:                                        ; preds = %tpm_buf_append_u16.exit243
  %policydigest = getelementptr inbounds %struct.trusted_key_options, ptr %options, i32 0, i32 10
  %149 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %0, align 4
  %length.i.i245 = getelementptr inbounds %struct.tpm_header, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %length.i.i245 to i32
  call void @__asan_loadN_noabort(i32 %151, i32 4)
  %152 = load i32, ptr %length.i.i245, align 1
  %153 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %buf, align 4
  %and.i246 = and i32 %154, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i246)
  %tobool.not.i247 = icmp eq i32 %and.i246, 0
  br i1 %tobool.not.i247, label %if.end.i250, label %if.then43.if.end46_crit_edge

if.then43.if.end46_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.end.i250:                                      ; preds = %if.then43
  %add.i248 = add i32 %152, %148
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i248)
  %cmp.i249 = icmp ugt i32 %add.i248, 4096
  br i1 %cmp.i249, label %do.end.i252, label %if.end20.i254

do.end.i252:                                      ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.7) #7
  %155 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %buf, align 4
  %or.i251 = or i32 %156, 1
  store i32 %or.i251, ptr %buf, align 4
  br label %if.end46

if.end20.i254:                                    ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i253 = getelementptr i8, ptr %150, i32 %152
  %157 = call ptr @memcpy(ptr %arrayidx.i253, ptr %policydigest, i32 %148)
  %158 = ptrtoint ptr %length.i.i245 to i32
  call void @__asan_storeN_noabort(i32 %158, i32 4)
  store i32 %add.i248, ptr %length.i.i245, align 1
  br label %if.end46

if.end46:                                         ; preds = %if.end20.i254, %do.end.i252, %if.then43.if.end46_crit_edge, %tpm_buf_append_u16.exit243.if.end46_crit_edge
  %159 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %0, align 4
  %length.i.i.i257 = getelementptr inbounds %struct.tpm_header, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %length.i.i.i257 to i32
  call void @__asan_loadN_noabort(i32 %161, i32 4)
  %162 = load i32, ptr %length.i.i.i257, align 1
  %163 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %buf, align 4
  %and.i.i258 = and i32 %164, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i258)
  %tobool.not.i.i259 = icmp eq i32 %and.i.i258, 0
  br i1 %tobool.not.i.i259, label %if.end.i.i262, label %if.end46.tpm_buf_append_u16.exit267_crit_edge

if.end46.tpm_buf_append_u16.exit267_crit_edge:    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_buf_append_u16.exit267

if.end.i.i262:                                    ; preds = %if.end46
  %add.i.i260 = add i32 %162, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i260)
  %cmp.i.i261 = icmp ugt i32 %add.i.i260, 4096
  br i1 %cmp.i.i261, label %do.end.i.i264, label %if.end20.i.i266

do.end.i.i264:                                    ; preds = %if.end.i.i262
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.7) #7
  %165 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %buf, align 4
  %or.i.i263 = or i32 %166, 1
  store i32 %or.i.i263, ptr %buf, align 4
  br label %tpm_buf_append_u16.exit267

if.end20.i.i266:                                  ; preds = %if.end.i.i262
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i265 = getelementptr i8, ptr %160, i32 %162
  %167 = ptrtoint ptr %arrayidx.i.i265 to i32
  call void @__asan_storeN_noabort(i32 %167, i32 2)
  store i16 16, ptr %arrayidx.i.i265, align 1
  %168 = ptrtoint ptr %length.i.i.i257 to i32
  call void @__asan_storeN_noabort(i32 %168, i32 4)
  store i32 %add.i.i260, ptr %length.i.i.i257, align 1
  br label %tpm_buf_append_u16.exit267

tpm_buf_append_u16.exit267:                       ; preds = %if.end20.i.i266, %do.end.i.i264, %if.end46.tpm_buf_append_u16.exit267_crit_edge
  %169 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %0, align 4
  %length.i.i.i269 = getelementptr inbounds %struct.tpm_header, ptr %170, i32 0, i32 1
  %171 = ptrtoint ptr %length.i.i.i269 to i32
  call void @__asan_loadN_noabort(i32 %171, i32 4)
  %172 = load i32, ptr %length.i.i.i269, align 1
  %173 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %buf, align 4
  %and.i.i270 = and i32 %174, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i270)
  %tobool.not.i.i271 = icmp eq i32 %and.i.i270, 0
  br i1 %tobool.not.i.i271, label %if.end.i.i274, label %tpm_buf_append_u16.exit267.tpm_buf_append_u16.exit279_crit_edge

tpm_buf_append_u16.exit267.tpm_buf_append_u16.exit279_crit_edge: ; preds = %tpm_buf_append_u16.exit267
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_buf_append_u16.exit279

if.end.i.i274:                                    ; preds = %tpm_buf_append_u16.exit267
  %add.i.i272 = add i32 %172, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i272)
  %cmp.i.i273 = icmp ugt i32 %add.i.i272, 4096
  br i1 %cmp.i.i273, label %do.end.i.i276, label %if.end20.i.i278

do.end.i.i276:                                    ; preds = %if.end.i.i274
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.7) #7
  %175 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %buf, align 4
  %or.i.i275 = or i32 %176, 1
  store i32 %or.i.i275, ptr %buf, align 4
  br label %tpm_buf_append_u16.exit279

if.end20.i.i278:                                  ; preds = %if.end.i.i274
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i277 = getelementptr i8, ptr %170, i32 %172
  %177 = ptrtoint ptr %arrayidx.i.i277 to i32
  call void @__asan_storeN_noabort(i32 %177, i32 2)
  store i16 0, ptr %arrayidx.i.i277, align 1
  %178 = ptrtoint ptr %length.i.i.i269 to i32
  call void @__asan_storeN_noabort(i32 %178, i32 4)
  store i32 %add.i.i272, ptr %length.i.i.i269, align 1
  br label %tpm_buf_append_u16.exit279

tpm_buf_append_u16.exit279:                       ; preds = %if.end20.i.i278, %do.end.i.i276, %tpm_buf_append_u16.exit267.tpm_buf_append_u16.exit279_crit_edge
  %179 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %0, align 4
  %length.i.i.i281 = getelementptr inbounds %struct.tpm_header, ptr %180, i32 0, i32 1
  %181 = ptrtoint ptr %length.i.i.i281 to i32
  call void @__asan_loadN_noabort(i32 %181, i32 4)
  %182 = load i32, ptr %length.i.i.i281, align 1
  %183 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %buf, align 4
  %and.i.i282 = and i32 %184, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i282)
  %tobool.not.i.i283 = icmp eq i32 %and.i.i282, 0
  br i1 %tobool.not.i.i283, label %if.end.i.i286, label %tpm_buf_append_u16.exit279.tpm_buf_append_u16.exit291_crit_edge

tpm_buf_append_u16.exit279.tpm_buf_append_u16.exit291_crit_edge: ; preds = %tpm_buf_append_u16.exit279
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_buf_append_u16.exit291

if.end.i.i286:                                    ; preds = %tpm_buf_append_u16.exit279
  %add.i.i284 = add i32 %182, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i284)
  %cmp.i.i285 = icmp ugt i32 %add.i.i284, 4096
  br i1 %cmp.i.i285, label %do.end.i.i288, label %if.end20.i.i290

do.end.i.i288:                                    ; preds = %if.end.i.i286
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.7) #7
  %185 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %buf, align 4
  %or.i.i287 = or i32 %186, 1
  store i32 %or.i.i287, ptr %buf, align 4
  br label %tpm_buf_append_u16.exit291

if.end20.i.i290:                                  ; preds = %if.end.i.i286
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i289 = getelementptr i8, ptr %180, i32 %182
  %187 = ptrtoint ptr %arrayidx.i.i289 to i32
  call void @__asan_storeN_noabort(i32 %187, i32 2)
  store i16 0, ptr %arrayidx.i.i289, align 1
  %188 = ptrtoint ptr %length.i.i.i281 to i32
  call void @__asan_storeN_noabort(i32 %188, i32 4)
  store i32 %add.i.i284, ptr %length.i.i.i281, align 1
  br label %tpm_buf_append_u16.exit291

tpm_buf_append_u16.exit291:                       ; preds = %if.end20.i.i290, %do.end.i.i288, %tpm_buf_append_u16.exit279.tpm_buf_append_u16.exit291_crit_edge
  %189 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %0, align 4
  %length.i.i.i293 = getelementptr inbounds %struct.tpm_header, ptr %190, i32 0, i32 1
  %191 = ptrtoint ptr %length.i.i.i293 to i32
  call void @__asan_loadN_noabort(i32 %191, i32 4)
  %192 = load i32, ptr %length.i.i.i293, align 1
  %193 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %buf, align 4
  %and.i.i294 = and i32 %194, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i294)
  %tobool.not.i.i295 = icmp eq i32 %and.i.i294, 0
  br i1 %tobool.not.i.i295, label %if.end.i.i298, label %tpm_buf_append_u16.exit291.tpm_buf_append_u32.exit303_crit_edge

tpm_buf_append_u16.exit291.tpm_buf_append_u32.exit303_crit_edge: ; preds = %tpm_buf_append_u16.exit291
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_buf_append_u32.exit303

if.end.i.i298:                                    ; preds = %tpm_buf_append_u16.exit291
  %add.i.i296 = add i32 %192, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i296)
  %cmp.i.i297 = icmp ugt i32 %add.i.i296, 4096
  br i1 %cmp.i.i297, label %do.end.i.i300, label %if.end20.i.i302

do.end.i.i300:                                    ; preds = %if.end.i.i298
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.7) #7
  %195 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %buf, align 4
  %or.i.i299 = or i32 %196, 1
  store i32 %or.i.i299, ptr %buf, align 4
  br label %tpm_buf_append_u32.exit303

if.end20.i.i302:                                  ; preds = %if.end.i.i298
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i301 = getelementptr i8, ptr %190, i32 %192
  %197 = ptrtoint ptr %arrayidx.i.i301 to i32
  call void @__asan_storeN_noabort(i32 %197, i32 4)
  store i32 0, ptr %arrayidx.i.i301, align 1
  %198 = ptrtoint ptr %length.i.i.i293 to i32
  call void @__asan_storeN_noabort(i32 %198, i32 4)
  store i32 %add.i.i296, ptr %length.i.i.i293, align 1
  br label %tpm_buf_append_u32.exit303

tpm_buf_append_u32.exit303:                       ; preds = %if.end20.i.i302, %do.end.i.i300, %tpm_buf_append_u16.exit291.tpm_buf_append_u32.exit303_crit_edge
  %199 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %buf, align 4
  %and = and i32 %200, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool48.not = icmp eq i32 %and, 0
  br i1 %tobool48.not, label %if.end50, label %tpm_buf_append_u32.exit303.if.end78.thread323_crit_edge

tpm_buf_append_u32.exit303.if.end78.thread323_crit_edge: ; preds = %tpm_buf_append_u32.exit303
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78.thread323

if.end50:                                         ; preds = %tpm_buf_append_u32.exit303
  %call51 = call i32 @tpm_transmit_cmd(ptr noundef %chip, ptr noundef nonnull %buf, i32 noundef 4, ptr noundef nonnull @.str.5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  %201 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %0, align 4
  br i1 %tobool52.not, label %if.end54, label %out

if.end54:                                         ; preds = %if.end50
  %arrayidx55 = getelementptr i8, ptr %202, i32 10
  %203 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %arrayidx55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %204)
  %cmp57 = icmp sgt i32 %204, 512
  br i1 %cmp57, label %if.end54.if.end78.thread323_crit_edge, label %if.end60

if.end54.if.end78.thread323_crit_edge:            ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78.thread323

if.end60:                                         ; preds = %if.end54
  %length.i = getelementptr inbounds %struct.tpm_header, ptr %202, i32 0, i32 1
  %205 = ptrtoint ptr %length.i to i32
  call void @__asan_loadN_noabort(i32 %205, i32 4)
  %206 = load i32, ptr %length.i, align 1
  %add62 = add nsw i32 %204, 14
  call void @__sanitizer_cov_trace_cmp4(i32 %206, i32 %add62)
  %cmp63 = icmp ult i32 %206, %add62
  br i1 %cmp63, label %if.end60.if.end78_crit_edge, label %if.end66

if.end60.if.end78_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.end66:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx68 = getelementptr i8, ptr %202, i32 14
  %call69 = call fastcc i32 @tpm2_key_encode(ptr noundef %payload, ptr noundef %options, ptr noundef %arrayidx68)
  br label %if.end78

out:                                              ; preds = %if.end50
  %207 = ptrtoint ptr %202 to i32
  call void @free_pages(i32 noundef %207, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp70 = icmp sgt i32 %call51, 0
  br i1 %cmp70, label %if.then72, label %out.if.else82_crit_edge

out.if.else82_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else82

if.then72:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %and.i306 = and i32 %call51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i306)
  %tobool.not.i307 = icmp eq i32 %and.i306, 0
  %and1.i = and i32 %call51, 255
  %cond.i = select i1 %tobool.not.i307, i32 %call51, i32 %and1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 131, i32 %cond.i)
  %cmp74 = icmp eq i32 %cond.i, 131
  %. = select i1 %cmp74, i32 -22, i32 -1
  br label %if.else82

if.end78.thread323:                               ; preds = %if.end54.if.end78.thread323_crit_edge, %tpm_buf_append_u32.exit303.if.end78.thread323_crit_edge
  %blob_len.0.ph.ph = phi i32 [ 0, %tpm_buf_append_u32.exit303.if.end78.thread323_crit_edge ], [ %204, %if.end54.if.end78.thread323_crit_edge ]
  %208 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %0, align 4
  %210 = ptrtoint ptr %209 to i32
  call void @free_pages(i32 noundef %210, i32 noundef 0) #7
  br label %if.else82

if.end78:                                         ; preds = %if.end66, %if.end60.if.end78_crit_edge
  %blob_len.0.ph = phi i32 [ %204, %if.end60.if.end78_crit_edge ], [ %call69, %if.end66 ]
  %rc.0.ph = phi i32 [ -14, %if.end60.if.end78_crit_edge ], [ 0, %if.end66 ]
  %211 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %0, align 4
  %213 = ptrtoint ptr %212 to i32
  call void @free_pages(i32 noundef %213, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blob_len.0.ph)
  %cmp79 = icmp slt i32 %blob_len.0.ph, 0
  br i1 %cmp79, label %if.end78.if.end84_crit_edge, label %if.end78.if.else82_crit_edge

if.end78.if.else82_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else82

if.end78.if.end84_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.else82:                                        ; preds = %if.end78.if.else82_crit_edge, %if.end78.thread323, %if.then72, %out.if.else82_crit_edge
  %rc.1321 = phi i32 [ %rc.0.ph, %if.end78.if.else82_crit_edge ], [ -7, %if.end78.thread323 ], [ %., %if.then72 ], [ %call51, %out.if.else82_crit_edge ]
  %blob_len.0316320 = phi i32 [ %blob_len.0.ph, %if.end78.if.else82_crit_edge ], [ %blob_len.0.ph.ph, %if.end78.thread323 ], [ 0, %if.then72 ], [ 0, %out.if.else82_crit_edge ]
  %blob_len83 = getelementptr inbounds %struct.trusted_key_payload, ptr %payload, i32 0, i32 2
  %214 = ptrtoint ptr %blob_len83 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %blob_len.0316320, ptr %blob_len83, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.else82, %if.end78.if.end84_crit_edge
  %rc.2 = phi i32 [ %rc.1321, %if.else82 ], [ %blob_len.0.ph, %if.end78.if.end84_crit_edge ]
  call void @tpm_put_ops(ptr noundef %chip) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.then14, %if.end8.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then14 ], [ %rc.2, %if.end84 ], [ -22, %if.end6.cleanup_crit_edge ], [ %call, %if.end8.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_try_get_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm_put_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tpm2_buf_append_auth(ptr noundef %buf, i32 noundef %session_handle, i8 noundef zeroext %attributes, ptr noundef readonly %hmac, i16 noundef zeroext %hmac_len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv1 = zext i16 %hmac_len to i32
  %add2 = add nuw nsw i32 %conv1, 9
  %data.i.i = getelementptr inbounds %struct.tpm_buf, ptr %buf, i32 0, i32 1
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %length.i.i.i, align 1
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.tpm_buf_append_u32.exit_crit_edge

entry.tpm_buf_append_u32.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_buf_append_u32.exit

if.end.i.i:                                       ; preds = %entry
  %add.i.i = add i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 4096
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end20.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.7) #7
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf, align 4
  %or.i.i = or i32 %7, 1
  store i32 %or.i.i, ptr %buf, align 4
  br label %tpm_buf_append_u32.exit

if.end20.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr i8, ptr %1, i32 %3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %add2, ptr %arrayidx.i.i, align 1
  %9 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %add.i.i, ptr %length.i.i.i, align 1
  br label %tpm_buf_append_u32.exit

tpm_buf_append_u32.exit:                          ; preds = %if.end20.i.i, %do.end.i.i, %entry.tpm_buf_append_u32.exit_crit_edge
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %length.i.i.i2 = getelementptr inbounds %struct.tpm_header, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %length.i.i.i2 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %length.i.i.i2, align 1
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buf, align 4
  %and.i.i3 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i3)
  %tobool.not.i.i4 = icmp eq i32 %and.i.i3, 0
  br i1 %tobool.not.i.i4, label %if.end.i.i7, label %tpm_buf_append_u32.exit.tpm_buf_append_u32.exit12_crit_edge

tpm_buf_append_u32.exit.tpm_buf_append_u32.exit12_crit_edge: ; preds = %tpm_buf_append_u32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_buf_append_u32.exit12

if.end.i.i7:                                      ; preds = %tpm_buf_append_u32.exit
  %add.i.i5 = add i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i5)
  %cmp.i.i6 = icmp ugt i32 %add.i.i5, 4096
  br i1 %cmp.i.i6, label %do.end.i.i9, label %if.end20.i.i11

do.end.i.i9:                                      ; preds = %if.end.i.i7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.7) #7
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf, align 4
  %or.i.i8 = or i32 %17, 1
  store i32 %or.i.i8, ptr %buf, align 4
  br label %tpm_buf_append_u32.exit12

if.end20.i.i11:                                   ; preds = %if.end.i.i7
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i10 = getelementptr i8, ptr %11, i32 %13
  %18 = ptrtoint ptr %arrayidx.i.i10 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %session_handle, ptr %arrayidx.i.i10, align 1
  %19 = ptrtoint ptr %length.i.i.i2 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %add.i.i5, ptr %length.i.i.i2, align 1
  br label %tpm_buf_append_u32.exit12

tpm_buf_append_u32.exit12:                        ; preds = %if.end20.i.i11, %do.end.i.i9, %tpm_buf_append_u32.exit.tpm_buf_append_u32.exit12_crit_edge
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i, align 4
  %length.i.i.i14 = getelementptr inbounds %struct.tpm_header, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %length.i.i.i14 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %length.i.i.i14, align 1
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf, align 4
  %and.i.i15 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i15)
  %tobool.not.i.i16 = icmp eq i32 %and.i.i15, 0
  br i1 %tobool.not.i.i16, label %if.end.i.i19, label %tpm_buf_append_u32.exit12.tpm_buf_append_u16.exit_crit_edge

tpm_buf_append_u32.exit12.tpm_buf_append_u16.exit_crit_edge: ; preds = %tpm_buf_append_u32.exit12
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_buf_append_u16.exit

if.end.i.i19:                                     ; preds = %tpm_buf_append_u32.exit12
  %add.i.i17 = add i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i17)
  %cmp.i.i18 = icmp ugt i32 %add.i.i17, 4096
  br i1 %cmp.i.i18, label %do.end.i.i21, label %if.end20.i.i23

do.end.i.i21:                                     ; preds = %if.end.i.i19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.7) #7
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buf, align 4
  %or.i.i20 = or i32 %27, 1
  store i32 %or.i.i20, ptr %buf, align 4
  br label %tpm_buf_append_u16.exit

if.end20.i.i23:                                   ; preds = %if.end.i.i19
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i22 = getelementptr i8, ptr %21, i32 %23
  %28 = ptrtoint ptr %arrayidx.i.i22 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 0, ptr %arrayidx.i.i22, align 1
  %29 = ptrtoint ptr %length.i.i.i14 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %add.i.i17, ptr %length.i.i.i14, align 1
  br label %tpm_buf_append_u16.exit

tpm_buf_append_u16.exit:                          ; preds = %if.end20.i.i23, %do.end.i.i21, %tpm_buf_append_u32.exit12.tpm_buf_append_u16.exit_crit_edge
  %30 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i, align 4
  %length.i.i.i25 = getelementptr inbounds %struct.tpm_header, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %length.i.i.i25 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %length.i.i.i25, align 1
  %34 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buf, align 4
  %and.i.i26 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i26)
  %tobool.not.i.i27 = icmp eq i32 %and.i.i26, 0
  br i1 %tobool.not.i.i27, label %if.end.i.i30, label %tpm_buf_append_u16.exit.tpm_buf_append_u8.exit_crit_edge

tpm_buf_append_u16.exit.tpm_buf_append_u8.exit_crit_edge: ; preds = %tpm_buf_append_u16.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_buf_append_u8.exit

if.end.i.i30:                                     ; preds = %tpm_buf_append_u16.exit
  %add.i.i28 = add i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i28)
  %cmp.i.i29 = icmp ugt i32 %add.i.i28, 4096
  br i1 %cmp.i.i29, label %do.end.i.i32, label %if.end20.i.i34

do.end.i.i32:                                     ; preds = %if.end.i.i30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.7) #7
  %36 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buf, align 4
  %or.i.i31 = or i32 %37, 1
  store i32 %or.i.i31, ptr %buf, align 4
  br label %tpm_buf_append_u8.exit

if.end20.i.i34:                                   ; preds = %if.end.i.i30
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i33 = getelementptr i8, ptr %31, i32 %33
  %38 = ptrtoint ptr %arrayidx.i.i33 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %attributes, ptr %arrayidx.i.i33, align 1
  %39 = ptrtoint ptr %length.i.i.i25 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %add.i.i28, ptr %length.i.i.i25, align 1
  br label %tpm_buf_append_u8.exit

tpm_buf_append_u8.exit:                           ; preds = %if.end20.i.i34, %do.end.i.i32, %tpm_buf_append_u16.exit.tpm_buf_append_u8.exit_crit_edge
  %40 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i.i, align 4
  %length.i.i.i36 = getelementptr inbounds %struct.tpm_header, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %length.i.i.i36 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %length.i.i.i36, align 1
  %44 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buf, align 4
  %and.i.i37 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i37)
  %tobool.not.i.i38 = icmp eq i32 %and.i.i37, 0
  br i1 %tobool.not.i.i38, label %if.end.i.i41, label %tpm_buf_append_u8.exit.tpm_buf_append_u16.exit46_crit_edge

tpm_buf_append_u8.exit.tpm_buf_append_u16.exit46_crit_edge: ; preds = %tpm_buf_append_u8.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_buf_append_u16.exit46

if.end.i.i41:                                     ; preds = %tpm_buf_append_u8.exit
  %add.i.i39 = add i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i39)
  %cmp.i.i40 = icmp ugt i32 %add.i.i39, 4096
  br i1 %cmp.i.i40, label %do.end.i.i43, label %if.end20.i.i45

do.end.i.i43:                                     ; preds = %if.end.i.i41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.7) #7
  %46 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %buf, align 4
  %or.i.i42 = or i32 %47, 1
  store i32 %or.i.i42, ptr %buf, align 4
  br label %tpm_buf_append_u16.exit46

if.end20.i.i45:                                   ; preds = %if.end.i.i41
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i44 = getelementptr i8, ptr %41, i32 %43
  %48 = ptrtoint ptr %arrayidx.i.i44 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %hmac_len, ptr %arrayidx.i.i44, align 1
  %49 = ptrtoint ptr %length.i.i.i36 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %add.i.i39, ptr %length.i.i.i36, align 1
  br label %tpm_buf_append_u16.exit46

tpm_buf_append_u16.exit46:                        ; preds = %if.end20.i.i45, %do.end.i.i43, %tpm_buf_append_u8.exit.tpm_buf_append_u16.exit46_crit_edge
  %tobool6.not = icmp eq ptr %hmac, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %hmac_len)
  %tobool9.not = icmp eq i16 %hmac_len, 0
  %or.cond = or i1 %tobool6.not, %tobool9.not
  br i1 %or.cond, label %tpm_buf_append_u16.exit46.if.end12_crit_edge, label %if.then10

tpm_buf_append_u16.exit46.if.end12_crit_edge:     ; preds = %tpm_buf_append_u16.exit46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %tpm_buf_append_u16.exit46
  %50 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.tpm_header, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %length.i.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %length.i.i, align 1
  %54 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %buf, align 4
  %and.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then10.if.end12_crit_edge

if.then10.if.end12_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end.i:                                         ; preds = %if.then10
  %add.i = add i32 %53, %conv1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 4096
  br i1 %cmp.i, label %do.end.i, label %if.end20.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.7) #7
  %56 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %buf, align 4
  %or.i = or i32 %57, 1
  store i32 %or.i, ptr %buf, align 4
  br label %if.end12

if.end20.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr i8, ptr %51, i32 %53
  %58 = call ptr @memcpy(ptr %arrayidx.i, ptr %hmac, i32 %conv1)
  %59 = ptrtoint ptr %length.i.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %add.i, ptr %length.i.i, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.end20.i, %do.end.i, %if.then10.if.end12_crit_edge, %tpm_buf_append_u16.exit46.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_transmit_cmd(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tpm2_key_encode(ptr noundef %payload, ptr nocapture noundef readonly %options, ptr noundef %src) unnamed_addr #2 align 64 {
entry:
  %bool = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4096) #10
  %add.ptr = getelementptr i8, ptr %call7.i, i32 4096
  %1 = ptrtoint ptr %src to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %src, align 1
  %add = add i16 %2, 2
  %conv3 = zext i16 %add to i32
  %add.ptr4 = getelementptr i8, ptr %src, i32 %conv3
  %3 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %add.ptr4, align 1
  %add7 = add i16 %4, 2
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup140_crit_edge, label %if.end

entry.cleanup140_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup140

if.end:                                           ; preds = %entry
  %call9 = tail call ptr @asn1_encode_oid(ptr noundef nonnull %call7.i, ptr noundef %add.ptr, ptr noundef nonnull @tpm2key_oid, i32 noundef 6) #7
  %blobauth_len = getelementptr inbounds %struct.trusted_key_options, ptr %options, i32 0, i32 3
  %5 = ptrtoint ptr %blobauth_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %blobauth_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then11, label %if.end.if.end44_crit_edge

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then11:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %bool) #7
  %7 = ptrtoint ptr %bool to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %bool, align 1, !annotation !36
  %8 = getelementptr inbounds [3 x i8], ptr %bool, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !36
  %10 = getelementptr inbounds [3 x i8], ptr %bool, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %10, align 1, !annotation !36
  %add.ptr12 = getelementptr inbounds i8, ptr %bool, i32 3
  %call13 = call ptr @asn1_encode_boolean(ptr noundef nonnull %bool, ptr noundef %add.ptr12, i1 noundef zeroext true) #7
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %cleanup, !prof !37

cleanup.thread:                                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 60, i32 noundef 9, ptr noundef nonnull @.str.8) #7
  %12 = ptrtoint ptr %call13 to i32
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %bool) #7
  br label %cleanup140

cleanup:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %sub.ptr.lhs.cast = ptrtoint ptr %call13 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %bool to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call42 = call ptr @asn1_encode_tag(ptr noundef %call9, ptr noundef %add.ptr, i32 noundef 0, ptr noundef nonnull %bool, i32 noundef %sub.ptr.sub) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %bool) #7
  br label %if.end44

if.end44:                                         ; preds = %cleanup, %if.end.if.end44_crit_edge
  %work.1 = phi ptr [ %call42, %cleanup ], [ %call9, %if.end.if.end44_crit_edge ]
  %sub.ptr.lhs.cast46 = ptrtoint ptr %work.1 to i32
  %sub.ptr.rhs.cast47 = ptrtoint ptr %call7.i to i32
  %conv49 = zext i16 %add7 to i32
  %sub.ptr.sub48 = sub i32 14, %sub.ptr.rhs.cast47
  %add50 = add i32 %sub.ptr.sub48, %conv3
  %add52 = add i32 %add50, %conv49
  %add53 = add i32 %add52, %sub.ptr.lhs.cast46
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add53)
  %cmp54 = icmp sgt i32 %add53, 4096
  br i1 %cmp54, label %do.end71, label %if.end87, !prof !37

do.end71:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 72, i32 noundef 9, ptr noundef nonnull @.str.9) #7
  br label %cleanup140

if.end87:                                         ; preds = %if.end44
  %keyhandle = getelementptr inbounds %struct.trusted_key_options, ptr %options, i32 0, i32 1
  %13 = ptrtoint ptr %keyhandle to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %keyhandle, align 4
  %conv88 = zext i32 %14 to i64
  %call89 = call ptr @asn1_encode_integer(ptr noundef %work.1, ptr noundef %add.ptr, i64 noundef %conv88) #7
  %call91 = call ptr @asn1_encode_octet_string(ptr noundef %call89, ptr noundef %add.ptr, ptr noundef %add.ptr4, i32 noundef %conv49) #7
  %call93 = call ptr @asn1_encode_octet_string(ptr noundef %call91, ptr noundef %add.ptr, ptr noundef %src, i32 noundef %conv3) #7
  %blob = getelementptr inbounds %struct.trusted_key_payload, ptr %payload, i32 0, i32 6
  %add.ptr95 = getelementptr %struct.trusted_key_payload, ptr %payload, i32 0, i32 6, i32 512
  %sub.ptr.lhs.cast96 = ptrtoint ptr %call93 to i32
  %sub.ptr.sub98 = sub i32 %sub.ptr.lhs.cast96, %sub.ptr.rhs.cast47
  %call99 = call ptr @asn1_encode_sequence(ptr noundef %blob, ptr noundef %add.ptr95, ptr noundef nonnull %call7.i, i32 noundef %sub.ptr.sub98) #7
  %cmp.i1 = icmp ugt ptr %call99, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1, label %do.end117, label %if.end134, !prof !37

do.end117:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 82, i32 noundef 9, ptr noundef nonnull @.str.10) #7
  %15 = ptrtoint ptr %call99 to i32
  br label %cleanup140

if.end134:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  %sub.ptr.lhs.cast137 = ptrtoint ptr %call99 to i32
  %sub.ptr.rhs.cast138 = ptrtoint ptr %blob to i32
  %sub.ptr.sub139 = sub i32 %sub.ptr.lhs.cast137, %sub.ptr.rhs.cast138
  br label %cleanup140

cleanup140:                                       ; preds = %if.end134, %do.end117, %do.end71, %cleanup.thread, %entry.cleanup140_crit_edge
  %retval.1 = phi i32 [ -22, %do.end71 ], [ %15, %do.end117 ], [ %sub.ptr.sub139, %if.end134 ], [ -12, %entry.cleanup140_crit_edge ], [ %12, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm2_unseal_trusted(ptr noundef %chip, ptr noundef %payload, ptr noundef %options) local_unnamed_addr #2 align 64 {
entry:
  %buf.i16 = alloca %struct.tpm_buf, align 4
  %ctx.i.i = alloca %struct.tpm2_key_context, align 4
  %buf.i = alloca %struct.tpm_buf, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tpm_try_get_ops(ptr noundef %chip) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i) #7
  %0 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf.i, align 4, !annotation !36
  %1 = getelementptr inbounds %struct.tpm_buf, ptr %buf.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ctx.i.i) #7
  %3 = getelementptr inbounds %struct.tpm2_key_context, ptr %ctx.i.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.tpm2_key_context, ptr %ctx.i.i, i32 0, i32 2
  %5 = getelementptr inbounds %struct.tpm2_key_context, ptr %ctx.i.i, i32 0, i32 3
  %6 = getelementptr inbounds %struct.tpm2_key_context, ptr %ctx.i.i, i32 0, i32 4
  %7 = call ptr @memset(ptr %ctx.i.i, i32 0, i32 20)
  %blob1.i.i = getelementptr inbounds %struct.trusted_key_payload, ptr %payload, i32 0, i32 6
  %blob_len.i.i = getelementptr inbounds %struct.trusted_key_payload, ptr %payload, i32 0, i32 2
  %8 = ptrtoint ptr %blob_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %blob_len.i.i, align 4
  %call.i.i = call i32 @asn1_ber_decoder(ptr noundef nonnull @tpm2key_decoder, ptr noundef nonnull %ctx.i.i, ptr noundef %blob1.i.i, i32 noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.if.then.i_crit_edge, label %if.end.i.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end.i.i:                                       ; preds = %if.end
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %6, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %4, align 4
  %add.i.i = add i32 %13, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add.i.i)
  %cmp2.i.i = icmp ugt i32 %add.i.i, 512
  br i1 %cmp2.i.i, label %if.end.i.i.if.then.i_crit_edge, label %if.end8.i.i.i

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end8.i.i.i:                                    ; preds = %if.end.i.i
  %add8.i.i = add nuw nsw i32 %add.i.i, 4
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add8.i.i, i32 noundef 3264) #11
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end8.i.i.i.if.then.i_crit_edge, label %tpm2_key_decode.exit.i

if.end8.i.i.i.if.then.i_crit_edge:                ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

tpm2_key_decode.exit.i:                           ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctx.i.i, align 4
  %keyhandle.i.i = getelementptr inbounds %struct.trusted_key_options, ptr %options, i32 0, i32 1
  %16 = ptrtoint ptr %keyhandle.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %keyhandle.i.i, align 4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %6, align 4
  %21 = call ptr @memcpy(ptr %call9.i.i.i, ptr %18, i32 %20)
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i.i, i32 %20
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %4, align 4
  %26 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %23, i32 %25)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ctx.i.i) #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end8.i.i.i.if.then.i_crit_edge, %if.end.i.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ctx.i.i) #7
  %old_format.i = getelementptr inbounds %struct.trusted_key_payload, ptr %payload, i32 0, i32 4
  %27 = ptrtoint ptr %old_format.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %old_format.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %tpm2_key_decode.exit.i
  %blob.1.i = phi ptr [ %call9.i.i.i, %tpm2_key_decode.exit.i ], [ %blob1.i.i, %if.then.i ]
  %keyhandle.i = getelementptr inbounds %struct.trusted_key_options, ptr %options, i32 0, i32 1
  %28 = ptrtoint ptr %keyhandle.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %keyhandle.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool2.not.i = icmp eq i32 %29, 0
  br i1 %tobool2.not.i, label %if.end.i.tpm2_load_cmd.exit.thread_crit_edge, label %if.end4.i

if.end.i.tpm2_load_cmd.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm2_load_cmd.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %30 = ptrtoint ptr %blob_len.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %blob_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %cmp.i = icmp ult i32 %31, 4
  br i1 %cmp.i, label %if.end4.i.tpm2_load_cmd.exit.thread_crit_edge, label %if.end7.i

if.end4.i.tpm2_load_cmd.exit.thread_crit_edge:    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm2_load_cmd.exit.thread

if.end7.i:                                        ; preds = %if.end4.i
  %32 = ptrtoint ptr %blob.1.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %blob.1.i, align 1
  %conv.i = zext i16 %33 to i32
  %add9.i = add nuw nsw i32 %conv.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add9.i, i32 %31)
  %cmp11.i = icmp ugt i32 %add9.i, %31
  br i1 %cmp11.i, label %if.end7.i.tpm2_load_cmd.exit.thread_crit_edge, label %if.end14.i

if.end7.i.tpm2_load_cmd.exit.thread_crit_edge:    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm2_load_cmd.exit.thread

if.end14.i:                                       ; preds = %if.end7.i
  %add.ptr.i = getelementptr i8, ptr %blob.1.i, i32 2
  %add.ptr15.i = getelementptr i8, ptr %add.ptr.i, i32 %conv.i
  %34 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %add.ptr15.i, align 1
  %conv17.i = zext i16 %35 to i32
  %add20.i = add nuw nsw i32 %add9.i, %conv17.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add20.i, i32 %31)
  %cmp22.i = icmp ugt i32 %add20.i, %31
  br i1 %cmp22.i, label %if.end14.i.tpm2_load_cmd.exit.thread_crit_edge, label %if.end25.i

if.end14.i.tpm2_load_cmd.exit.thread_crit_edge:   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm2_load_cmd.exit.thread

if.end25.i:                                       ; preds = %if.end14.i
  %add.ptr28.i = getelementptr i8, ptr %add.ptr15.i, i32 2
  %add.ptr29.i = getelementptr i8, ptr %add.ptr28.i, i32 4
  %36 = ptrtoint ptr %add.ptr29.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %add.ptr29.i, align 1
  %and.i = and i32 %37, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %and.i)
  %cmp31.i = icmp ne i32 %and.i, 18
  %spec.select.i = zext i1 %cmp31.i to i8
  %38 = getelementptr inbounds %struct.trusted_key_payload, ptr %payload, i32 0, i32 3
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %spec.select.i, ptr %38, align 4
  %call.i98.i = call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #7
  %40 = inttoptr i32 %call.i98.i to ptr
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98.i)
  %tobool.not.i99.i = icmp eq i32 %call.i98.i, 0
  br i1 %tobool.not.i99.i, label %if.end25.i.tpm2_load_cmd.exit.thread_crit_edge, label %if.end46.i

if.end25.i.tpm2_load_cmd.exit.thread_crit_edge:   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm2_load_cmd.exit.thread

if.end46.i:                                       ; preds = %if.end25.i
  %42 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %buf.i, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 -32766, ptr %40, align 1
  %length.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %40, i32 0, i32 1
  %44 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 10, ptr %length.i.i.i, align 1
  %45 = getelementptr inbounds %struct.tpm_header, ptr %40, i32 0, i32 2
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 343, ptr %45, align 1
  %47 = ptrtoint ptr %keyhandle.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %keyhandle.i, align 4
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %length.i.i.i37 = getelementptr inbounds %struct.tpm_header, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %length.i.i.i37 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %length.i.i.i37, align 1
  %53 = load i32, ptr %buf.i, align 4
  %and.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i38 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i38, label %if.end.i.i41, label %if.end46.i.tpm_buf_append_u32.exit_crit_edge

if.end46.i.tpm_buf_append_u32.exit_crit_edge:     ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_buf_append_u32.exit

if.end.i.i41:                                     ; preds = %if.end46.i
  %add.i.i39 = add i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i39)
  %cmp.i.i40 = icmp ugt i32 %add.i.i39, 4096
  br i1 %cmp.i.i40, label %do.end.i.i, label %if.end20.i.i

do.end.i.i:                                       ; preds = %if.end.i.i41
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.7) #7
  %54 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %buf.i, align 4
  %or.i.i = or i32 %55, 1
  store i32 %or.i.i, ptr %buf.i, align 4
  br label %tpm_buf_append_u32.exit

if.end20.i.i:                                     ; preds = %if.end.i.i41
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr i8, ptr %50, i32 %52
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %48, ptr %arrayidx.i.i, align 1
  %57 = ptrtoint ptr %length.i.i.i37 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %add.i.i39, ptr %length.i.i.i37, align 1
  br label %tpm_buf_append_u32.exit

tpm_buf_append_u32.exit:                          ; preds = %if.end20.i.i, %do.end.i.i, %if.end46.i.tpm_buf_append_u32.exit_crit_edge
  %keyauth.i = getelementptr inbounds %struct.trusted_key_options, ptr %options, i32 0, i32 2
  call fastcc void @tpm2_buf_append_auth(ptr noundef nonnull %buf.i, i32 noundef 1073741833, i8 noundef zeroext 0, ptr noundef %keyauth.i, i16 noundef zeroext 20) #7
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %length.i.i31 = getelementptr inbounds %struct.tpm_header, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %length.i.i31 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %length.i.i31, align 1
  %62 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %buf.i, align 4
  %and.i32 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32)
  %tobool.not.i = icmp eq i32 %and.i32, 0
  br i1 %tobool.not.i, label %if.end.i35, label %tpm_buf_append_u32.exit.tpm_buf_append.exit_crit_edge

tpm_buf_append_u32.exit.tpm_buf_append.exit_crit_edge: ; preds = %tpm_buf_append_u32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_buf_append.exit

if.end.i35:                                       ; preds = %tpm_buf_append_u32.exit
  %add.i33 = add i32 %61, %add20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i33)
  %cmp.i34 = icmp ugt i32 %add.i33, 4096
  br i1 %cmp.i34, label %do.end.i, label %if.end20.i

do.end.i:                                         ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.7) #7
  %64 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %buf.i, align 4
  %or.i = or i32 %65, 1
  store i32 %or.i, ptr %buf.i, align 4
  br label %tpm_buf_append.exit

if.end20.i:                                       ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i36 = getelementptr i8, ptr %59, i32 %61
  %66 = call ptr @memcpy(ptr %arrayidx.i36, ptr %blob.1.i, i32 %add20.i)
  %67 = ptrtoint ptr %length.i.i31 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %add.i33, ptr %length.i.i31, align 1
  br label %tpm_buf_append.exit

tpm_buf_append.exit:                              ; preds = %if.end20.i, %do.end.i, %tpm_buf_append_u32.exit.tpm_buf_append.exit_crit_edge
  %68 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %buf.i, align 4
  %and49.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.end52.i, label %tpm_buf_append.exit.out.i_crit_edge

tpm_buf_append.exit.out.i_crit_edge:              ; preds = %tpm_buf_append.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end52.i:                                       ; preds = %tpm_buf_append.exit
  %call53.i = call i32 @tpm_transmit_cmd(ptr noundef %chip, ptr noundef nonnull %buf.i, i32 noundef 4, ptr noundef nonnull @.str.11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %if.then55.i, label %if.end52.i.out.i_crit_edge

if.end52.i.out.i_crit_edge:                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.then55.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  %arrayidx.i = getelementptr i8, ptr %71, i32 10
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i, align 4
  br label %out.i

out.i:                                            ; preds = %if.then55.i, %if.end52.i.out.i_crit_edge, %tpm_buf_append.exit.out.i_crit_edge
  %blob_handle.0 = phi i32 [ %73, %if.then55.i ], [ -1, %if.end52.i.out.i_crit_edge ], [ -1, %tpm_buf_append.exit.out.i_crit_edge ]
  %rc.0.i = phi i32 [ 0, %if.then55.i ], [ %call53.i, %if.end52.i.out.i_crit_edge ], [ -7, %tpm_buf_append.exit.out.i_crit_edge ]
  %cmp60.not.i = icmp eq ptr %blob.1.i, %blob1.i.i
  br i1 %cmp60.not.i, label %out.i.if.end63.i_crit_edge, label %if.then62.i

out.i.if.end63.i_crit_edge:                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.i

if.then62.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef %blob.1.i) #7
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then62.i, %out.i.if.end63.i_crit_edge
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @free_pages(i32 noundef %76, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %cmp64.i = icmp sgt i32 %rc.0.i, 0
  br i1 %cmp64.i, label %if.end63.i.tpm2_load_cmd.exit.thread_crit_edge, label %tpm2_load_cmd.exit

if.end63.i.tpm2_load_cmd.exit.thread_crit_edge:   ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm2_load_cmd.exit.thread

tpm2_load_cmd.exit.thread:                        ; preds = %if.end63.i.tpm2_load_cmd.exit.thread_crit_edge, %if.end25.i.tpm2_load_cmd.exit.thread_crit_edge, %if.end14.i.tpm2_load_cmd.exit.thread_crit_edge, %if.end7.i.tpm2_load_cmd.exit.thread_crit_edge, %if.end4.i.tpm2_load_cmd.exit.thread_crit_edge, %if.end.i.tpm2_load_cmd.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end25.i.tpm2_load_cmd.exit.thread_crit_edge ], [ -7, %if.end14.i.tpm2_load_cmd.exit.thread_crit_edge ], [ -7, %if.end7.i.tpm2_load_cmd.exit.thread_crit_edge ], [ -22, %if.end4.i.tpm2_load_cmd.exit.thread_crit_edge ], [ -22, %if.end.i.tpm2_load_cmd.exit.thread_crit_edge ], [ -1, %if.end63.i.tpm2_load_cmd.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i) #7
  br label %out

tpm2_load_cmd.exit:                               ; preds = %if.end63.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %tobool2.not = icmp eq i32 %rc.0.i, 0
  br i1 %tobool2.not, label %if.end4, label %tpm2_load_cmd.exit.out_crit_edge

tpm2_load_cmd.exit.out_crit_edge:                 ; preds = %tpm2_load_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end4:                                          ; preds = %tpm2_load_cmd.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i16) #7
  %77 = getelementptr inbounds %struct.tpm_buf, ptr %buf.i16, i32 0, i32 1
  %call.i.i17 = call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #7
  %78 = inttoptr i32 %call.i.i17 to ptr
  %79 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i17)
  %tobool.not.i.i18 = icmp eq i32 %call.i.i17, 0
  br i1 %tobool.not.i.i18, label %if.end4.tpm2_unseal_cmd.exit_crit_edge, label %if.end.i20

if.end4.tpm2_unseal_cmd.exit_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm2_unseal_cmd.exit

if.end.i20:                                       ; preds = %if.end4
  %80 = ptrtoint ptr %buf.i16 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %buf.i16, align 4
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_storeN_noabort(i32 %81, i32 2)
  store i16 -32766, ptr %78, align 1
  %length.i.i.i19 = getelementptr inbounds %struct.tpm_header, ptr %78, i32 0, i32 1
  %82 = ptrtoint ptr %length.i.i.i19 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 10, ptr %length.i.i.i19, align 1
  %83 = getelementptr inbounds %struct.tpm_header, ptr %78, i32 0, i32 2
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 350, ptr %83, align 1
  %85 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %77, align 4
  %length.i.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %length.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %length.i.i.i.i, align 1
  %89 = load i32, ptr %buf.i16, align 4
  %and.i.i.i = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i21, label %if.end.i20.tpm_buf_append_u32.exit.i_crit_edge

if.end.i20.tpm_buf_append_u32.exit.i_crit_edge:   ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_buf_append_u32.exit.i

if.end.i.i.i21:                                   ; preds = %if.end.i20
  %add.i.i.i = add i32 %88, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %add.i.i.i, 4096
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end20.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i21
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.7) #7
  %90 = ptrtoint ptr %buf.i16 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %buf.i16, align 4
  %or.i.i.i = or i32 %91, 1
  store i32 %or.i.i.i, ptr %buf.i16, align 4
  br label %tpm_buf_append_u32.exit.i

if.end20.i.i.i:                                   ; preds = %if.end.i.i.i21
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i.i = getelementptr i8, ptr %86, i32 %88
  %92 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %blob_handle.0, ptr %arrayidx.i.i.i, align 1
  %93 = ptrtoint ptr %length.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 %add.i.i.i, ptr %length.i.i.i.i, align 1
  br label %tpm_buf_append_u32.exit.i

tpm_buf_append_u32.exit.i:                        ; preds = %if.end20.i.i.i, %do.end.i.i.i, %if.end.i20.tpm_buf_append_u32.exit.i_crit_edge
  %policyhandle.i = getelementptr inbounds %struct.trusted_key_options, ptr %options, i32 0, i32 11
  %94 = ptrtoint ptr %policyhandle.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %policyhandle.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool1.not.i = icmp eq i32 %95, 0
  %spec.select.i22 = select i1 %tobool1.not.i, i32 1073741833, i32 %95
  %blobauth.i = getelementptr inbounds %struct.trusted_key_options, ptr %options, i32 0, i32 4
  %blobauth_len.i = getelementptr inbounds %struct.trusted_key_options, ptr %options, i32 0, i32 3
  %96 = ptrtoint ptr %blobauth_len.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %blobauth_len.i, align 4
  %conv.i23 = trunc i32 %97 to i16
  call fastcc void @tpm2_buf_append_auth(ptr noundef nonnull %buf.i16, i32 noundef %spec.select.i22, i8 noundef zeroext 1, ptr noundef %blobauth.i, i16 noundef zeroext %conv.i23) #7
  %call3.i = call i32 @tpm_transmit_cmd(ptr noundef %chip, ptr noundef nonnull %buf.i16, i32 noundef 6, ptr noundef nonnull @.str.12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i24 = icmp sgt i32 %call3.i, 0
  %spec.store.select.i25 = select i1 %cmp.i24, i32 -1, i32 %call3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i25)
  %tobool7.not.i = icmp eq i32 %spec.store.select.i25, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %tpm_buf_append_u32.exit.i.out.i29_crit_edge

tpm_buf_append_u32.exit.i.out.i29_crit_edge:      ; preds = %tpm_buf_append_u32.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i29

if.then8.i:                                       ; preds = %tpm_buf_append_u32.exit.i
  %98 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %77, align 4
  %arrayidx.i26 = getelementptr i8, ptr %99, i32 14
  %100 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx.i26, align 2
  %conv11.i = zext i16 %101 to i32
  %102 = add i16 %101, -129
  call void @__sanitizer_cov_trace_const_cmp2(i16 -97, i16 %102)
  %103 = icmp ult i16 %102, -97
  br i1 %103, label %if.then8.i.out.i29_crit_edge, label %if.end18.i

if.then8.i.out.i29_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i29

if.end18.i:                                       ; preds = %if.then8.i
  %length.i.i = getelementptr inbounds %struct.tpm_header, ptr %99, i32 0, i32 1
  %104 = ptrtoint ptr %length.i.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %length.i.i, align 1
  %add.i = add nuw nsw i32 %conv11.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %add.i)
  %cmp21.i = icmp ult i32 %105, %add.i
  br i1 %cmp21.i, label %if.end18.i.out.i29_crit_edge, label %if.end24.i

if.end18.i.out.i29_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i29

if.end24.i:                                       ; preds = %if.end18.i
  %arrayidx26.i = getelementptr i8, ptr %99, i32 16
  %old_format.i27 = getelementptr inbounds %struct.trusted_key_payload, ptr %payload, i32 0, i32 4
  %106 = ptrtoint ptr %old_format.i27 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %old_format.i27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool27.not.i = icmp eq i8 %107, 0
  %key36.i = getelementptr inbounds %struct.trusted_key_payload, ptr %payload, i32 0, i32 5
  br i1 %tobool27.not.i, label %if.else.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add nsw i32 %conv11.i, -1
  %108 = call ptr @memcpy(ptr %key36.i, ptr %arrayidx26.i, i32 %sub.i)
  %key_len.i = getelementptr inbounds %struct.trusted_key_payload, ptr %payload, i32 0, i32 1
  %109 = ptrtoint ptr %key_len.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %sub.i, ptr %key_len.i, align 4
  %arrayidx35.i = getelementptr i8, ptr %arrayidx26.i, i32 %sub.i
  %110 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx35.i, align 1
  %112 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %38, align 4
  br label %out.i29

if.else.i:                                        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %113 = call ptr @memcpy(ptr %key36.i, ptr %arrayidx26.i, i32 %conv11.i)
  %key_len40.i = getelementptr inbounds %struct.trusted_key_payload, ptr %payload, i32 0, i32 1
  %114 = ptrtoint ptr %key_len40.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %conv11.i, ptr %key_len40.i, align 4
  br label %out.i29

out.i29:                                          ; preds = %if.else.i, %if.then28.i, %if.end18.i.out.i29_crit_edge, %if.then8.i.out.i29_crit_edge, %tpm_buf_append_u32.exit.i.out.i29_crit_edge
  %rc.0.i28 = phi i32 [ %spec.store.select.i25, %tpm_buf_append_u32.exit.i.out.i29_crit_edge ], [ 0, %if.then28.i ], [ 0, %if.else.i ], [ -14, %if.then8.i.out.i29_crit_edge ], [ -14, %if.end18.i.out.i29_crit_edge ]
  %115 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %77, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @free_pages(i32 noundef %117, i32 noundef 0) #7
  br label %tpm2_unseal_cmd.exit

tpm2_unseal_cmd.exit:                             ; preds = %out.i29, %if.end4.tpm2_unseal_cmd.exit_crit_edge
  %retval.0.i30 = phi i32 [ %rc.0.i28, %out.i29 ], [ -12, %if.end4.tpm2_unseal_cmd.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i16) #7
  call void @tpm2_flush_context(ptr noundef %chip, i32 noundef %blob_handle.0) #7
  br label %out

out:                                              ; preds = %tpm2_unseal_cmd.exit, %tpm2_load_cmd.exit.out_crit_edge, %tpm2_load_cmd.exit.thread
  %rc.0 = phi i32 [ %rc.0.i, %tpm2_load_cmd.exit.out_crit_edge ], [ %retval.0.i30, %tpm2_unseal_cmd.exit ], [ %retval.0.i.ph, %tpm2_load_cmd.exit.thread ]
  call void @tpm_put_ops(ptr noundef %chip) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm2_flush_context(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @asn1_encode_oid(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @asn1_encode_boolean(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @asn1_encode_tag(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @asn1_encode_integer(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @asn1_encode_octet_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @asn1_encode_sequence(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asn1_ber_decoder(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !11, !13, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/keys/trusted-keys/trusted_tpm2.c", i32 156, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @tpm2_key_type.__UNIQUE_ID_ddebug240, !1, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../security/keys/trusted-keys/trusted_tpm2.c", i32 311, i32 39}
!9 = !{ptr @tpm2_hash_map, !10, !"tpm2_hash_map", i1 false, i1 false}
!10 = !{!"../security/keys/trusted-keys/trusted_tpm2.c", i32 21, i32 25}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/tpm.h", i32 376, i32 3}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/keys/trusted-keys/trusted_tpm2.c", i32 60, i32 7}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../security/keys/trusted-keys/trusted_tpm2.c", i32 71, i32 6}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../security/keys/trusted-keys/trusted_tpm2.c", i32 82, i32 6}
!20 = !{ptr @tpm2key_oid, !21, !"tpm2key_oid", i1 false, i1 false}
!21 = !{!"../security/keys/trusted-keys/trusted_tpm2.c", i32 29, i32 12}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../security/keys/trusted-keys/trusted_tpm2.c", i32 430, i32 39}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../security/keys/trusted-keys/trusted_tpm2.c", i32 481, i32 39}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2148163181, i64 2148163186, i64 2148163199, i64 2148163243, i64 2148163277, i64 2148163298}
!36 = !{!"auto-init"}
!37 = !{!"branch_weights", i32 1, i32 2000}
