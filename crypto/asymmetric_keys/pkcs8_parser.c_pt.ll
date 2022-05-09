; ModuleID = '/llk/IR_all_yes/crypto/asymmetric_keys/pkcs8_parser.c_pt.bc'
source_filename = "../crypto/asymmetric_keys/pkcs8_parser.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.asymmetric_key_parser = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.asymmetric_key_subtype = type { ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr }
%struct.asn1_decoder = type opaque
%struct.pkcs8_parse_context = type { ptr, i32, i32, i32, i32, ptr }
%struct.public_key = type { ptr, i32, i32, ptr, i32, i8, ptr, ptr }
%struct.key_preparsed_payload = type { ptr, ptr, %union.key_payload, ptr, i32, i32, i64 }
%union.key_payload = type { [4 x ptr] }

@pkcs8_note_OID._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016PKCS8: Unknown OID: [%lu] %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pkcs8_note_OID\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"crypto/asymmetric_keys/pkcs8_parser.c\00", [58 x i8] zeroinitializer }, align 32
@pkcs8_note_OID._entry_ptr = internal global ptr @pkcs8_note_OID._entry, section ".printk_index", align 4
@pkcs8_note_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014PKCS8: Unsupported PKCS#8 version\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pkcs8_note_version\00", [45 x i8] zeroinitializer }, align 32
@pkcs8_note_version._entry_ptr = internal global ptr @pkcs8_note_version._entry, section ".printk_index", align 4
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rsa\00", [28 x i8] zeroinitializer }, align 32
@pkcs8_key_parser = internal global { %struct.asymmetric_key_parser, [44 x i8] } { %struct.asymmetric_key_parser { %struct.list_head zeroinitializer, ptr null, ptr @.str.6, ptr @pkcs8_key_preparse }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_pkcs8_key_parser__213_176_pkcs8_key_init6 = internal global ptr @pkcs8_key_init, section ".initcall6.init", align 4
@__exitcall_pkcs8_key_exit = internal global ptr @pkcs8_key_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description214 = internal constant [55 x i8] c"pkcs8_key_parser.description=PKCS#8 certificate parser\00", section ".modinfo", align 1
@__UNIQUE_ID_file215 = internal constant [62 x i8] c"pkcs8_key_parser.file=crypto/asymmetric_keys/pkcs8_key_parser\00", section ".modinfo", align 1
@__UNIQUE_ID_license216 = internal constant [29 x i8] c"pkcs8_key_parser.license=GPL\00", section ".modinfo", align 1
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pkcs8\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PKCS8\00", [26 x i8] zeroinitializer }, align 32
@public_key_subtype = external dso_local global %struct.asymmetric_key_subtype, align 4
@pkcs8_decoder = external dso_local constant %struct.asn1_decoder, align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 44, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 58, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 76, i32 24 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"pkcs8_key_parser\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 157, i32 37 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 159, i32 10 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [41 x i8] c"../crypto/asymmetric_keys/pkcs8_parser.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 145, i32 17 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_description214, ptr @__UNIQUE_ID_file215, ptr @__UNIQUE_ID_license216, ptr @__exitcall_pkcs8_key_exit, ptr @__initcall__kmod_pkcs8_key_parser__213_176_pkcs8_key_init6, ptr @pkcs8_key_exit, ptr @pkcs8_note_OID._entry, ptr @pkcs8_note_OID._entry_ptr, ptr @pkcs8_note_version._entry, ptr @pkcs8_note_version._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pkcs8_key_parser, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs8_note_OID._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs8_note_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs8_key_parser to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pkcs8_note_OID(ptr nocapture noundef %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  %buffer = alloca [50 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @look_up_OID(ptr noundef %value, i32 noundef %vlen) #8
  %last_oid = getelementptr inbounds %struct.pkcs8_parse_context, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %last_oid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %last_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %call)
  %cmp = icmp eq i32 %call, 98
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buffer) #8
  %1 = call ptr @memset(ptr %buffer, i32 255, i32 50)
  %call2 = call i32 @sprint_oid(ptr noundef %value, i32 noundef %vlen, ptr noundef nonnull %buffer, i32 noundef 50) #8
  %2 = ptrtoint ptr %value to i32
  %data = getelementptr inbounds %struct.pkcs8_parse_context, ptr %context, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 4
  %sub = sub i32 %2, %4
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %sub, ptr noundef nonnull %buffer) #11
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buffer) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @look_up_OID(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprint_oid(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pkcs8_note_version(ptr nocapture noundef readnone %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr nocapture noundef readonly %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %vlen)
  %cmp.not = icmp eq i32 %vlen, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %value, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp1.not = icmp eq i8 %1, 0
  br i1 %cmp1.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %return

return:                                           ; preds = %do.end, %lor.lhs.false.return_crit_edge
  %retval.0 = phi i32 [ -74, %do.end ], [ 0, %lor.lhs.false.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pkcs8_note_algo(ptr nocapture noundef readonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr nocapture noundef readnone %value, i32 noundef %vlen) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %last_oid = getelementptr inbounds %struct.pkcs8_parse_context, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %last_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp.not = icmp eq i32 %1, 10
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %pkey_algo = getelementptr inbounds %struct.public_key, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %pkey_algo to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.5, ptr %pkey_algo, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -65, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @pkcs8_note_key(ptr nocapture noundef writeonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %key = getelementptr inbounds %struct.pkcs8_parse_context, ptr %context, i32 0, i32 5
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %value, ptr %key, align 4
  %key_size = getelementptr inbounds %struct.pkcs8_parse_context, ptr %context, i32 0, i32 4
  %1 = ptrtoint ptr %key_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %vlen, ptr %key_size, align 4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pkcs8_key_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unregister_asymmetric_key_parser(ptr noundef nonnull @pkcs8_key_parser) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_asymmetric_key_parser(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pkcs8_key_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_asymmetric_key_parser(ptr noundef nonnull @pkcs8_key_parser) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pkcs8_key_preparse(ptr nocapture noundef %prep) #0 align 64 {
entry:
  %ctx.i = alloca %struct.pkcs8_parse_context, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %datalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 4
  %2 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %datalen, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx.i) #8
  %4 = getelementptr inbounds %struct.pkcs8_parse_context, ptr %ctx.i, i32 0, i32 4
  %5 = getelementptr inbounds %struct.pkcs8_parse_context, ptr %ctx.i, i32 0, i32 5
  %6 = getelementptr inbounds i8, ptr %ctx.i, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 32) #12
  %9 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i.i, ptr %ctx.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.error.i_crit_edge, label %if.end.i

entry.error.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %error.i

if.end.i:                                         ; preds = %entry
  %10 = getelementptr inbounds %struct.pkcs8_parse_context, ptr %ctx.i, i32 0, i32 1
  %11 = ptrtoint ptr %1 to i32
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %10, align 4
  %call4.i = call i32 @asn1_ber_decoder(ptr noundef nonnull @pkcs8_decoder, ptr noundef nonnull %ctx.i, ptr noundef %1, i32 noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %if.end.i.error_decode.i_crit_edge, label %if.end6.i

if.end.i.error_decode.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_decode.i

if.end6.i:                                        ; preds = %if.end.i
  %13 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx.i, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %4, align 4
  %call8.i = call ptr @kmemdup(ptr noundef %16, i32 noundef %18, i32 noundef 3264) #8
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call8.i, ptr %14, align 4
  %tobool11.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool11.not.i, label %if.end6.i.error_decode.i_crit_edge, label %if.end13.i

if.end6.i.error_decode.i_crit_edge:               ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_decode.i

if.end13.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %4, align 4
  %keylen.i = getelementptr inbounds %struct.public_key, ptr %14, i32 0, i32 1
  %22 = ptrtoint ptr %keylen.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %keylen.i, align 4
  %key_is_private.i = getelementptr inbounds %struct.public_key, ptr %14, i32 0, i32 5
  %23 = ptrtoint ptr %key_is_private.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %key_is_private.i, align 4
  br label %pkcs8_parse.exit

error_decode.i:                                   ; preds = %if.end6.i.error_decode.i_crit_edge, %if.end.i.error_decode.i_crit_edge
  %ret.0.i = phi i32 [ %call4.i, %if.end.i.error_decode.i_crit_edge ], [ -12, %if.end6.i.error_decode.i_crit_edge ]
  %24 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx.i, align 4
  call void @kfree(ptr noundef %25) #8
  br label %error.i

error.i:                                          ; preds = %error_decode.i, %entry.error.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %error_decode.i ], [ -12, %entry.error.i_crit_edge ]
  %26 = inttoptr i32 %ret.1.i to ptr
  br label %pkcs8_parse.exit

pkcs8_parse.exit:                                 ; preds = %error.i, %if.end13.i
  %retval.0.i = phi ptr [ %26, %error.i ], [ %14, %if.end13.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx.i) #8
  %cmp.i18 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i18, label %if.then, label %if.end

if.then:                                          ; preds = %pkcs8_parse.exit
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %pkcs8_parse.exit
  call void @__sanitizer_cov_trace_pc() #10
  %id_type = getelementptr inbounds %struct.public_key, ptr %retval.0.i, i32 0, i32 6
  %28 = ptrtoint ptr %id_type to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.7, ptr %id_type, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @public_key_subtype to i32))
  %29 = load ptr, ptr @public_key_subtype, align 4
  call void @__module_get(ptr noundef %29) #8
  %payload = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2
  %arrayidx = getelementptr %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @public_key_subtype, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx4, align 8
  %32 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %retval.0.i, ptr %payload, align 8
  %arrayidx8 = getelementptr %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2, i32 0, i32 3
  %33 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx8, align 4
  %quotalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 5
  %34 = ptrtoint ptr %quotalen to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 100, ptr %quotalen, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %27, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asn1_ber_decoder(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_asymmetric_key_parser(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !15, !17, !19, !21, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../crypto/asymmetric_keys/pkcs8_parser.c", i32 44, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @pkcs8_note_OID._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @pkcs8_note_OID._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../crypto/asymmetric_keys/pkcs8_parser.c", i32 58, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @pkcs8_note_version._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @pkcs8_note_version._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../crypto/asymmetric_keys/pkcs8_parser.c", i32 76, i32 24}
!13 = !{ptr @__initcall__kmod_pkcs8_key_parser__213_176_pkcs8_key_init6, !14, !"__initcall__kmod_pkcs8_key_parser__213_176_pkcs8_key_init6", i1 false, i1 false}
!14 = !{!"../crypto/asymmetric_keys/pkcs8_parser.c", i32 176, i32 1}
!15 = !{ptr @__exitcall_pkcs8_key_exit, !16, !"__exitcall_pkcs8_key_exit", i1 false, i1 false}
!16 = !{!"../crypto/asymmetric_keys/pkcs8_parser.c", i32 177, i32 1}
!17 = !{ptr @__UNIQUE_ID_description214, !18, !"__UNIQUE_ID_description214", i1 false, i1 false}
!18 = !{!"../crypto/asymmetric_keys/pkcs8_parser.c", i32 179, i32 1}
!19 = !{ptr @__UNIQUE_ID_file215, !20, !"__UNIQUE_ID_file215", i1 false, i1 false}
!20 = !{!"../crypto/asymmetric_keys/pkcs8_parser.c", i32 180, i32 1}
!21 = !{ptr @__UNIQUE_ID_license216, !20, !"__UNIQUE_ID_license216", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../crypto/asymmetric_keys/pkcs8_parser.c", i32 159, i32 10}
!24 = !{ptr @pkcs8_key_parser, !25, !"pkcs8_key_parser", i1 false, i1 false}
!25 = !{!"../crypto/asymmetric_keys/pkcs8_parser.c", i32 157, i32 37}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../crypto/asymmetric_keys/pkcs8_parser.c", i32 145, i32 17}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
