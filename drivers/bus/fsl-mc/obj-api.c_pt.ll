; ModuleID = '/llk/IR_all_yes/drivers/bus/fsl-mc/obj-api.c_pt.bc'
source_filename = "../drivers/bus/fsl-mc/obj-api.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fsl_mc_obj_open\22, \22a\22\09"
module asm "\09.weak\09__crc_fsl_mc_obj_open\09\09\09\09"
module asm "\09.long\09__crc_fsl_mc_obj_open\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl_mc_obj_open:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl_mc_obj_open\22\09\09\09\09\09"
module asm "__kstrtabns_fsl_mc_obj_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsl_mc_obj_close\22, \22a\22\09"
module asm "\09.weak\09__crc_fsl_mc_obj_close\09\09\09\09"
module asm "\09.long\09__crc_fsl_mc_obj_close\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl_mc_obj_close:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl_mc_obj_close\22\09\09\09\09\09"
module asm "__kstrtabns_fsl_mc_obj_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsl_mc_obj_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_fsl_mc_obj_reset\09\09\09\09"
module asm "\09.long\09__crc_fsl_mc_obj_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl_mc_obj_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl_mc_obj_reset\22\09\09\09\09\09"
module asm "__kstrtabns_fsl_mc_obj_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon.44 = type { i32, ptr }
%struct.fsl_mc_command = type { i64, [7 x i64] }
%struct.mc_cmd_header = type { i8, i8, i8, i8, i16, i16 }

@__kstrtab_fsl_mc_obj_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl_mc_obj_open = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl_mc_obj_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl_mc_obj_open to i32), ptr @__kstrtab_fsl_mc_obj_open, ptr @__kstrtabns_fsl_mc_obj_open }, section "___ksymtab_gpl+fsl_mc_obj_open", align 4
@__kstrtab_fsl_mc_obj_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl_mc_obj_close = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl_mc_obj_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl_mc_obj_close to i32), ptr @__kstrtab_fsl_mc_obj_close, ptr @__kstrtabns_fsl_mc_obj_close }, section "___ksymtab_gpl+fsl_mc_obj_close", align 4
@__kstrtab_fsl_mc_obj_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl_mc_obj_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl_mc_obj_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl_mc_obj_reset to i32), ptr @__kstrtab_fsl_mc_obj_reset, ptr @__kstrtabns_fsl_mc_obj_reset }, section "___ksymtab_gpl+fsl_mc_obj_reset", align 4
@fsl_mc_get_open_cmd_id.dev_ids = internal constant { [17 x %struct.anon.44], [56 x i8] } { [17 x %struct.anon.44] [%struct.anon.44 { i32 33025, ptr @.str }, %struct.anon.44 { i32 32849, ptr @.str.1 }, %struct.anon.44 { i32 32785, ptr @.str.2 }, %struct.anon.44 { i32 32817, ptr @.str.3 }, %struct.anon.44 { i32 32801, ptr @.str.4 }, %struct.anon.44 { i32 32833, ptr @.str.5 }, %struct.anon.44 { i32 32897, ptr @.str.6 }, %struct.anon.44 { i32 32945, ptr @.str.7 }, %struct.anon.44 { i32 32961, ptr @.str.8 }, %struct.anon.44 { i32 32913, ptr @.str.9 }, %struct.anon.44 { i32 32865, ptr @.str.10 }, %struct.anon.44 { i32 32977, ptr @.str.11 }, %struct.anon.44 { i32 32929, ptr @.str.12 }, %struct.anon.44 { i32 32881, ptr @.str.13 }, %struct.anon.44 { i32 32993, ptr @.str.14 }, %struct.anon.44 { i32 33009, ptr @.str.15 }, %struct.anon.44 zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dprtc\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dprc\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dpni\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dpio\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dpsw\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dpbp\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dpcon\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dpmcp\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dpmac\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dpseci\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dpdmux\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dpdcei\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dpaiop\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dpci\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dpdmai\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dpdbg\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [8 x i8] c"dev_ids\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 16, i32 4 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 17, i32 23 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 18, i32 22 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 19, i32 22 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 20, i32 22 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 21, i32 22 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 22, i32 22 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 23, i32 23 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 24, i32 23 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 25, i32 23 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 26, i32 24 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 27, i32 24 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 28, i32 24 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 29, i32 24 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 30, i32 22 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 31, i32 24 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [32 x i8] c"../drivers/bus/fsl-mc/obj-api.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 32, i32 23 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__ksymtab_fsl_mc_obj_close, ptr @__ksymtab_fsl_mc_obj_open, ptr @__ksymtab_fsl_mc_obj_reset, ptr @fsl_mc_get_open_cmd_id.dev_ids, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_get_open_cmd_id.dev_ids to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsl_mc_obj_open(ptr noundef %mc_io, i32 noundef %cmd_flags, i32 noundef %obj_id, ptr nocapture noundef readonly %obj_type, ptr nocapture noundef writeonly %token) #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %call.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str, ptr noundef %obj_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %entry.fsl_mc_get_open_cmd_id.exit_crit_edge, label %for.inc.i

entry.fsl_mc_get_open_cmd_id.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %fsl_mc_get_open_cmd_id.exit

for.inc.i:                                        ; preds = %entry
  %call.1.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.1, ptr noundef %obj_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool4.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool4.not.1.i, label %for.inc.i.fsl_mc_get_open_cmd_id.exit_crit_edge, label %for.inc.1.i

for.inc.i.fsl_mc_get_open_cmd_id.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fsl_mc_get_open_cmd_id.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %call.2.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.2, ptr noundef %obj_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool4.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool4.not.2.i, label %for.inc.1.i.fsl_mc_get_open_cmd_id.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.fsl_mc_get_open_cmd_id.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fsl_mc_get_open_cmd_id.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %call.3.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.3, ptr noundef %obj_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool4.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool4.not.3.i, label %for.inc.2.i.fsl_mc_get_open_cmd_id.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.fsl_mc_get_open_cmd_id.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fsl_mc_get_open_cmd_id.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %call.4.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.4, ptr noundef %obj_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %tobool4.not.4.i = icmp eq i32 %call.4.i, 0
  br i1 %tobool4.not.4.i, label %for.inc.3.i.fsl_mc_get_open_cmd_id.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.fsl_mc_get_open_cmd_id.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fsl_mc_get_open_cmd_id.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %call.5.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.5, ptr noundef %obj_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %tobool4.not.5.i = icmp eq i32 %call.5.i, 0
  br i1 %tobool4.not.5.i, label %for.inc.4.i.fsl_mc_get_open_cmd_id.exit_crit_edge, label %for.inc.5.i

for.inc.4.i.fsl_mc_get_open_cmd_id.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fsl_mc_get_open_cmd_id.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %call.6.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.6, ptr noundef %obj_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %tobool4.not.6.i = icmp eq i32 %call.6.i, 0
  br i1 %tobool4.not.6.i, label %for.inc.5.i.fsl_mc_get_open_cmd_id.exit_crit_edge, label %for.inc.6.i

for.inc.5.i.fsl_mc_get_open_cmd_id.exit_crit_edge: ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fsl_mc_get_open_cmd_id.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %call.7.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.7, ptr noundef %obj_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i)
  %tobool4.not.7.i = icmp eq i32 %call.7.i, 0
  br i1 %tobool4.not.7.i, label %for.inc.6.i.fsl_mc_get_open_cmd_id.exit_crit_edge, label %for.inc.7.i

for.inc.6.i.fsl_mc_get_open_cmd_id.exit_crit_edge: ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fsl_mc_get_open_cmd_id.exit

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %call.8.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.8, ptr noundef %obj_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8.i)
  %tobool4.not.8.i = icmp eq i32 %call.8.i, 0
  br i1 %tobool4.not.8.i, label %for.inc.7.i.fsl_mc_get_open_cmd_id.exit_crit_edge, label %for.inc.8.i

for.inc.7.i.fsl_mc_get_open_cmd_id.exit_crit_edge: ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fsl_mc_get_open_cmd_id.exit

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %call.9.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.9, ptr noundef %obj_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9.i)
  %tobool4.not.9.i = icmp eq i32 %call.9.i, 0
  br i1 %tobool4.not.9.i, label %for.inc.8.i.fsl_mc_get_open_cmd_id.exit_crit_edge, label %for.inc.9.i

for.inc.8.i.fsl_mc_get_open_cmd_id.exit_crit_edge: ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fsl_mc_get_open_cmd_id.exit

for.inc.9.i:                                      ; preds = %for.inc.8.i
  %call.10.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.10, ptr noundef %obj_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.10.i)
  %tobool4.not.10.i = icmp eq i32 %call.10.i, 0
  br i1 %tobool4.not.10.i, label %for.inc.9.i.fsl_mc_get_open_cmd_id.exit_crit_edge, label %for.inc.10.i

for.inc.9.i.fsl_mc_get_open_cmd_id.exit_crit_edge: ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fsl_mc_get_open_cmd_id.exit

for.inc.10.i:                                     ; preds = %for.inc.9.i
  %call.11.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.11, ptr noundef %obj_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.11.i)
  %tobool4.not.11.i = icmp eq i32 %call.11.i, 0
  br i1 %tobool4.not.11.i, label %for.inc.10.i.fsl_mc_get_open_cmd_id.exit_crit_edge, label %for.inc.11.i

for.inc.10.i.fsl_mc_get_open_cmd_id.exit_crit_edge: ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fsl_mc_get_open_cmd_id.exit

for.inc.11.i:                                     ; preds = %for.inc.10.i
  %call.12.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.12, ptr noundef %obj_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.12.i)
  %tobool4.not.12.i = icmp eq i32 %call.12.i, 0
  br i1 %tobool4.not.12.i, label %for.inc.11.i.fsl_mc_get_open_cmd_id.exit_crit_edge, label %for.inc.12.i

for.inc.11.i.fsl_mc_get_open_cmd_id.exit_crit_edge: ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fsl_mc_get_open_cmd_id.exit

for.inc.12.i:                                     ; preds = %for.inc.11.i
  %call.13.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.13, ptr noundef %obj_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.13.i)
  %tobool4.not.13.i = icmp eq i32 %call.13.i, 0
  br i1 %tobool4.not.13.i, label %for.inc.12.i.fsl_mc_get_open_cmd_id.exit_crit_edge, label %for.inc.13.i

for.inc.12.i.fsl_mc_get_open_cmd_id.exit_crit_edge: ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fsl_mc_get_open_cmd_id.exit

for.inc.13.i:                                     ; preds = %for.inc.12.i
  %call.14.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.14, ptr noundef %obj_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.14.i)
  %tobool4.not.14.i = icmp eq i32 %call.14.i, 0
  br i1 %tobool4.not.14.i, label %for.inc.13.i.fsl_mc_get_open_cmd_id.exit_crit_edge, label %for.inc.14.i

for.inc.13.i.fsl_mc_get_open_cmd_id.exit_crit_edge: ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fsl_mc_get_open_cmd_id.exit

for.inc.14.i:                                     ; preds = %for.inc.13.i
  %call.15.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.15, ptr noundef %obj_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.15.i)
  %tobool4.not.15.i = icmp eq i32 %call.15.i, 0
  br i1 %tobool4.not.15.i, label %for.inc.14.i.fsl_mc_get_open_cmd_id.exit_crit_edge, label %for.inc.14.i.cleanup_crit_edge

for.inc.14.i.cleanup_crit_edge:                   ; preds = %for.inc.14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.14.i.fsl_mc_get_open_cmd_id.exit_crit_edge: ; preds = %for.inc.14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fsl_mc_get_open_cmd_id.exit

fsl_mc_get_open_cmd_id.exit:                      ; preds = %for.inc.14.i.fsl_mc_get_open_cmd_id.exit_crit_edge, %for.inc.13.i.fsl_mc_get_open_cmd_id.exit_crit_edge, %for.inc.12.i.fsl_mc_get_open_cmd_id.exit_crit_edge, %for.inc.11.i.fsl_mc_get_open_cmd_id.exit_crit_edge, %for.inc.10.i.fsl_mc_get_open_cmd_id.exit_crit_edge, %for.inc.9.i.fsl_mc_get_open_cmd_id.exit_crit_edge, %for.inc.8.i.fsl_mc_get_open_cmd_id.exit_crit_edge, %for.inc.7.i.fsl_mc_get_open_cmd_id.exit_crit_edge, %for.inc.6.i.fsl_mc_get_open_cmd_id.exit_crit_edge, %for.inc.5.i.fsl_mc_get_open_cmd_id.exit_crit_edge, %for.inc.4.i.fsl_mc_get_open_cmd_id.exit_crit_edge, %for.inc.3.i.fsl_mc_get_open_cmd_id.exit_crit_edge, %for.inc.2.i.fsl_mc_get_open_cmd_id.exit_crit_edge, %for.inc.1.i.fsl_mc_get_open_cmd_id.exit_crit_edge, %for.inc.i.fsl_mc_get_open_cmd_id.exit_crit_edge, %entry.fsl_mc_get_open_cmd_id.exit_crit_edge
  %i.010.lcssa.i = phi i32 [ 0, %entry.fsl_mc_get_open_cmd_id.exit_crit_edge ], [ 1, %for.inc.i.fsl_mc_get_open_cmd_id.exit_crit_edge ], [ 2, %for.inc.1.i.fsl_mc_get_open_cmd_id.exit_crit_edge ], [ 3, %for.inc.2.i.fsl_mc_get_open_cmd_id.exit_crit_edge ], [ 4, %for.inc.3.i.fsl_mc_get_open_cmd_id.exit_crit_edge ], [ 5, %for.inc.4.i.fsl_mc_get_open_cmd_id.exit_crit_edge ], [ 6, %for.inc.5.i.fsl_mc_get_open_cmd_id.exit_crit_edge ], [ 7, %for.inc.6.i.fsl_mc_get_open_cmd_id.exit_crit_edge ], [ 8, %for.inc.7.i.fsl_mc_get_open_cmd_id.exit_crit_edge ], [ 9, %for.inc.8.i.fsl_mc_get_open_cmd_id.exit_crit_edge ], [ 10, %for.inc.9.i.fsl_mc_get_open_cmd_id.exit_crit_edge ], [ 11, %for.inc.10.i.fsl_mc_get_open_cmd_id.exit_crit_edge ], [ 12, %for.inc.11.i.fsl_mc_get_open_cmd_id.exit_crit_edge ], [ 13, %for.inc.12.i.fsl_mc_get_open_cmd_id.exit_crit_edge ], [ 14, %for.inc.13.i.fsl_mc_get_open_cmd_id.exit_crit_edge ], [ 15, %for.inc.14.i.fsl_mc_get_open_cmd_id.exit_crit_edge ]
  %arrayidx.le.i = getelementptr [17 x %struct.anon.44], ptr @fsl_mc_get_open_cmd_id.dev_ids, i32 0, i32 %i.010.lcssa.i
  %2 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.le.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %fsl_mc_get_open_cmd_id.exit.cleanup_crit_edge, label %if.end

fsl_mc_get_open_cmd_id.exit.cleanup_crit_edge:    ; preds = %fsl_mc_get_open_cmd_id.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %fsl_mc_get_open_cmd_id.exit
  %conv = trunc i32 %3 to i16
  %4 = trunc i32 %cmd_flags to i8
  %5 = and i8 %4, -128
  %6 = and i8 %4, 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv) #5
  %header.sroa.9.0.insert.ext.i = zext i16 %7 to i64
  %header.sroa.7.0.insert.ext.i = zext i8 %6 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.7.0.insert.shift.i, %header.sroa.9.0.insert.ext.i
  %header.sroa.5.0.insert.ext.i = zext i8 %5 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.6.0.insert.insert.i = or i64 %header.sroa.7.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.6.0.insert.insert.i, 1099511627776
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %obj_id)
  %10 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %params, align 8
  %call3 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %token1.i = getelementptr inbounds %struct.mc_cmd_header, ptr %cmd, i32 0, i32 4
  %11 = ptrtoint ptr %token1.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %token1.i, align 4
  %13 = call i16 @llvm.bswap.i16(i16 %12) #5
  %14 = ptrtoint ptr %token to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %token, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %fsl_mc_get_open_cmd_id.exit.cleanup_crit_edge, %for.inc.14.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -19, %fsl_mc_get_open_cmd_id.exit.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ -19, %for.inc.14.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc_send_command(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsl_mc_obj_close(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token) #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511628160
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsl_mc_obj_reset(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token) #0 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511648512
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__ksymtab_fsl_mc_obj_open, !1, !"__ksymtab_fsl_mc_obj_open", i1 false, i1 false}
!1 = !{!"../drivers/bus/fsl-mc/obj-api.c", i32 73, i32 1}
!2 = !{ptr @__ksymtab_fsl_mc_obj_close, !3, !"__ksymtab_fsl_mc_obj_close", i1 false, i1 false}
!3 = !{!"../drivers/bus/fsl-mc/obj-api.c", i32 88, i32 1}
!4 = !{ptr @__ksymtab_fsl_mc_obj_reset, !5, !"__ksymtab_fsl_mc_obj_reset", i1 false, i1 false}
!5 = !{!"../drivers/bus/fsl-mc/obj-api.c", i32 103, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/bus/fsl-mc/obj-api.c", i32 17, i32 23}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/bus/fsl-mc/obj-api.c", i32 18, i32 22}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/bus/fsl-mc/obj-api.c", i32 19, i32 22}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/bus/fsl-mc/obj-api.c", i32 20, i32 22}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/bus/fsl-mc/obj-api.c", i32 21, i32 22}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/bus/fsl-mc/obj-api.c", i32 22, i32 22}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/bus/fsl-mc/obj-api.c", i32 23, i32 23}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/bus/fsl-mc/obj-api.c", i32 24, i32 23}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/bus/fsl-mc/obj-api.c", i32 25, i32 23}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/bus/fsl-mc/obj-api.c", i32 26, i32 24}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/bus/fsl-mc/obj-api.c", i32 27, i32 24}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/bus/fsl-mc/obj-api.c", i32 28, i32 24}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/bus/fsl-mc/obj-api.c", i32 29, i32 24}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/bus/fsl-mc/obj-api.c", i32 30, i32 22}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/bus/fsl-mc/obj-api.c", i32 31, i32 24}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/bus/fsl-mc/obj-api.c", i32 32, i32 23}
!38 = !{ptr @fsl_mc_get_open_cmd_id.dev_ids, !39, !"dev_ids", i1 false, i1 false}
!39 = !{!"../drivers/bus/fsl-mc/obj-api.c", i32 16, i32 4}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
