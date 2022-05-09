; ModuleID = '/llk/IR_all_yes/crypto/asymmetric_keys/x509_public_key.c_pt.bc'
source_filename = "../crypto/asymmetric_keys/x509_public_key.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.asymmetric_key_parser = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.asymmetric_key_subtype = type { ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr }
%struct.x509_certificate = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8, i8, i8, i8 }
%struct.public_key_signature = type { [3 x ptr], ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32 }
%struct.public_key = type { ptr, i32, i32, ptr, i32, i8, ptr, ptr }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.key_preparsed_payload = type { ptr, ptr, %union.key_payload, ptr, i32, i32, i64 }
%union.key_payload = type { [4 x ptr] }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbs\00", [28 x i8] zeroinitializer }, align 32
@x509_get_sig_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013X.509: Cert %*phN is blacklisted\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"x509_get_sig_params\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"crypto/asymmetric_keys/x509_public_key.c\00", [55 x i8] zeroinitializer }, align 32
@x509_get_sig_params._entry_ptr = internal global ptr @x509_get_sig_params._entry, section ".printk_index", align 4
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecdsa-\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ecdsa\00", [26 x i8] zeroinitializer }, align 32
@x509_key_parser = internal global { %struct.asymmetric_key_parser, [44 x i8] } { %struct.asymmetric_key_parser { %struct.list_head zeroinitializer, ptr null, ptr @.str.6, ptr @x509_key_preparse }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_x509_key_parser__213_280_x509_key_init6 = internal global ptr @x509_key_init, section ".initcall6.init", align 4
@__exitcall_x509_key_exit = internal global ptr @x509_key_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description214 = internal constant [53 x i8] c"x509_key_parser.description=X.509 certificate parser\00", section ".modinfo", align 1
@__UNIQUE_ID_author215 = internal constant [37 x i8] c"x509_key_parser.author=Red Hat, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file216 = internal constant [60 x i8] c"x509_key_parser.file=crypto/asymmetric_keys/x509_key_parser\00", section ".modinfo", align 1
@__UNIQUE_ID_license217 = internal constant [28 x i8] c"x509_key_parser.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"x509\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"X509\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@public_key_subtype = external dso_local global %struct.asymmetric_key_subtype, align 4
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 84, i32 59 }
@___asan_gen_.12 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 86, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 133, i32 37 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 134, i32 36 }
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"x509_key_parser\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 261, i32 37 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 263, i32 10 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 185, i32 23 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [44 x i8] c"../crypto/asymmetric_keys/x509_public_key.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 228, i32 8 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author215, ptr @__UNIQUE_ID_description214, ptr @__UNIQUE_ID_file216, ptr @__UNIQUE_ID_license217, ptr @__exitcall_x509_key_exit, ptr @__initcall__kmod_x509_key_parser__213_280_x509_key_init6, ptr @x509_get_sig_params._entry, ptr @x509_get_sig_params._entry_ptr, ptr @x509_key_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @x509_key_parser, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x509_get_sig_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x509_key_parser to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x509_get_sig_params(ptr nocapture noundef %cert) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sig1 = getelementptr inbounds %struct.x509_certificate, ptr %cert, i32 0, i32 3
  %0 = ptrtoint ptr %sig1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sig1, align 4
  %tbs = getelementptr inbounds %struct.x509_certificate, ptr %cert, i32 0, i32 10
  %2 = ptrtoint ptr %tbs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tbs, align 8
  %data = getelementptr inbounds %struct.public_key_signature, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %data, align 4
  %tbs_size = getelementptr inbounds %struct.x509_certificate, ptr %cert, i32 0, i32 11
  %5 = ptrtoint ptr %tbs_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tbs_size, align 4
  %data_size = getelementptr inbounds %struct.public_key_signature, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %data_size, align 4
  %pub = getelementptr inbounds %struct.x509_certificate, ptr %cert, i32 0, i32 2
  %8 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pub, align 8
  %pkey_algo = getelementptr inbounds %struct.public_key, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %pkey_algo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pkey_algo, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %unsupported_key = getelementptr inbounds %struct.x509_certificate, ptr %cert, i32 0, i32 26
  %12 = ptrtoint ptr %unsupported_key to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %unsupported_key, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pkey_algo2 = getelementptr inbounds %struct.public_key_signature, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %pkey_algo2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pkey_algo2, align 4
  %tobool3.not = icmp eq ptr %14, null
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %unsupported_sig = getelementptr inbounds %struct.x509_certificate, ptr %cert, i32 0, i32 27
  %15 = ptrtoint ptr %unsupported_sig to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %unsupported_sig, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %hash_algo = getelementptr inbounds %struct.public_key_signature, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %hash_algo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hash_algo, align 4
  %tobool6.not = icmp eq ptr %17, null
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %unsupported_sig8 = getelementptr inbounds %struct.x509_certificate, ptr %cert, i32 0, i32 27
  %18 = ptrtoint ptr %unsupported_sig8 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %unsupported_sig8, align 8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %raw_sig = getelementptr inbounds %struct.x509_certificate, ptr %cert, i32 0, i32 13
  %19 = ptrtoint ptr %raw_sig to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %raw_sig, align 4
  %raw_sig_size = getelementptr inbounds %struct.x509_certificate, ptr %cert, i32 0, i32 12
  %21 = ptrtoint ptr %raw_sig_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %raw_sig_size, align 8
  %call = tail call ptr @kmemdup(ptr noundef %20, i32 noundef %22, i32 noundef 3264) #8
  %s = getelementptr inbounds %struct.public_key_signature, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call, ptr %s, align 4
  %tobool11.not = icmp eq ptr %call, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %24 = ptrtoint ptr %raw_sig_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %raw_sig_size, align 8
  %s_size = getelementptr inbounds %struct.public_key_signature, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %s_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %s_size, align 4
  %27 = ptrtoint ptr %hash_algo to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hash_algo, align 4
  %call16 = tail call ptr @crypto_alloc_shash(ptr noundef %28, i32 noundef 0, i32 noundef 0) #8
  %cmp.i100 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i100, label %if.then18, label %if.end24

if.then18:                                        ; preds = %if.end13
  %29 = ptrtoint ptr %call16 to i32
  %cmp = icmp eq ptr %call16, inttoptr (i32 -2 to ptr)
  br i1 %cmp, label %if.then20, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %unsupported_sig21 = getelementptr inbounds %struct.x509_certificate, ptr %cert, i32 0, i32 27
  %30 = ptrtoint ptr %unsupported_sig21 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %unsupported_sig21, align 8
  br label %cleanup

if.end24:                                         ; preds = %if.end13
  %31 = ptrtoint ptr %call16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %call16, align 128
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call16, i32 0, i32 2, i32 3
  %33 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %34, i32 -128
  %35 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %digestsize.i, align 128
  %digest_size = getelementptr inbounds %struct.public_key_signature, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %digest_size to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %digest_size, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %36, i32 noundef 3264) #11
  %digest = getelementptr inbounds %struct.public_key_signature, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call9.i, ptr %digest, align 4
  %tobool30.not = icmp eq ptr %call9.i, null
  br i1 %tobool30.not, label %if.end24.error_crit_edge, label %if.end8.i.i

if.end24.error_crit_edge:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end8.i.i:                                      ; preds = %if.end24
  %add = add i32 %32, 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #11
  %tobool34.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool34.not, label %if.end8.i.i.error_crit_edge, label %if.end36

if.end8.i.i.error_crit_edge:                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end36:                                         ; preds = %if.end8.i.i
  %39 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call16, ptr %call9.i.i, align 128
  %40 = ptrtoint ptr %tbs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tbs, align 8
  %42 = ptrtoint ptr %tbs_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tbs_size, align 4
  %44 = ptrtoint ptr %digest to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %digest, align 4
  %call41 = tail call i32 @crypto_shash_digest(ptr noundef nonnull %call9.i.i, ptr noundef %41, i32 noundef %43, ptr noundef %45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.end36.error_2_crit_edge, label %if.end44

if.end36.error_2_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_2

if.end44:                                         ; preds = %if.end36
  %46 = ptrtoint ptr %digest to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %digest, align 4
  %48 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %digest_size, align 4
  %call47 = tail call i32 @is_hash_blacklisted(ptr noundef %47, i32 noundef %49, ptr noundef nonnull @.str) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -129, i32 %call47)
  %cmp48 = icmp eq i32 %call47, -129
  br i1 %cmp48, label %do.end, label %if.end44.error_2_crit_edge

if.end44.error_2_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_2

do.end:                                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %digest_size, align 4
  %52 = ptrtoint ptr %digest to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %digest, align 4
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %51, ptr noundef %53) #12
  %blacklisted = getelementptr inbounds %struct.x509_certificate, ptr %cert, i32 0, i32 28
  %54 = ptrtoint ptr %blacklisted to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %blacklisted, align 1
  br label %error_2

error_2:                                          ; preds = %do.end, %if.end44.error_2_crit_edge, %if.end36.error_2_crit_edge
  %ret.0 = phi i32 [ %call41, %if.end36.error_2_crit_edge ], [ 0, %do.end ], [ %call47, %if.end44.error_2_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %error

error:                                            ; preds = %error_2, %if.end8.i.i.error_crit_edge, %if.end24.error_crit_edge
  %ret.1 = phi i32 [ %ret.0, %error_2 ], [ -12, %if.end8.i.i.error_crit_edge ], [ -12, %if.end24.error_crit_edge ]
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call16, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call16, ptr noundef %base.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %if.then20, %if.then18.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then7
  %retval.0 = phi i32 [ 0, %if.then20 ], [ %ret.1, %error ], [ 0, %if.then7 ], [ -12, %if.end9.cleanup_crit_edge ], [ %29, %if.then18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_hash_blacklisted(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x509_check_for_self_signed(ptr nocapture noundef %cert) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %raw_subject_size = getelementptr inbounds %struct.x509_certificate, ptr %cert, i32 0, i32 19
  %0 = ptrtoint ptr %raw_subject_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %raw_subject_size, align 4
  %raw_issuer_size = getelementptr inbounds %struct.x509_certificate, ptr %cert, i32 0, i32 16
  %2 = ptrtoint ptr %raw_issuer_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %raw_issuer_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup71_crit_edge

entry.cleanup71_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup71

lor.lhs.false:                                    ; preds = %entry
  %raw_subject = getelementptr inbounds %struct.x509_certificate, ptr %cert, i32 0, i32 18
  %4 = ptrtoint ptr %raw_subject to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %raw_subject, align 8
  %raw_issuer = getelementptr inbounds %struct.x509_certificate, ptr %cert, i32 0, i32 17
  %6 = ptrtoint ptr %raw_issuer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %raw_issuer, align 4
  %bcmp = tail call i32 @bcmp(ptr %5, ptr %7, i32 %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp2.not = icmp eq i32 %bcmp, 0
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup71_crit_edge

lor.lhs.false.cleanup71_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup71

if.end:                                           ; preds = %lor.lhs.false
  %sig = getelementptr inbounds %struct.x509_certificate, ptr %cert, i32 0, i32 3
  %8 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sig, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %lor.lhs.false3, label %if.end.if.then8_crit_edge

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

lor.lhs.false3:                                   ; preds = %if.end
  %arrayidx6 = getelementptr [3 x ptr], ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %lor.lhs.false3.if.end42_crit_edge, label %lor.lhs.false3.if.then8_crit_edge

lor.lhs.false3.if.then8_crit_edge:                ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

lor.lhs.false3.if.end42_crit_edge:                ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then8:                                         ; preds = %lor.lhs.false3.if.then8_crit_edge, %if.end.if.then8_crit_edge
  %skid = getelementptr inbounds %struct.x509_certificate, ptr %cert, i32 0, i32 7
  %14 = ptrtoint ptr %skid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skid, align 4
  %arrayidx11 = getelementptr [3 x ptr], ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx11, align 4
  %call12 = tail call zeroext i1 @asymmetric_key_id_same(ptr noundef %15, ptr noundef %17) #8
  %id = getelementptr inbounds %struct.x509_certificate, ptr %cert, i32 0, i32 6
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %id, align 8
  %20 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sig, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call16 = tail call zeroext i1 @asymmetric_key_id_same(ptr noundef %19, ptr noundef %23) #8
  %brmerge = select i1 %call12, i1 true, i1 %call16
  br i1 %brmerge, label %if.end21, label %if.then8.cleanup71_crit_edge

if.then8.cleanup71_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup71

if.end21:                                         ; preds = %if.then8
  %call12.not = xor i1 %call12, true
  %brmerge98 = select i1 %call12.not, i1 true, i1 %call16
  %call16.not = xor i1 %call16, true
  %brmerge99 = select i1 %call16.not, i1 true, i1 %call12
  %or.cond = select i1 %brmerge98, i1 %brmerge99, i1 false
  br i1 %or.cond, label %if.end21.if.end42_crit_edge, label %land.lhs.true29

if.end21.if.end42_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

land.lhs.true29:                                  ; preds = %if.end21
  %24 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sig, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool33.not = icmp eq ptr %27, null
  br i1 %tobool33.not, label %land.lhs.true29.if.end42_crit_edge, label %land.lhs.true34

land.lhs.true29.if.end42_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

land.lhs.true34:                                  ; preds = %land.lhs.true29
  %arrayidx37 = getelementptr [3 x ptr], ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx37, align 4
  %tobool38.not = icmp eq ptr %29, null
  br i1 %tobool38.not, label %land.lhs.true34.if.end42_crit_edge, label %land.lhs.true34.cleanup71_crit_edge

land.lhs.true34.cleanup71_crit_edge:              ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup71

land.lhs.true34.if.end42_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.end42:                                         ; preds = %land.lhs.true34.if.end42_crit_edge, %land.lhs.true29.if.end42_crit_edge, %if.end21.if.end42_crit_edge, %lor.lhs.false3.if.end42_crit_edge
  %pub = getelementptr inbounds %struct.x509_certificate, ptr %cert, i32 0, i32 2
  %30 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pub, align 8
  %pkey_algo = getelementptr inbounds %struct.public_key, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %pkey_algo to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pkey_algo, align 4
  %34 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sig, align 4
  %pkey_algo44 = getelementptr inbounds %struct.public_key_signature, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %pkey_algo44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pkey_algo44, align 4
  %call45 = tail call i32 @strcmp(ptr noundef %33, ptr noundef %37) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46.not = icmp eq i32 %call45, 0
  br i1 %cmp46.not, label %if.end42.if.end58_crit_edge, label %land.lhs.true47

if.end42.if.end58_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

land.lhs.true47:                                  ; preds = %if.end42
  %call50 = tail call i32 @strncmp(ptr noundef %33, ptr noundef nonnull dereferenceable(7) @.str.4, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51.not = icmp eq i32 %call50, 0
  br i1 %cmp51.not, label %lor.lhs.false52, label %land.lhs.true47.cleanup71_crit_edge

land.lhs.true47.cleanup71_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup71

lor.lhs.false52:                                  ; preds = %land.lhs.true47
  %call55 = tail call i32 @strcmp(ptr noundef %37, ptr noundef nonnull dereferenceable(6) @.str.5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56.not = icmp eq i32 %call55, 0
  br i1 %cmp56.not, label %lor.lhs.false52.if.end58_crit_edge, label %lor.lhs.false52.cleanup71_crit_edge

lor.lhs.false52.cleanup71_crit_edge:              ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup71

lor.lhs.false52.if.end58_crit_edge:               ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.end58:                                         ; preds = %lor.lhs.false52.if.end58_crit_edge, %if.end42.if.end58_crit_edge
  %call61 = tail call i32 @public_key_verify_signature(ptr noundef %31, ptr noundef %35) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then63, label %if.end67

if.then63:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65, i32 %call61)
  %cmp64 = icmp eq i32 %call61, -65
  br i1 %cmp64, label %if.then65, label %if.then63.cleanup71_crit_edge

if.then63.cleanup71_crit_edge:                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup71

if.then65:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  %unsupported_sig = getelementptr inbounds %struct.x509_certificate, ptr %cert, i32 0, i32 27
  %38 = ptrtoint ptr %unsupported_sig to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %unsupported_sig, align 8
  br label %cleanup71

if.end67:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %self_signed = getelementptr inbounds %struct.x509_certificate, ptr %cert, i32 0, i32 25
  %39 = ptrtoint ptr %self_signed to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %self_signed, align 2
  br label %cleanup71

cleanup71:                                        ; preds = %if.end67, %if.then65, %if.then63.cleanup71_crit_edge, %lor.lhs.false52.cleanup71_crit_edge, %land.lhs.true47.cleanup71_crit_edge, %land.lhs.true34.cleanup71_crit_edge, %if.then8.cleanup71_crit_edge, %lor.lhs.false.cleanup71_crit_edge, %entry.cleanup71_crit_edge
  %retval.0 = phi i32 [ -129, %land.lhs.true47.cleanup71_crit_edge ], [ -129, %lor.lhs.false52.cleanup71_crit_edge ], [ 0, %if.then65 ], [ %call61, %if.then63.cleanup71_crit_edge ], [ %call61, %if.end67 ], [ 0, %if.then8.cleanup71_crit_edge ], [ 0, %entry.cleanup71_crit_edge ], [ 0, %lor.lhs.false.cleanup71_crit_edge ], [ -129, %land.lhs.true34.cleanup71_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @asymmetric_key_id_same(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @public_key_verify_signature(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @x509_key_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unregister_asymmetric_key_parser(ptr noundef nonnull @x509_key_parser) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_asymmetric_key_parser(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @x509_key_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_asymmetric_key_parser(ptr noundef nonnull @x509_key_parser) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x509_key_preparse(ptr nocapture noundef %prep) #0 align 64 {
entry:
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
  %call = tail call ptr @x509_cert_parse(ptr noundef %1, i32 noundef %3) #8
  %cmp.i126 = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %unsupported_key = getelementptr inbounds %struct.x509_certificate, ptr %call, i32 0, i32 26
  %5 = ptrtoint ptr %unsupported_key to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %unsupported_key, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end5, label %if.end.error_free_cert_crit_edge

if.end.error_free_cert_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free_cert

if.end5:                                          ; preds = %if.end
  %pub = getelementptr inbounds %struct.x509_certificate, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pub, align 8
  %id_type = getelementptr inbounds %struct.public_key, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %id_type to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.7, ptr %id_type, align 4
  %unsupported_sig = getelementptr inbounds %struct.x509_certificate, ptr %call, i32 0, i32 27
  %10 = ptrtoint ptr %unsupported_sig to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %unsupported_sig, align 8, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool8.not = icmp eq i8 %11, 0
  br i1 %tobool8.not, label %if.end5.if.end12_crit_edge, label %if.then9

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %sig = getelementptr inbounds %struct.x509_certificate, ptr %call, i32 0, i32 3
  %12 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sig, align 4
  tail call void @public_key_signature_free(ptr noundef %13) #8
  %14 = ptrtoint ptr %sig to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %sig, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end5.if.end12_crit_edge
  %blacklisted = getelementptr inbounds %struct.x509_certificate, ptr %call, i32 0, i32 28
  %15 = ptrtoint ptr %blacklisted to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %blacklisted, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool13.not = icmp eq i8 %16, 0
  br i1 %tobool13.not, label %if.end15, label %if.end12.error_free_cert_crit_edge

if.end12.error_free_cert_crit_edge:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free_cert

if.end15:                                         ; preds = %if.end12
  %subject = getelementptr inbounds %struct.x509_certificate, ptr %call, i32 0, i32 5
  %17 = ptrtoint ptr %subject to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %subject, align 4
  %call16 = tail call i32 @strlen(ptr noundef %18) #13
  %raw_skid = getelementptr inbounds %struct.x509_certificate, ptr %call, i32 0, i32 21
  %19 = ptrtoint ptr %raw_skid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %raw_skid, align 4
  %tobool17.not = icmp eq ptr %20, null
  br i1 %tobool17.not, label %if.else20, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %raw_skid_size = getelementptr inbounds %struct.x509_certificate, ptr %call, i32 0, i32 20
  br label %if.end21

if.else20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %raw_serial_size = getelementptr inbounds %struct.x509_certificate, ptr %call, i32 0, i32 15
  %raw_serial = getelementptr inbounds %struct.x509_certificate, ptr %call, i32 0, i32 14
  %21 = ptrtoint ptr %raw_serial to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %raw_serial, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %if.then18
  %srlen.0.in = phi ptr [ %raw_skid_size, %if.then18 ], [ %raw_serial_size, %if.else20 ]
  %q.0 = phi ptr [ %20, %if.then18 ], [ %22, %if.else20 ]
  %23 = ptrtoint ptr %srlen.0.in to i32
  call void @__asan_load4_noabort(i32 %23)
  %srlen.0 = load i32, ptr %srlen.0.in, align 4
  %add = add i32 %call16, 2
  %mul = shl i32 %srlen.0, 1
  %add22 = add i32 %add, %mul
  %add23 = add i32 %add22, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add23, i32 noundef 3264) #11
  %tobool25.not = icmp eq ptr %call9.i, null
  br i1 %tobool25.not, label %if.end21.error_free_cert_crit_edge, label %if.end27

if.end21.error_free_cert_crit_edge:               ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free_cert

if.end27:                                         ; preds = %if.end21
  %24 = ptrtoint ptr %subject to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %subject, align 4
  %26 = call ptr @memcpy(ptr %call9.i, ptr %25, i32 %call16)
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %call16
  %incdec.ptr = getelementptr i8, ptr %add.ptr, i32 1
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 58, ptr %add.ptr, align 1
  %incdec.ptr29 = getelementptr i8, ptr %incdec.ptr, i32 1
  %28 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 32, ptr %incdec.ptr, align 1
  %call30 = tail call ptr @bin2hex(ptr noundef %incdec.ptr29, ptr noundef %q.0, i32 noundef %srlen.0) #8
  %29 = ptrtoint ptr %call30 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %call30, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i124 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3264, i32 noundef 12) #14
  %tobool32.not = icmp eq ptr %call7.i124, null
  br i1 %tobool32.not, label %if.end27.error_free_desc_crit_edge, label %if.end34

if.end27.error_free_desc_crit_edge:               ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free_desc

if.end34:                                         ; preds = %if.end27
  %id = getelementptr inbounds %struct.x509_certificate, ptr %call, i32 0, i32 6
  %31 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %id, align 8
  %33 = ptrtoint ptr %call7.i124 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %call7.i124, align 8
  %skid = getelementptr inbounds %struct.x509_certificate, ptr %call, i32 0, i32 7
  %34 = ptrtoint ptr %skid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %skid, align 4
  %arrayidx37 = getelementptr [3 x ptr], ptr %call7.i124, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %arrayidx37, align 4
  %raw_subject = getelementptr inbounds %struct.x509_certificate, ptr %call, i32 0, i32 18
  %37 = ptrtoint ptr %raw_subject to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %raw_subject, align 8
  %raw_subject_size = getelementptr inbounds %struct.x509_certificate, ptr %call, i32 0, i32 19
  %39 = ptrtoint ptr %raw_subject_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %raw_subject_size, align 4
  %call38 = tail call ptr @asymmetric_key_generate_id(ptr noundef %38, i32 noundef %40, ptr noundef nonnull @.str.8, i32 noundef 0) #8
  %arrayidx40 = getelementptr [3 x ptr], ptr %call7.i124, i32 0, i32 2
  %41 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call38, ptr %arrayidx40, align 8
  %cmp.i127 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127, label %if.then44, label %if.end48

if.then44:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %call38 to i32
  br label %error_free_kids

if.end48:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @public_key_subtype to i32))
  %43 = load ptr, ptr @public_key_subtype, align 4
  tail call void @__module_get(ptr noundef %43) #8
  %payload = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2
  %arrayidx49 = getelementptr %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @public_key_subtype, ptr %arrayidx49, align 4
  %arrayidx51 = getelementptr %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2, i32 0, i32 2
  %45 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i124, ptr %arrayidx51, align 8
  %46 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pub, align 8
  %48 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %payload, align 8
  %sig55 = getelementptr inbounds %struct.x509_certificate, ptr %call, i32 0, i32 3
  %49 = ptrtoint ptr %sig55 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sig55, align 4
  %arrayidx57 = getelementptr %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2, i32 0, i32 3
  %51 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %arrayidx57, align 4
  %description = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 1
  %52 = ptrtoint ptr %description to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call9.i, ptr %description, align 4
  %quotalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 5
  %53 = ptrtoint ptr %quotalen to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 100, ptr %quotalen, align 8
  store ptr null, ptr %pub, align 8
  %54 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %id, align 8
  %55 = ptrtoint ptr %skid to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %skid, align 4
  store ptr null, ptr %sig55, align 4
  br label %error_free_kids

error_free_kids:                                  ; preds = %if.end48, %if.then44
  %desc.0 = phi ptr [ %call9.i, %if.then44 ], [ null, %if.end48 ]
  %ret.0 = phi i32 [ %42, %if.then44 ], [ 0, %if.end48 ]
  %kids.0 = phi ptr [ %call7.i124, %if.then44 ], [ null, %if.end48 ]
  tail call void @kfree(ptr noundef %kids.0) #8
  br label %error_free_desc

error_free_desc:                                  ; preds = %error_free_kids, %if.end27.error_free_desc_crit_edge
  %desc.1 = phi ptr [ %desc.0, %error_free_kids ], [ %call9.i, %if.end27.error_free_desc_crit_edge ]
  %ret.1 = phi i32 [ %ret.0, %error_free_kids ], [ -12, %if.end27.error_free_desc_crit_edge ]
  tail call void @kfree(ptr noundef %desc.1) #8
  br label %error_free_cert

error_free_cert:                                  ; preds = %error_free_desc, %if.end21.error_free_cert_crit_edge, %if.end12.error_free_cert_crit_edge, %if.end.error_free_cert_crit_edge
  %ret.2 = phi i32 [ -129, %if.end12.error_free_cert_crit_edge ], [ %ret.1, %error_free_desc ], [ -12, %if.end21.error_free_cert_crit_edge ], [ -65, %if.end.error_free_cert_crit_edge ]
  tail call void @x509_free_certificate(ptr noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %error_free_cert, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %ret.2, %error_free_cert ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @x509_cert_parse(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @public_key_signature_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bin2hex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @asymmetric_key_generate_id(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @x509_free_certificate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_asymmetric_key_parser(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../crypto/asymmetric_keys/x509_public_key.c", i32 84, i32 59}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../crypto/asymmetric_keys/x509_public_key.c", i32 86, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @x509_get_sig_params._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @x509_get_sig_params._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../crypto/asymmetric_keys/x509_public_key.c", i32 133, i32 37}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../crypto/asymmetric_keys/x509_public_key.c", i32 134, i32 36}
!12 = !{ptr @__initcall__kmod_x509_key_parser__213_280_x509_key_init6, !13, !"__initcall__kmod_x509_key_parser__213_280_x509_key_init6", i1 false, i1 false}
!13 = !{!"../crypto/asymmetric_keys/x509_public_key.c", i32 280, i32 1}
!14 = !{ptr @__exitcall_x509_key_exit, !15, !"__exitcall_x509_key_exit", i1 false, i1 false}
!15 = !{!"../crypto/asymmetric_keys/x509_public_key.c", i32 281, i32 1}
!16 = !{ptr @__UNIQUE_ID_description214, !17, !"__UNIQUE_ID_description214", i1 false, i1 false}
!17 = !{!"../crypto/asymmetric_keys/x509_public_key.c", i32 283, i32 1}
!18 = !{ptr @__UNIQUE_ID_author215, !19, !"__UNIQUE_ID_author215", i1 false, i1 false}
!19 = !{!"../crypto/asymmetric_keys/x509_public_key.c", i32 284, i32 1}
!20 = !{ptr @__UNIQUE_ID_file216, !21, !"__UNIQUE_ID_file216", i1 false, i1 false}
!21 = !{!"../crypto/asymmetric_keys/x509_public_key.c", i32 285, i32 1}
!22 = !{ptr @__UNIQUE_ID_license217, !21, !"__UNIQUE_ID_license217", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../crypto/asymmetric_keys/x509_public_key.c", i32 263, i32 10}
!25 = !{ptr @x509_key_parser, !26, !"x509_key_parser", i1 false, i1 false}
!26 = !{!"../crypto/asymmetric_keys/x509_public_key.c", i32 261, i32 37}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../crypto/asymmetric_keys/x509_public_key.c", i32 185, i32 23}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../crypto/asymmetric_keys/x509_public_key.c", i32 228, i32 8}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i8 0, i8 2}
