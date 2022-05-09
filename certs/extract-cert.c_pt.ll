; ModuleID = '/llk/IR_all_yes/certs/extract-cert.c_pt.bc'
source_filename = "../certs/extract-cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { ptr, ptr }

@.str = private unnamed_addr constant [15 x i8] c"KBUILD_VERBOSE\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@kbuild_verbose = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"KBUILD_SIGN_PIN\00", align 1
@key_pass = internal unnamed_addr global ptr null, align 8
@cert_dst = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"pkcs11:\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"pkcs11\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Load PKCS#11 ENGINE\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"ENGINE_init\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"PIN\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Set PKCS#11 PIN\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"LOAD_CERT_CTRL\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Get X.509 from PKCS#11\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@wb = internal unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [37 x i8] c"Usage: extract-cert <source> <dest>\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"At main.c:%d:\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"- SSL %s: %s:%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Extracted cert: %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readonly %argv) local_unnamed_addr #0 {
entry:
  %file.i127 = alloca ptr, align 8
  %line.i128 = alloca i32, align 4
  %file.i = alloca ptr, align 8
  %line.i = alloca i32, align 4
  %parms = alloca %struct.anon, align 8
  %call = tail call i32 @OPENSSL_init_crypto(i64 noundef 12, ptr noundef null) #11
  %call1 = tail call i32 @OPENSSL_init_crypto(i64 noundef 2, ptr noundef null) #11
  tail call void @ERR_clear_error() #11
  %call2 = tail call ptr @getenv(ptr noundef nonnull @.str) #11
  %tobool.not = icmp eq ptr %call2, null
  %call2..str.1 = select i1 %tobool.not, ptr @.str.1, ptr %call2
  %call.i = tail call i64 @strtol(ptr nocapture noundef nonnull %call2..str.1, ptr noundef null, i32 noundef 10) #11
  %conv.i = trunc i64 %call.i to i32
  store i32 %conv.i, ptr @kbuild_verbose, align 4, !tbaa !5
  %call4 = tail call ptr @getenv(ptr noundef nonnull @.str.2) #11
  store ptr %call4, ptr @key_pass, align 8, !tbaa !9
  %cmp.not = icmp eq i32 %argc, 3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call fastcc void @format() #12
  unreachable

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds ptr, ptr %argv, i64 1
  %0 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %arrayidx5 = getelementptr inbounds ptr, ptr %argv, i64 2
  %1 = load ptr, ptr %arrayidx5, align 8, !tbaa !9
  store ptr %1, ptr @cert_dst, align 8, !tbaa !9
  %2 = load i8, ptr %0, align 1, !tbaa !11
  %tobool7.not = icmp eq i8 %2, 0
  br i1 %tobool7.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %call9 = tail call ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.3)
  %tobool10.not = icmp eq ptr %call9, null
  tail call fastcc void @display_openssl_errors(i32 noundef 111)
  br i1 %tobool10.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then8
  %3 = load ptr, ptr @cert_dst, align 8, !tbaa !9
  tail call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef %3) #13
  unreachable

if.end13:                                         ; preds = %if.then8
  %call14 = tail call i32 @fclose(ptr noundef nonnull %call9)
  tail call void @exit(i32 noundef 0) #13
  unreachable

if.else:                                          ; preds = %if.end
  %call15 = tail call i32 @strncmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(8) @.str.5, i64 noundef 7) #14
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.else68

if.then17:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %parms) #11
  store ptr %0, ptr %parms, align 8, !tbaa !12
  %cert = getelementptr inbounds %struct.anon, ptr %parms, i64 0, i32 1
  store ptr null, ptr %cert, align 8, !tbaa !14
  tail call void @ENGINE_load_builtin_engines() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %file.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %line.i) #11
  %call.i126 = tail call i64 @ERR_peek_error() #11
  %cmp.i = icmp eq i64 %call.i126, 0
  br i1 %cmp.i, label %drain_openssl_errors.exit, label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.then17
  %call1.i = call i64 @ERR_get_error_line(ptr noundef nonnull %file.i, ptr noundef nonnull %line.i) #11
  %tobool.not.i = icmp eq i64 %call1.i, 0
  br i1 %tobool.not.i, label %drain_openssl_errors.exit, label %while.cond.i

drain_openssl_errors.exit:                        ; preds = %while.cond.i, %if.then17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %line.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %file.i) #11
  %call18 = call ptr @ENGINE_by_id(ptr noundef nonnull @.str.6) #11
  %tobool21.not = icmp eq ptr %call18, null
  call fastcc void @display_openssl_errors(i32 noundef 127)
  br i1 %tobool21.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %drain_openssl_errors.exit
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.7) #13
  unreachable

if.end26:                                         ; preds = %drain_openssl_errors.exit
  %call29 = call i32 @ENGINE_init(ptr noundef nonnull %call18) #11
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.body33, label %if.then31

if.then31:                                        ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %file.i127) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %line.i128) #11
  %call.i129 = call i64 @ERR_peek_error() #11
  %cmp.i130 = icmp eq i64 %call.i129, 0
  br i1 %cmp.i130, label %drain_openssl_errors.exit134, label %while.cond.i133

while.cond.i133:                                  ; preds = %while.cond.i133, %if.then31
  %call1.i131 = call i64 @ERR_get_error_line(ptr noundef nonnull %file.i127, ptr noundef nonnull %line.i128) #11
  %tobool.not.i132 = icmp eq i64 %call1.i131, 0
  br i1 %tobool.not.i132, label %drain_openssl_errors.exit134, label %while.cond.i133

drain_openssl_errors.exit134:                     ; preds = %while.cond.i133, %if.then31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %line.i128) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %file.i127) #11
  %4 = load ptr, ptr @key_pass, align 8, !tbaa !9
  %tobool41.not = icmp eq ptr %4, null
  br i1 %tobool41.not, label %if.end54, label %do.body43

do.body33:                                        ; preds = %if.end26
  call fastcc void @display_openssl_errors(i32 noundef 131)
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.8) #13
  unreachable

do.body43:                                        ; preds = %drain_openssl_errors.exit134
  %call45 = call i32 @ENGINE_ctrl_cmd_string(ptr noundef nonnull %call18, ptr noundef nonnull @.str.9, ptr noundef nonnull %4, i32 noundef 0) #11
  %tobool46.not = icmp eq i32 %call45, 0
  call fastcc void @display_openssl_errors(i32 noundef 133)
  br i1 %tobool46.not, label %if.then50, label %if.end54

if.then50:                                        ; preds = %do.body43
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.10) #13
  unreachable

if.end54:                                         ; preds = %do.body43, %drain_openssl_errors.exit134
  %call55 = call i32 @ENGINE_ctrl_cmd(ptr noundef nonnull %call18, ptr noundef nonnull @.str.11, i64 noundef 0, ptr noundef nonnull %parms, ptr noundef null, i32 noundef 1) #11
  %5 = load ptr, ptr %cert, align 8, !tbaa !14
  %tobool59.not = icmp eq ptr %5, null
  call fastcc void @display_openssl_errors(i32 noundef 135)
  br i1 %tobool59.not, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end54
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.12) #13
  unreachable

if.end64:                                         ; preds = %if.end54
  %6 = load ptr, ptr %cert, align 8, !tbaa !14
  call fastcc void @write_cert(ptr noundef %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %parms) #11
  br label %if.end106

if.else68:                                        ; preds = %if.else
  %call69 = tail call ptr @BIO_new_file(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #11
  %tobool72.not = icmp eq ptr %call69, null
  tail call fastcc void @display_openssl_errors(i32 noundef 142)
  br i1 %tobool72.not, label %if.then76, label %while.cond

if.then76:                                        ; preds = %if.else68
  tail call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull %0) #13
  unreachable

while.cond:                                       ; preds = %if.end102, %if.else68
  %call80 = tail call ptr @PEM_read_bio_X509(ptr noundef nonnull %call69, ptr noundef null, ptr noundef null, ptr noundef null) #11
  %7 = load ptr, ptr @wb, align 8, !tbaa !9
  %tobool81 = icmp eq ptr %7, null
  %tobool82 = icmp ne ptr %call80, null
  %or.cond = select i1 %tobool81, i1 true, i1 %tobool82
  br i1 %or.cond, label %do.body95, label %if.then83

if.then83:                                        ; preds = %while.cond
  %call84 = tail call i64 @ERR_peek_last_error() #11
  %8 = and i64 %call84, 4278194175
  %9 = icmp eq i64 %8, 150995052
  br i1 %9, label %cleanup, label %do.body95

cleanup:                                          ; preds = %if.then83
  tail call void @ERR_clear_error() #11
  br label %if.end106

do.body95:                                        ; preds = %if.then83, %while.cond
  tail call fastcc void @display_openssl_errors(i32 noundef 154)
  br i1 %tobool82, label %if.end102, label %if.then101

if.then101:                                       ; preds = %do.body95
  tail call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull %0) #13
  unreachable

if.end102:                                        ; preds = %do.body95
  tail call fastcc void @write_cert(ptr noundef nonnull %call80)
  br label %while.cond

if.end106:                                        ; preds = %cleanup, %if.end64
  %10 = load ptr, ptr @wb, align 8, !tbaa !9
  %call107 = call i32 @BIO_free(ptr noundef %10) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @OPENSSL_init_crypto(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_clear_error() local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @format() unnamed_addr #4 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !9
  %1 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 36, i64 1, ptr %0) #15
  tail call void @exit(i32 noundef 2) #13
  unreachable
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @display_openssl_errors(i32 noundef %l) unnamed_addr #0 {
entry:
  %file = alloca ptr, align 8
  %buf = alloca [120 x i8], align 16
  %line = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %file) #11
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %buf) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %line) #11
  %call = tail call i64 @ERR_peek_error() #11
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %l) #15
  %call210 = call i64 @ERR_get_error_line(ptr noundef nonnull %file, ptr noundef nonnull %line) #11
  %conv11 = trunc i64 %call210 to i32
  %tobool.not12 = icmp eq i32 %conv11, 0
  br i1 %tobool.not12, label %cleanup, label %while.body

while.body:                                       ; preds = %while.body, %if.end
  %call213 = phi i64 [ %call2, %while.body ], [ %call210, %if.end ]
  %sext = shl i64 %call213, 32
  %conv3 = ashr exact i64 %sext, 32
  %call4 = call ptr @ERR_error_string(i64 noundef %conv3, ptr noundef nonnull %buf) #11
  %1 = load ptr, ptr @stderr, align 8, !tbaa !9
  %2 = load ptr, ptr %file, align 8, !tbaa !9
  %3 = load i32, ptr %line, align 4, !tbaa !5
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %buf, ptr noundef %2, i32 noundef %3) #15
  %call2 = call i64 @ERR_get_error_line(ptr noundef nonnull %file, ptr noundef nonnull %line) #11
  %conv = trunc i64 %call2 to i32
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %while.body, %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %line) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %buf) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %file) #11
  ret void
}

; Function Attrs: noreturn
declare void @err(i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #8

declare void @ENGINE_load_builtin_engines() local_unnamed_addr #2

declare ptr @ENGINE_by_id(ptr noundef) local_unnamed_addr #2

declare i32 @ENGINE_init(ptr noundef) local_unnamed_addr #2

declare i32 @ENGINE_ctrl_cmd_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ENGINE_ctrl_cmd(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @write_cert(ptr noundef %x509) unnamed_addr #0 {
entry:
  %buf = alloca [200 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf) #11
  %0 = load ptr, ptr @wb, align 8, !tbaa !9
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @cert_dst, align 8, !tbaa !9
  %call = tail call ptr @BIO_new_file(ptr noundef %1, ptr noundef nonnull @.str.3) #11
  store ptr %call, ptr @wb, align 8, !tbaa !9
  %tobool1.not = icmp eq ptr %call, null
  tail call fastcc void @display_openssl_errors(i32 noundef 82)
  br i1 %tobool1.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.then
  %2 = load ptr, ptr @cert_dst, align 8, !tbaa !9
  tail call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef %2) #13
  unreachable

if.end4:                                          ; preds = %if.then, %entry
  %call5 = tail call ptr @X509_get_subject_name(ptr noundef %x509) #11
  %call6 = call ptr @X509_NAME_oneline(ptr noundef %call5, ptr noundef nonnull %buf, i32 noundef 200) #11
  %3 = load ptr, ptr @wb, align 8, !tbaa !9
  %call9 = call i32 @i2d_X509_bio(ptr noundef %3, ptr noundef %x509) #11
  %tobool10.not = icmp eq i32 %call9, 0
  call fastcc void @display_openssl_errors(i32 noundef 85)
  br i1 %tobool10.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end4
  %4 = load ptr, ptr @cert_dst, align 8, !tbaa !9
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef %4) #13
  unreachable

if.end15:                                         ; preds = %if.end4
  %5 = load i32, ptr @kbuild_verbose, align 4, !tbaa !5
  %tobool18.not = icmp eq i32 %5, 0
  br i1 %tobool18.not, label %if.end22, label %if.then19

if.then19:                                        ; preds = %if.end15
  %6 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.17, ptr noundef nonnull %buf) #15
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end15
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf) #11
  ret void
}

declare ptr @BIO_new_file(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PEM_read_bio_X509(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @ERR_peek_last_error() local_unnamed_addr #2

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare i64 @ERR_peek_error() local_unnamed_addr #2

declare i64 @ERR_get_error_line(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ERR_error_string(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @X509_NAME_oneline(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @X509_get_subject_name(ptr noundef) local_unnamed_addr #2

declare i32 @i2d_X509_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !10, i64 0}
!13 = !{!"", !10, i64 0, !10, i64 8}
!14 = !{!13, !10, i64 8}
