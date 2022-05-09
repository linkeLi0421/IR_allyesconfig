; ModuleID = '/llk/IR_all_yes/lib/test_static_keys.c_pt.bc'
source_filename = "../lib/test_static_keys.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%union.anon = type { i32 }
%struct.static_key_true = type { %struct.static_key }
%struct.static_key_false = type { %struct.static_key }
%struct.test_key = type { i8, ptr, ptr }

@old_true_key = dso_local global { { %struct.atomic_t, { ptr } }, [24 x i8] } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } }, [24 x i8] zeroinitializer }, align 32
@old_false_key = dso_local global { { %struct.atomic_t, { ptr } }, [24 x i8] } zeroinitializer, align 32
@true_key = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } }, [24 x i8] zeroinitializer }, align 32
@false_key = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_author106 = internal constant [39 x i8] c"author=Jason Baron <jbaron@akamai.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license107 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@base_old_true_key = external dso_local global %struct.static_key, align 4
@base_inv_old_true_key = external dso_local global %struct.static_key, align 4
@base_old_false_key = external dso_local global %struct.static_key, align 4
@base_inv_old_false_key = external dso_local global %struct.static_key, align 4
@base_true_key = external dso_local global %struct.static_key_true, align 4
@base_inv_true_key = external dso_local global %struct.static_key_true, align 4
@base_false_key = external dso_local global %struct.static_key_false, align 4
@base_inv_false_key = external dso_local global %struct.static_key_false, align 4
@__const.test_static_key_init.static_key_tests = private unnamed_addr constant [18 x { i8, [3 x i8], ptr, ptr }] [{ i8, [3 x i8], ptr, ptr } { i8 1, [3 x i8] zeroinitializer, ptr @old_true_key, ptr @old_true_key_static_key_true }, { i8, [3 x i8], ptr, ptr } { i8 0, [3 x i8] zeroinitializer, ptr @old_false_key, ptr @old_false_key_static_key_false }, { i8, [3 x i8], ptr, ptr } { i8 1, [3 x i8] zeroinitializer, ptr @true_key, ptr @true_key_static_branch_likely }, { i8, [3 x i8], ptr, ptr } { i8 1, [3 x i8] zeroinitializer, ptr @true_key, ptr @true_key_static_branch_unlikely }, { i8, [3 x i8], ptr, ptr } { i8 0, [3 x i8] zeroinitializer, ptr @false_key, ptr @false_key_static_branch_likely }, { i8, [3 x i8], ptr, ptr } { i8 0, [3 x i8] zeroinitializer, ptr @false_key, ptr @false_key_static_branch_unlikely }, { i8, [3 x i8], ptr, ptr } { i8 1, [3 x i8] zeroinitializer, ptr @base_old_true_key, ptr @base_old_true_key_static_key_true }, { i8, [3 x i8], ptr, ptr } { i8 0, [3 x i8] zeroinitializer, ptr @base_inv_old_true_key, ptr @base_inv_old_true_key_static_key_true }, { i8, [3 x i8], ptr, ptr } { i8 0, [3 x i8] zeroinitializer, ptr @base_old_false_key, ptr @base_old_false_key_static_key_false }, { i8, [3 x i8], ptr, ptr } { i8 1, [3 x i8] zeroinitializer, ptr @base_inv_old_false_key, ptr @base_inv_old_false_key_static_key_false }, { i8, [3 x i8], ptr, ptr } { i8 1, [3 x i8] zeroinitializer, ptr @base_true_key, ptr @base_true_key_static_branch_likely }, { i8, [3 x i8], ptr, ptr } { i8 1, [3 x i8] zeroinitializer, ptr @base_true_key, ptr @base_true_key_static_branch_unlikely }, { i8, [3 x i8], ptr, ptr } { i8 0, [3 x i8] zeroinitializer, ptr @base_inv_true_key, ptr @base_inv_true_key_static_branch_likely }, { i8, [3 x i8], ptr, ptr } { i8 0, [3 x i8] zeroinitializer, ptr @base_inv_true_key, ptr @base_inv_true_key_static_branch_unlikely }, { i8, [3 x i8], ptr, ptr } { i8 0, [3 x i8] zeroinitializer, ptr @base_false_key, ptr @base_false_key_static_branch_likely }, { i8, [3 x i8], ptr, ptr } { i8 0, [3 x i8] zeroinitializer, ptr @base_false_key, ptr @base_false_key_static_branch_unlikely }, { i8, [3 x i8], ptr, ptr } { i8 1, [3 x i8] zeroinitializer, ptr @base_inv_false_key, ptr @base_inv_false_key_static_branch_likely }, { i8, [3 x i8], ptr, ptr } { i8 1, [3 x i8] zeroinitializer, ptr @base_inv_false_key, ptr @base_inv_false_key_static_branch_unlikely }], align 4
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"old_true_key\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 15, i32 19 }
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"old_false_key\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 16, i32 19 }
@___asan_gen_.7 = private unnamed_addr constant [9 x i8] c"true_key\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 19, i32 1 }
@___asan_gen_.10 = private unnamed_addr constant [10 x i8] c"false_key\00", align 1
@___asan_gen_.11 = private constant [26 x i8] c"../lib/test_static_keys.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 20, i32 1 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author106, ptr @__UNIQUE_ID_license107, ptr @old_true_key, ptr @old_false_key, ptr @true_key, ptr @false_key], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @old_true_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @old_false_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @true_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @false_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %static_key_tests = alloca [18 x %struct.test_key], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %static_key_tests) #7
  %0 = call ptr @memcpy(ptr %static_key_tests, ptr @__const.test_static_key_init.static_key_tests, i32 216)
  %call = call fastcc i32 @verify_keys(ptr noundef nonnull %static_key_tests, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  call fastcc void @invert_keys(ptr noundef nonnull %static_key_tests)
  %call3 = call fastcc i32 @verify_keys(ptr noundef nonnull %static_key_tests, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end6:                                          ; preds = %if.end
  call fastcc void @invert_keys(ptr noundef nonnull %static_key_tests)
  %call9 = call fastcc i32 @verify_keys(ptr noundef nonnull %static_key_tests, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end6.cleanup_crit_edge, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

out:                                              ; preds = %if.end6.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call3, %if.end.out_crit_edge ], [ %call9, %if.end6.out_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %static_key_tests) #7
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @old_true_key_static_key_true() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @old_true_key, i32 1), ptr blockaddress(@old_true_key_static_key_true, %l_yes.i.i)) #7
          to label %static_key_true.exit [label %l_yes.i.i], !srcloc !20

l_yes.i.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %static_key_true.exit

static_key_true.exit:                             ; preds = %l_yes.i.i, %entry
  %retval.0.i.i = phi i1 [ false, %l_yes.i.i ], [ true, %entry ]
  ret i1 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @old_false_key_static_key_false() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @old_false_key, ptr blockaddress(@old_false_key_static_key_false, %l_yes.i.i)) #7
          to label %static_key_false.exit [label %l_yes.i.i], !srcloc !20

l_yes.i.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %static_key_false.exit

static_key_false.exit:                            ; preds = %l_yes.i.i, %entry
  %retval.0.i.i = phi i1 [ true, %l_yes.i.i ], [ false, %entry ]
  ret i1 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @true_key_static_branch_likely() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @true_key, i32 1), ptr blockaddress(@true_key_static_branch_likely, %l_yes.i)) #7
          to label %arch_static_branch.exit [label %l_yes.i], !srcloc !20

l_yes.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %l_yes.i, %entry
  %retval.0.i = phi i1 [ false, %l_yes.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @true_key_static_branch_unlikely() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @true_key, ptr blockaddress(@true_key_static_branch_unlikely, %l_yes.i)) #7
          to label %arch_static_branch_jump.exit [label %l_yes.i], !srcloc !21

l_yes.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %arch_static_branch_jump.exit

arch_static_branch_jump.exit:                     ; preds = %l_yes.i, %entry
  %retval.0.i = phi i1 [ true, %l_yes.i ], [ false, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @false_key_static_branch_likely() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @false_key, i32 1), ptr blockaddress(@false_key_static_branch_likely, %l_yes.i)) #7
          to label %arch_static_branch_jump.exit [label %l_yes.i], !srcloc !21

l_yes.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %arch_static_branch_jump.exit

arch_static_branch_jump.exit:                     ; preds = %l_yes.i, %entry
  %retval.0.i = phi i1 [ false, %l_yes.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @false_key_static_branch_unlikely() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @false_key, ptr blockaddress(@false_key_static_branch_unlikely, %l_yes.i)) #7
          to label %arch_static_branch.exit [label %l_yes.i], !srcloc !20

l_yes.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %l_yes.i, %entry
  %retval.0.i = phi i1 [ true, %l_yes.i ], [ false, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @base_old_true_key_static_key_true() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @base_old_true_key, i32 1), ptr blockaddress(@base_old_true_key_static_key_true, %l_yes.i.i)) #7
          to label %static_key_true.exit [label %l_yes.i.i], !srcloc !20

l_yes.i.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %static_key_true.exit

static_key_true.exit:                             ; preds = %l_yes.i.i, %entry
  %retval.0.i.i = phi i1 [ false, %l_yes.i.i ], [ true, %entry ]
  ret i1 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @base_inv_old_true_key_static_key_true() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @base_inv_old_true_key, i32 1), ptr blockaddress(@base_inv_old_true_key_static_key_true, %l_yes.i.i)) #7
          to label %static_key_true.exit [label %l_yes.i.i], !srcloc !20

l_yes.i.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %static_key_true.exit

static_key_true.exit:                             ; preds = %l_yes.i.i, %entry
  %retval.0.i.i = phi i1 [ false, %l_yes.i.i ], [ true, %entry ]
  ret i1 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @base_old_false_key_static_key_false() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @base_old_false_key, ptr blockaddress(@base_old_false_key_static_key_false, %l_yes.i.i)) #7
          to label %static_key_false.exit [label %l_yes.i.i], !srcloc !20

l_yes.i.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %static_key_false.exit

static_key_false.exit:                            ; preds = %l_yes.i.i, %entry
  %retval.0.i.i = phi i1 [ true, %l_yes.i.i ], [ false, %entry ]
  ret i1 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @base_inv_old_false_key_static_key_false() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @base_inv_old_false_key, ptr blockaddress(@base_inv_old_false_key_static_key_false, %l_yes.i.i)) #7
          to label %static_key_false.exit [label %l_yes.i.i], !srcloc !20

l_yes.i.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %static_key_false.exit

static_key_false.exit:                            ; preds = %l_yes.i.i, %entry
  %retval.0.i.i = phi i1 [ true, %l_yes.i.i ], [ false, %entry ]
  ret i1 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @base_true_key_static_branch_likely() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @base_true_key, i32 1), ptr blockaddress(@base_true_key_static_branch_likely, %l_yes.i)) #7
          to label %arch_static_branch.exit [label %l_yes.i], !srcloc !20

l_yes.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %l_yes.i, %entry
  %retval.0.i = phi i1 [ false, %l_yes.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @base_true_key_static_branch_unlikely() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @base_true_key, ptr blockaddress(@base_true_key_static_branch_unlikely, %l_yes.i)) #7
          to label %arch_static_branch_jump.exit [label %l_yes.i], !srcloc !21

l_yes.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %arch_static_branch_jump.exit

arch_static_branch_jump.exit:                     ; preds = %l_yes.i, %entry
  %retval.0.i = phi i1 [ true, %l_yes.i ], [ false, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @base_inv_true_key_static_branch_likely() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @base_inv_true_key, i32 1), ptr blockaddress(@base_inv_true_key_static_branch_likely, %l_yes.i)) #7
          to label %arch_static_branch.exit [label %l_yes.i], !srcloc !20

l_yes.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %l_yes.i, %entry
  %retval.0.i = phi i1 [ false, %l_yes.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @base_inv_true_key_static_branch_unlikely() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @base_inv_true_key, ptr blockaddress(@base_inv_true_key_static_branch_unlikely, %l_yes.i)) #7
          to label %arch_static_branch_jump.exit [label %l_yes.i], !srcloc !21

l_yes.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %arch_static_branch_jump.exit

arch_static_branch_jump.exit:                     ; preds = %l_yes.i, %entry
  %retval.0.i = phi i1 [ true, %l_yes.i ], [ false, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @base_false_key_static_branch_likely() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @base_false_key, i32 1), ptr blockaddress(@base_false_key_static_branch_likely, %l_yes.i)) #7
          to label %arch_static_branch_jump.exit [label %l_yes.i], !srcloc !21

l_yes.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %arch_static_branch_jump.exit

arch_static_branch_jump.exit:                     ; preds = %l_yes.i, %entry
  %retval.0.i = phi i1 [ false, %l_yes.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @base_false_key_static_branch_unlikely() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @base_false_key, ptr blockaddress(@base_false_key_static_branch_unlikely, %l_yes.i)) #7
          to label %arch_static_branch.exit [label %l_yes.i], !srcloc !20

l_yes.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %l_yes.i, %entry
  %retval.0.i = phi i1 [ true, %l_yes.i ], [ false, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @base_inv_false_key_static_branch_likely() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @base_inv_false_key, i32 1), ptr blockaddress(@base_inv_false_key_static_branch_likely, %l_yes.i)) #7
          to label %arch_static_branch_jump.exit [label %l_yes.i], !srcloc !21

l_yes.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %arch_static_branch_jump.exit

arch_static_branch_jump.exit:                     ; preds = %l_yes.i, %entry
  %retval.0.i = phi i1 [ false, %l_yes.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @base_inv_false_key_static_branch_unlikely() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @base_inv_false_key, ptr blockaddress(@base_inv_false_key_static_branch_unlikely, %l_yes.i)) #7
          to label %arch_static_branch.exit [label %l_yes.i], !srcloc !20

l_yes.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %l_yes.i, %entry
  %retval.0.i = phi i1 [ true, %l_yes.i ], [ false, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @verify_keys(ptr nocapture noundef readonly %keys, i1 noundef zeroext %invert) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %0 = zext i1 %invert to i8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.01 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.test_key, ptr %keys, i32 %i.01
  %key = getelementptr %struct.test_key, ptr %keys, i32 %i.01, i32 1
  %1 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %key, align 4
  %call = tail call i32 @static_key_count(ptr noundef %2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp sgt i32 %call, 0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 4, !range !22
  %cond.in = xor i8 %4, %0
  %5 = zext i1 %cmp1 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %cond.in, i8 %5)
  %cmp13.not = icmp eq i8 %cond.in, %5
  br i1 %cmp13.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %for.body
  %test_key = getelementptr %struct.test_key, ptr %keys, i32 %i.01, i32 2
  %6 = ptrtoint ptr %test_key to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %test_key, align 4
  %call16 = tail call zeroext i1 %7() #7
  %8 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %key, align 4
  %call21 = tail call i32 @static_key_count(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp sgt i32 %call21, 0
  br i1 %cmp22, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end
  br i1 %call16, label %if.then25.for.inc_crit_edge, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then25.for.inc_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.else:                                          ; preds = %if.end
  br i1 %call16, label %if.else.cleanup_crit_edge, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.then25.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.01, 1
  %exitcond.not = icmp eq i32 %inc, 18
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then25.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %for.body.cleanup_crit_edge ], [ -22, %if.then25.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @invert_keys(ptr nocapture noundef readonly %keys) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.02 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %previous.01 = phi ptr [ null, %entry ], [ %previous.1, %for.inc.for.body_crit_edge ]
  %key = getelementptr %struct.test_key, ptr %keys, i32 %i.02, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key, align 4
  %cmp1.not = icmp eq ptr %previous.01, %1
  br i1 %cmp1.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %for.body
  %call.i = tail call i32 @static_key_count(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @static_key_disable(ptr noundef %1) #7
  br label %invert_key.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @static_key_enable(ptr noundef %1) #7
  br label %invert_key.exit

invert_key.exit:                                  ; preds = %if.else.i, %if.then.i
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key, align 4
  br label %for.inc

for.inc:                                          ; preds = %invert_key.exit, %for.body.for.inc_crit_edge
  %previous.1 = phi ptr [ %3, %invert_key.exit ], [ %previous.01, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.02, 1
  %exitcond.not = icmp eq i32 %inc, 18
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @static_key_count(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind uwtable(sync) }
attributes #6 = { nomerge }
attributes #7 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @old_true_key, !1, !"old_true_key", i1 false, i1 false}
!1 = !{!"../lib/test_static_keys.c", i32 15, i32 19}
!2 = !{ptr @old_false_key, !3, !"old_false_key", i1 false, i1 false}
!3 = !{!"../lib/test_static_keys.c", i32 16, i32 19}
!4 = !{ptr @true_key, !5, !"true_key", i1 false, i1 false}
!5 = !{!"../lib/test_static_keys.c", i32 19, i32 1}
!6 = !{ptr @false_key, !7, !"false_key", i1 false, i1 false}
!7 = !{!"../lib/test_static_keys.c", i32 20, i32 1}
!8 = !{ptr @__UNIQUE_ID_author106, !9, !"__UNIQUE_ID_author106", i1 false, i1 false}
!9 = !{!"../lib/test_static_keys.c", i32 238, i32 1}
!10 = !{ptr @__UNIQUE_ID_license107, !11, !"__UNIQUE_ID_license107", i1 false, i1 false}
!11 = !{!"../lib/test_static_keys.c", i32 239, i32 1}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i64 2148956802, i64 2148956807, i64 2148956820, i64 2148956864, i64 2148956898, i64 2148956919}
!21 = !{i64 2148957205, i64 2148957210, i64 2148957231, i64 2148957275, i64 2148957309, i64 2148957330}
!22 = !{i8 0, i8 2}
