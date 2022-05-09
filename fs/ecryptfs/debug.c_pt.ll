; ModuleID = '/llk/IR_all_yes/fs/ecryptfs/debug.c_pt.bc'
source_filename = "../fs/ecryptfs/debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ecryptfs_auth_tok = type { i16, i16, i32, %struct.ecryptfs_session_key, [32 x i8], %union.anon }
%struct.ecryptfs_session_key = type { i32, i32, i32, [512 x i8], [64 x i8] }
%union.anon = type { %struct.ecryptfs_password }
%struct.ecryptfs_password = type { i32, i32, i32, i32, i32, [64 x i8], [17 x i8], [8 x i8] }

@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: Auth tok at mem loc [%p]:\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.ecryptfs_dump_auth_tok = private unnamed_addr constant [23 x i8] c"ecryptfs_dump_auth_tok\00", align 1
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s:  * private key type\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s:  * passphrase type\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s:  * salt = [%s]\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s:  * persistent\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s:  * signature = [%s]\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s:  * session_key.flags = [0x%x]\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s:  * Userspace decrypt request set\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s:  * Userspace encrypt request set\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s:  * Contains decrypted key\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s:  * session_key.decrypted_key_size = [0x%x]\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s:  * Decrypted session key dump:\0A\00", [58 x i8] zeroinitializer }, align 32
@ecryptfs_verbosity = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s:  * Contains encrypted key\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s:  * session_key.encrypted_key_size = [0x%x]\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s:  * Encrypted session key dump:\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ecryptfs: \00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 23, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 26, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 28, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 32, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 35, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 40, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 42, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 46, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 50, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 53, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 54, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 57, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 64, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 65, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 68, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 89, i32 17 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [23 x i8] c"../fs/ecryptfs/debug.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 89, i32 29 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ecryptfs_dump_auth_tok(ptr noundef %auth_tok) local_unnamed_addr #0 align 64 {
entry:
  %salt = alloca [17 x i8], align 1
  %sig = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %salt) #3
  %0 = call ptr @memset(ptr %salt, i32 255, i32 17)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %sig) #3
  %1 = getelementptr inbounds [17 x i8], ptr %sig, i32 0, i32 16
  %2 = call ptr @memset(ptr %sig, i32 255, i32 17)
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ecryptfs_dump_auth_tok, ptr noundef %auth_tok) #3
  %flags = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %auth_tok, i32 0, i32 2
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %flags, align 1
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ecryptfs_dump_auth_tok) #3
  br label %if.end14

if.else:                                          ; preds = %entry
  %5 = getelementptr inbounds [17 x i8], ptr %salt, i32 0, i32 16
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ecryptfs_dump_auth_tok) #3
  %salt1 = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %auth_tok, i32 0, i32 5, i32 0, i32 7
  %call.i = call ptr @bin2hex(ptr noundef nonnull %salt, ptr noundef %salt1, i32 noundef 8) #3
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %call.i, align 1
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %5, align 1
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ecryptfs_dump_auth_tok, ptr noundef nonnull %salt) #3
  %flags5 = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %auth_tok, i32 0, i32 5, i32 0, i32 4
  %8 = ptrtoint ptr %flags5 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %flags5, align 1
  %and6 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else.if.end_crit_edge, label %if.then8

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ecryptfs_dump_auth_tok) #3
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.else.if.end_crit_edge
  %signature = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %auth_tok, i32 0, i32 5, i32 0, i32 6
  %10 = call ptr @memcpy(ptr %sig, ptr %signature, i32 16)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %1, align 1
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.ecryptfs_dump_auth_tok, ptr noundef nonnull %sig) #3
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  %session_key = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %auth_tok, i32 0, i32 3
  %12 = ptrtoint ptr %session_key to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %session_key, align 1
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ecryptfs_dump_auth_tok, i32 noundef %13) #3
  %14 = ptrtoint ptr %session_key to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %session_key, align 1
  %and18 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end14.if.end21_crit_edge, label %if.then20

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ecryptfs_dump_auth_tok) #3
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end14.if.end21_crit_edge
  %16 = ptrtoint ptr %session_key to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %session_key, align 1
  %and24 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end21.if.end27_crit_edge, label %if.then26

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.ecryptfs_dump_auth_tok) #3
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end21.if.end27_crit_edge
  %18 = ptrtoint ptr %session_key to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %session_key, align 1
  %and30 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end27.if.end38_crit_edge, label %if.then32

if.end27.if.end38_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end38

if.then32:                                        ; preds = %if.end27
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.ecryptfs_dump_auth_tok) #3
  %decrypted_key_size = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %auth_tok, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %decrypted_key_size to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %decrypted_key_size, align 1
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.ecryptfs_dump_auth_tok, i32 noundef %21) #3
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.ecryptfs_dump_auth_tok) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_verbosity to i32))
  %22 = load i32, ptr @ecryptfs_verbosity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp = icmp sgt i32 %22, 0
  br i1 %cmp, label %ecryptfs_dump_hex.exit, label %if.then32.if.end38_crit_edge

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end38

ecryptfs_dump_hex.exit:                           ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #5
  %decrypted_key = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %auth_tok, i32 0, i32 3, i32 4
  call void @print_hex_dump(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %decrypted_key, i32 noundef 16, i1 noundef zeroext false) #3
  br label %if.end38

if.end38:                                         ; preds = %ecryptfs_dump_hex.exit, %if.then32.if.end38_crit_edge, %if.end27.if.end38_crit_edge
  %23 = ptrtoint ptr %session_key to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %session_key, align 1
  %and41 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end38.if.end52_crit_edge, label %if.then43

if.end38.if.end52_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end52

if.then43:                                        ; preds = %if.end38
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ecryptfs_dump_auth_tok) #3
  %encrypted_key_size = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %auth_tok, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %encrypted_key_size to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %encrypted_key_size, align 1
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.ecryptfs_dump_auth_tok, i32 noundef %26) #3
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.ecryptfs_dump_auth_tok) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_verbosity to i32))
  %27 = load i32, ptr @ecryptfs_verbosity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp45 = icmp sgt i32 %27, 0
  br i1 %cmp45, label %ecryptfs_dump_hex.exit69, label %if.then43.if.end52_crit_edge

if.then43.if.end52_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end52

ecryptfs_dump_hex.exit69:                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #5
  %encrypted_key = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %auth_tok, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %encrypted_key_size to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %encrypted_key_size, align 1
  call void @print_hex_dump(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %encrypted_key, i32 noundef %29, i1 noundef zeroext false) #3
  br label %if.end52

if.end52:                                         ; preds = %ecryptfs_dump_hex.exit69, %if.then43.if.end52_crit_edge, %if.end38.if.end52_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %sig) #3
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %salt) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ecryptfs_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ecryptfs_dump_hex(ptr noundef %data, i32 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_verbosity to i32))
  %0 = load i32, ptr @ecryptfs_verbosity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @print_hex_dump(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %data, i32 noundef %bytes, i1 noundef zeroext false) #3
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bin2hex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ecryptfs/debug.c", i32 23, i32 2}
!2 = !{ptr @__func__.ecryptfs_dump_auth_tok, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ecryptfs/debug.c", i32 26, i32 3}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ecryptfs/debug.c", i32 28, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ecryptfs/debug.c", i32 32, i32 3}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ecryptfs/debug.c", i32 35, i32 4}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ecryptfs/debug.c", i32 40, i32 3}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ecryptfs/debug.c", i32 42, i32 2}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ecryptfs/debug.c", i32 46, i32 3}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ecryptfs/debug.c", i32 50, i32 3}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ecryptfs/debug.c", i32 53, i32 3}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ecryptfs/debug.c", i32 54, i32 3}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ecryptfs/debug.c", i32 57, i32 3}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ecryptfs/debug.c", i32 64, i32 3}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ecryptfs/debug.c", i32 65, i32 3}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ecryptfs/debug.c", i32 68, i32 3}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ecryptfs/debug.c", i32 89, i32 17}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ecryptfs/debug.c", i32 89, i32 29}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
