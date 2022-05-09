; ModuleID = '/llk/IR_all_yes/drivers/media/platform/sti/delta/delta-debug.c_pt.bc'
source_filename = "../drivers/media/platform/sti/delta/delta-debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.delta_streaminfo = type { i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_fract, i32, [32 x i8], [32 x i8], [32 x i8], i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.delta_frameinfo = type { i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_fract, i32, i32, i32, i32, i32 }
%struct.delta_ctx = type { i32, %struct.v4l2_fh, ptr, ptr, %struct.delta_ipc_ctx, i32, i32, i32, i32, %struct.delta_streaminfo, %struct.delta_frameinfo, i32, [21 x ptr], i32, i32, i32, i32, i32, i32, %struct.list_head, [100 x i8], %struct.work_struct, %struct.mutex, i8, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delta_ipc_ctx = type { i32, i32, %struct.completion, %struct.delta_buf, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delta_buf = type { i32, ptr, i32, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delta_dev = type { %struct.v4l2_device, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, [10 x ptr], i32, [10 x i32], i32, [10 x i32], i32, i8, ptr, %struct.rpmsg_driver, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rpmsg_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%4.4s %dx%d %s %s dpb=%d %s %s %s%dx%d@(%d,%d) %s%d/%d\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"progressive\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"interlaced\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"crop=\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"par=\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%4.4s %dx%d aligned %dx%d %s %s%dx%d@(%d,%d) %s%d/%d\00", [43 x i8] zeroinitializer }, align 32
@delta_trace_summary.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, i8 0, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"st_delta\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"delta_trace_summary\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/media/platform/sti/delta/delta-debug.c\00", [49 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"%s %s, %d frames decoded, %d frames output, %d frames dropped, %d stream errors, %d decode errors\00", [62 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 19, i32 4 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 22, i32 36 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 22, i32 52 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 24, i32 44 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 24, i32 54 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 27, i32 51 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 41, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [50 x i8] c"../drivers/media/platform/sti/delta/delta-debug.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 64, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @delta_streaminfo_str(ptr noundef %s, ptr noundef writeonly %str, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %s, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %streamformat = getelementptr inbounds %struct.delta_streaminfo, ptr %s, i32 0, i32 1
  %width = getelementptr inbounds %struct.delta_streaminfo, ptr %s, i32 0, i32 2
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.delta_streaminfo, ptr %s, i32 0, i32 3
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 4
  %profile = getelementptr inbounds %struct.delta_streaminfo, ptr %s, i32 0, i32 8
  %level = getelementptr inbounds %struct.delta_streaminfo, ptr %s, i32 0, i32 9
  %dpb = getelementptr inbounds %struct.delta_streaminfo, ptr %s, i32 0, i32 4
  %4 = ptrtoint ptr %dpb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dpb, align 4
  %field = getelementptr inbounds %struct.delta_streaminfo, ptr %s, i32 0, i32 7
  %6 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %cond = select i1 %cmp, ptr @.str.1, ptr @.str.2
  %other = getelementptr inbounds %struct.delta_streaminfo, ptr %s, i32 0, i32 10
  %8 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %cond4 = select i1 %tobool3.not, ptr @.str.4, ptr @.str.3
  %crop = getelementptr inbounds %struct.delta_streaminfo, ptr %s, i32 0, i32 5
  %width5 = getelementptr inbounds %struct.delta_streaminfo, ptr %s, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %width5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width5, align 4
  %height7 = getelementptr inbounds %struct.delta_streaminfo, ptr %s, i32 0, i32 5, i32 3
  %12 = ptrtoint ptr %height7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height7, align 4
  %14 = ptrtoint ptr %crop to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %crop, align 4
  %top = getelementptr inbounds %struct.delta_streaminfo, ptr %s, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %top, align 4
  %and11 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %cond13 = select i1 %tobool12.not, ptr @.str.4, ptr @.str.5
  %pixelaspect = getelementptr inbounds %struct.delta_streaminfo, ptr %s, i32 0, i32 6
  %18 = ptrtoint ptr %pixelaspect to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pixelaspect, align 4
  %denominator = getelementptr inbounds %struct.delta_streaminfo, ptr %s, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %denominator, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef %len, ptr noundef nonnull @.str, ptr noundef %streamformat, i32 noundef %1, i32 noundef %3, ptr noundef %profile, ptr noundef %level, i32 noundef %5, ptr noundef nonnull %cond, ptr noundef %other, ptr noundef nonnull %cond4, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, ptr noundef nonnull %cond13, i32 noundef %19, i32 noundef %21)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %str, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @delta_frameinfo_str(ptr noundef %f, ptr noundef writeonly %str, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %f, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pixelformat = getelementptr inbounds %struct.delta_frameinfo, ptr %f, i32 0, i32 1
  %width = getelementptr inbounds %struct.delta_frameinfo, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.delta_frameinfo, ptr %f, i32 0, i32 3
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 4
  %aligned_width = getelementptr inbounds %struct.delta_frameinfo, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %aligned_width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %aligned_width, align 4
  %aligned_height = getelementptr inbounds %struct.delta_frameinfo, ptr %f, i32 0, i32 5
  %6 = ptrtoint ptr %aligned_height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %aligned_height, align 4
  %field = getelementptr inbounds %struct.delta_frameinfo, ptr %f, i32 0, i32 9
  %8 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  %cond = select i1 %cmp, ptr @.str.1, ptr @.str.2
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %cond2 = select i1 %tobool1.not, ptr @.str.4, ptr @.str.3
  %crop = getelementptr inbounds %struct.delta_frameinfo, ptr %f, i32 0, i32 7
  %width3 = getelementptr inbounds %struct.delta_frameinfo, ptr %f, i32 0, i32 7, i32 2
  %12 = ptrtoint ptr %width3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width3, align 4
  %height5 = getelementptr inbounds %struct.delta_frameinfo, ptr %f, i32 0, i32 7, i32 3
  %14 = ptrtoint ptr %height5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height5, align 4
  %16 = ptrtoint ptr %crop to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crop, align 4
  %top = getelementptr inbounds %struct.delta_frameinfo, ptr %f, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %top, align 4
  %and9 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %cond11 = select i1 %tobool10.not, ptr @.str.4, ptr @.str.5
  %pixelaspect = getelementptr inbounds %struct.delta_frameinfo, ptr %f, i32 0, i32 8
  %20 = ptrtoint ptr %pixelaspect to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pixelaspect, align 4
  %denominator = getelementptr inbounds %struct.delta_frameinfo, ptr %f, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %denominator, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef %len, ptr noundef nonnull @.str.6, ptr noundef %pixelformat, i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7, ptr noundef nonnull %cond, ptr noundef nonnull %cond2, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, ptr noundef nonnull %cond11, i32 noundef %21, i32 noundef %23)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %str, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @delta_trace_summary(ptr noundef %ctx) local_unnamed_addr #2 align 64 {
entry:
  %str = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %streaminfo = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %str) #5
  %2 = call ptr @memset(ptr %str, i32 0, i32 100)
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ctx, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_trace_summary.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_trace_summary, %if.then4)) #5
          to label %cleanup [label %if.then4], !srcloc !29

if.then4:                                         ; preds = %do.body
  %dev5 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev5, align 4
  %name = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 20
  %tobool.not.i = icmp eq ptr %streaminfo, null
  br i1 %tobool.not.i, label %if.then4.delta_streaminfo_str.exit_crit_edge, label %if.end.i

if.then4.delta_streaminfo_str.exit_crit_edge:     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %delta_streaminfo_str.exit

if.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %streamformat.i = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 9, i32 1
  %width.i = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 9, i32 2
  %7 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %width.i, align 4
  %height.i = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 9, i32 3
  %9 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height.i, align 4
  %profile.i = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 9, i32 8
  %level.i = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 9, i32 9
  %dpb.i = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 9, i32 4
  %11 = ptrtoint ptr %dpb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dpb.i, align 4
  %field.i = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 9, i32 7
  %13 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %field.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i = icmp eq i32 %14, 1
  %cond.i = select i1 %cmp.i, ptr @.str.1, ptr @.str.2
  %other.i = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 9, i32 10
  %15 = ptrtoint ptr %streaminfo to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %streaminfo, align 4
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  %cond4.i = select i1 %tobool3.not.i, ptr @.str.4, ptr @.str.3
  %crop.i = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 9, i32 5
  %width5.i = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 9, i32 5, i32 2
  %17 = ptrtoint ptr %width5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %width5.i, align 4
  %height7.i = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 9, i32 5, i32 3
  %19 = ptrtoint ptr %height7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height7.i, align 4
  %21 = ptrtoint ptr %crop.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %crop.i, align 4
  %top.i = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 9, i32 5, i32 1
  %23 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %top.i, align 4
  %and11.i = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %cond13.i = select i1 %tobool12.not.i, ptr @.str.4, ptr @.str.5
  %pixelaspect.i = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 9, i32 6
  %25 = ptrtoint ptr %pixelaspect.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pixelaspect.i, align 4
  %denominator.i = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 9, i32 6, i32 1
  %27 = ptrtoint ptr %denominator.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %denominator.i, align 4
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str, i32 noundef 100, ptr noundef nonnull @.str, ptr noundef %streamformat.i, i32 noundef %8, i32 noundef %10, ptr noundef %profile.i, ptr noundef %level.i, i32 noundef %12, ptr noundef nonnull %cond.i, ptr noundef %other.i, ptr noundef nonnull %cond4.i, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, ptr noundef nonnull %cond13.i, i32 noundef %26, i32 noundef %28) #5
  br label %delta_streaminfo_str.exit

delta_streaminfo_str.exit:                        ; preds = %if.end.i, %if.then4.delta_streaminfo_str.exit_crit_edge
  %retval.0.i19 = phi ptr [ %str, %if.end.i ], [ null, %if.then4.delta_streaminfo_str.exit_crit_edge ]
  %decoded_frames = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 13
  %29 = ptrtoint ptr %decoded_frames to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %decoded_frames, align 4
  %output_frames = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 14
  %31 = ptrtoint ptr %output_frames to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %output_frames, align 4
  %dropped_frames = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 15
  %33 = ptrtoint ptr %dropped_frames to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dropped_frames, align 4
  %stream_errors = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 16
  %35 = ptrtoint ptr %stream_errors to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %stream_errors, align 4
  %decode_errors = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 17
  %37 = ptrtoint ptr %decode_errors to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %decode_errors, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_trace_summary.__UNIQUE_ID_ddebug298, ptr noundef %6, ptr noundef nonnull @.str.10, ptr noundef %name, ptr noundef %retval.0.i19, i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38) #5
  br label %cleanup

cleanup:                                          ; preds = %delta_streaminfo_str.exit, %do.body, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %str) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/sti/delta/delta-debug.c", i32 19, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/sti/delta/delta-debug.c", i32 22, i32 36}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/sti/delta/delta-debug.c", i32 22, i32 52}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/sti/delta/delta-debug.c", i32 24, i32 44}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/sti/delta/delta-debug.c", i32 24, i32 54}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/sti/delta/delta-debug.c", i32 27, i32 51}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/sti/delta/delta-debug.c", i32 41, i32 4}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/sti/delta/delta-debug.c", i32 64, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @delta_trace_summary.__UNIQUE_ID_ddebug298, !15, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 2148303735, i64 2148303740, i64 2148303753, i64 2148303797, i64 2148303831, i64 2148303852}
