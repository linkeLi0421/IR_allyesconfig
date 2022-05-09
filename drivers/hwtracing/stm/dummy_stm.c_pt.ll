; ModuleID = '/llk/IR_all_yes/drivers/hwtracing/stm/dummy_stm.c_pt.bc'
source_filename = "../drivers/hwtracing/stm/dummy_stm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.stm_data = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__param_str_nr_dummies = internal constant [21 x i8] c"dummy_stm.nr_dummies\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@nr_dummies = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_nr_dummies = internal constant %struct.kernel_param { ptr @__param_str_nr_dummies, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.41 { ptr @nr_dummies } }, section "__param", align 4
@__UNIQUE_ID_nr_dummiestype183 = internal constant [34 x i8] c"dummy_stm.parmtype=nr_dummies:int\00", section ".modinfo", align 1
@__param_str_fail_mode = internal constant [20 x i8] c"dummy_stm.fail_mode\00", align 1
@fail_mode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_fail_mode = internal constant %struct.kernel_param { ptr @__param_str_fail_mode, ptr null, ptr @param_ops_int, i16 384, i8 -1, i8 0, %union.anon.41 { ptr @fail_mode } }, section "__param", align 4
@__UNIQUE_ID_fail_modetype184 = internal constant [33 x i8] c"dummy_stm.parmtype=fail_mode:int\00", section ".modinfo", align 1
@__param_str_master_min = internal constant [21 x i8] c"dummy_stm.master_min\00", align 1
@master_min = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_master_min = internal constant %struct.kernel_param { ptr @__param_str_master_min, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.41 { ptr @master_min } }, section "__param", align 4
@__UNIQUE_ID_master_mintype185 = internal constant [34 x i8] c"dummy_stm.parmtype=master_min:int\00", section ".modinfo", align 1
@__param_str_master_max = internal constant [21 x i8] c"dummy_stm.master_max\00", align 1
@master_max = internal global { i32, [28 x i8] } { i32 65535, [28 x i8] zeroinitializer }, align 32
@__param_master_max = internal constant %struct.kernel_param { ptr @__param_str_master_max, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.41 { ptr @master_max } }, section "__param", align 4
@__UNIQUE_ID_master_maxtype186 = internal constant [34 x i8] c"dummy_stm.parmtype=master_max:int\00", section ".modinfo", align 1
@__param_str_nr_channels = internal constant [22 x i8] c"dummy_stm.nr_channels\00", align 1
@nr_channels = internal global { i32, [28 x i8] } { i32 65535, [28 x i8] zeroinitializer }, align 32
@__param_nr_channels = internal constant %struct.kernel_param { ptr @__param_str_nr_channels, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.41 { ptr @nr_channels } }, section "__param", align 4
@__UNIQUE_ID_nr_channelstype187 = internal constant [35 x i8] c"dummy_stm.parmtype=nr_channels:int\00", section ".modinfo", align 1
@__initcall__kmod_dummy_stm__188_120_dummy_stm_init6 = internal global ptr @dummy_stm_init, section ".initcall6.init", align 4
@__exitcall_dummy_stm_exit = internal global ptr @dummy_stm_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file189 = internal constant [47 x i8] c"dummy_stm.file=drivers/hwtracing/stm/dummy_stm\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [25 x i8] c"dummy_stm.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description191 = internal constant [39 x i8] c"dummy_stm.description=dummy_stm device\00", section ".modinfo", align 1
@__UNIQUE_ID_author192 = internal constant [73 x i8] c"dummy_stm.author=Alexander Shishkin <alexander.shishkin@linux.intel.com>\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dummy_stm.%d\00", [19 x i8] zeroinitializer }, align 32
@dummy_stm = internal global { [32 x %struct.stm_data], [384 x i8] } zeroinitializer, align 32
@___asan_gen_.1 = private unnamed_addr constant [11 x i8] c"nr_dummies\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 40, i32 12 }
@___asan_gen_.4 = private unnamed_addr constant [10 x i8] c"fail_mode\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 44, i32 21 }
@___asan_gen_.7 = private unnamed_addr constant [11 x i8] c"master_min\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 48, i32 21 }
@___asan_gen_.10 = private unnamed_addr constant [11 x i8] c"master_max\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 52, i32 21 }
@___asan_gen_.13 = private unnamed_addr constant [12 x i8] c"nr_channels\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 56, i32 21 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 82, i32 45 }
@___asan_gen_.19 = private unnamed_addr constant [10 x i8] c"dummy_stm\00", align 1
@___asan_gen_.20 = private constant [37 x i8] c"../drivers/hwtracing/stm/dummy_stm.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 38, i32 24 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author192, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_fail_modetype184, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__UNIQUE_ID_master_maxtype186, ptr @__UNIQUE_ID_master_mintype185, ptr @__UNIQUE_ID_nr_channelstype187, ptr @__UNIQUE_ID_nr_dummiestype183, ptr @__exitcall_dummy_stm_exit, ptr @__initcall__kmod_dummy_stm__188_120_dummy_stm_init6, ptr @__param_fail_mode, ptr @__param_master_max, ptr @__param_master_min, ptr @__param_nr_channels, ptr @__param_nr_dummies, ptr @nr_dummies, ptr @fail_mode, ptr @master_min, ptr @master_max, ptr @nr_channels, ptr @.str, ptr @dummy_stm], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_dummies to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fail_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @master_min to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @master_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_channels to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_stm to i32), i32 1536, i32 1920, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_stm_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nr_dummies, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %0)
  %1 = icmp ugt i32 %0, 32
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @master_min, align 4
  %3 = load i32, ptr @master_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %3)
  %cmp2 = icmp ugt i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %3)
  %cmp4 = icmp ugt i32 %3, 65535
  %or.cond51 = or i1 %cmp2, %cmp4
  br i1 %or.cond51, label %if.end.cleanup_crit_edge, label %lor.lhs.false5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false5:                                   ; preds = %if.end
  %4 = load i32, ptr @nr_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %4)
  %cmp6 = icmp ugt i32 %4, 65535
  br i1 %cmp6, label %lor.lhs.false5.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false5
  %5 = load i32, ptr @nr_dummies, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp956 = icmp sgt i32 %5, 0
  br i1 %cmp956, label %for.body.preheader, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.preheader:                               ; preds = %for.cond.preheader
  %call74 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, i32 noundef 0) #4
  store ptr %call74, ptr @dummy_stm, align 4
  %tobool.not75 = icmp eq ptr %call74, null
  br i1 %tobool.not75, label %for.body.preheader.for.cond24_crit_edge, label %for.body.preheader.if.end13_crit_edge

for.body.preheader.if.end13_crit_edge:            ; preds = %for.body.preheader
  br label %if.end13

for.body.preheader.for.cond24_crit_edge:          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond24

for.body:                                         ; preds = %for.inc
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, i32 noundef %inc) #4
  %arrayidx = getelementptr [32 x %struct.stm_data], ptr @dummy_stm, i32 0, i32 %inc
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.for.cond24_crit_edge, label %for.body.if.end13_crit_edge

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

for.body.for.cond24_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond24

if.end13:                                         ; preds = %for.body.if.end13_crit_edge, %for.body.preheader.if.end13_crit_edge
  %arrayidx77 = phi ptr [ %arrayidx, %for.body.if.end13_crit_edge ], [ @dummy_stm, %for.body.preheader.if.end13_crit_edge ]
  %i.05776 = phi i32 [ %inc, %for.body.if.end13_crit_edge ], [ 0, %for.body.preheader.if.end13_crit_edge ]
  %7 = load i32, ptr @master_min, align 4
  %sw_start = getelementptr [32 x %struct.stm_data], ptr @dummy_stm, i32 0, i32 %i.05776, i32 2
  %8 = ptrtoint ptr %sw_start to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %sw_start, align 4
  %9 = load i32, ptr @master_max, align 4
  %sw_end = getelementptr [32 x %struct.stm_data], ptr @dummy_stm, i32 0, i32 %i.05776, i32 3
  %10 = ptrtoint ptr %sw_end to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %sw_end, align 4
  %11 = load i32, ptr @nr_channels, align 4
  %sw_nchannels = getelementptr [32 x %struct.stm_data], ptr @dummy_stm, i32 0, i32 %i.05776, i32 4
  %12 = ptrtoint ptr %sw_nchannels to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %sw_nchannels, align 4
  %packet = getelementptr [32 x %struct.stm_data], ptr @dummy_stm, i32 0, i32 %i.05776, i32 7
  %13 = ptrtoint ptr %packet to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @dummy_stm_packet, ptr %packet, align 4
  %link = getelementptr [32 x %struct.stm_data], ptr @dummy_stm, i32 0, i32 %i.05776, i32 9
  %14 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @dummy_stm_link, ptr %link, align 4
  %call20 = tail call i32 @stm_register_device(ptr noundef null, ptr noundef %arrayidx77, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %for.inc, label %if.end13.fail_free_crit_edge

if.end13.fail_free_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail_free

for.inc:                                          ; preds = %if.end13
  %inc = add nuw nsw i32 %i.05776, 1
  %15 = load i32, ptr @nr_dummies, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %15)
  %cmp9 = icmp slt i32 %inc, %15
  br i1 %cmp9, label %for.body, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond24:                                       ; preds = %fail_free, %for.body.for.cond24_crit_edge, %for.body.preheader.for.cond24_crit_edge
  %i.1.in = phi i32 [ %i.2, %fail_free ], [ 0, %for.body.preheader.for.cond24_crit_edge ], [ %inc, %for.body.for.cond24_crit_edge ]
  %ret.1 = phi i32 [ %ret.2, %fail_free ], [ -12, %for.body.preheader.for.cond24_crit_edge ], [ 0, %for.body.for.cond24_crit_edge ]
  %i.1 = add i32 %i.1.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1)
  %cmp25 = icmp sgt i32 %i.1, -1
  br i1 %cmp25, label %for.body26, label %for.cond24.cleanup_crit_edge

for.cond24.cleanup_crit_edge:                     ; preds = %for.cond24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body26:                                       ; preds = %for.cond24
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx27 = getelementptr [32 x %struct.stm_data], ptr @dummy_stm, i32 0, i32 %i.1
  tail call void @stm_unregister_device(ptr noundef %arrayidx27) #4
  br label %fail_free

fail_free:                                        ; preds = %for.body26, %if.end13.fail_free_crit_edge
  %i.2 = phi i32 [ %i.1, %for.body26 ], [ %i.05776, %if.end13.fail_free_crit_edge ]
  %ret.2 = phi i32 [ %ret.1, %for.body26 ], [ %call20, %if.end13.fail_free_crit_edge ]
  %arrayidx28 = getelementptr [32 x %struct.stm_data], ptr @dummy_stm, i32 0, i32 %i.2
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx28, align 4
  tail call void @kfree(ptr noundef %17) #4
  br label %for.cond24

cleanup:                                          ; preds = %for.cond24.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %ret.1, %for.cond24.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dummy_stm_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nr_dummies, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp5 = icmp sgt i32 %0, 0
  br i1 %cmp5, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x %struct.stm_data], ptr @dummy_stm, i32 0, i32 %i.06
  tail call void @stm_unregister_device(ptr noundef %arrayidx) #4
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %2) #4
  %inc = add nuw nsw i32 %i.06, 1
  %3 = load i32, ptr @nr_dummies, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dummy_stm_packet(ptr nocapture noundef readnone %stm_data, i32 noundef %master, i32 noundef %channel, i32 noundef %packet, i32 noundef %flags, i32 noundef returned %size, ptr nocapture noundef readnone %payload) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  ret i32 %size
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dummy_stm_link(ptr nocapture noundef readnone %data, i32 noundef %master, i32 noundef %channel) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @fail_mode, align 4
  %and = and i32 %0, %channel
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %retval.0 = select i1 %tobool1.not, i32 0, i32 -22
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stm_register_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stm_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !19, !21, !22, !24, !26, !28, !30, !31, !33, !34, !35, !36, !38, !39, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__param_nr_dummies, !1, !"__param_nr_dummies", i1 false, i1 false}
!1 = !{!"../drivers/hwtracing/stm/dummy_stm.c", i32 42, i32 1}
!2 = !{ptr @__UNIQUE_ID_nr_dummiestype183, !1, !"__UNIQUE_ID_nr_dummiestype183", i1 false, i1 false}
!3 = !{ptr @__param_fail_mode, !4, !"__param_fail_mode", i1 false, i1 false}
!4 = !{!"../drivers/hwtracing/stm/dummy_stm.c", i32 46, i32 1}
!5 = !{ptr @__UNIQUE_ID_fail_modetype184, !4, !"__UNIQUE_ID_fail_modetype184", i1 false, i1 false}
!6 = !{ptr @__param_master_min, !7, !"__param_master_min", i1 false, i1 false}
!7 = !{!"../drivers/hwtracing/stm/dummy_stm.c", i32 50, i32 1}
!8 = !{ptr @__UNIQUE_ID_master_mintype185, !7, !"__UNIQUE_ID_master_mintype185", i1 false, i1 false}
!9 = !{ptr @__param_master_max, !10, !"__param_master_max", i1 false, i1 false}
!10 = !{!"../drivers/hwtracing/stm/dummy_stm.c", i32 54, i32 1}
!11 = !{ptr @__UNIQUE_ID_master_maxtype186, !10, !"__UNIQUE_ID_master_maxtype186", i1 false, i1 false}
!12 = !{ptr @__param_nr_channels, !13, !"__param_nr_channels", i1 false, i1 false}
!13 = !{!"../drivers/hwtracing/stm/dummy_stm.c", i32 58, i32 1}
!14 = !{ptr @__UNIQUE_ID_nr_channelstype187, !13, !"__UNIQUE_ID_nr_channelstype187", i1 false, i1 false}
!15 = !{ptr @__initcall__kmod_dummy_stm__188_120_dummy_stm_init6, !16, !"__initcall__kmod_dummy_stm__188_120_dummy_stm_init6", i1 false, i1 false}
!16 = !{!"../drivers/hwtracing/stm/dummy_stm.c", i32 120, i32 1}
!17 = !{ptr @__exitcall_dummy_stm_exit, !18, !"__exitcall_dummy_stm_exit", i1 false, i1 false}
!18 = !{!"../drivers/hwtracing/stm/dummy_stm.c", i32 121, i32 1}
!19 = !{ptr @__UNIQUE_ID_file189, !20, !"__UNIQUE_ID_file189", i1 false, i1 false}
!20 = !{!"../drivers/hwtracing/stm/dummy_stm.c", i32 123, i32 1}
!21 = !{ptr @__UNIQUE_ID_license190, !20, !"__UNIQUE_ID_license190", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_description191, !23, !"__UNIQUE_ID_description191", i1 false, i1 false}
!23 = !{!"../drivers/hwtracing/stm/dummy_stm.c", i32 124, i32 1}
!24 = !{ptr @__UNIQUE_ID_author192, !25, !"__UNIQUE_ID_author192", i1 false, i1 false}
!25 = !{!"../drivers/hwtracing/stm/dummy_stm.c", i32 125, i32 1}
!26 = !{ptr @fail_mode, !27, !"fail_mode", i1 false, i1 false}
!27 = !{!"../drivers/hwtracing/stm/dummy_stm.c", i32 44, i32 21}
!28 = !{ptr @master_min, !29, !"master_min", i1 false, i1 false}
!29 = !{!"../drivers/hwtracing/stm/dummy_stm.c", i32 48, i32 21}
!30 = !{ptr @__param_str_nr_dummies, !1, !"__param_str_nr_dummies", i1 false, i1 false}
!31 = !{ptr @nr_dummies, !32, !"nr_dummies", i1 false, i1 false}
!32 = !{!"../drivers/hwtracing/stm/dummy_stm.c", i32 40, i32 12}
!33 = !{ptr @__param_str_fail_mode, !4, !"__param_str_fail_mode", i1 false, i1 false}
!34 = !{ptr @__param_str_master_min, !7, !"__param_str_master_min", i1 false, i1 false}
!35 = !{ptr @__param_str_master_max, !10, !"__param_str_master_max", i1 false, i1 false}
!36 = !{ptr @master_max, !37, !"master_max", i1 false, i1 false}
!37 = !{!"../drivers/hwtracing/stm/dummy_stm.c", i32 52, i32 21}
!38 = !{ptr @__param_str_nr_channels, !13, !"__param_str_nr_channels", i1 false, i1 false}
!39 = !{ptr @nr_channels, !40, !"nr_channels", i1 false, i1 false}
!40 = !{!"../drivers/hwtracing/stm/dummy_stm.c", i32 56, i32 21}
!41 = !{ptr @.str, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwtracing/stm/dummy_stm.c", i32 82, i32 45}
!43 = !{ptr @dummy_stm, !44, !"dummy_stm", i1 false, i1 false}
!44 = !{!"../drivers/hwtracing/stm/dummy_stm.c", i32 38, i32 24}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
