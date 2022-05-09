; ModuleID = '/llk/IR_all_yes/net/bluetooth/selftest.c_pt.bc'
source_filename = "../net/bluetooth/selftest.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_bluetooth__475_307_bt_selftest_init7 = internal global ptr @bt_selftest_init, section ".initcall7.init", align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Starting self testing\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Finished self testing\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ecdh-nist-p256\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to create ECDH crypto context\0A\00", [58 x i8] zeroinitializer }, align 32
@priv_a_1 = internal constant [32 x i8] c"\BD\1A<\CD\A6\B8\99X\99\B7@\EB{`\FFJP?\10\D2\E3\B3\C9t8_\C5\A3\D4\F6I?", section ".init.rodata", align 1
@priv_b_1 = internal constant [32 x i8] c"\FD\C5\7F\F4I\DDOk\FB|\9D\F1\C2\9A\CBY*\E7\D4\EE\FB\FC\0A\90\9A\BB\F62=\8B\18U", section ".init.rodata", align 1
@pub_a_1 = internal constant [64 x i8] c"\E6\9D5\0EH\01\03\CC\DB\FD\F4\AC\11\91\F4\EF\B9\A5\F9\E9\A7\83,^,\BE\97\F2\D2\03\B0 \8B\D2\89\15\D0\8E\1Ct$0\ED\8F\C2Ecv\\\15RZ\BF\9A2cm\EB*eI\9C\80\DC", section ".init.rodata", align 1
@pub_b_1 = internal constant [64 x i8] c"\90\A1\AA/\B2w\90U\9F\A6\15\86\FD\8A\B5G\00L\9E\F1\84\22Y\09\96\1D\AF\1F\F0\F0\A1\1EJ!\B1\15\F9\AF\89_v6\8E\E20\11-G`Q\B8\9A:pVs7\AD\9DB>\F3UL", section ".init.rodata", align 1
@dhkey_1 = internal constant [32 x i8] c"\98\A6\BFs\F34\8D\86\F1f\F8\B4\13ky\99\9B}9\0A\A6\10\104\05\AD\C8W\A34\02\EC", section ".init.rodata", align 1
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ECDH sample 1 failed\0A\00", [42 x i8] zeroinitializer }, align 32
@priv_a_2 = internal constant [32 x i8] c"cvE\D0\F7s\AC\B7\FF\DD\03r\B9r\85\B4A\B6]\0C]T\84`\1A\A3\9A<i\16\A5\06", section ".init.rodata", align 1
@priv_b_2 = internal constant [32 x i8] c"\BA0UP\19\A2\CA\A3\A5)\08\C6\B5\03\88~\03+Ps\D4.P\97d\CDr\0Dg\A0\9AR", section ".init.rodata", align 1
@pub_a_2 = internal constant [64 x i8] c"\DDx\\t\03\9B~\98\CB\94\87J\AD\FA\F8\D5C>\\\AF\EA\B5L\F4\9E\80yW{\A41,O]qCwC\F8\EA\D4>\BD\17\91\10!\D0\1F\87C\8E@\E2R\CD\BE\DF\988\18\12\95\91", section ".init.rodata", align 1
@pub_b_2 = internal constant [64 x i8] c"\CC\00e\E1\F5l\0D\CF\EC\96G f\C9\DB\84\81u\A8M\C0\DF\C7\9D\1B?=\F2?\E4e\F4y\B2\EC\D8\CAU\A1\A8CMk\CA\10\B0\C2\01\C23N\16$\C4\EF\EE\99\D8\BB\BCH\D0\01\02", section ".init.rodata", align 1
@dhkey_2 = internal constant [32 x i8] c"i\EB!2\F2\C6\05A`\19\CD^\94\E1\E6_3\07\E38Kh\E5b?\88m/:\84\85\AB", section ".init.rodata", align 1
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ECDH sample 2 failed\0A\00", [42 x i8] zeroinitializer }, align 32
@priv_a_3 = internal constant [32 x i8] c"\BD\1A<\CD\A6\B8\99X\99\B7@\EB{`\FFJP?\10\D2\E3\B3\C9t8_\C5\A3\D4\F6I?", section ".init.rodata", align 1
@pub_a_3 = internal constant [64 x i8] c"\E6\9D5\0EH\01\03\CC\DB\FD\F4\AC\11\91\F4\EF\B9\A5\F9\E9\A7\83,^,\BE\97\F2\D2\03\B0 \8B\D2\89\15\D0\8E\1Ct$0\ED\8F\C2Ecv\\\15RZ\BF\9A2cm\EB*eI\9C\80\DC", section ".init.rodata", align 1
@dhkey_3 = internal constant [32 x i8] c"-\AB\00H\CB\B3{\DAU{\8Br\A8W\87\C3\87'\992\FCy_\AE|\1C\F9I\E6\D7\AAp", section ".init.rodata", align 1
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ECDH sample 3 failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ECDH test passed in %llu usecs\0A\00", [32 x i8] zeroinitializer }, align 32
@test_ecdh_buffer = internal global { [32 x i8], [32 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PASS (%llu usecs)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FAIL\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"selftest_ecdh\00", [18 x i8] zeroinitializer }, align 32
@bt_debugfs = external dso_local local_unnamed_addr global ptr, align 4
@test_ecdh_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @test_ecdh_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 270, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 279, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 208, i32 25 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 210, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 218, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 225, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 232, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 242, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"test_ecdh_buffer\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 184, i32 13 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 247, i32 5 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 249, i32 56 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 251, i32 22 }
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"test_ecdh_fops\00", align 1
@___asan_gen_.48 = private constant [28 x i8] c"../net/bluetooth/selftest.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 193, i32 37 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__initcall__kmod_bluetooth__475_307_bt_selftest_init7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @test_ecdh_buffer, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @test_ecdh_fops], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ecdh_buffer to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ecdh_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bt_selftest_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @run_selftest() #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @run_selftest() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str) #7
  %call = tail call fastcc i32 @test_ecdh() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @bt_selftest_smp() #7
  br label %done

done:                                             ; preds = %if.end, %entry.done_crit_edge
  %err.0 = phi i32 [ %call, %entry.done_crit_edge ], [ %call1, %if.end ]
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.1) #7
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_ecdh() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #7
  %call1 = tail call ptr @crypto_alloc_kpp(ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %done, label %if.end

if.end:                                           ; preds = %entry
  %call4 = tail call fastcc i32 @test_ecdh_sample(ptr noundef %call1, ptr noundef nonnull @priv_a_1, ptr noundef nonnull @priv_b_1, ptr noundef nonnull @pub_a_1, ptr noundef nonnull @pub_b_1, ptr noundef nonnull @dhkey_1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.4) #7
  br label %if.else

if.end6:                                          ; preds = %if.end
  %call7 = tail call fastcc i32 @test_ecdh_sample(ptr noundef %call1, ptr noundef nonnull @priv_a_2, ptr noundef nonnull @priv_b_2, ptr noundef nonnull @pub_a_2, ptr noundef nonnull @pub_b_2, ptr noundef nonnull @dhkey_2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.5) #7
  br label %if.else

if.end10:                                         ; preds = %if.end6
  %call11 = tail call fastcc i32 @test_ecdh_sample(ptr noundef %call1, ptr noundef nonnull @priv_a_3, ptr noundef nonnull @priv_a_3, ptr noundef nonnull @pub_a_3, ptr noundef nonnull @pub_a_3, ptr noundef nonnull @dhkey_3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %done.thread38, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.6) #7
  br label %if.else

done.thread38:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_destroy_tfm(ptr noundef %call1, ptr noundef %call1) #7
  %call15 = tail call i64 @ktime_get() #7
  %sub = sub i64 %call15, %call
  %shr = lshr i64 %sub, 10
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.7, i64 noundef %shr) #7
  %call19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @test_ecdh_buffer, i32 noundef 32, ptr noundef nonnull @.str.8, i64 noundef %shr)
  br label %if.end21

done:                                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.3) #7
  %0 = ptrtoint ptr %call1 to i32
  br label %if.else

if.else:                                          ; preds = %done, %if.then13, %if.then9, %if.then5
  %err.037 = phi i32 [ %0, %done ], [ %call11, %if.then13 ], [ %call7, %if.then9 ], [ %call4, %if.then5 ]
  %1 = call ptr @memcpy(ptr @test_ecdh_buffer, ptr @.str.9, i32 6)
  br label %if.end21

if.end21:                                         ; preds = %if.else, %done.thread38
  %err.036 = phi i32 [ %err.037, %if.else ], [ 0, %done.thread38 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bt_debugfs to i32))
  %2 = load ptr, ptr @bt_debugfs, align 4
  %call22 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 292, ptr noundef %2, ptr noundef null, ptr noundef nonnull @test_ecdh_fops) #7
  ret i32 %err.036
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_selftest_smp() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_kpp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_ecdh_sample(ptr noundef %tfm, ptr noundef %priv_a, ptr noundef %priv_b, ptr noundef %pub_a, ptr noundef %pub_b, ptr nocapture noundef readonly %dhkey) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 64) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr i8, ptr %call7.i, i32 32
  %call2 = tail call i32 @set_ecdh_privkey(ptr noundef %tfm, ptr noundef %priv_a) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @compute_ecdh_secret(ptr noundef %tfm, ptr noundef %pub_b, ptr noundef nonnull %call7.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end9:                                          ; preds = %if.end5
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(32) %call7.i, ptr noundef dereferenceable(32) %dhkey, i32 32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool11.not = icmp eq i32 %bcmp, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 @set_ecdh_privkey(ptr noundef %tfm, ptr noundef %priv_b) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end17:                                         ; preds = %if.end13
  %call18 = tail call i32 @compute_ecdh_secret(ptr noundef %tfm, ptr noundef %pub_a, ptr noundef %arrayidx1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.out_crit_edge

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %bcmp42 = tail call i32 @bcmp(ptr noundef dereferenceable(32) %arrayidx1, ptr noundef dereferenceable(32) %dhkey, i32 32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp42)
  %tobool23.not = icmp eq i32 %bcmp42, 0
  %spec.select = select i1 %tobool23.not, i32 0, i32 -22
  br label %out

out:                                              ; preds = %if.end21, %if.end17.out_crit_edge, %if.end13.out_crit_edge, %if.end9.out_crit_edge, %if.end5.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.out_crit_edge ], [ %call6, %if.end5.out_crit_edge ], [ %call14, %if.end13.out_crit_edge ], [ %call18, %if.end17.out_crit_edge ], [ -22, %if.end9.out_crit_edge ], [ %spec.select, %if.end21 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_ecdh_privkey(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @compute_ecdh_secret(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_ecdh_read(ptr nocapture noundef readnone %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef nonnull @test_ecdh_buffer) #12
  %call1 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @test_ecdh_buffer, i32 noundef %call) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_bluetooth__475_307_bt_selftest_init7, !1, !"__initcall__kmod_bluetooth__475_307_bt_selftest_init7", i1 false, i1 false}
!1 = !{!"../net/bluetooth/selftest.c", i32 307, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/bluetooth/selftest.c", i32 270, i32 2}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/bluetooth/selftest.c", i32 279, i32 2}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/bluetooth/selftest.c", i32 208, i32 25}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/bluetooth/selftest.c", i32 210, i32 3}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/bluetooth/selftest.c", i32 218, i32 3}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/bluetooth/selftest.c", i32 225, i32 3}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/bluetooth/selftest.c", i32 232, i32 3}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/bluetooth/selftest.c", i32 242, i32 2}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/bluetooth/selftest.c", i32 247, i32 5}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/bluetooth/selftest.c", i32 249, i32 56}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/bluetooth/selftest.c", i32 251, i32 22}
!24 = !{ptr @priv_a_1, !25, !"priv_a_1", i1 false, i1 false}
!25 = !{!"../net/bluetooth/selftest.c", i32 35, i32 17}
!26 = !{ptr @priv_b_1, !27, !"priv_b_1", i1 false, i1 false}
!27 = !{!"../net/bluetooth/selftest.c", i32 41, i32 17}
!28 = !{ptr @pub_a_1, !29, !"pub_a_1", i1 false, i1 false}
!29 = !{!"../net/bluetooth/selftest.c", i32 47, i32 17}
!30 = !{ptr @pub_b_1, !31, !"pub_b_1", i1 false, i1 false}
!31 = !{!"../net/bluetooth/selftest.c", i32 58, i32 17}
!32 = !{ptr @dhkey_1, !33, !"dhkey_1", i1 false, i1 false}
!33 = !{!"../net/bluetooth/selftest.c", i32 69, i32 17}
!34 = !{ptr @priv_a_2, !35, !"priv_a_2", i1 false, i1 false}
!35 = !{!"../net/bluetooth/selftest.c", i32 76, i32 17}
!36 = !{ptr @priv_b_2, !37, !"priv_b_2", i1 false, i1 false}
!37 = !{!"../net/bluetooth/selftest.c", i32 82, i32 17}
!38 = !{ptr @pub_a_2, !39, !"pub_a_2", i1 false, i1 false}
!39 = !{!"../net/bluetooth/selftest.c", i32 88, i32 17}
!40 = !{ptr @pub_b_2, !41, !"pub_b_2", i1 false, i1 false}
!41 = !{!"../net/bluetooth/selftest.c", i32 99, i32 17}
!42 = !{ptr @dhkey_2, !43, !"dhkey_2", i1 false, i1 false}
!43 = !{!"../net/bluetooth/selftest.c", i32 110, i32 17}
!44 = !{ptr @priv_a_3, !45, !"priv_a_3", i1 false, i1 false}
!45 = !{!"../net/bluetooth/selftest.c", i32 117, i32 17}
!46 = !{ptr @pub_a_3, !47, !"pub_a_3", i1 false, i1 false}
!47 = !{!"../net/bluetooth/selftest.c", i32 123, i32 17}
!48 = !{ptr @dhkey_3, !49, !"dhkey_3", i1 false, i1 false}
!49 = !{!"../net/bluetooth/selftest.c", i32 134, i32 17}
!50 = !{ptr @test_ecdh_buffer, !51, !"test_ecdh_buffer", i1 false, i1 false}
!51 = !{!"../net/bluetooth/selftest.c", i32 184, i32 13}
!52 = !{ptr @test_ecdh_fops, !53, !"test_ecdh_fops", i1 false, i1 false}
!53 = !{!"../net/bluetooth/selftest.c", i32 193, i32 37}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
