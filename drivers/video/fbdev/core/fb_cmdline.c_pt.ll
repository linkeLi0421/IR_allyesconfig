; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/core/fb_cmdline.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/fb_cmdline.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fb_mode_option\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_mode_option\09\09\09\09"
module asm "\09.long\09__crc_fb_mode_option\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_mode_option:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_mode_option\22\09\09\09\09\09"
module asm "__kstrtabns_fb_mode_option:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fb_get_options\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_get_options\09\09\09\09"
module asm "\09.long\09__crc_fb_get_options\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_get_options:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_get_options\22\09\09\09\09\09"
module asm "__kstrtabns_fb_get_options:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }

@fb_mode_option = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_fb_mode_option = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_mode_option = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_mode_option = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_mode_option to i32), ptr @__kstrtab_fb_mode_option, ptr @__kstrtabns_fb_mode_option }, section "___ksymtab_gpl+fb_mode_option", align 4
@ofonly = internal unnamed_addr global i1 false, section ".data..read_mostly", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"offb\00", [27 x i8] zeroinitializer }, align 32
@video_options = internal unnamed_addr global [32 x ptr] zeroinitializer, section ".data..read_mostly", align 4
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@__kstrtab_fb_get_options = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_get_options = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_get_options = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_get_options to i32), ptr @__kstrtab_fb_get_options, ptr @__kstrtabns_fb_get_options }, section "___ksymtab+fb_get_options", align 4
@__setup_str_video_setup = internal constant [7 x i8] c"video=\00", section ".init.rodata", align 1
@__setup_video_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_video_setup, ptr @video_setup, i32 0 }, section ".init.setup", align 4
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ofonly\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [15 x i8] c"fb_mode_option\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 23, i32 13 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 41, i32 42 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 59, i32 35 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [41 x i8] c"../drivers/video/fbdev/core/fb_cmdline.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 84, i32 24 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_fb_get_options, ptr @__ksymtab_fb_mode_option, ptr @__setup_video_setup, ptr @fb_mode_option, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_mode_option to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fb_get_options(ptr nocapture noundef readonly %name, ptr noundef writeonly %option) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.land.lhs.true30_crit_edge, label %land.lhs.true

entry.land.lhs.true30_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true30

land.lhs.true:                                    ; preds = %entry
  %.b = load i1, ptr @ofonly, align 4
  br i1 %.b, label %if.end, label %land.lhs.true.for.body.preheader_crit_edge

land.lhs.true.for.body.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

if.end:                                           ; preds = %land.lhs.true
  %call4 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(5) @.str, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not.not, label %if.end.for.body.preheader_crit_edge, label %if.end.land.lhs.true30_crit_edge

if.end.land.lhs.true30_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true30

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end.for.body.preheader_crit_edge, %land.lhs.true.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0103 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %options.0102 = phi ptr [ %options.1, %for.inc.for.body_crit_edge ], [ null, %for.body.preheader ]
  %arrayidx = getelementptr [32 x ptr], ptr @video_options, i32 0, i32 %i.0103
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp10 = icmp eq ptr %1, null
  br i1 %cmp10, label %for.body.for.inc_crit_edge, label %if.end12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end12:                                         ; preds = %for.body
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool15.not = icmp eq i8 %3, 0
  br i1 %tobool15.not, label %if.end12.for.inc_crit_edge, label %if.end17

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end17:                                         ; preds = %if.end12
  %call19 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull %1, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true21, label %if.end17.for.inc_crit_edge

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true21:                                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx22 = getelementptr i8, ptr %1, i32 %call
  %4 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %5)
  %cmp23 = icmp eq i8 %5, 58
  %add.ptr26 = getelementptr i8, ptr %arrayidx22, i32 1
  %spec.select66 = select i1 %cmp23, ptr %add.ptr26, ptr %options.0102
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true21, %if.end17.for.inc_crit_edge, %if.end12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %options.1 = phi ptr [ %options.0102, %for.body.for.inc_crit_edge ], [ %options.0102, %if.end17.for.inc_crit_edge ], [ %options.0102, %if.end12.for.inc_crit_edge ], [ %spec.select66, %land.lhs.true21 ]
  %inc = add nuw nsw i32 %i.0103, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %if.end28, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end28:                                         ; preds = %for.inc
  %tobool29.not = icmp eq ptr %options.1, null
  br i1 %tobool29.not, label %if.end28.land.lhs.true30_crit_edge, label %if.end28.if.end42_crit_edge

if.end28.if.end42_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.end28.land.lhs.true30_crit_edge:               ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true30

land.lhs.true30:                                  ; preds = %if.end28.land.lhs.true30_crit_edge, %if.end.land.lhs.true30_crit_edge, %entry.land.lhs.true30_crit_edge
  %retval1.07277 = phi i32 [ 0, %if.end28.land.lhs.true30_crit_edge ], [ 1, %if.end.land.lhs.true30_crit_edge ], [ 0, %entry.land.lhs.true30_crit_edge ]
  %tobool31.not = icmp eq ptr %option, null
  br i1 %tobool31.not, label %land.lhs.true30.if.end45_crit_edge, label %land.lhs.true32

land.lhs.true30.if.end45_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

land.lhs.true32:                                  ; preds = %land.lhs.true30
  %6 = load ptr, ptr @fb_mode_option, align 4
  %tobool33.not = icmp eq ptr %6, null
  br i1 %tobool33.not, label %land.lhs.true32.if.then44_crit_edge, label %if.end36

land.lhs.true32.if.then44_crit_edge:              ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then44

if.end36:                                         ; preds = %land.lhs.true32
  %call35 = tail call noalias ptr @kstrdup(ptr noundef nonnull %6, i32 noundef 3264) #4
  %tobool37.not = icmp eq ptr %call35, null
  br i1 %tobool37.not, label %if.end36.if.then44_crit_edge, label %if.end36.if.end42_crit_edge

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.end36.if.then44_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then44

if.end42:                                         ; preds = %if.end36.if.end42_crit_edge, %if.end28.if.end42_crit_edge
  %options.387 = phi ptr [ %call35, %if.end36.if.end42_crit_edge ], [ %options.1, %if.end28.if.end42_crit_edge ]
  %retval1.0727686 = phi i32 [ %retval1.07277, %if.end36.if.end42_crit_edge ], [ 0, %if.end28.if.end42_crit_edge ]
  %call39 = tail call i32 @strncmp(ptr noundef nonnull %options.387, ptr noundef nonnull dereferenceable(4) @.str.1, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  %spec.select67 = select i1 %tobool40.not, i32 1, i32 %retval1.0727686
  %tobool43.not = icmp eq ptr %option, null
  br i1 %tobool43.not, label %if.end42.if.end45_crit_edge, label %if.end42.if.then44_crit_edge

if.end42.if.then44_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then44

if.end42.if.end45_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then44:                                        ; preds = %if.end42.if.then44_crit_edge, %if.end36.if.then44_crit_edge, %land.lhs.true32.if.then44_crit_edge
  %retval1.192 = phi i32 [ %spec.select67, %if.end42.if.then44_crit_edge ], [ %retval1.07277, %if.end36.if.then44_crit_edge ], [ %retval1.07277, %land.lhs.true32.if.then44_crit_edge ]
  %options.38191 = phi ptr [ %options.387, %if.end42.if.then44_crit_edge ], [ null, %if.end36.if.then44_crit_edge ], [ null, %land.lhs.true32.if.then44_crit_edge ]
  %7 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %options.38191, ptr %option, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end42.if.end45_crit_edge, %land.lhs.true30.if.end45_crit_edge
  %retval1.193 = phi i32 [ %retval1.192, %if.then44 ], [ %spec.select67, %if.end42.if.end45_crit_edge ], [ %retval1.07277, %land.lhs.true30.if.end45_crit_edge ]
  ret i32 %retval1.193
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @video_setup(ptr noundef %options) #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %options, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @strncmp(ptr noundef nonnull %options, ptr noundef nonnull dereferenceable(7) @.str.2, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @ofonly, align 4
  br label %out

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @strchr(ptr noundef nonnull %options, i32 noundef 58)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.else, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.cond.out_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end4.for.body_crit_edge
  %i.021 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @video_options, i32 0, i32 %i.021
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp8 = icmp eq ptr %3, null
  br i1 %cmp8, label %if.then9, label %for.cond

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %options, ptr %arrayidx, align 4
  br label %out

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %options, ptr @fb_mode_option, align 4
  br label %out

out:                                              ; preds = %if.else, %if.then9, %for.cond.out_crit_edge, %if.then3, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__ksymtab_fb_mode_option, !1, !"__ksymtab_fb_mode_option", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/core/fb_cmdline.c", i32 24, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/core/fb_cmdline.c", i32 41, i32 42}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/core/fb_cmdline.c", i32 59, i32 35}
!6 = !{ptr @__ksymtab_fb_get_options, !7, !"__ksymtab_fb_get_options", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/core/fb_cmdline.c", i32 67, i32 1}
!8 = !{ptr @__setup_video_setup, !9, !"__setup_video_setup", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/core/fb_cmdline.c", i32 107, i32 1}
!10 = !{ptr @video_options, !11, !"video_options", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/core/fb_cmdline.c", i32 20, i32 14}
!12 = distinct !{null, !13, !"ofonly", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/core/fb_cmdline.c", i32 21, i32 12}
!14 = !{ptr @fb_mode_option, !15, !"fb_mode_option", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/core/fb_cmdline.c", i32 23, i32 13}
!16 = !{ptr @__setup_str_video_setup, !9, !"__setup_str_video_setup", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/core/fb_cmdline.c", i32 84, i32 24}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
