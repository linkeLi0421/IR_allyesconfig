; ModuleID = '/llk/IR_all_yes/drivers/md/dm-unstripe.c_pt.bc'
source_filename = "../drivers/md/dm-unstripe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.target_type = type { i64, ptr, ptr, [3 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.unstripe_c = type { ptr, i64, i32, i32, i64, i64, i32, i8 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.40, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.40 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.dm_dev = type { ptr, ptr, i32, [16 x i8] }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }

@unstripe_target = internal global { %struct.target_type, [40 x i8] } { %struct.target_type { i64 128, ptr @.str, ptr null, [3 x i32] [i32 1, i32 1, i32 0], ptr @unstripe_ctr, ptr @unstripe_dtr, ptr @unstripe_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @unstripe_status, ptr null, ptr null, ptr null, ptr null, ptr @unstripe_iterate_devices, ptr @unstripe_io_hints, ptr null, ptr null, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_dm_unstripe__283_205_dm_unstripe_init6 = internal global ptr @dm_unstripe_init, section ".initcall6.init", align 4
@__exitcall_dm_unstripe_exit = internal global ptr @dm_unstripe_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description284 = internal constant [55 x i8] c"dm_unstripe.description=device-mapper unstriped target\00", section ".modinfo", align 1
@__UNIQUE_ID_alias285 = internal constant [31 x i8] c"dm_unstripe.alias=dm-unstriped\00", section ".modinfo", align 1
@__UNIQUE_ID_author286 = internal constant [55 x i8] c"dm_unstripe.author=Scott Bauer <scott.bauer@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file287 = internal constant [40 x i8] c"dm_unstripe.file=drivers/md/dm-unstripe\00", section ".modinfo", align 1
@__UNIQUE_ID_license288 = internal constant [24 x i8] c"dm_unstripe.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"unstriped\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid number of arguments\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Memory allocation for unstriped context failed\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid stripe count\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid chunk_size\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid stripe number\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Please provide stripe between [0, # of stripes]\00", [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't get striped device\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%llu%c\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid striped device offset\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Target length not divisible by chunk size\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to set max io len\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%d %llu %d %s %llu\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.13 = private unnamed_addr constant [16 x i8] c"unstripe_target\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 182, i32 27 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 183, i32 10 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 46, i32 15 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 52, i32 15 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 57, i32 15 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 62, i32 15 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 67, i32 15 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 72, i32 15 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 77, i32 15 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 81, i32 22 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 82, i32 15 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 93, i32 15 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 98, i32 15 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [28 x i8] c"../drivers/md/dm-unstripe.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 155, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_alias285, ptr @__UNIQUE_ID_author286, ptr @__UNIQUE_ID_description284, ptr @__UNIQUE_ID_file287, ptr @__UNIQUE_ID_license288, ptr @__exitcall_dm_unstripe_exit, ptr @__initcall__kmod_dm_unstripe__283_205_dm_unstripe_init6, ptr @dm_unstripe_exit, ptr @unstripe_target, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unstripe_target to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dm_unstripe_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dm_unregister_target(ptr noundef nonnull @unstripe_target) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_unregister_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_unstripe_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_register_target(ptr noundef nonnull @unstripe_target) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unstripe_ctr(ptr noundef %ti, i32 noundef %argc, ptr nocapture noundef readonly %argv) #2 align 64 {
entry:
  %start = alloca i64, align 8
  %dummy = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start) #8
  %0 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %start, align 8, !annotation !50
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #8
  %1 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %dummy, align 1, !annotation !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %argc)
  %cmp.not = icmp eq i32 %argc, 5
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %error = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.1, ptr %error, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 48) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %error2 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %4 = ptrtoint ptr %error2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %error2, align 8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %argv, align 4
  %stripes = getelementptr inbounds %struct.unstripe_c, ptr %call7.i.i, i32 0, i32 2
  %call4 = tail call i32 @kstrtouint(ptr noundef %6, i32 noundef 10, ptr noundef %stripes) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end3.err_crit_edge

if.end3.err_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

lor.lhs.false:                                    ; preds = %if.end3
  %7 = ptrtoint ptr %stripes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stripes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %lor.lhs.false.err_crit_edge, label %if.end10

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end10:                                         ; preds = %lor.lhs.false
  %arrayidx11 = getelementptr ptr, ptr %argv, i32 1
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx11, align 4
  %chunk_size = getelementptr inbounds %struct.unstripe_c, ptr %call7.i.i, i32 0, i32 6
  %call12 = tail call i32 @kstrtouint(ptr noundef %10, i32 noundef 10, ptr noundef %chunk_size) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %lor.lhs.false14, label %if.end10.err_crit_edge

if.end10.err_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

lor.lhs.false14:                                  ; preds = %if.end10
  %11 = ptrtoint ptr %chunk_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chunk_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool16.not = icmp eq i32 %12, 0
  br i1 %tobool16.not, label %lor.lhs.false14.err_crit_edge, label %if.end19

lor.lhs.false14.err_crit_edge:                    ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end19:                                         ; preds = %lor.lhs.false14
  %arrayidx20 = getelementptr ptr, ptr %argv, i32 2
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx20, align 4
  %unstripe = getelementptr inbounds %struct.unstripe_c, ptr %call7.i.i, i32 0, i32 3
  %call21 = tail call i32 @kstrtouint(ptr noundef %14, i32 noundef 10, ptr noundef %unstripe) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end25, label %if.end19.err_crit_edge

if.end19.err_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end25:                                         ; preds = %if.end19
  %15 = ptrtoint ptr %unstripe to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %unstripe, align 4
  %17 = ptrtoint ptr %stripes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stripes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp28 = icmp ugt i32 %16, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp30 = icmp ugt i32 %18, 1
  %or.cond = and i1 %cmp28, %cmp30
  br i1 %or.cond, label %if.end25.err_crit_edge, label %if.end33

if.end25.err_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end33:                                         ; preds = %if.end25
  %arrayidx34 = getelementptr ptr, ptr %argv, i32 3
  %19 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx34, align 4
  %21 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ti, align 8
  %call35 = tail call i32 @dm_table_get_mode(ptr noundef %22) #8
  %call36 = tail call i32 @dm_get_device(ptr noundef %ti, ptr noundef %20, i32 noundef %call35, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end40, label %if.end33.err_crit_edge

if.end33.err_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end40:                                         ; preds = %if.end33
  %arrayidx41 = getelementptr ptr, ptr %argv, i32 4
  %23 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx41, align 4
  %call42 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %24, ptr noundef nonnull @.str.8, ptr noundef nonnull %start, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call42)
  %cmp43.not = icmp eq i32 %call42, 1
  br i1 %cmp43.not, label %if.end48, label %if.end40.err_crit_edge

if.end40.err_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end48:                                         ; preds = %if.end40
  %25 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %start, align 8
  %physical_start = getelementptr inbounds %struct.unstripe_c, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %physical_start to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %physical_start, align 8
  %28 = ptrtoint ptr %unstripe to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %unstripe, align 4
  %30 = ptrtoint ptr %chunk_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chunk_size, align 8
  %mul = mul i32 %31, %29
  %conv = zext i32 %mul to i64
  %unstripe_offset = getelementptr inbounds %struct.unstripe_c, ptr %call7.i.i, i32 0, i32 5
  %32 = ptrtoint ptr %unstripe_offset to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv, ptr %unstripe_offset, align 8
  %33 = ptrtoint ptr %stripes to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %stripes, align 8
  %sub = add i32 %34, -1
  %mul53 = mul i32 %sub, %31
  %conv54 = zext i32 %mul53 to i64
  %unstripe_width = getelementptr inbounds %struct.unstripe_c, ptr %call7.i.i, i32 0, i32 4
  %35 = ptrtoint ptr %unstripe_width to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv54, ptr %unstripe_width, align 8
  %36 = call i32 @llvm.ctpop.i32(i32 %31) #8, !range !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %.not410 = icmp eq i32 %36, 1
  %37 = call i32 @llvm.ctlz.i32(i32 %31, i1 true) #8, !range !51
  %38 = trunc i32 %37 to i8
  %39 = xor i8 %38, 31
  %conv61 = select i1 %.not410, i8 %39, i8 0
  %chunk_shift = getelementptr inbounds %struct.unstripe_c, ptr %call7.i.i, i32 0, i32 7
  %40 = ptrtoint ptr %chunk_shift to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv61, ptr %chunk_shift, align 4
  %len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %41 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %42)
  %cmp240 = icmp ult i64 %42, 4294967296
  br i1 %cmp240, label %if.then244, label %if.else250, !prof !52

if.then244:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %conv245 = trunc i64 %42 to i32
  %rem246 = urem i32 %conv245, %31
  br label %if.end254

if.else250:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %43 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %31, i64 %42) #12, !srcloc !53
  %asmresult.i = extractvalue { i64, i64 } %43, 0
  %shr.i = lshr i64 %asmresult.i, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end254

if.end254:                                        ; preds = %if.else250, %if.then244
  %__rem.0 = phi i32 [ %rem246, %if.then244 ], [ %conv.i, %if.else250 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0)
  %tobool256.not = icmp eq i32 %__rem.0, 0
  br i1 %tobool256.not, label %if.end259, label %if.end254.err_crit_edge

if.end254.err_crit_edge:                          ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end259:                                        ; preds = %if.end254
  %conv261 = zext i32 %31 to i64
  %call262 = call i32 @dm_set_target_max_io_len(ptr noundef %ti, i64 noundef %conv261) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call262)
  %tobool263.not = icmp eq i32 %call262, 0
  br i1 %tobool263.not, label %if.end266, label %if.end259.err_crit_edge

if.end259.err_crit_edge:                          ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end266:                                        ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #10
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %44 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i, ptr %private, align 4
  br label %cleanup

err:                                              ; preds = %if.end259.err_crit_edge, %if.end254.err_crit_edge, %if.end40.err_crit_edge, %if.end33.err_crit_edge, %if.end25.err_crit_edge, %if.end19.err_crit_edge, %lor.lhs.false14.err_crit_edge, %if.end10.err_crit_edge, %lor.lhs.false.err_crit_edge, %if.end3.err_crit_edge
  %.str.11.sink = phi ptr [ @.str.3, %lor.lhs.false.err_crit_edge ], [ @.str.3, %if.end3.err_crit_edge ], [ @.str.4, %lor.lhs.false14.err_crit_edge ], [ @.str.4, %if.end10.err_crit_edge ], [ @.str.5, %if.end19.err_crit_edge ], [ @.str.6, %if.end25.err_crit_edge ], [ @.str.7, %if.end33.err_crit_edge ], [ @.str.9, %if.end40.err_crit_edge ], [ @.str.10, %if.end254.err_crit_edge ], [ @.str.11, %if.end259.err_crit_edge ]
  %error265 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %45 = ptrtoint ptr %error265 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %.str.11.sink, ptr %error265, align 8
  %46 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call7.i.i, align 8
  %tobool.not.i401 = icmp eq ptr %47, null
  br i1 %tobool.not.i401, label %err.cleanup_unstripe.exit_crit_edge, label %if.then.i

err.cleanup_unstripe.exit_crit_edge:              ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_unstripe.exit

if.then.i:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  call void @dm_put_device(ptr noundef %ti, ptr noundef nonnull %47) #8
  br label %cleanup_unstripe.exit

cleanup_unstripe.exit:                            ; preds = %if.then.i, %err.cleanup_unstripe.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup_unstripe.exit, %if.end266, %if.then1, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %cleanup_unstripe.exit ], [ 0, %if.end266 ], [ -12, %if.then1 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @unstripe_dtr(ptr noundef %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_unstripe.exit_crit_edge, label %if.then.i

entry.cleanup_unstripe.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_unstripe.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dm_put_device(ptr noundef %ti, ptr noundef nonnull %3) #8
  br label %cleanup_unstripe.exit

cleanup_unstripe.exit:                            ; preds = %if.then.i, %entry.cleanup_unstripe.exit_crit_edge
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unstripe_map(ptr nocapture noundef readonly %ti, ptr noundef %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %6 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %7, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %8 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %9, %5
  br i1 %cmp.not.i, label %entry.bio_set_dev.exit_crit_edge, label %if.then.i

entry.bio_set_dev.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i8.i = and i16 %7, -2177
  %10 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %entry.bio_set_dev.exit_crit_edge
  %11 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %5, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #8
  %12 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private, align 4
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %14 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %bi_iter.i, align 8
  %chunk_shift.i = getelementptr inbounds %struct.unstripe_c, ptr %13, i32 0, i32 7
  %16 = ptrtoint ptr %chunk_shift.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %chunk_shift.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i5

if.then.i5:                                       ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sh_prom.i = zext i8 %17 to i64
  %shr.i = lshr i64 %15, %sh_prom.i
  br label %map_to_core.exit

if.else.i:                                        ; preds = %bio_set_dev.exit
  %chunk_size.i = getelementptr inbounds %struct.unstripe_c, ptr %13, i32 0, i32 6
  %18 = ptrtoint ptr %chunk_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chunk_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %15)
  %cmp172.i = icmp ult i64 %15, 4294967296
  br i1 %cmp172.i, label %if.then176.i, label %if.else182.i, !prof !52

if.then176.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv177.i = trunc i64 %15 to i32
  %div180.i = udiv i32 %conv177.i, %19
  %conv181.i = zext i32 %div180.i to i64
  br label %map_to_core.exit

if.else182.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %15) #12, !srcloc !53
  %asmresult1.i.i = extractvalue { i64, i64 } %20, 1
  br label %map_to_core.exit

map_to_core.exit:                                 ; preds = %if.else182.i, %if.then176.i, %if.then.i5
  %tmp_sector.0.i = phi i64 [ %conv181.i, %if.then176.i ], [ %asmresult1.i.i, %if.else182.i ], [ %shr.i, %if.then.i5 ]
  %unstripe_width.i = getelementptr inbounds %struct.unstripe_c, ptr %13, i32 0, i32 4
  %21 = ptrtoint ptr %unstripe_width.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %unstripe_width.i, align 8
  %mul189.i = mul i64 %22, %tmp_sector.0.i
  %add190.i = add i64 %mul189.i, %15
  %unstripe_offset.i = getelementptr inbounds %struct.unstripe_c, ptr %13, i32 0, i32 5
  %23 = ptrtoint ptr %unstripe_offset.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %unstripe_offset.i, align 8
  %add191.i = add i64 %add190.i, %24
  %physical_start = getelementptr inbounds %struct.unstripe_c, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %physical_start to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %physical_start, align 8
  %add = add i64 %add191.i, %26
  %27 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %add, ptr %bi_iter.i, align 8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @unstripe_status(ptr nocapture noundef readonly %ti, i32 noundef %type, i32 noundef %status_flags, ptr noundef %result, i32 noundef %maxlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb1
    i32 1, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp = icmp eq i32 %maxlen, 0
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %cond.false

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

cond.false:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %stripes = getelementptr inbounds %struct.unstripe_c, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %stripes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %stripes, align 8
  %chunk_size = getelementptr inbounds %struct.unstripe_c, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %chunk_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chunk_size, align 8
  %conv = zext i32 %6 to i64
  %unstripe = getelementptr inbounds %struct.unstripe_c, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %unstripe to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %unstripe, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.dm_dev, ptr %10, i32 0, i32 3
  %physical_start = getelementptr inbounds %struct.unstripe_c, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %physical_start to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %physical_start, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.12, i32 noundef %4, i64 noundef %conv, i32 noundef %8, ptr noundef %name, i64 noundef %12) #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %result, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %cond.false, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unstripe_iterate_devices(ptr noundef %ti, ptr nocapture noundef readonly %fn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %physical_start = getelementptr inbounds %struct.unstripe_c, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %physical_start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %physical_start, align 8
  %len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %len, align 8
  %call = tail call i32 %fn(ptr noundef %ti, ptr noundef %3, i64 noundef %5, i64 noundef %7, ptr noundef %data) #8
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @unstripe_io_hints(ptr nocapture noundef readonly %ti, ptr nocapture noundef writeonly %limits) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chunk_size = getelementptr inbounds %struct.unstripe_c, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chunk_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chunk_size, align 8
  %chunk_sectors = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 5
  %4 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %chunk_sectors, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_get_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_get_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_set_target_max_io_len(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_register_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_dm_unstripe__283_205_dm_unstripe_init6, !1, !"__initcall__kmod_dm_unstripe__283_205_dm_unstripe_init6", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-unstripe.c", i32 205, i32 1}
!2 = !{ptr @__exitcall_dm_unstripe_exit, !3, !"__exitcall_dm_unstripe_exit", i1 false, i1 false}
!3 = !{!"../drivers/md/dm-unstripe.c", i32 206, i32 1}
!4 = !{ptr @__UNIQUE_ID_description284, !5, !"__UNIQUE_ID_description284", i1 false, i1 false}
!5 = !{!"../drivers/md/dm-unstripe.c", i32 208, i32 1}
!6 = !{ptr @__UNIQUE_ID_alias285, !7, !"__UNIQUE_ID_alias285", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-unstripe.c", i32 209, i32 1}
!8 = !{ptr @__UNIQUE_ID_author286, !9, !"__UNIQUE_ID_author286", i1 false, i1 false}
!9 = !{!"../drivers/md/dm-unstripe.c", i32 210, i32 1}
!10 = !{ptr @__UNIQUE_ID_file287, !11, !"__UNIQUE_ID_file287", i1 false, i1 false}
!11 = !{!"../drivers/md/dm-unstripe.c", i32 211, i32 1}
!12 = !{ptr @__UNIQUE_ID_license288, !11, !"__UNIQUE_ID_license288", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/md/dm-unstripe.c", i32 183, i32 10}
!15 = !{ptr @unstripe_target, !16, !"unstripe_target", i1 false, i1 false}
!16 = !{!"../drivers/md/dm-unstripe.c", i32 182, i32 27}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/md/dm-unstripe.c", i32 46, i32 15}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-unstripe.c", i32 52, i32 15}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/md/dm-unstripe.c", i32 57, i32 15}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/md/dm-unstripe.c", i32 62, i32 15}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/md/dm-unstripe.c", i32 67, i32 15}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/md/dm-unstripe.c", i32 72, i32 15}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/md/dm-unstripe.c", i32 77, i32 15}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/md/dm-unstripe.c", i32 81, i32 22}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/md/dm-unstripe.c", i32 82, i32 15}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/md/dm-unstripe.c", i32 93, i32 15}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/md/dm-unstripe.c", i32 98, i32 15}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/md/dm-unstripe.c", i32 155, i32 3}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"auto-init"}
!51 = !{i32 0, i32 33}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i64 2148512045, i64 2148512325, i64 2148512659, i64 2148512993}
