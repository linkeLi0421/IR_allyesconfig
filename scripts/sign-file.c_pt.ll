; ModuleID = '/llk/IR_all_yes/scripts/sign-file.c_pt.bc'
source_filename = "../scripts/sign-file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_signature = type { i8, i8, i8, i8, i8, [3 x i8], i32 }

@__const.main.sig_info = private unnamed_addr constant %struct.module_signature { i8 0, i8 0, i8 2, i8 0, i8 0, [3 x i8] zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [16 x i8] c"KBUILD_SIGN_PIN\00", align 1
@key_pass = internal unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"sdpk\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"%s.~signed~\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"EVP_get_digestbyname\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"CMS_sign\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"CMS_add1_signer\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"CMS_final\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%s.p7s\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@magic_number = internal global [29 x i8] c"~Module signature appended~\0A\00", align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [75 x i8] c"Usage: scripts/sign-file [-dp] <hash algo> <key> <x509> <module> [<dest>]\0A\00", align 1
@.str.13 = private unnamed_addr constant [76 x i8] c"       scripts/sign-file -s <raw sig> <hash algo> <x509> <module> [<dest>]\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"At main.c:%d:\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"- SSL %s: %s:%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"pkcs11:\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"pkcs11\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"Load PKCS#11 ENGINE\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"ENGINE_init\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"PIN\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"Set PKCS#11 PIN\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"%s: Read wanted retry\0A\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"%s: Short read\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) local_unnamed_addr #0 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %file.i78.i = alloca ptr, align 8
  %line.i79.i = alloca i32, align 4
  %file.i.i = alloca ptr, align 8
  %line.i.i = alloca i32, align 4
  %sig_info = alloca %struct.module_signature, align 4
  %dest_name = alloca ptr, align 8
  %buf = alloca [4096 x i8], align 16
  %sig_file_name = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sig_info) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %sig_info, ptr noundef nonnull align 4 dereferenceable(12) @__const.main.sig_info, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dest_name) #15
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %buf) #15
  %call = tail call i32 @OPENSSL_init_crypto(i64 noundef 12, ptr noundef null) #15
  %call1 = tail call i32 @OPENSSL_init_crypto(i64 noundef 2, ptr noundef null) #15
  tail call void @ERR_clear_error() #15
  %call2 = tail call ptr @getenv(ptr noundef nonnull @.str) #15
  store ptr %call2, ptr @key_pass, align 8, !tbaa !5
  br label %do.body.outer

do.body.outer:                                    ; preds = %do.body, %entry
  %use_keyid.0.ph = phi i32 [ 898, %entry ], [ 66434, %do.body ]
  %raw_sig.0.ph = phi i8 [ 0, %entry ], [ %raw_sig.0.ph388, %do.body ]
  %sign_only.0.ph = phi i8 [ 0, %entry ], [ %sign_only.0.ph392, %do.body ]
  %save_sig.0.ph = phi i8 [ 0, %entry ], [ %save_sig.0, %do.body ]
  br label %do.body.outer387

do.body.outer387:                                 ; preds = %do.body, %do.body.outer
  %raw_sig.0.ph388 = phi i8 [ %raw_sig.0.ph, %do.body.outer ], [ 1, %do.body ]
  %sign_only.0.ph389 = phi i8 [ %sign_only.0.ph, %do.body.outer ], [ %sign_only.0.ph392, %do.body ]
  %save_sig.0.ph390 = phi i8 [ %save_sig.0.ph, %do.body.outer ], [ %save_sig.0, %do.body ]
  br label %do.body.outer391

do.body.outer391:                                 ; preds = %do.body, %do.body.outer387
  %sign_only.0.ph392 = phi i8 [ %sign_only.0.ph389, %do.body.outer387 ], [ 1, %do.body ]
  %save_sig.0.ph393 = phi i8 [ %save_sig.0.ph390, %do.body.outer387 ], [ 1, %do.body ]
  br label %do.body

do.body:                                          ; preds = %do.body, %do.body.outer391
  %save_sig.0 = phi i8 [ %save_sig.0.ph393, %do.body.outer391 ], [ 1, %do.body ]
  %call3 = tail call i32 @getopt(i32 noundef %argc, ptr noundef %argv, ptr noundef nonnull @.str.1) #15
  switch i32 %call3, label %sw.default [
    i32 115, label %do.body.outer387
    i32 112, label %do.body
    i32 100, label %do.body.outer391
    i32 107, label %do.body.outer
    i32 -1, label %do.end
  ]

sw.default:                                       ; preds = %do.body
  tail call fastcc void @format() #16
  unreachable

do.end:                                           ; preds = %do.body
  %0 = load i32, ptr @optind, align 4, !tbaa !9
  %sub = sub nsw i32 %argc, %0
  %idx.ext = sext i32 %0 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %argv, i64 %idx.ext
  %1 = add i32 %sub, -6
  %2 = icmp ult i32 %1, -2
  br i1 %2, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  tail call fastcc void @format() #16
  unreachable

if.end:                                           ; preds = %do.end
  %tobool.not = icmp eq i8 %raw_sig.0.ph388, 0
  br i1 %tobool.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  %3 = load ptr, ptr %add.ptr, align 8, !tbaa !5
  %arrayidx10 = getelementptr inbounds ptr, ptr %add.ptr, i64 1
  br label %if.end13

if.else:                                          ; preds = %if.end
  %arrayidx12 = getelementptr inbounds ptr, ptr %add.ptr, i64 1
  %4 = load ptr, ptr %arrayidx12, align 8, !tbaa !5
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then9
  %raw_sig_name.0 = phi ptr [ %3, %if.then9 ], [ null, %if.else ]
  %private_key_name.0 = phi ptr [ null, %if.then9 ], [ %4, %if.else ]
  %hash_algo.0.in = phi ptr [ %arrayidx10, %if.then9 ], [ %add.ptr, %if.else ]
  %hash_algo.0 = load ptr, ptr %hash_algo.0.in, align 8, !tbaa !5
  %arrayidx14 = getelementptr inbounds ptr, ptr %add.ptr, i64 2
  %5 = load ptr, ptr %arrayidx14, align 8, !tbaa !5
  %arrayidx15 = getelementptr inbounds ptr, ptr %add.ptr, i64 3
  %6 = load ptr, ptr %arrayidx15, align 8, !tbaa !5
  %cmp16 = icmp eq i32 %sub, 5
  br i1 %cmp16, label %land.lhs.true, label %do.body24

land.lhs.true:                                    ; preds = %if.end13
  %arrayidx18 = getelementptr inbounds ptr, ptr %add.ptr, i64 4
  %7 = load ptr, ptr %arrayidx18, align 8, !tbaa !5
  %call19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %7) #17
  %cmp20.not = icmp eq i32 %call19, 0
  br i1 %cmp20.not, label %do.body24, label %if.then21

if.then21:                                        ; preds = %land.lhs.true
  store ptr %7, ptr %dest_name, align 8, !tbaa !5
  br label %if.end32

do.body24:                                        ; preds = %land.lhs.true, %if.end13
  %call25 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %dest_name, ptr noundef nonnull @.str.2, ptr noundef %6) #15
  %cmp26 = icmp slt i32 %call25, 0
  call fastcc void @display_openssl_errors(i32 noundef 277)
  br i1 %cmp26, label %if.then28, label %if.end32

if.then28:                                        ; preds = %do.body24
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.3) #18
  unreachable

if.end32:                                         ; preds = %do.body24, %if.then21
  %replace_orig.0 = phi i1 [ false, %if.then21 ], [ true, %do.body24 ]
  %call33 = call ptr @BIO_new_file(ptr noundef %6, ptr noundef nonnull @.str.4) #15
  %tobool36.not = icmp eq ptr %call33, null
  call fastcc void @display_openssl_errors(i32 noundef 291)
  br i1 %tobool36.not, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end32
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %6) #18
  unreachable

if.end40:                                         ; preds = %if.end32
  br i1 %tobool.not, label %if.then44, label %if.end131

if.then44:                                        ; preds = %if.end40
  %call.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %private_key_name.0, ptr noundef nonnull dereferenceable(8) @.str.16, i64 noundef 7) #17
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else41.i

if.then.i:                                        ; preds = %if.then44
  call void @ENGINE_load_builtin_engines() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %file.i.i) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %line.i.i) #15
  %call.i.i = call i64 @ERR_peek_error() #15
  %cmp.i.i = icmp eq i64 %call.i.i, 0
  br i1 %cmp.i.i, label %drain_openssl_errors.exit.i, label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i, %if.then.i
  %call1.i.i = call i64 @ERR_get_error_line(ptr noundef nonnull %file.i.i, ptr noundef nonnull %line.i.i) #15
  %tobool.not.i.i = icmp eq i64 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %drain_openssl_errors.exit.i, label %while.cond.i.i

drain_openssl_errors.exit.i:                      ; preds = %while.cond.i.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %line.i.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %file.i.i) #15
  %call1.i = call ptr @ENGINE_by_id(ptr noundef nonnull @.str.17) #15
  %tobool2.not.i = icmp eq ptr %call1.i, null
  call fastcc void @display_openssl_errors(i32 noundef 145) #15
  br i1 %tobool2.not.i, label %if.then4.i, label %if.end.i

if.then4.i:                                       ; preds = %drain_openssl_errors.exit.i
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.18) #18
  unreachable

if.end.i:                                         ; preds = %drain_openssl_errors.exit.i
  %call5.i = call i32 @ENGINE_init(ptr noundef nonnull %call1.i) #15
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %do.body8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %file.i78.i) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %line.i79.i) #15
  %call.i80.i = call i64 @ERR_peek_error() #15
  %cmp.i81.i = icmp eq i64 %call.i80.i, 0
  br i1 %cmp.i81.i, label %drain_openssl_errors.exit85.i, label %while.cond.i84.i

while.cond.i84.i:                                 ; preds = %while.cond.i84.i, %if.then7.i
  %call1.i82.i = call i64 @ERR_get_error_line(ptr noundef nonnull %file.i78.i, ptr noundef nonnull %line.i79.i) #15
  %tobool.not.i83.i = icmp eq i64 %call1.i82.i, 0
  br i1 %tobool.not.i83.i, label %drain_openssl_errors.exit85.i, label %while.cond.i84.i

drain_openssl_errors.exit85.i:                    ; preds = %while.cond.i84.i, %if.then7.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %line.i79.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %file.i78.i) #15
  %8 = load ptr, ptr @key_pass, align 8, !tbaa !5
  %tobool16.not.i = icmp eq ptr %8, null
  br i1 %tobool16.not.i, label %if.end29.i, label %do.body18.i

do.body8.i:                                       ; preds = %if.end.i
  call fastcc void @display_openssl_errors(i32 noundef 149) #15
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.19) #18
  unreachable

do.body18.i:                                      ; preds = %drain_openssl_errors.exit85.i
  %call20.i = call i32 @ENGINE_ctrl_cmd_string(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.20, ptr noundef nonnull %8, i32 noundef 0) #15
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  call fastcc void @display_openssl_errors(i32 noundef 152) #15
  br i1 %tobool21.not.i, label %if.then25.i, label %if.end29.i

if.then25.i:                                      ; preds = %do.body18.i
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.21) #18
  unreachable

if.end29.i:                                       ; preds = %do.body18.i, %drain_openssl_errors.exit85.i
  %call30.i = call ptr @ENGINE_load_private_key(ptr noundef nonnull %call1.i, ptr noundef %private_key_name.0, ptr noundef null, ptr noundef null) #15
  %tobool33.not.i = icmp eq ptr %call30.i, null
  call fastcc void @display_openssl_errors(i32 noundef 155) #15
  br i1 %tobool33.not.i, label %if.then37.i, label %read_private_key.exit

if.then37.i:                                      ; preds = %if.end29.i
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %private_key_name.0) #18
  unreachable

if.else41.i:                                      ; preds = %if.then44
  %call42.i = call ptr @BIO_new_file(ptr noundef %private_key_name.0, ptr noundef nonnull @.str.4) #15
  %tobool45.not.i = icmp eq ptr %call42.i, null
  call fastcc void @display_openssl_errors(i32 noundef 160) #15
  br i1 %tobool45.not.i, label %if.then49.i, label %if.end50.i

if.then49.i:                                      ; preds = %if.else41.i
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %private_key_name.0) #18
  unreachable

if.end50.i:                                       ; preds = %if.else41.i
  %call53.i = call ptr @PEM_read_bio_PrivateKey(ptr noundef nonnull %call42.i, ptr noundef null, ptr noundef nonnull @pem_pw_cb, ptr noundef null) #15
  %tobool56.not.i = icmp eq ptr %call53.i, null
  call fastcc void @display_openssl_errors(i32 noundef 163) #15
  br i1 %tobool56.not.i, label %if.then60.i, label %if.end61.i

if.then60.i:                                      ; preds = %if.end50.i
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %private_key_name.0) #18
  unreachable

if.end61.i:                                       ; preds = %if.end50.i
  %call64.i = call i32 @BIO_free(ptr noundef nonnull %call42.i) #15
  br label %read_private_key.exit

read_private_key.exit:                            ; preds = %if.end61.i, %if.end29.i
  %private_key.0.i = phi ptr [ %call53.i, %if.end61.i ], [ %call30.i, %if.end29.i ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #15
  %call.i352 = call ptr @BIO_new_file(ptr noundef %5, ptr noundef nonnull @.str.4) #15
  %tobool.not.i353 = icmp eq ptr %call.i352, null
  call fastcc void @display_openssl_errors(i32 noundef 178) #15
  br i1 %tobool.not.i353, label %if.then.i354, label %if.end.i355

if.then.i354:                                     ; preds = %read_private_key.exit
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %5) #18
  unreachable

if.end.i355:                                      ; preds = %read_private_key.exit
  %call2.i = call i32 @BIO_read(ptr noundef nonnull %call.i352, ptr noundef nonnull %buf.i, i32 noundef 2) #15
  %cmp.not.i = icmp eq i32 %call2.i, 2
  br i1 %cmp.not.i, label %do.body21.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i355
  %call4.i = call i32 @BIO_test_flags(ptr noundef nonnull %call.i352, i32 noundef 8) #15
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end8.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then3.i
  %9 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call7.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.22, ptr noundef %5) #19
  call void @exit(i32 noundef 1) #18
  unreachable

if.end8.i:                                        ; preds = %if.then3.i
  %cmp9.i = icmp sgt i32 %call2.i, -1
  br i1 %cmp9.i, label %if.then10.i, label %do.body13.i

if.then10.i:                                      ; preds = %if.end8.i
  %10 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call11.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.23, ptr noundef %5) #19
  call void @exit(i32 noundef 1) #18
  unreachable

do.body13.i:                                      ; preds = %if.end8.i
  call fastcc void @display_openssl_errors(i32 noundef 191) #15
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %5) #18
  unreachable

do.body21.i:                                      ; preds = %if.end.i355
  %call23.i = call i64 @BIO_ctrl(ptr noundef nonnull %call.i352, i32 noundef 1, i64 noundef 0, ptr noundef null) #15
  %conv.i = trunc i64 %call23.i to i32
  %cmp24.not.i = icmp eq i32 %conv.i, 0
  call fastcc void @display_openssl_errors(i32 noundef 194) #15
  br i1 %cmp24.not.i, label %if.end29.i356, label %if.then28.i

if.then28.i:                                      ; preds = %do.body21.i
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %5) #18
  unreachable

if.end29.i356:                                    ; preds = %do.body21.i
  %11 = load i8, ptr %buf.i, align 1, !tbaa !11
  %cmp33.i = icmp eq i8 %11, 48
  %arrayidx35.i = getelementptr inbounds [2 x i8], ptr %buf.i, i64 0, i64 1
  %12 = load i8, ptr %arrayidx35.i, align 1
  %cmp37.i = icmp ugt i8 %12, -128
  %or.cond.i = select i1 %cmp33.i, i1 %cmp37.i, i1 false
  %cmp42.i = icmp ult i8 %12, -123
  %or.cond59.i = select i1 %or.cond.i, i1 %cmp42.i, i1 false
  br i1 %or.cond59.i, label %if.then44.i, label %if.else.i

if.then44.i:                                      ; preds = %if.end29.i356
  %call45.i = call ptr @d2i_X509_bio(ptr noundef nonnull %call.i352, ptr noundef null) #15
  br label %if.end47.i

if.else.i:                                        ; preds = %if.end29.i356
  %call46.i = call ptr @PEM_read_bio_X509(ptr noundef nonnull %call.i352, ptr noundef null, ptr noundef null, ptr noundef null) #15
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.else.i, %if.then44.i
  %x509.0.i = phi ptr [ %call45.i, %if.then44.i ], [ %call46.i, %if.else.i ]
  %call48.i = call i32 @BIO_free(ptr noundef nonnull %call.i352) #15
  %tobool51.not.i = icmp eq ptr %x509.0.i, null
  call fastcc void @display_openssl_errors(i32 noundef 204) #15
  br i1 %tobool51.not.i, label %if.then55.i, label %read_x509.exit

if.then55.i:                                      ; preds = %if.end47.i
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %5) #18
  unreachable

read_x509.exit:                                   ; preds = %if.end47.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #15
  %call47 = call i32 @OPENSSL_init_crypto(i64 noundef 8, ptr noundef null) #15
  call fastcc void @display_openssl_errors(i32 noundef 302)
  %call48 = call ptr @EVP_get_digestbyname(ptr noundef %hash_algo.0) #15
  %tobool51.not = icmp eq ptr %call48, null
  call fastcc void @display_openssl_errors(i32 noundef 304)
  br i1 %tobool51.not, label %if.then55, label %if.end56

if.then55:                                        ; preds = %read_x509.exit
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.6) #18
  unreachable

if.end56:                                         ; preds = %read_x509.exit
  %call59 = call ptr @CMS_sign(ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 20674) #15
  %tobool62.not = icmp eq ptr %call59, null
  call fastcc void @display_openssl_errors(i32 noundef 311)
  br i1 %tobool62.not, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end56
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.7) #18
  unreachable

if.end67:                                         ; preds = %if.end56
  %call73 = call ptr @CMS_add1_signer(ptr noundef nonnull %call59, ptr noundef nonnull %x509.0.i, ptr noundef nonnull %private_key.0.i, ptr noundef nonnull %call48, i32 noundef %use_keyid.0.ph) #15
  %tobool74.not = icmp eq ptr %call73, null
  call fastcc void @display_openssl_errors(i32 noundef 317)
  br i1 %tobool74.not, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end67
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.8) #18
  unreachable

if.end79:                                         ; preds = %if.end67
  %call84 = call i32 @CMS_final(ptr noundef nonnull %call59, ptr noundef nonnull %call33, ptr noundef null, i32 noundef 130) #15
  %cmp85 = icmp slt i32 %call84, 0
  call fastcc void @display_openssl_errors(i32 noundef 319)
  br i1 %cmp85, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.end79
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.9) #18
  unreachable

if.end89:                                         ; preds = %if.end79
  %tobool92.not = icmp eq i8 %save_sig.0, 0
  br i1 %tobool92.not, label %if.end126, label %if.then93

if.then93:                                        ; preds = %if.end89
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sig_file_name) #15
  %call96 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %sig_file_name, ptr noundef nonnull @.str.10, ptr noundef %6) #15
  %cmp97 = icmp slt i32 %call96, 0
  call fastcc void @display_openssl_errors(i32 noundef 333)
  br i1 %cmp97, label %if.then100, label %if.end101

if.then100:                                       ; preds = %if.then93
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.3) #18
  unreachable

if.end101:                                        ; preds = %if.then93
  %13 = load ptr, ptr %sig_file_name, align 8, !tbaa !5
  %call104 = call ptr @BIO_new_file(ptr noundef %13, ptr noundef nonnull @.str.11) #15
  %tobool107.not = icmp eq ptr %call104, null
  call fastcc void @display_openssl_errors(i32 noundef 335)
  br i1 %tobool107.not, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.end101
  %14 = load ptr, ptr %sig_file_name, align 8, !tbaa !5
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %14) #18
  unreachable

if.end112:                                        ; preds = %if.end101
  %call117 = call i32 @i2d_CMS_bio_stream(ptr noundef nonnull %call104, ptr noundef nonnull %call59, ptr noundef null, i32 noundef 0) #15
  %cmp118 = icmp slt i32 %call117, 0
  call fastcc void @display_openssl_errors(i32 noundef 338)
  br i1 %cmp118, label %if.then121, label %if.end122

if.then121:                                       ; preds = %if.end112
  %15 = load ptr, ptr %sig_file_name, align 8, !tbaa !5
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %15) #18
  unreachable

if.end122:                                        ; preds = %if.end112
  %call125 = call i32 @BIO_free(ptr noundef nonnull %call104) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sig_file_name) #15
  br label %if.end126

if.end126:                                        ; preds = %if.end122, %if.end89
  %tobool127.not = icmp eq i8 %sign_only.0.ph392, 0
  br i1 %tobool127.not, label %if.end131, label %if.then128

if.then128:                                       ; preds = %if.end126
  %call129 = call i32 @BIO_free(ptr noundef nonnull %call33) #15
  br label %cleanup

if.end131:                                        ; preds = %if.end126, %if.end40
  %cms.0 = phi ptr [ null, %if.end40 ], [ %call59, %if.end126 ]
  %16 = load ptr, ptr %dest_name, align 8, !tbaa !5
  %call132 = call ptr @BIO_new_file(ptr noundef %16, ptr noundef nonnull @.str.11) #15
  %tobool135.not = icmp eq ptr %call132, null
  call fastcc void @display_openssl_errors(i32 noundef 356)
  br i1 %tobool135.not, label %if.then139, label %if.end140

if.then139:                                       ; preds = %if.end131
  %17 = load ptr, ptr %dest_name, align 8, !tbaa !5
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %17) #18
  unreachable

if.end140:                                        ; preds = %if.end131
  %call145 = call i64 @BIO_ctrl(ptr noundef nonnull %call33, i32 noundef 1, i64 noundef 0, ptr noundef null) #15
  %18 = and i64 %call145, 2147483648
  %cmp146.not = icmp eq i64 %18, 0
  call fastcc void @display_openssl_errors(i32 noundef 359)
  br i1 %cmp146.not, label %while.cond, label %if.then150

if.then150:                                       ; preds = %if.end140
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %6) #18
  unreachable

while.cond:                                       ; preds = %do.body157, %if.end140
  %call154 = call i32 @BIO_read(ptr noundef nonnull %call33, ptr noundef nonnull %buf, i32 noundef 4096) #15
  %cmp155 = icmp sgt i32 %call154, 0
  br i1 %cmp155, label %do.body157, label %while.end

do.body157:                                       ; preds = %while.cond
  %call160 = call i32 @BIO_write(ptr noundef nonnull %call132, ptr noundef nonnull %buf, i32 noundef %call154) #15
  %cmp161 = icmp slt i32 %call160, 0
  call fastcc void @display_openssl_errors(i32 noundef 362)
  br i1 %cmp161, label %if.then165, label %while.cond

if.then165:                                       ; preds = %do.body157
  %19 = load ptr, ptr %dest_name, align 8, !tbaa !5
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %19) #18
  unreachable

while.end:                                        ; preds = %while.cond
  %call169 = call i32 @BIO_free(ptr noundef nonnull %call33) #15
  %cmp172 = icmp slt i32 %call154, 0
  call fastcc void @display_openssl_errors(i32 noundef 365)
  br i1 %cmp172, label %if.then176, label %if.end177

if.then176:                                       ; preds = %while.end
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %6) #18
  unreachable

if.end177:                                        ; preds = %while.end
  %call180 = call i64 @BIO_number_written(ptr noundef nonnull %call132) #15
  br i1 %tobool.not, label %do.body183, label %if.else194

do.body183:                                       ; preds = %if.end177
  %call185 = call i32 @i2d_CMS_bio_stream(ptr noundef nonnull %call132, ptr noundef %cms.0, ptr noundef null, i32 noundef 0) #15
  %cmp186 = icmp slt i32 %call185, 0
  call fastcc void @display_openssl_errors(i32 noundef 370)
  br i1 %cmp186, label %if.then190, label %if.end227

if.then190:                                       ; preds = %do.body183
  %20 = load ptr, ptr %dest_name, align 8, !tbaa !5
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %20) #18
  unreachable

if.else194:                                       ; preds = %if.end177
  %call196 = call ptr @BIO_new_file(ptr noundef %raw_sig_name.0, ptr noundef nonnull @.str.4) #15
  %tobool199.not = icmp eq ptr %call196, null
  call fastcc void @display_openssl_errors(i32 noundef 381)
  br i1 %tobool199.not, label %if.then203, label %while.cond207

if.then203:                                       ; preds = %if.else194
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %raw_sig_name.0) #18
  unreachable

while.cond207:                                    ; preds = %do.body213, %if.else194
  %call209 = call i32 @BIO_read(ptr noundef nonnull %call196, ptr noundef nonnull %buf, i32 noundef 4096) #15
  %cmp210 = icmp sgt i32 %call209, 0
  br i1 %cmp210, label %do.body213, label %while.end225

do.body213:                                       ; preds = %while.cond207
  %call216 = call i32 @BIO_write(ptr noundef nonnull %call132, ptr noundef nonnull %buf, i32 noundef %call209) #15
  %cmp217 = icmp slt i32 %call216, 0
  call fastcc void @display_openssl_errors(i32 noundef 383)
  br i1 %cmp217, label %if.then221, label %while.cond207

if.then221:                                       ; preds = %do.body213
  %21 = load ptr, ptr %dest_name, align 8, !tbaa !5
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %21) #18
  unreachable

while.end225:                                     ; preds = %while.cond207
  %call226 = call i32 @BIO_free(ptr noundef nonnull %call196) #15
  br label %if.end227

if.end227:                                        ; preds = %while.end225, %do.body183
  %call228 = call i64 @BIO_number_written(ptr noundef nonnull %call132) #15
  %sub229 = sub i64 %call228, %call180
  %conv230 = trunc i64 %sub229 to i32
  %or7.i = call i32 @llvm.bswap.i32(i32 %conv230) #15
  %sig_len = getelementptr inbounds %struct.module_signature, ptr %sig_info, i64 0, i32 6
  store i32 %or7.i, ptr %sig_len, align 4, !tbaa !12
  %call234 = call i32 @BIO_write(ptr noundef nonnull %call132, ptr noundef nonnull %sig_info, i32 noundef 12) #15
  %cmp235 = icmp slt i32 %call234, 0
  call fastcc void @display_openssl_errors(i32 noundef 389)
  br i1 %cmp235, label %if.then239, label %if.end240

if.then239:                                       ; preds = %if.end227
  %22 = load ptr, ptr %dest_name, align 8, !tbaa !5
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %22) #18
  unreachable

if.end240:                                        ; preds = %if.end227
  %call245 = call i32 @BIO_write(ptr noundef nonnull %call132, ptr noundef nonnull @magic_number, i32 noundef 28) #15
  %cmp246 = icmp slt i32 %call245, 0
  call fastcc void @display_openssl_errors(i32 noundef 390)
  br i1 %cmp246, label %if.then250, label %if.end251

if.then250:                                       ; preds = %if.end240
  %23 = load ptr, ptr %dest_name, align 8, !tbaa !5
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %23) #18
  unreachable

if.end251:                                        ; preds = %if.end240
  %call256 = call i32 @BIO_free(ptr noundef nonnull %call132) #15
  %cmp257 = icmp slt i32 %call256, 0
  call fastcc void @display_openssl_errors(i32 noundef 392)
  br i1 %cmp257, label %if.then261, label %if.end262

if.then261:                                       ; preds = %if.end251
  %24 = load ptr, ptr %dest_name, align 8, !tbaa !5
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %24) #18
  unreachable

if.end262:                                        ; preds = %if.end251
  br i1 %replace_orig.0, label %do.body267, label %cleanup

do.body267:                                       ; preds = %if.end262
  %25 = load ptr, ptr %dest_name, align 8, !tbaa !5
  %call269 = call i32 @rename(ptr noundef %25, ptr noundef %6) #15
  %cmp270 = icmp slt i32 %call269, 0
  call fastcc void @display_openssl_errors(i32 noundef 396)
  br i1 %cmp270, label %if.then274, label %cleanup

if.then274:                                       ; preds = %do.body267
  %26 = load ptr, ptr %dest_name, align 8, !tbaa !5
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %26) #18
  unreachable

cleanup:                                          ; preds = %do.body267, %if.end262, %if.then128
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %buf) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dest_name) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sig_info) #15
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @OPENSSL_init_crypto(i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @ERR_clear_error() local_unnamed_addr #3

; Function Attrs: nofree nounwind readonly
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @format() unnamed_addr #6 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 74, i64 1, ptr %0) #20
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %3 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 75, i64 1, ptr %2) #20
  tail call void @exit(i32 noundef 2) #18
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @display_openssl_errors(i32 noundef %l) unnamed_addr #0 {
entry:
  %file = alloca ptr, align 8
  %buf = alloca [120 x i8], align 16
  %line = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %file) #15
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %buf) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %line) #15
  %call = tail call i64 @ERR_peek_error() #15
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %l) #20
  %call210 = call i64 @ERR_get_error_line(ptr noundef nonnull %file, ptr noundef nonnull %line) #15
  %conv11 = trunc i64 %call210 to i32
  %tobool.not12 = icmp eq i32 %conv11, 0
  br i1 %tobool.not12, label %cleanup, label %while.body

while.body:                                       ; preds = %while.body, %if.end
  %call213 = phi i64 [ %call2, %while.body ], [ %call210, %if.end ]
  %sext = shl i64 %call213, 32
  %conv3 = ashr exact i64 %sext, 32
  %call4 = call ptr @ERR_error_string(i64 noundef %conv3, ptr noundef nonnull %buf) #15
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  %2 = load ptr, ptr %file, align 8, !tbaa !5
  %3 = load i32, ptr %line, align 4, !tbaa !9
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull %buf, ptr noundef %2, i32 noundef %3) #20
  %call2 = call i64 @ERR_get_error_line(ptr noundef nonnull %file, ptr noundef nonnull %line) #15
  %conv = trunc i64 %call2 to i32
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %while.body, %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %line) #15
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %buf) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %file) #15
  ret void
}

; Function Attrs: noreturn
declare void @err(i32 noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @BIO_new_file(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @EVP_get_digestbyname(ptr noundef) local_unnamed_addr #3

declare ptr @CMS_sign(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @CMS_add1_signer(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @CMS_final(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @i2d_CMS_bio_stream(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #3

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BIO_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BIO_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @BIO_number_written(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

declare i64 @ERR_peek_error() local_unnamed_addr #3

declare i64 @ERR_get_error_line(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ERR_error_string(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #7

declare void @ENGINE_load_builtin_engines() local_unnamed_addr #3

declare ptr @ENGINE_by_id(ptr noundef) local_unnamed_addr #3

declare i32 @ENGINE_init(ptr noundef) local_unnamed_addr #3

declare i32 @ENGINE_ctrl_cmd_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @ENGINE_load_private_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PEM_read_bio_PrivateKey(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define internal i32 @pem_pw_cb(ptr noundef %buf, i32 noundef %len, i32 noundef %w, ptr nocapture noundef readnone %v) #11 {
entry:
  %0 = load ptr, ptr @key_pass, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i64 @strlen(ptr noundef nonnull %0) #17
  %conv = trunc i64 %call to i32
  %cmp.not = icmp slt i32 %conv, %len
  br i1 %cmp.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %buf, ptr noundef nonnull %0) #15
  store ptr null, ptr @key_pass, align 8, !tbaa !5
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ %conv, %if.end3 ], [ -1, %entry ], [ -1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

declare i32 @BIO_test_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @d2i_X509_bio(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PEM_read_bio_X509(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #14

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { noreturn nounwind }
attributes #19 = { cold nounwind }
attributes #20 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !10, i64 8}
!13 = !{!"module_signature", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !10, i64 8}
