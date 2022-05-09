; ModuleID = '/llk/IR_all_yes/drivers/media/usb/pwc/pwc-dec23.c_pt.bc'
source_filename = "../drivers/media/usb/pwc/pwc-dec23.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pwc_device = type { %struct.video_device, %struct.v4l2_device, %struct.vb2_queue, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [13 x i8], ptr, [3 x ptr], ptr, i32, i32, i32, i32, i32, %union.anon.114, i32, i32, i32, ptr, [64 x i8], %struct.v4l2_ctrl_handler, i16, ptr, ptr, ptr, ptr, %struct.anon.116, %struct.anon.117, %struct.anon.118, ptr, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.120, [3 x ptr] }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.114 = type { %struct.pwc_dec23_private }
%struct.pwc_dec23_private = type { %struct.mutex, i8, i8, i32, i32, i32, i32, i32, ptr, [16 x i32], [16 x [1024 x i8]], [16 x [1024 x i8]], [16 x [256 x i8]], [16 x [256 x i8]], [256 x [12 x i32]], [8 x [256 x i8]], [256 x i32], [256 x i32] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.116 = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.anon.117 = type { ptr, ptr, i32, i32, i32 }
%struct.anon.118 = type { ptr, ptr, i32, i32, i32 }
%struct.anon.119 = type { ptr, ptr }
%struct.anon.120 = type { ptr, ptr, ptr, ptr }

@pwc_dec23_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&pdec->lock\00", [20 x i8] zeroinitializer }, align 32
@KiaraRomTable = external dso_local constant [8 x [2 x [16 x [8 x i32]]]], align 4
@TimonRomTable = external dso_local constant [16 x [2 x [16 x [8 x i32]]]], align 4
@pwc_crop_table = internal global { [1280 x i8], [320 x i8] } zeroinitializer, align 32
@hash_table_ops = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\02\00\00\00\00\03\01\00\00\04\01\10\00\06\010\02\00\00\00\00\03\01@\00\05\01 \01\00\00\00\02\00\00\00\00\03\01\00\00\04\01P\00\05\02\00\02\00\00\00\00\03\01@\00\05\03\00\01\00\00\00\02\00\00\00\00\03\01\00\00\04\01\10\00\06\02\10\02\00\00\00\00\03\01@\00\05\01`\01\00\00\00\02\00\00\00\00\03\01\00\00\04\01P\00\05\02@\02\00\00\00\00\03\01@\00\05\03@\01\00\00\00\02\00\00\00\00\03\01\00\00\04\01\10\00\06\01p\02\00\00\00\00\03\01@\00\05\01 \01\00\00\00\02\00\00\00\00\03\01\00\00\04\01P\00\05\02\00\02\00\00\00\00\03\01@\00\05\03\00\01\00\00\00\02\00\00\00\00\03\01\00\00\04\01\10\00\06\02P\02\00\00\00\00\03\01@\00\05\01`\01\00\00\00\02\00\00\00\00\03\01\00\00\04\01P\00\05\02@\02\00\00\00\00\03\01@\00\05\03@\01\00\00\00", [64 x i8] zeroinitializer }, align 32
@MulIdx = internal constant { [16 x [16 x i32]], [256 x i8] } { [16 x [16 x i32]] [[16 x i32] zeroinitializer, [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3], [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3], [16 x i32] [i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 4, i32 4, i32 4, i32 4], [16 x i32] [i32 6, i32 7, i32 8, i32 9, i32 7, i32 10, i32 11, i32 8, i32 8, i32 11, i32 10, i32 7, i32 9, i32 8, i32 7, i32 6], [16 x i32] [i32 4, i32 5, i32 5, i32 4, i32 4, i32 5, i32 5, i32 4, i32 4, i32 5, i32 5, i32 4, i32 4, i32 5, i32 5, i32 4], [16 x i32] [i32 1, i32 3, i32 0, i32 2, i32 1, i32 3, i32 0, i32 2, i32 1, i32 3, i32 0, i32 2, i32 1, i32 3, i32 0, i32 2], [16 x i32] [i32 0, i32 3, i32 3, i32 0, i32 1, i32 2, i32 2, i32 1, i32 2, i32 1, i32 1, i32 2, i32 3, i32 0, i32 0, i32 3], [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 3, i32 2, i32 1, i32 0, i32 3, i32 2, i32 1, i32 0, i32 0, i32 1, i32 2, i32 3], [16 x i32] [i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2], [16 x i32] [i32 7, i32 10, i32 11, i32 8, i32 9, i32 8, i32 7, i32 6, i32 6, i32 7, i32 8, i32 9, i32 8, i32 11, i32 10, i32 7], [16 x i32] [i32 4, i32 5, i32 5, i32 4, i32 5, i32 4, i32 4, i32 5, i32 5, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 4], [16 x i32] [i32 7, i32 9, i32 6, i32 8, i32 10, i32 8, i32 7, i32 11, i32 11, i32 7, i32 8, i32 10, i32 8, i32 6, i32 9, i32 7], [16 x i32] [i32 1, i32 3, i32 0, i32 2, i32 2, i32 0, i32 3, i32 1, i32 2, i32 0, i32 3, i32 1, i32 1, i32 3, i32 0, i32 2], [16 x i32] [i32 1, i32 2, i32 2, i32 1, i32 3, i32 0, i32 0, i32 3, i32 0, i32 3, i32 3, i32 0, i32 2, i32 1, i32 1, i32 2], [16 x i32] [i32 10, i32 8, i32 7, i32 11, i32 8, i32 6, i32 9, i32 7, i32 7, i32 9, i32 6, i32 8, i32 11, i32 7, i32 8, i32 10]], [256 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 290, i32 2 }
@___asan_gen_.7 = private unnamed_addr constant [15 x i8] c"pwc_crop_table\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 277, i32 22 }
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"hash_table_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 186, i32 28 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"MulIdx\00", align 1
@___asan_gen_.14 = private constant [37 x i8] c"../drivers/media/usb/pwc/pwc-dec23.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 256, i32 27 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @pwc_dec23_init.__key, ptr @.str, ptr @pwc_crop_table, ptr @hash_table_ops, ptr @MulIdx], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_dec23_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_crop_table to i32), i32 1280, i32 1600, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_table_ops to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MulIdx to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pwc_dec23_init(ptr noundef %pdev, ptr nocapture noundef readonly %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 33
  tail call void @__mutex_init(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @pwc_dec23_init.__key) #5
  %last_cmd_valid = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 2
  %1 = ptrtoint ptr %last_cmd_valid to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %last_cmd_valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %last_cmd = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 1
  %3 = ptrtoint ptr %last_cmd to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %last_cmd, align 4
  %arrayidx = getelementptr i8, ptr %cmd, i32 2
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp = icmp eq i8 %4, %6
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %type = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 8
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 699, i32 %8)
  %cmp4 = icmp sgt i32 %8, 699
  %arrayidx7 = getelementptr i8, ptr %cmd, i32 2
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx7, align 1
  br i1 %cmp4, label %if.then6, label %if.else31

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %11 = trunc i8 %10 to i5
  %trunc146 = and i5 %11, -8
  %12 = sext i5 %trunc146 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %12)
  %switch.selectcmp = icmp eq i5 %trunc146, -16
  %switch.select = select i1 %switch.selectcmp, i32 8, i32 6
  %13 = sext i5 %trunc146 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %13)
  %switch.selectcmp151 = icmp eq i5 %trunc146, 8
  %switch.select152 = select i1 %switch.selectcmp151, i32 7, i32 %switch.select
  %nbits15 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 5
  %14 = ptrtoint ptr %nbits15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %switch.select152, ptr %nbits15, align 4
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx7, align 1
  %17 = lshr i8 %16, 5
  %18 = zext i8 %17 to i32
  %arrayidx22 = getelementptr [8 x [2 x [16 x [8 x i32]]]], ptr @KiaraRomTable, i32 0, i32 %18
  %table_0004_pass1 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 10
  %table_8004_pass1 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 12
  tail call fastcc void @build_table_color(ptr noundef %arrayidx22, ptr noundef %table_0004_pass1, ptr noundef %table_8004_pass1)
  %arrayidx27 = getelementptr [8 x [2 x [16 x [8 x i32]]]], ptr @KiaraRomTable, i32 0, i32 %18, i32 1
  br label %if.end65

if.else31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %19 = trunc i8 %10 to i3
  %trunc = and i3 %19, -2
  %20 = sext i3 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %20)
  %switch.selectcmp153 = icmp eq i3 %trunc, -4
  %switch.select154 = select i1 %switch.selectcmp153, i32 8, i32 6
  %21 = sext i3 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %switch.selectcmp155 = icmp eq i3 %trunc, 2
  %switch.select156 = select i1 %switch.selectcmp155, i32 7, i32 %switch.select154
  %nbits43 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 5
  %22 = ptrtoint ptr %nbits43 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %switch.select156, ptr %nbits43, align 4
  %23 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx7, align 1
  %25 = lshr i8 %24, 3
  %26 = zext i8 %25 to i32
  %arrayidx51 = getelementptr [16 x [2 x [16 x [8 x i32]]]], ptr @TimonRomTable, i32 0, i32 %26
  %table_0004_pass154 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 10
  %table_8004_pass156 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 12
  tail call fastcc void @build_table_color(ptr noundef %arrayidx51, ptr noundef %table_0004_pass154, ptr noundef %table_8004_pass156)
  %arrayidx59 = getelementptr [16 x [2 x [16 x [8 x i32]]]], ptr @TimonRomTable, i32 0, i32 %26, i32 1
  br label %if.end65

if.end65:                                         ; preds = %if.else31, %if.then6
  %arrayidx59.sink = phi ptr [ %arrayidx59, %if.else31 ], [ %arrayidx27, %if.then6 ]
  %table_0004_pass261 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 11
  %table_8004_pass263 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 13
  tail call fastcc void @build_table_color(ptr noundef %arrayidx59.sink, ptr noundef %table_0004_pass261, ptr noundef %table_8004_pass263)
  %nbits66 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 5
  %27 = ptrtoint ptr %nbits66 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nbits66, align 4
  %sub = sub i32 8, %28
  %sub67 = add i32 %28, 7
  %scalebits = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 3
  %29 = ptrtoint ptr %scalebits to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub67, ptr %scalebits, align 4
  %shr68 = lshr i32 255, %sub
  %nbitsmask = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 4
  %30 = ptrtoint ptr %nbitsmask to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shr68, ptr %nbitsmask, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end65
  %offset2.011.i = phi i32 [ 0, %if.end65 ], [ %add2.i, %for.body.i.for.body.i_crit_edge ]
  %offset1.010.i = phi i32 [ 16384, %if.end65 ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %i.09.i = phi i32 [ 0, %if.end65 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %and.i = and i32 %offset1.010.i, 2147467260
  %arrayidx.i = getelementptr %struct.pwc_dec23_private, ptr %0, i32 0, i32 17, i32 %i.09.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and.i, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.pwc_dec23_private, ptr %0, i32 0, i32 16, i32 %i.09.i
  %32 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %offset2.011.i, ptr %arrayidx1.i, align 4
  %add.i = add nuw nsw i32 %offset1.010.i, 31684
  %add2.i = add nuw nsw i32 %offset2.011.i, 31684
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.body.i.for.cond1.preheader.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.for.cond1.preheader.i_crit_edge:       ; preds = %for.body.i
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge, %for.body.i.for.cond1.preheader.i_crit_edge
  %temp_values.sroa.0.0.i = phi i32 [ %add.i143, %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge ], [ -5399808, %for.body.i.for.cond1.preheader.i_crit_edge ]
  %temp_values.sroa.6.0.i = phi i32 [ %add.1.i, %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge ], [ -2232832, %for.body.i.for.cond1.preheader.i_crit_edge ]
  %temp_values.sroa.8.0.i = phi i32 [ %add.2.i, %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge ], [ 2232832, %for.body.i.for.cond1.preheader.i_crit_edge ]
  %temp_values.sroa.10.0.i = phi i32 [ %add.3.i, %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge ], [ 5399808, %for.body.i.for.cond1.preheader.i_crit_edge ]
  %temp_values.sroa.12.0.i = phi i32 [ %add.4.i, %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge ], [ -4055552, %for.body.i.for.cond1.preheader.i_crit_edge ]
  %temp_values.sroa.14.0.i = phi i32 [ %add.5.i, %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge ], [ 4055552, %for.body.i.for.cond1.preheader.i_crit_edge ]
  %temp_values.sroa.16.0.i = phi i32 [ %add.6.i, %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge ], [ -7189632, %for.body.i.for.cond1.preheader.i_crit_edge ]
  %temp_values.sroa.18.0.i = phi i32 [ %add.7.i, %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge ], [ -2972928, %for.body.i.for.cond1.preheader.i_crit_edge ]
  %temp_values.sroa.20.0.i = phi i32 [ %add.8.i, %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge ], [ 2972928, %for.body.i.for.cond1.preheader.i_crit_edge ]
  %temp_values.sroa.22.0.i = phi i32 [ %add.9.i, %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge ], [ 7189632, %for.body.i.for.cond1.preheader.i_crit_edge ]
  %temp_values.sroa.24.0.i = phi i32 [ %add.10.i, %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge ], [ -1229312, %for.body.i.for.cond1.preheader.i_crit_edge ]
  %temp_values.sroa.26.0.i = phi i32 [ %add.11.i, %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge ], [ 1229312, %for.body.i.for.cond1.preheader.i_crit_edge ]
  %i.019.i = phi i32 [ %inc9.i, %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge ], [ 0, %for.body.i.for.cond1.preheader.i_crit_edge ]
  %arrayidx5.i = getelementptr %struct.pwc_dec23_private, ptr %0, i32 0, i32 14, i32 %i.019.i, i32 0
  %33 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %temp_values.sroa.0.0.i, ptr %arrayidx5.i, align 4
  %add.i143 = add nsw i32 %temp_values.sroa.0.0.i, 42186
  %arrayidx5.1.i = getelementptr %struct.pwc_dec23_private, ptr %0, i32 0, i32 14, i32 %i.019.i, i32 1
  %34 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %temp_values.sroa.6.0.i, ptr %arrayidx5.1.i, align 4
  %add.1.i = add nsw i32 %temp_values.sroa.6.0.i, 17444
  %arrayidx5.2.i = getelementptr %struct.pwc_dec23_private, ptr %0, i32 0, i32 14, i32 %i.019.i, i32 2
  %35 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %temp_values.sroa.8.0.i, ptr %arrayidx5.2.i, align 4
  %add.2.i = add nsw i32 %temp_values.sroa.8.0.i, -17444
  %arrayidx5.3.i = getelementptr %struct.pwc_dec23_private, ptr %0, i32 0, i32 14, i32 %i.019.i, i32 3
  %36 = ptrtoint ptr %arrayidx5.3.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %temp_values.sroa.10.0.i, ptr %arrayidx5.3.i, align 4
  %add.3.i = add nsw i32 %temp_values.sroa.10.0.i, -42186
  %arrayidx5.4.i = getelementptr %struct.pwc_dec23_private, ptr %0, i32 0, i32 14, i32 %i.019.i, i32 4
  %37 = ptrtoint ptr %arrayidx5.4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %temp_values.sroa.12.0.i, ptr %arrayidx5.4.i, align 4
  %add.4.i = add nsw i32 %temp_values.sroa.12.0.i, 31684
  %arrayidx5.5.i = getelementptr %struct.pwc_dec23_private, ptr %0, i32 0, i32 14, i32 %i.019.i, i32 5
  %38 = ptrtoint ptr %arrayidx5.5.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %temp_values.sroa.14.0.i, ptr %arrayidx5.5.i, align 4
  %add.5.i = add nsw i32 %temp_values.sroa.14.0.i, -31684
  %arrayidx5.6.i = getelementptr %struct.pwc_dec23_private, ptr %0, i32 0, i32 14, i32 %i.019.i, i32 6
  %39 = ptrtoint ptr %arrayidx5.6.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %temp_values.sroa.16.0.i, ptr %arrayidx5.6.i, align 4
  %add.6.i = add nsw i32 %temp_values.sroa.16.0.i, 56169
  %arrayidx5.7.i = getelementptr %struct.pwc_dec23_private, ptr %0, i32 0, i32 14, i32 %i.019.i, i32 7
  %40 = ptrtoint ptr %arrayidx5.7.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %temp_values.sroa.18.0.i, ptr %arrayidx5.7.i, align 4
  %add.7.i = add nsw i32 %temp_values.sroa.18.0.i, 23226
  %arrayidx5.8.i = getelementptr %struct.pwc_dec23_private, ptr %0, i32 0, i32 14, i32 %i.019.i, i32 8
  %41 = ptrtoint ptr %arrayidx5.8.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %temp_values.sroa.20.0.i, ptr %arrayidx5.8.i, align 4
  %add.8.i = add nsw i32 %temp_values.sroa.20.0.i, -23226
  %arrayidx5.9.i = getelementptr %struct.pwc_dec23_private, ptr %0, i32 0, i32 14, i32 %i.019.i, i32 9
  %42 = ptrtoint ptr %arrayidx5.9.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %temp_values.sroa.22.0.i, ptr %arrayidx5.9.i, align 4
  %add.9.i = add nsw i32 %temp_values.sroa.22.0.i, -56169
  %arrayidx5.10.i = getelementptr %struct.pwc_dec23_private, ptr %0, i32 0, i32 14, i32 %i.019.i, i32 10
  %43 = ptrtoint ptr %arrayidx5.10.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %temp_values.sroa.24.0.i, ptr %arrayidx5.10.i, align 4
  %add.10.i = add nsw i32 %temp_values.sroa.24.0.i, 9604
  %arrayidx5.11.i = getelementptr %struct.pwc_dec23_private, ptr %0, i32 0, i32 14, i32 %i.019.i, i32 11
  %44 = ptrtoint ptr %arrayidx5.11.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %temp_values.sroa.26.0.i, ptr %arrayidx5.11.i, align 4
  %add.11.i = add nsw i32 %temp_values.sroa.26.0.i, -9604
  %inc9.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i144 = icmp eq i32 %inc9.i, 256
  br i1 %exitcond.not.i144, label %build_subblock_pattern.exit, label %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge

for.cond1.preheader.i.for.cond1.preheader.i_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond1.preheader.i

build_subblock_pattern.exit:                      ; preds = %for.cond1.preheader.i
  %arrayidx.i145 = getelementptr %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 15
  %45 = call ptr @memset(ptr %arrayidx.i145, i32 0, i32 256)
  %arrayidx.1.i = getelementptr %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 15, i32 1
  br label %for.body3.1.i

for.body3.1.i:                                    ; preds = %for.body3.1.i.for.body3.1.i_crit_edge, %build_subblock_pattern.exit
  %byte.018.1.i = phi i32 [ 0, %build_subblock_pattern.exit ], [ %inc.1.i, %for.body3.1.i.for.body3.1.i_crit_edge ]
  %p.017.1.i = phi ptr [ %arrayidx.1.i, %build_subblock_pattern.exit ], [ %incdec.ptr.1.i, %for.body3.1.i.for.body3.1.i_crit_edge ]
  %and.1.i = and i32 %byte.018.1.i, 1
  %and4.1.i = and i32 %byte.018.1.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.1.i)
  %tobool.not.1.i = icmp eq i32 %and4.1.i, 0
  %sub5.1.i = sub nsw i32 0, %and.1.i
  %spec.select.1.i = select i1 %tobool.not.1.i, i32 %and.1.i, i32 %sub5.1.i
  %conv.1.i = trunc i32 %spec.select.1.i to i8
  %incdec.ptr.1.i = getelementptr i8, ptr %p.017.1.i, i32 1
  %46 = ptrtoint ptr %p.017.1.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv.1.i, ptr %p.017.1.i, align 1
  %inc.1.i = add nuw nsw i32 %byte.018.1.i, 1
  %exitcond.1.not.i = icmp eq i32 %inc.1.i, 256
  br i1 %exitcond.1.not.i, label %for.end.1.i, label %for.body3.1.i.for.body3.1.i_crit_edge

for.body3.1.i.for.body3.1.i_crit_edge:            ; preds = %for.body3.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.1.i

for.end.1.i:                                      ; preds = %for.body3.1.i
  %arrayidx.2.i = getelementptr %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 15, i32 2
  br label %for.body3.2.i

for.body3.2.i:                                    ; preds = %for.body3.2.i.for.body3.2.i_crit_edge, %for.end.1.i
  %byte.018.2.i = phi i32 [ 0, %for.end.1.i ], [ %inc.2.i, %for.body3.2.i.for.body3.2.i_crit_edge ]
  %p.017.2.i = phi ptr [ %arrayidx.2.i, %for.end.1.i ], [ %incdec.ptr.2.i, %for.body3.2.i.for.body3.2.i_crit_edge ]
  %and.2.i = and i32 %byte.018.2.i, 3
  %and4.2.i = and i32 %byte.018.2.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.2.i)
  %tobool.not.2.i = icmp eq i32 %and4.2.i, 0
  %sub5.2.i = sub nsw i32 0, %and.2.i
  %spec.select.2.i = select i1 %tobool.not.2.i, i32 %and.2.i, i32 %sub5.2.i
  %conv.2.i = trunc i32 %spec.select.2.i to i8
  %incdec.ptr.2.i = getelementptr i8, ptr %p.017.2.i, i32 1
  %47 = ptrtoint ptr %p.017.2.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv.2.i, ptr %p.017.2.i, align 1
  %inc.2.i = add nuw nsw i32 %byte.018.2.i, 1
  %exitcond.2.not.i = icmp eq i32 %inc.2.i, 256
  br i1 %exitcond.2.not.i, label %for.end.2.i, label %for.body3.2.i.for.body3.2.i_crit_edge

for.body3.2.i.for.body3.2.i_crit_edge:            ; preds = %for.body3.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.2.i

for.end.2.i:                                      ; preds = %for.body3.2.i
  %arrayidx.3.i = getelementptr %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 15, i32 3
  br label %for.body3.3.i

for.body3.3.i:                                    ; preds = %for.body3.3.i.for.body3.3.i_crit_edge, %for.end.2.i
  %byte.018.3.i = phi i32 [ 0, %for.end.2.i ], [ %inc.3.i, %for.body3.3.i.for.body3.3.i_crit_edge ]
  %p.017.3.i = phi ptr [ %arrayidx.3.i, %for.end.2.i ], [ %incdec.ptr.3.i, %for.body3.3.i.for.body3.3.i_crit_edge ]
  %and.3.i = and i32 %byte.018.3.i, 7
  %and4.3.i = and i32 %byte.018.3.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.3.i)
  %tobool.not.3.i = icmp eq i32 %and4.3.i, 0
  %sub5.3.i = sub nsw i32 0, %and.3.i
  %spec.select.3.i = select i1 %tobool.not.3.i, i32 %and.3.i, i32 %sub5.3.i
  %conv.3.i = trunc i32 %spec.select.3.i to i8
  %incdec.ptr.3.i = getelementptr i8, ptr %p.017.3.i, i32 1
  %48 = ptrtoint ptr %p.017.3.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv.3.i, ptr %p.017.3.i, align 1
  %inc.3.i = add nuw nsw i32 %byte.018.3.i, 1
  %exitcond.3.not.i = icmp eq i32 %inc.3.i, 256
  br i1 %exitcond.3.not.i, label %for.end.3.i, label %for.body3.3.i.for.body3.3.i_crit_edge

for.body3.3.i.for.body3.3.i_crit_edge:            ; preds = %for.body3.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.3.i

for.end.3.i:                                      ; preds = %for.body3.3.i
  %arrayidx.4.i = getelementptr %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 15, i32 4
  br label %for.body3.4.i

for.body3.4.i:                                    ; preds = %for.body3.4.i.for.body3.4.i_crit_edge, %for.end.3.i
  %byte.018.4.i = phi i32 [ 0, %for.end.3.i ], [ %inc.4.i, %for.body3.4.i.for.body3.4.i_crit_edge ]
  %p.017.4.i = phi ptr [ %arrayidx.4.i, %for.end.3.i ], [ %incdec.ptr.4.i, %for.body3.4.i.for.body3.4.i_crit_edge ]
  %and.4.i = and i32 %byte.018.4.i, 15
  %and4.4.i = and i32 %byte.018.4.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.4.i)
  %tobool.not.4.i = icmp eq i32 %and4.4.i, 0
  %sub5.4.i = sub nsw i32 0, %and.4.i
  %spec.select.4.i = select i1 %tobool.not.4.i, i32 %and.4.i, i32 %sub5.4.i
  %conv.4.i = trunc i32 %spec.select.4.i to i8
  %incdec.ptr.4.i = getelementptr i8, ptr %p.017.4.i, i32 1
  %49 = ptrtoint ptr %p.017.4.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv.4.i, ptr %p.017.4.i, align 1
  %inc.4.i = add nuw nsw i32 %byte.018.4.i, 1
  %exitcond.4.not.i = icmp eq i32 %inc.4.i, 256
  br i1 %exitcond.4.not.i, label %for.end.4.i, label %for.body3.4.i.for.body3.4.i_crit_edge

for.body3.4.i.for.body3.4.i_crit_edge:            ; preds = %for.body3.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.4.i

for.end.4.i:                                      ; preds = %for.body3.4.i
  %arrayidx.5.i = getelementptr %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 15, i32 5
  br label %for.body3.5.i

for.body3.5.i:                                    ; preds = %for.body3.5.i.for.body3.5.i_crit_edge, %for.end.4.i
  %byte.018.5.i = phi i32 [ 0, %for.end.4.i ], [ %inc.5.i, %for.body3.5.i.for.body3.5.i_crit_edge ]
  %p.017.5.i = phi ptr [ %arrayidx.5.i, %for.end.4.i ], [ %incdec.ptr.5.i, %for.body3.5.i.for.body3.5.i_crit_edge ]
  %and.5.i = and i32 %byte.018.5.i, 31
  %and4.5.i = and i32 %byte.018.5.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.5.i)
  %tobool.not.5.i = icmp eq i32 %and4.5.i, 0
  %sub5.5.i = sub nsw i32 0, %and.5.i
  %spec.select.5.i = select i1 %tobool.not.5.i, i32 %and.5.i, i32 %sub5.5.i
  %conv.5.i = trunc i32 %spec.select.5.i to i8
  %incdec.ptr.5.i = getelementptr i8, ptr %p.017.5.i, i32 1
  %50 = ptrtoint ptr %p.017.5.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv.5.i, ptr %p.017.5.i, align 1
  %inc.5.i = add nuw nsw i32 %byte.018.5.i, 1
  %exitcond.5.not.i = icmp eq i32 %inc.5.i, 256
  br i1 %exitcond.5.not.i, label %for.end.5.i, label %for.body3.5.i.for.body3.5.i_crit_edge

for.body3.5.i.for.body3.5.i_crit_edge:            ; preds = %for.body3.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.5.i

for.end.5.i:                                      ; preds = %for.body3.5.i
  %arrayidx.6.i = getelementptr %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 15, i32 6
  br label %for.body3.6.i

for.body3.6.i:                                    ; preds = %for.body3.6.i.for.body3.6.i_crit_edge, %for.end.5.i
  %byte.018.6.i = phi i32 [ 0, %for.end.5.i ], [ %inc.6.i, %for.body3.6.i.for.body3.6.i_crit_edge ]
  %p.017.6.i = phi ptr [ %arrayidx.6.i, %for.end.5.i ], [ %incdec.ptr.6.i, %for.body3.6.i.for.body3.6.i_crit_edge ]
  %and.6.i = and i32 %byte.018.6.i, 63
  %and4.6.i = and i32 %byte.018.6.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.6.i)
  %tobool.not.6.i = icmp eq i32 %and4.6.i, 0
  %sub5.6.i = sub nsw i32 0, %and.6.i
  %spec.select.6.i = select i1 %tobool.not.6.i, i32 %and.6.i, i32 %sub5.6.i
  %conv.6.i = trunc i32 %spec.select.6.i to i8
  %incdec.ptr.6.i = getelementptr i8, ptr %p.017.6.i, i32 1
  %51 = ptrtoint ptr %p.017.6.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv.6.i, ptr %p.017.6.i, align 1
  %inc.6.i = add nuw nsw i32 %byte.018.6.i, 1
  %exitcond.6.not.i = icmp eq i32 %inc.6.i, 256
  br i1 %exitcond.6.not.i, label %for.end.6.i, label %for.body3.6.i.for.body3.6.i_crit_edge

for.body3.6.i.for.body3.6.i_crit_edge:            ; preds = %for.body3.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.6.i

for.end.6.i:                                      ; preds = %for.body3.6.i
  %arrayidx.7.i = getelementptr %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 15, i32 7
  br label %for.body3.7.i

for.body3.7.i:                                    ; preds = %for.body3.7.i.for.body3.7.i_crit_edge, %for.end.6.i
  %byte.018.7.i = phi i32 [ 0, %for.end.6.i ], [ %inc.7.i, %for.body3.7.i.for.body3.7.i_crit_edge ]
  %p.017.7.i = phi ptr [ %arrayidx.7.i, %for.end.6.i ], [ %incdec.ptr.7.i, %for.body3.7.i.for.body3.7.i_crit_edge ]
  %and.7.i = and i32 %byte.018.7.i, 127
  %and4.7.i = and i32 %byte.018.7.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.7.i)
  %tobool.not.7.i = icmp eq i32 %and4.7.i, 0
  %sub5.7.i = sub nsw i32 0, %and.7.i
  %spec.select.7.i = select i1 %tobool.not.7.i, i32 %and.7.i, i32 %sub5.7.i
  %conv.7.i = trunc i32 %spec.select.7.i to i8
  %incdec.ptr.7.i = getelementptr i8, ptr %p.017.7.i, i32 1
  %52 = ptrtoint ptr %p.017.7.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv.7.i, ptr %p.017.7.i, align 1
  %inc.7.i = add nuw nsw i32 %byte.018.7.i, 1
  %exitcond.7.not.i = icmp eq i32 %inc.7.i, 256
  br i1 %exitcond.7.not.i, label %for.body.preheader, label %for.body3.7.i.for.body3.7.i_crit_edge

for.body3.7.i.for.body3.7.i_crit_edge:            ; preds = %for.body3.7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.7.i

for.body.preheader:                               ; preds = %for.body3.7.i
  %53 = call ptr @memset(ptr @pwc_crop_table, i32 0, i32 512)
  br label %for.body75

for.body75:                                       ; preds = %for.body75.for.body75_crit_edge, %for.body.preheader
  %i.1148 = phi i32 [ %inc79, %for.body75.for.body75_crit_edge ], [ 0, %for.body.preheader ]
  %conv76 = trunc i32 %i.1148 to i8
  %add = add nuw nsw i32 %i.1148, 512
  %arrayidx77 = getelementptr [1280 x i8], ptr @pwc_crop_table, i32 0, i32 %add
  %54 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv76, ptr %arrayidx77, align 1
  %inc79 = add nuw nsw i32 %i.1148, 1
  %exitcond.not = icmp eq i32 %inc79, 256
  br i1 %exitcond.not, label %for.body84.preheader, label %for.body75.for.body75_crit_edge

for.body75.for.body75_crit_edge:                  ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body75

for.body84.preheader:                             ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #7
  %55 = call ptr @memset(ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 768), i32 255, i32 512)
  %arrayidx90 = getelementptr i8, ptr %cmd, i32 2
  %56 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx90, align 1
  %last_cmd91 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 1
  %58 = ptrtoint ptr %last_cmd91 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %last_cmd91, align 4
  %59 = ptrtoint ptr %last_cmd_valid to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %last_cmd_valid, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.body84.preheader, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @build_table_color(ptr nocapture noundef readonly %romtable, ptr nocapture noundef writeonly %p0004, ptr nocapture noundef writeonly %p8004) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc105.for.body_crit_edge, %entry
  %compression_mode.0172 = phi i32 [ 0, %entry ], [ %inc106, %for.inc105.for.body_crit_edge ]
  %arrayidx = getelementptr [1024 x i8], ptr %p0004, i32 %compression_mode.0172
  %arrayidx1 = getelementptr [256 x i8], ptr %p8004, i32 %compression_mode.0172
  %arrayidx3 = getelementptr [8 x i32], ptr %romtable, i32 %compression_mode.0172
  br label %for.body10.peel.next

for.body10.peel.next:                             ; preds = %for.inc101.for.body10.peel.next_crit_edge, %for.body
  %r.0171 = phi ptr [ %arrayidx3, %for.body ], [ %incdec.ptr103, %for.inc101.for.body10.peel.next_crit_edge ]
  %p8.0170 = phi ptr [ %arrayidx1, %for.body ], [ %incdec.ptr62, %for.inc101.for.body10.peel.next_crit_edge ]
  %p0.0169 = phi ptr [ %arrayidx, %for.body ], [ %add.ptr, %for.inc101.for.body10.peel.next_crit_edge ]
  %j.0168 = phi i32 [ 0, %for.body ], [ %inc102, %for.inc101.for.body10.peel.next_crit_edge ]
  %p8.2.peel = getelementptr i8, ptr %p8.0170, i32 1
  %0 = ptrtoint ptr %p8.0170 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 8, ptr %p8.0170, align 1
  %1 = ptrtoint ptr %p8.2.peel to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %p8.2.peel, align 1
  %2 = ptrtoint ptr %p0.0169 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -126, ptr %p0.0169, align 1
  %arrayidx70.peel = getelementptr i8, ptr %p0.0169, i32 16
  %3 = ptrtoint ptr %arrayidx70.peel to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -124, ptr %arrayidx70.peel, align 1
  %arrayidx75.peel = getelementptr i8, ptr %p0.0169, i32 32
  %4 = ptrtoint ptr %arrayidx75.peel to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -122, ptr %arrayidx75.peel, align 1
  %arrayidx80.peel = getelementptr i8, ptr %p0.0169, i32 48
  %5 = ptrtoint ptr %arrayidx80.peel to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -120, ptr %arrayidx80.peel, align 1
  %arrayidx85.peel = getelementptr i8, ptr %p0.0169, i32 64
  %6 = ptrtoint ptr %arrayidx85.peel to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 126, ptr %arrayidx85.peel, align 1
  %arrayidx90.peel = getelementptr i8, ptr %p0.0169, i32 80
  %7 = ptrtoint ptr %arrayidx90.peel to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 124, ptr %arrayidx90.peel, align 1
  %arrayidx95.peel = getelementptr i8, ptr %p0.0169, i32 96
  %8 = ptrtoint ptr %arrayidx95.peel to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 122, ptr %arrayidx95.peel, align 1
  %arrayidx100.peel = getelementptr i8, ptr %p0.0169, i32 112
  %9 = ptrtoint ptr %arrayidx100.peel to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 120, ptr %arrayidx100.peel, align 1
  %incdec.ptr62.peel = getelementptr i8, ptr %p8.0170, i32 2
  br label %if.else

if.else:                                          ; preds = %if.end55.if.else_crit_edge, %for.body10.peel.next
  %p8.1167 = phi ptr [ %incdec.ptr62.peel, %for.body10.peel.next ], [ %incdec.ptr62, %if.end55.if.else_crit_edge ]
  %k.0165 = phi i32 [ 1, %for.body10.peel.next ], [ %inc, %if.end55.if.else_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %k.0165)
  %cmp13 = icmp ult i32 %k.0165, 3
  br i1 %cmp13, label %if.else.if.end55.sink.split_crit_edge, label %if.else16

if.else.if.end55.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.sink.split

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %k.0165)
  %cmp19 = icmp ult i32 %k.0165, 6
  br i1 %cmp19, label %if.else16.if.end55.sink.split_crit_edge, label %if.else24

if.else16.if.end55.sink.split_crit_edge:          ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.sink.split

if.else24:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %k.0165)
  %cmp27 = icmp ult i32 %k.0165, 10
  br i1 %cmp27, label %if.else24.if.end55.sink.split_crit_edge, label %if.else32

if.else24.if.end55.sink.split_crit_edge:          ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.sink.split

if.else32:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %k.0165)
  %cmp35 = icmp ult i32 %k.0165, 13
  br i1 %cmp35, label %if.else32.if.end55.sink.split_crit_edge, label %if.else40

if.else32.if.end55.sink.split_crit_edge:          ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.sink.split

if.else40:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %k.0165)
  %cmp43 = icmp ult i32 %k.0165, 15
  %10 = ptrtoint ptr %r.0171 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %r.0171, align 4
  %shr46 = lshr i32 %11, 3
  %spec.select = select i1 %cmp43, i32 %shr46, i32 %11
  br label %if.end55

if.end55.sink.split:                              ; preds = %if.else32.if.end55.sink.split_crit_edge, %if.else24.if.end55.sink.split_crit_edge, %if.else16.if.end55.sink.split_crit_edge, %if.else.if.end55.sink.split_crit_edge
  %.sink176 = phi i32 [ 15, %if.else.if.end55.sink.split_crit_edge ], [ 12, %if.else16.if.end55.sink.split_crit_edge ], [ 9, %if.else24.if.end55.sink.split_crit_edge ], [ 6, %if.else32.if.end55.sink.split_crit_edge ]
  %12 = ptrtoint ptr %r.0171 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %r.0171, align 4
  %shr = lshr i32 %13, %.sink176
  br label %if.end55

if.end55:                                         ; preds = %if.end55.sink.split, %if.else40
  %shr.sink = phi i32 [ %spec.select, %if.else40 ], [ %shr, %if.end55.sink.split ]
  %and = and i32 %shr.sink, 7
  %sub = sub nsw i32 %j.0168, %and
  %conv = trunc i32 %sub to i8
  %p8.2 = getelementptr i8, ptr %p8.1167, i32 1
  %14 = ptrtoint ptr %p8.1167 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %p8.1167, align 1
  %conv61 = trunc i32 %and to i8
  %incdec.ptr62 = getelementptr i8, ptr %p8.1167, i32 2
  %15 = ptrtoint ptr %p8.2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv61, ptr %p8.2, align 1
  %shl = shl nuw nsw i32 1, %and
  %16 = trunc i32 %shl to i8
  %conv63 = xor i8 %16, -128
  %arrayidx65 = getelementptr i8, ptr %p0.0169, i32 %k.0165
  %17 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv63, ptr %arrayidx65, align 1
  %18 = shl i8 %16, 1
  %conv68 = xor i8 %18, -128
  %add69 = add nuw nsw i32 %k.0165, 16
  %arrayidx70 = getelementptr i8, ptr %p0.0169, i32 %add69
  %19 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv68, ptr %arrayidx70, align 1
  %mul71 = shl nuw nsw i32 3, %and
  %20 = trunc i32 %mul71 to i8
  %conv73 = xor i8 %20, -128
  %add74 = add nuw nsw i32 %k.0165, 32
  %arrayidx75 = getelementptr i8, ptr %p0.0169, i32 %add74
  %21 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv73, ptr %arrayidx75, align 1
  %22 = shl i8 %16, 2
  %conv78 = xor i8 %22, -128
  %add79 = add nuw nsw i32 %k.0165, 48
  %arrayidx80 = getelementptr i8, ptr %p0.0169, i32 %add79
  %23 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv78, ptr %arrayidx80, align 1
  %conv83 = sub nuw i8 -128, %16
  %add84 = add nuw nsw i32 %k.0165, 64
  %arrayidx85 = getelementptr i8, ptr %p0.0169, i32 %add84
  %24 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv83, ptr %arrayidx85, align 1
  %mul86 = shl nsw i32 -2, %and
  %25 = trunc i32 %mul86 to i8
  %conv88 = xor i8 %25, -128
  %add89 = add nuw nsw i32 %k.0165, 80
  %arrayidx90 = getelementptr i8, ptr %p0.0169, i32 %add89
  %26 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv88, ptr %arrayidx90, align 1
  %mul91 = shl nsw i32 -3, %and
  %27 = trunc i32 %mul91 to i8
  %conv93 = xor i8 %27, -128
  %add94 = add nuw nsw i32 %k.0165, 96
  %arrayidx95 = getelementptr i8, ptr %p0.0169, i32 %add94
  %28 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv93, ptr %arrayidx95, align 1
  %mul96 = shl nsw i32 -4, %and
  %29 = trunc i32 %mul96 to i8
  %conv98 = xor i8 %29, -128
  %add99 = add nuw nsw i32 %k.0165, 112
  %arrayidx100 = getelementptr i8, ptr %p0.0169, i32 %add99
  %30 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv98, ptr %arrayidx100, align 1
  %inc = add nuw nsw i32 %k.0165, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc101, label %if.end55.if.else_crit_edge, !llvm.loop !22

if.end55.if.else_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

for.inc101:                                       ; preds = %if.end55
  %inc102 = add nuw nsw i32 %j.0168, 1
  %incdec.ptr103 = getelementptr i32, ptr %r.0171, i32 1
  %add.ptr = getelementptr i8, ptr %p0.0169, i32 128
  %exitcond174.not = icmp eq i32 %inc102, 8
  br i1 %exitcond174.not, label %for.inc105, label %for.inc101.for.body10.peel.next_crit_edge

for.inc101.for.body10.peel.next_crit_edge:        ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body10.peel.next

for.inc105:                                       ; preds = %for.inc101
  %inc106 = add nuw nsw i32 %compression_mode.0172, 1
  %exitcond175.not = icmp eq i32 %inc106, 16
  br i1 %exitcond175.not, label %for.end107, label %for.inc105.for.body_crit_edge

for.inc105.for.body_crit_edge:                    ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end107:                                       ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pwc_dec23_decompress(ptr noundef %pdev, ptr noundef %src, ptr nocapture noundef writeonly %dst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 33
  tail call void @mutex_lock_nested(ptr noundef %0, i32 noundef 0) #5
  %height = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 36
  %1 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %height, align 4
  %width = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 35
  %3 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %width, align 8
  %mul = shl i32 %4, 2
  %.off = add i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %.off)
  %5 = icmp ult i32 %.off, 7
  br i1 %5, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %div = sdiv i32 %2, 4
  %mul3 = mul i32 %4, %2
  %add.ptr = getelementptr i8, ptr %dst, i32 %mul3
  %div535 = lshr i32 %mul3, 2
  %add.ptr6 = getelementptr i8, ptr %add.ptr, i32 %div535
  %reservoir.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 6
  %nbits_in_reservoir.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 7
  %stream.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 8
  %temp_colors.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 9
  %scalebits.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 3
  %arrayidx2.i.i = getelementptr %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 9, i32 1
  %arrayidx6.i.i = getelementptr %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 9, i32 2
  %arrayidx10.i.i = getelementptr %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 9, i32 3
  %arrayidx14.i.i = getelementptr %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 9, i32 4
  %arrayidx18.i.i = getelementptr %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 9, i32 5
  %arrayidx22.i.i = getelementptr %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 9, i32 6
  %arrayidx26.i.i = getelementptr %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 9, i32 7
  %arrayidx31.i.i = getelementptr %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 9, i32 8
  %arrayidx35.i.i = getelementptr %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 9, i32 9
  %arrayidx39.i.i = getelementptr %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 9, i32 10
  %arrayidx43.i.i = getelementptr %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 9, i32 11
  %arrayidx49.i.i = getelementptr %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 9, i32 12
  %arrayidx53.i.i = getelementptr %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 9, i32 13
  %arrayidx57.i.i = getelementptr %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 9, i32 14
  %arrayidx61.i.i = getelementptr %struct.pwc_device, ptr %pdev, i32 0, i32 33, i32 0, i32 9, i32 15
  %vbandlength = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 20
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %width, align 8
  br label %while.body

while.body:                                       ; preds = %DecompressBand23.exit.while.body_crit_edge, %while.body.lr.ph
  %7 = phi i32 [ %.pr, %while.body.lr.ph ], [ %262, %DecompressBand23.exit.while.body_crit_edge ]
  %src.addr.044 = phi ptr [ %src, %while.body.lr.ph ], [ %add.ptr9, %DecompressBand23.exit.while.body_crit_edge ]
  %pout_planar_v.042 = phi ptr [ %add.ptr6, %while.body.lr.ph ], [ %add.ptr14, %DecompressBand23.exit.while.body_crit_edge ]
  %pout_planar_u.040 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %add.ptr12, %DecompressBand23.exit.while.body_crit_edge ]
  %pout_planar_y.038 = phi ptr [ %dst, %while.body.lr.ph ], [ %add.ptr10, %DecompressBand23.exit.while.body_crit_edge ]
  %bandlines_left.037 = phi i32 [ %div, %while.body.lr.ph ], [ %dec, %DecompressBand23.exit.while.body_crit_edge ]
  %dec = add i32 %bandlines_left.037, -1
  %8 = ptrtoint ptr %reservoir.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %reservoir.i, align 4
  %9 = ptrtoint ptr %nbits_in_reservoir.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %nbits_in_reservoir.i, align 4
  %add.ptr.i = getelementptr i8, ptr %src.addr.044, i32 1
  %incdec.ptr.i = getelementptr i8, ptr %src.addr.044, i32 2
  %10 = ptrtoint ptr %stream.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %incdec.ptr.i, ptr %stream.i, align 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr.i, align 1
  %conv.i = zext i8 %12 to i32
  %and.i = and i32 %conv.i, 15
  %shr.i = lshr i32 %conv.i, 4
  store i32 %shr.i, ptr %reservoir.i, align 4
  store i32 4, ptr %nbits_in_reservoir.i, align 4
  %arrayidx.i = getelementptr %struct.pwc_dec23_private, ptr %0, i32 0, i32 10, i32 %and.i
  %arrayidx15.i = getelementptr %struct.pwc_dec23_private, ptr %0, i32 0, i32 12, i32 %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %tobool.not176.i = icmp ult i32 %7, 4
  br i1 %tobool.not176.i, label %while.body.DecompressBand23.exit_crit_edge, label %while.body18.lr.ph.i

while.body.DecompressBand23.exit_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %DecompressBand23.exit

while.body18.lr.ph.i:                             ; preds = %while.body
  %div81.i = lshr i32 %7, 2
  %mul.i.i = shl i32 %7, 1
  %mul47.i.i = mul i32 %7, 3
  br label %while.body18.i

while.body18.i:                                   ; preds = %while.body18.i.while.body18.i_crit_edge, %while.body18.lr.ph.i
  %nblocks.0178.i = phi i32 [ %div81.i, %while.body18.lr.ph.i ], [ %dec.i, %while.body18.i.while.body18.i_crit_edge ]
  %planar_y.addr.0177.i = phi ptr [ %pout_planar_y.038, %while.body18.lr.ph.i ], [ %add.ptr20.i, %while.body18.i.while.body18.i_crit_edge ]
  tail call fastcc void @decode_block(ptr noundef %0, ptr noundef %arrayidx.i, ptr noundef %arrayidx15.i) #5
  %13 = ptrtoint ptr %scalebits.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %scalebits.i, align 4
  %15 = ptrtoint ptr %temp_colors.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %temp_colors.i, align 4
  %shr.i.i = ashr i32 %16, %14
  %arrayidx1.i.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr.i.i
  %17 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx1.i.i, align 1
  %incdec.ptr.i.i = getelementptr i8, ptr %planar_y.addr.0177.i, i32 1
  %19 = ptrtoint ptr %planar_y.addr.0177.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %planar_y.addr.0177.i, align 1
  %20 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx2.i.i, align 4
  %shr3.i.i = ashr i32 %21, %14
  %arrayidx4.i.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr3.i.i
  %22 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx4.i.i, align 1
  %incdec.ptr5.i.i = getelementptr i8, ptr %planar_y.addr.0177.i, i32 2
  %24 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %incdec.ptr.i.i, align 1
  %25 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx6.i.i, align 4
  %shr7.i.i = ashr i32 %26, %14
  %arrayidx8.i.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr7.i.i
  %27 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx8.i.i, align 1
  %incdec.ptr9.i.i = getelementptr i8, ptr %planar_y.addr.0177.i, i32 3
  %29 = ptrtoint ptr %incdec.ptr5.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %incdec.ptr5.i.i, align 1
  %30 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx10.i.i, align 4
  %shr11.i.i = ashr i32 %31, %14
  %arrayidx12.i.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr11.i.i
  %32 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx12.i.i, align 1
  %34 = ptrtoint ptr %incdec.ptr9.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %incdec.ptr9.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %planar_y.addr.0177.i, i32 %7
  %35 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx14.i.i, align 4
  %shr15.i.i = ashr i32 %36, %14
  %arrayidx16.i.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr15.i.i
  %37 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx16.i.i, align 1
  %incdec.ptr17.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 1
  %39 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %add.ptr.i.i, align 1
  %40 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx18.i.i, align 4
  %shr19.i.i = ashr i32 %41, %14
  %arrayidx20.i.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr19.i.i
  %42 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx20.i.i, align 1
  %incdec.ptr21.i.i = getelementptr i8, ptr %incdec.ptr17.i.i, i32 1
  %44 = ptrtoint ptr %incdec.ptr17.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %incdec.ptr17.i.i, align 1
  %45 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx22.i.i, align 4
  %shr23.i.i = ashr i32 %46, %14
  %arrayidx24.i.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr23.i.i
  %47 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx24.i.i, align 1
  %incdec.ptr25.i.i = getelementptr i8, ptr %incdec.ptr21.i.i, i32 1
  %49 = ptrtoint ptr %incdec.ptr21.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %incdec.ptr21.i.i, align 1
  %50 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx26.i.i, align 4
  %shr27.i.i = ashr i32 %51, %14
  %arrayidx28.i.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr27.i.i
  %52 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx28.i.i, align 1
  %54 = ptrtoint ptr %incdec.ptr25.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %incdec.ptr25.i.i, align 1
  %add.ptr30.i.i = getelementptr i8, ptr %planar_y.addr.0177.i, i32 %mul.i.i
  %55 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx31.i.i, align 4
  %shr32.i.i = ashr i32 %56, %14
  %arrayidx33.i.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr32.i.i
  %57 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx33.i.i, align 1
  %incdec.ptr34.i.i = getelementptr i8, ptr %add.ptr30.i.i, i32 1
  %59 = ptrtoint ptr %add.ptr30.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %add.ptr30.i.i, align 1
  %60 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx35.i.i, align 4
  %shr36.i.i = ashr i32 %61, %14
  %arrayidx37.i.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr36.i.i
  %62 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx37.i.i, align 1
  %incdec.ptr38.i.i = getelementptr i8, ptr %incdec.ptr34.i.i, i32 1
  %64 = ptrtoint ptr %incdec.ptr34.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %incdec.ptr34.i.i, align 1
  %65 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx39.i.i, align 4
  %shr40.i.i = ashr i32 %66, %14
  %arrayidx41.i.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr40.i.i
  %67 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx41.i.i, align 1
  %incdec.ptr42.i.i = getelementptr i8, ptr %incdec.ptr38.i.i, i32 1
  %69 = ptrtoint ptr %incdec.ptr38.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %incdec.ptr38.i.i, align 1
  %70 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx43.i.i, align 4
  %shr44.i.i = ashr i32 %71, %14
  %arrayidx45.i.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr44.i.i
  %72 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx45.i.i, align 1
  %74 = ptrtoint ptr %incdec.ptr42.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %incdec.ptr42.i.i, align 1
  %add.ptr48.i.i = getelementptr i8, ptr %planar_y.addr.0177.i, i32 %mul47.i.i
  %75 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx49.i.i, align 4
  %shr50.i.i = ashr i32 %76, %14
  %arrayidx51.i.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr50.i.i
  %77 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx51.i.i, align 1
  %incdec.ptr52.i.i = getelementptr i8, ptr %add.ptr48.i.i, i32 1
  %79 = ptrtoint ptr %add.ptr48.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %add.ptr48.i.i, align 1
  %80 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx53.i.i, align 4
  %shr54.i.i = ashr i32 %81, %14
  %arrayidx55.i.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr54.i.i
  %82 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx55.i.i, align 1
  %incdec.ptr56.i.i = getelementptr i8, ptr %incdec.ptr52.i.i, i32 1
  %84 = ptrtoint ptr %incdec.ptr52.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %incdec.ptr52.i.i, align 1
  %85 = ptrtoint ptr %arrayidx57.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx57.i.i, align 4
  %shr58.i.i = ashr i32 %86, %14
  %arrayidx59.i.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr58.i.i
  %87 = ptrtoint ptr %arrayidx59.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx59.i.i, align 1
  %incdec.ptr60.i.i = getelementptr i8, ptr %incdec.ptr56.i.i, i32 1
  %89 = ptrtoint ptr %incdec.ptr56.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %incdec.ptr56.i.i, align 1
  %90 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx61.i.i, align 4
  %shr62.i.i = ashr i32 %91, %14
  %arrayidx63.i.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr62.i.i
  %92 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx63.i.i, align 1
  %94 = ptrtoint ptr %incdec.ptr60.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %incdec.ptr60.i.i, align 1
  %add.ptr20.i = getelementptr i8, ptr %planar_y.addr.0177.i, i32 4
  %dec.i = add nsw i32 %nblocks.0178.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.end21.i, label %while.body18.i.while.body18.i_crit_edge

while.body18.i.while.body18.i_crit_edge:          ; preds = %while.body18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body18.i

while.end21.i:                                    ; preds = %while.body18.i
  %arrayidx23.i = getelementptr %struct.pwc_dec23_private, ptr %0, i32 0, i32 11, i32 %and.i
  %arrayidx25.i = getelementptr %struct.pwc_dec23_private, ptr %0, i32 0, i32 13, i32 %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %tobool28.not179.i = icmp ult i32 %7, 8
  br i1 %tobool28.not179.i, label %while.end21.i.DecompressBand23.exit_crit_edge, label %while.body29.lr.ph.i

while.end21.i.DecompressBand23.exit_crit_edge:    ; preds = %while.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %DecompressBand23.exit

while.body29.lr.ph.i:                             ; preds = %while.end21.i
  %div2282.i = lshr i32 %7, 3
  %div3283.i = lshr i32 %7, 1
  br label %while.body29.i

while.body29.i:                                   ; preds = %while.body29.i.while.body29.i_crit_edge, %while.body29.lr.ph.i
  %nblocks.1182.i = phi i32 [ %div2282.i, %while.body29.lr.ph.i ], [ %sub40.i, %while.body29.i.while.body29.i_crit_edge ]
  %planar_u.addr.0181.i = phi ptr [ %pout_planar_u.040, %while.body29.lr.ph.i ], [ %add.ptr39.i, %while.body29.i.while.body29.i_crit_edge ]
  %planar_v.addr.0180.i = phi ptr [ %pout_planar_v.042, %while.body29.lr.ph.i ], [ %add.ptr38.i, %while.body29.i.while.body29.i_crit_edge ]
  tail call fastcc void @decode_block(ptr noundef %0, ptr noundef %arrayidx23.i, ptr noundef %arrayidx25.i) #5
  %95 = ptrtoint ptr %scalebits.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %scalebits.i, align 4
  %97 = ptrtoint ptr %temp_colors.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %temp_colors.i, align 4
  %shr.i84.i = ashr i32 %98, %96
  %arrayidx1.i85.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr.i84.i
  %99 = ptrtoint ptr %arrayidx1.i85.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx1.i85.i, align 1
  %incdec.ptr.i86.i = getelementptr i8, ptr %planar_u.addr.0181.i, i32 1
  %101 = ptrtoint ptr %planar_u.addr.0181.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %planar_u.addr.0181.i, align 1
  %102 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx14.i.i, align 4
  %shr3.i88.i = ashr i32 %103, %96
  %arrayidx4.i89.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr3.i88.i
  %104 = ptrtoint ptr %arrayidx4.i89.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx4.i89.i, align 1
  %incdec.ptr5.i90.i = getelementptr i8, ptr %planar_u.addr.0181.i, i32 2
  %106 = ptrtoint ptr %incdec.ptr.i86.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %incdec.ptr.i86.i, align 1
  %107 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx2.i.i, align 4
  %shr7.i92.i = ashr i32 %108, %96
  %arrayidx8.i93.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr7.i92.i
  %109 = ptrtoint ptr %arrayidx8.i93.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx8.i93.i, align 1
  %incdec.ptr9.i94.i = getelementptr i8, ptr %planar_u.addr.0181.i, i32 3
  %111 = ptrtoint ptr %incdec.ptr5.i90.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %incdec.ptr5.i90.i, align 1
  %112 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx18.i.i, align 4
  %shr11.i96.i = ashr i32 %113, %96
  %arrayidx12.i97.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr11.i96.i
  %114 = ptrtoint ptr %arrayidx12.i97.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx12.i97.i, align 1
  %incdec.ptr13.i.i = getelementptr i8, ptr %planar_u.addr.0181.i, i32 4
  %116 = ptrtoint ptr %incdec.ptr9.i94.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %incdec.ptr9.i94.i, align 1
  %117 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx6.i.i, align 4
  %shr15.i99.i = ashr i32 %118, %96
  %arrayidx16.i100.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr15.i99.i
  %119 = ptrtoint ptr %arrayidx16.i100.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx16.i100.i, align 1
  %incdec.ptr17.i101.i = getelementptr i8, ptr %planar_u.addr.0181.i, i32 5
  %121 = ptrtoint ptr %incdec.ptr13.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %incdec.ptr13.i.i, align 1
  %122 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx22.i.i, align 4
  %shr19.i103.i = ashr i32 %123, %96
  %arrayidx20.i104.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr19.i103.i
  %124 = ptrtoint ptr %arrayidx20.i104.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx20.i104.i, align 1
  %incdec.ptr21.i105.i = getelementptr i8, ptr %planar_u.addr.0181.i, i32 6
  %126 = ptrtoint ptr %incdec.ptr17.i101.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %incdec.ptr17.i101.i, align 1
  %127 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx10.i.i, align 4
  %shr23.i107.i = ashr i32 %128, %96
  %arrayidx24.i108.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr23.i107.i
  %129 = ptrtoint ptr %arrayidx24.i108.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx24.i108.i, align 1
  %incdec.ptr25.i109.i = getelementptr i8, ptr %planar_u.addr.0181.i, i32 7
  %131 = ptrtoint ptr %incdec.ptr21.i105.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %incdec.ptr21.i105.i, align 1
  %132 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx26.i.i, align 4
  %shr27.i111.i = ashr i32 %133, %96
  %arrayidx28.i112.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr27.i111.i
  %134 = ptrtoint ptr %arrayidx28.i112.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx28.i112.i, align 1
  %136 = ptrtoint ptr %incdec.ptr25.i109.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %incdec.ptr25.i109.i, align 1
  %add.ptr.i113.i = getelementptr i8, ptr %planar_u.addr.0181.i, i32 %div3283.i
  %137 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx49.i.i, align 4
  %shr31.i.i = ashr i32 %138, %96
  %arrayidx32.i.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr31.i.i
  %139 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx32.i.i, align 1
  %incdec.ptr33.i.i = getelementptr i8, ptr %add.ptr.i113.i, i32 1
  %141 = ptrtoint ptr %add.ptr.i113.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %140, ptr %add.ptr.i113.i, align 1
  %142 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx31.i.i, align 4
  %shr35.i.i = ashr i32 %143, %96
  %arrayidx36.i.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr35.i.i
  %144 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx36.i.i, align 1
  %incdec.ptr37.i.i = getelementptr i8, ptr %incdec.ptr33.i.i, i32 1
  %146 = ptrtoint ptr %incdec.ptr33.i.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %incdec.ptr33.i.i, align 1
  %147 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx53.i.i, align 4
  %shr39.i.i = ashr i32 %148, %96
  %arrayidx40.i.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr39.i.i
  %149 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx40.i.i, align 1
  %incdec.ptr41.i.i = getelementptr i8, ptr %incdec.ptr37.i.i, i32 1
  %151 = ptrtoint ptr %incdec.ptr37.i.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %150, ptr %incdec.ptr37.i.i, align 1
  %152 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx35.i.i, align 4
  %shr43.i.i = ashr i32 %153, %96
  %arrayidx44.i.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr43.i.i
  %154 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx44.i.i, align 1
  %incdec.ptr45.i.i = getelementptr i8, ptr %incdec.ptr41.i.i, i32 1
  %156 = ptrtoint ptr %incdec.ptr41.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %155, ptr %incdec.ptr41.i.i, align 1
  %157 = ptrtoint ptr %arrayidx57.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx57.i.i, align 4
  %shr47.i.i = ashr i32 %158, %96
  %arrayidx48.i.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr47.i.i
  %159 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx48.i.i, align 1
  %incdec.ptr49.i.i = getelementptr i8, ptr %incdec.ptr45.i.i, i32 1
  %161 = ptrtoint ptr %incdec.ptr45.i.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %incdec.ptr45.i.i, align 1
  %162 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx39.i.i, align 4
  %shr51.i.i = ashr i32 %163, %96
  %arrayidx52.i.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr51.i.i
  %164 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx52.i.i, align 1
  %incdec.ptr53.i.i = getelementptr i8, ptr %incdec.ptr49.i.i, i32 1
  %166 = ptrtoint ptr %incdec.ptr49.i.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %165, ptr %incdec.ptr49.i.i, align 1
  %167 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx61.i.i, align 4
  %shr55.i.i = ashr i32 %168, %96
  %arrayidx56.i.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr55.i.i
  %169 = ptrtoint ptr %arrayidx56.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx56.i.i, align 1
  %incdec.ptr57.i.i = getelementptr i8, ptr %incdec.ptr53.i.i, i32 1
  %171 = ptrtoint ptr %incdec.ptr53.i.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %170, ptr %incdec.ptr53.i.i, align 1
  %172 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx43.i.i, align 4
  %shr59.i.i = ashr i32 %173, %96
  %arrayidx60.i.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr59.i.i
  %174 = ptrtoint ptr %arrayidx60.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx60.i.i, align 1
  %176 = ptrtoint ptr %incdec.ptr57.i.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %175, ptr %incdec.ptr57.i.i, align 1
  tail call fastcc void @decode_block(ptr noundef %0, ptr noundef %arrayidx23.i, ptr noundef %arrayidx25.i) #5
  %177 = ptrtoint ptr %scalebits.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %scalebits.i, align 4
  %179 = ptrtoint ptr %temp_colors.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %temp_colors.i, align 4
  %shr.i114.i = ashr i32 %180, %178
  %arrayidx1.i115.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr.i114.i
  %181 = ptrtoint ptr %arrayidx1.i115.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx1.i115.i, align 1
  %incdec.ptr.i116.i = getelementptr i8, ptr %planar_v.addr.0180.i, i32 1
  %183 = ptrtoint ptr %planar_v.addr.0180.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %182, ptr %planar_v.addr.0180.i, align 1
  %184 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx14.i.i, align 4
  %shr3.i118.i = ashr i32 %185, %178
  %arrayidx4.i119.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr3.i118.i
  %186 = ptrtoint ptr %arrayidx4.i119.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx4.i119.i, align 1
  %incdec.ptr5.i120.i = getelementptr i8, ptr %planar_v.addr.0180.i, i32 2
  %188 = ptrtoint ptr %incdec.ptr.i116.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %187, ptr %incdec.ptr.i116.i, align 1
  %189 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx2.i.i, align 4
  %shr7.i122.i = ashr i32 %190, %178
  %arrayidx8.i123.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr7.i122.i
  %191 = ptrtoint ptr %arrayidx8.i123.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx8.i123.i, align 1
  %incdec.ptr9.i124.i = getelementptr i8, ptr %planar_v.addr.0180.i, i32 3
  %193 = ptrtoint ptr %incdec.ptr5.i120.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %192, ptr %incdec.ptr5.i120.i, align 1
  %194 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx18.i.i, align 4
  %shr11.i126.i = ashr i32 %195, %178
  %arrayidx12.i127.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr11.i126.i
  %196 = ptrtoint ptr %arrayidx12.i127.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx12.i127.i, align 1
  %incdec.ptr13.i128.i = getelementptr i8, ptr %planar_v.addr.0180.i, i32 4
  %198 = ptrtoint ptr %incdec.ptr9.i124.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %197, ptr %incdec.ptr9.i124.i, align 1
  %199 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx6.i.i, align 4
  %shr15.i130.i = ashr i32 %200, %178
  %arrayidx16.i131.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr15.i130.i
  %201 = ptrtoint ptr %arrayidx16.i131.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx16.i131.i, align 1
  %incdec.ptr17.i132.i = getelementptr i8, ptr %planar_v.addr.0180.i, i32 5
  %203 = ptrtoint ptr %incdec.ptr13.i128.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %202, ptr %incdec.ptr13.i128.i, align 1
  %204 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx22.i.i, align 4
  %shr19.i134.i = ashr i32 %205, %178
  %arrayidx20.i135.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr19.i134.i
  %206 = ptrtoint ptr %arrayidx20.i135.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx20.i135.i, align 1
  %incdec.ptr21.i136.i = getelementptr i8, ptr %planar_v.addr.0180.i, i32 6
  %208 = ptrtoint ptr %incdec.ptr17.i132.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %207, ptr %incdec.ptr17.i132.i, align 1
  %209 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %arrayidx10.i.i, align 4
  %shr23.i138.i = ashr i32 %210, %178
  %arrayidx24.i139.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr23.i138.i
  %211 = ptrtoint ptr %arrayidx24.i139.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %arrayidx24.i139.i, align 1
  %incdec.ptr25.i140.i = getelementptr i8, ptr %planar_v.addr.0180.i, i32 7
  %213 = ptrtoint ptr %incdec.ptr21.i136.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %212, ptr %incdec.ptr21.i136.i, align 1
  %214 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx26.i.i, align 4
  %shr27.i142.i = ashr i32 %215, %178
  %arrayidx28.i143.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr27.i142.i
  %216 = ptrtoint ptr %arrayidx28.i143.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %arrayidx28.i143.i, align 1
  %218 = ptrtoint ptr %incdec.ptr25.i140.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %217, ptr %incdec.ptr25.i140.i, align 1
  %add.ptr.i144.i = getelementptr i8, ptr %planar_v.addr.0180.i, i32 %div3283.i
  %219 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %arrayidx49.i.i, align 4
  %shr31.i146.i = ashr i32 %220, %178
  %arrayidx32.i147.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr31.i146.i
  %221 = ptrtoint ptr %arrayidx32.i147.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx32.i147.i, align 1
  %incdec.ptr33.i148.i = getelementptr i8, ptr %add.ptr.i144.i, i32 1
  %223 = ptrtoint ptr %add.ptr.i144.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %222, ptr %add.ptr.i144.i, align 1
  %224 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx31.i.i, align 4
  %shr35.i150.i = ashr i32 %225, %178
  %arrayidx36.i151.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr35.i150.i
  %226 = ptrtoint ptr %arrayidx36.i151.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %arrayidx36.i151.i, align 1
  %incdec.ptr37.i152.i = getelementptr i8, ptr %incdec.ptr33.i148.i, i32 1
  %228 = ptrtoint ptr %incdec.ptr33.i148.i to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %227, ptr %incdec.ptr33.i148.i, align 1
  %229 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %arrayidx53.i.i, align 4
  %shr39.i154.i = ashr i32 %230, %178
  %arrayidx40.i155.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr39.i154.i
  %231 = ptrtoint ptr %arrayidx40.i155.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx40.i155.i, align 1
  %incdec.ptr41.i156.i = getelementptr i8, ptr %incdec.ptr37.i152.i, i32 1
  %233 = ptrtoint ptr %incdec.ptr37.i152.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %232, ptr %incdec.ptr37.i152.i, align 1
  %234 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %arrayidx35.i.i, align 4
  %shr43.i158.i = ashr i32 %235, %178
  %arrayidx44.i159.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr43.i158.i
  %236 = ptrtoint ptr %arrayidx44.i159.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %arrayidx44.i159.i, align 1
  %incdec.ptr45.i160.i = getelementptr i8, ptr %incdec.ptr41.i156.i, i32 1
  %238 = ptrtoint ptr %incdec.ptr41.i156.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %237, ptr %incdec.ptr41.i156.i, align 1
  %239 = ptrtoint ptr %arrayidx57.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %arrayidx57.i.i, align 4
  %shr47.i162.i = ashr i32 %240, %178
  %arrayidx48.i163.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr47.i162.i
  %241 = ptrtoint ptr %arrayidx48.i163.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %arrayidx48.i163.i, align 1
  %incdec.ptr49.i164.i = getelementptr i8, ptr %incdec.ptr45.i160.i, i32 1
  %243 = ptrtoint ptr %incdec.ptr45.i160.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %242, ptr %incdec.ptr45.i160.i, align 1
  %244 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx39.i.i, align 4
  %shr51.i166.i = ashr i32 %245, %178
  %arrayidx52.i167.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr51.i166.i
  %246 = ptrtoint ptr %arrayidx52.i167.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %arrayidx52.i167.i, align 1
  %incdec.ptr53.i168.i = getelementptr i8, ptr %incdec.ptr49.i164.i, i32 1
  %248 = ptrtoint ptr %incdec.ptr49.i164.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %247, ptr %incdec.ptr49.i164.i, align 1
  %249 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %arrayidx61.i.i, align 4
  %shr55.i170.i = ashr i32 %250, %178
  %arrayidx56.i171.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr55.i170.i
  %251 = ptrtoint ptr %arrayidx56.i171.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %arrayidx56.i171.i, align 1
  %incdec.ptr57.i172.i = getelementptr i8, ptr %incdec.ptr53.i168.i, i32 1
  %253 = ptrtoint ptr %incdec.ptr53.i168.i to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 %252, ptr %incdec.ptr53.i168.i, align 1
  %254 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx43.i.i, align 4
  %shr59.i174.i = ashr i32 %255, %178
  %arrayidx60.i175.i = getelementptr i8, ptr getelementptr inbounds ([1280 x i8], ptr @pwc_crop_table, i32 0, i32 512), i32 %shr59.i174.i
  %256 = ptrtoint ptr %arrayidx60.i175.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %arrayidx60.i175.i, align 1
  %258 = ptrtoint ptr %incdec.ptr57.i172.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %257, ptr %incdec.ptr57.i172.i, align 1
  %add.ptr38.i = getelementptr i8, ptr %planar_v.addr.0180.i, i32 8
  %add.ptr39.i = getelementptr i8, ptr %planar_u.addr.0181.i, i32 8
  %sub40.i = add i32 %nblocks.1182.i, -2
  %tobool28.not.i = icmp eq i32 %sub40.i, 0
  br i1 %tobool28.not.i, label %while.body29.i.DecompressBand23.exit_crit_edge, label %while.body29.i.while.body29.i_crit_edge

while.body29.i.while.body29.i_crit_edge:          ; preds = %while.body29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body29.i

while.body29.i.DecompressBand23.exit_crit_edge:   ; preds = %while.body29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %DecompressBand23.exit

DecompressBand23.exit:                            ; preds = %while.body29.i.DecompressBand23.exit_crit_edge, %while.end21.i.DecompressBand23.exit_crit_edge, %while.body.DecompressBand23.exit_crit_edge
  %259 = ptrtoint ptr %vbandlength to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %vbandlength, align 8
  %add.ptr9 = getelementptr i8, ptr %src.addr.044, i32 %260
  %add.ptr10 = getelementptr i8, ptr %pout_planar_y.038, i32 %mul
  %261 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %width, align 8
  %add.ptr12 = getelementptr i8, ptr %pout_planar_u.040, i32 %262
  %add.ptr14 = getelementptr i8, ptr %pout_planar_v.042, i32 %262
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %DecompressBand23.exit.while.end_crit_edge, label %DecompressBand23.exit.while.body_crit_edge

DecompressBand23.exit.while.body_crit_edge:       ; preds = %DecompressBand23.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

DecompressBand23.exit.while.end_crit_edge:        ; preds = %DecompressBand23.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %DecompressBand23.exit.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @decode_block(ptr noundef %pdec, ptr nocapture noundef readonly %ptable0004, ptr nocapture noundef readonly %ptable8004) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nbits_in_reservoir = getelementptr inbounds %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 7
  %0 = ptrtoint ptr %nbits_in_reservoir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbits_in_reservoir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp309 = icmp ult i32 %1, 16
  br i1 %cmp309, label %while.body.lr.ph, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3

while.body.lr.ph:                                 ; preds = %entry
  %stream = getelementptr inbounds %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 8
  %reservoir = getelementptr inbounds %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 6
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream, align 4
  %incdec.ptr = getelementptr i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %stream, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %conv = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv, %1
  %6 = ptrtoint ptr %reservoir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reservoir, align 4
  %or = or i32 %shl, %7
  store i32 %or, ptr %reservoir, align 4
  %add = add nuw nsw i32 %1, 8
  %8 = ptrtoint ptr %nbits_in_reservoir to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %nbits_in_reservoir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp = icmp ult i32 %1, 8
  br i1 %cmp, label %while.body.1, label %while.body.lr.ph.do.body3_crit_edge

while.body.lr.ph.do.body3_crit_edge:              ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3

while.body.1:                                     ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stream, align 4
  %incdec.ptr.1 = getelementptr i8, ptr %10, i32 1
  store ptr %incdec.ptr.1, ptr %stream, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv.1 = zext i8 %12 to i32
  %shl.1 = shl nuw nsw i32 %conv.1, %add
  %13 = ptrtoint ptr %reservoir to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reservoir, align 4
  %or.1 = or i32 %shl.1, %14
  store i32 %or.1, ptr %reservoir, align 4
  %add.1 = add nuw nsw i32 %1, 16
  %15 = ptrtoint ptr %nbits_in_reservoir to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add.1, ptr %nbits_in_reservoir, align 4
  br label %do.body3

do.body3:                                         ; preds = %while.body.1, %while.body.lr.ph.do.body3_crit_edge, %entry.do.body3_crit_edge
  %.lcssa308 = phi i32 [ %1, %entry.do.body3_crit_edge ], [ %add, %while.body.lr.ph.do.body3_crit_edge ], [ %add.1, %while.body.1 ]
  %reservoir4 = getelementptr inbounds %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 6
  %16 = ptrtoint ptr %reservoir4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reservoir4, align 4
  %nbits = getelementptr inbounds %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 5
  %18 = ptrtoint ptr %nbits to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nbits, align 4
  %notmask = shl nsw i32 -1, %19
  %sub = xor i32 %notmask, -1
  %and = and i32 %17, %sub
  %shr = lshr i32 %17, %19
  store i32 %shr, ptr %reservoir4, align 4
  %sub11 = sub i32 %.lcssa308, %19
  %20 = ptrtoint ptr %nbits_in_reservoir to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub11, ptr %nbits_in_reservoir, align 4
  %and17 = and i32 %shr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %cmp18 = icmp eq i32 %and17, 0
  br i1 %cmp18, label %do.body20, label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %do.body3
  %arrayidx34 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 16, i32 %and
  %21 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx34, align 4
  %arrayidx36 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 0
  %23 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx36, align 4
  %24 = load i32, ptr %arrayidx34, align 4
  %arrayidx36.1 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 1
  %25 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx36.1, align 4
  %26 = load i32, ptr %arrayidx34, align 4
  %arrayidx36.2 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 2
  %27 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx36.2, align 4
  %28 = load i32, ptr %arrayidx34, align 4
  %arrayidx36.3 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 3
  %29 = ptrtoint ptr %arrayidx36.3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx36.3, align 4
  %30 = load i32, ptr %arrayidx34, align 4
  %arrayidx36.4 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 4
  %31 = ptrtoint ptr %arrayidx36.4 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx36.4, align 4
  %32 = load i32, ptr %arrayidx34, align 4
  %arrayidx36.5 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 5
  %33 = ptrtoint ptr %arrayidx36.5 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx36.5, align 4
  %34 = load i32, ptr %arrayidx34, align 4
  %arrayidx36.6 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 6
  %35 = ptrtoint ptr %arrayidx36.6 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx36.6, align 4
  %36 = load i32, ptr %arrayidx34, align 4
  %arrayidx36.7 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 7
  %37 = ptrtoint ptr %arrayidx36.7 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx36.7, align 4
  %38 = load i32, ptr %arrayidx34, align 4
  %arrayidx36.8 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 8
  %39 = ptrtoint ptr %arrayidx36.8 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx36.8, align 4
  %40 = load i32, ptr %arrayidx34, align 4
  %arrayidx36.9 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 9
  %41 = ptrtoint ptr %arrayidx36.9 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx36.9, align 4
  %42 = load i32, ptr %arrayidx34, align 4
  %arrayidx36.10 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 10
  %43 = ptrtoint ptr %arrayidx36.10 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx36.10, align 4
  %44 = load i32, ptr %arrayidx34, align 4
  %arrayidx36.11 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 11
  %45 = ptrtoint ptr %arrayidx36.11 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx36.11, align 4
  %46 = load i32, ptr %arrayidx34, align 4
  %arrayidx36.12 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 12
  %47 = ptrtoint ptr %arrayidx36.12 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx36.12, align 4
  %48 = load i32, ptr %arrayidx34, align 4
  %arrayidx36.13 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 13
  %49 = ptrtoint ptr %arrayidx36.13 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx36.13, align 4
  %50 = load i32, ptr %arrayidx34, align 4
  %arrayidx36.14 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 14
  %51 = ptrtoint ptr %arrayidx36.14 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx36.14, align 4
  %52 = load i32, ptr %arrayidx34, align 4
  %arrayidx36.15 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 15
  %53 = ptrtoint ptr %arrayidx36.15 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx36.15, align 4
  %54 = ptrtoint ptr %reservoir4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %reservoir4, align 4
  %shr45 = lshr i32 %55, 3
  store i32 %shr45, ptr %reservoir4, align 4
  %56 = ptrtoint ptr %nbits_in_reservoir to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nbits_in_reservoir, align 4
  %sub47 = add i32 %57, -3
  store i32 %sub47, ptr %nbits_in_reservoir, align 4
  %trunc300 = trunc i32 %55 to i3
  %rev301 = tail call i3 @llvm.bitreverse.i3(i3 %trunc300)
  %or58 = zext i3 %rev301 to i32
  %mul = shl nuw nsw i32 %or58, 7
  %add.ptr = getelementptr i8, ptr %ptable0004, i32 %mul
  %mul59 = shl nuw nsw i32 %or58, 5
  %add.ptr60 = getelementptr i8, ptr %ptable8004, i32 %mul59
  %stream68 = getelementptr inbounds %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 8
  br label %do.body61

do.body20:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %shr22 = lshr i32 %shr, 2
  %58 = ptrtoint ptr %reservoir4 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %shr22, ptr %reservoir4, align 4
  %sub24 = add i32 %sub11, -2
  %59 = ptrtoint ptr %nbits_in_reservoir to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %sub24, ptr %nbits_in_reservoir, align 4
  %arrayidx = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 17, i32 %and
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx, align 4
  %arrayidx29 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 0
  %62 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx29, align 4
  %63 = load i32, ptr %arrayidx, align 4
  %arrayidx29.1 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 1
  %64 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx29.1, align 4
  %65 = load i32, ptr %arrayidx, align 4
  %arrayidx29.2 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 2
  %66 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %arrayidx29.2, align 4
  %67 = load i32, ptr %arrayidx, align 4
  %arrayidx29.3 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 3
  %68 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %arrayidx29.3, align 4
  %69 = load i32, ptr %arrayidx, align 4
  %arrayidx29.4 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 4
  %70 = ptrtoint ptr %arrayidx29.4 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx29.4, align 4
  %71 = load i32, ptr %arrayidx, align 4
  %arrayidx29.5 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 5
  %72 = ptrtoint ptr %arrayidx29.5 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %arrayidx29.5, align 4
  %73 = load i32, ptr %arrayidx, align 4
  %arrayidx29.6 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 6
  %74 = ptrtoint ptr %arrayidx29.6 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %arrayidx29.6, align 4
  %75 = load i32, ptr %arrayidx, align 4
  %arrayidx29.7 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 7
  %76 = ptrtoint ptr %arrayidx29.7 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %arrayidx29.7, align 4
  %77 = load i32, ptr %arrayidx, align 4
  %arrayidx29.8 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 8
  %78 = ptrtoint ptr %arrayidx29.8 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %arrayidx29.8, align 4
  %79 = load i32, ptr %arrayidx, align 4
  %arrayidx29.9 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 9
  %80 = ptrtoint ptr %arrayidx29.9 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %arrayidx29.9, align 4
  %81 = load i32, ptr %arrayidx, align 4
  %arrayidx29.10 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 10
  %82 = ptrtoint ptr %arrayidx29.10 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %arrayidx29.10, align 4
  %83 = load i32, ptr %arrayidx, align 4
  %arrayidx29.11 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 11
  %84 = ptrtoint ptr %arrayidx29.11 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %arrayidx29.11, align 4
  %85 = load i32, ptr %arrayidx, align 4
  %arrayidx29.12 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 12
  %86 = ptrtoint ptr %arrayidx29.12 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %arrayidx29.12, align 4
  %87 = load i32, ptr %arrayidx, align 4
  %arrayidx29.13 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 13
  %88 = ptrtoint ptr %arrayidx29.13 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %arrayidx29.13, align 4
  %89 = load i32, ptr %arrayidx, align 4
  %arrayidx29.14 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 14
  %90 = ptrtoint ptr %arrayidx29.14 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %arrayidx29.14, align 4
  %91 = load i32, ptr %arrayidx, align 4
  %arrayidx29.15 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 9, i32 15
  %92 = ptrtoint ptr %arrayidx29.15 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %arrayidx29.15, align 4
  br label %cleanup

do.body61:                                        ; preds = %do.body61.backedge, %for.cond30.preheader
  %offset1.0 = phi i32 [ 0, %for.cond30.preheader ], [ %offset1.0.be, %do.body61.backedge ]
  %93 = ptrtoint ptr %nbits_in_reservoir to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pr = load i32, ptr %nbits_in_reservoir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %.pr)
  %cmp65312 = icmp ult i32 %.pr, 16
  br i1 %cmp65312, label %while.body67, label %do.body61.do.end79_crit_edge

do.body61.do.end79_crit_edge:                     ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end79

while.body67:                                     ; preds = %do.body61
  %94 = ptrtoint ptr %stream68 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %stream68, align 4
  %incdec.ptr69 = getelementptr i8, ptr %95, i32 1
  store ptr %incdec.ptr69, ptr %stream68, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %95, align 1
  %conv70 = zext i8 %97 to i32
  %shl72 = shl nuw nsw i32 %conv70, %.pr
  %98 = ptrtoint ptr %reservoir4 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %reservoir4, align 4
  %or74 = or i32 %shl72, %99
  store i32 %or74, ptr %reservoir4, align 4
  %add76 = add nuw nsw i32 %.pr, 8
  %100 = ptrtoint ptr %nbits_in_reservoir to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %add76, ptr %nbits_in_reservoir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.pr)
  %cmp65 = icmp ult i32 %.pr, 8
  br i1 %cmp65, label %while.body67.1, label %while.body67.do.end79_crit_edge

while.body67.do.end79_crit_edge:                  ; preds = %while.body67
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end79

while.body67.1:                                   ; preds = %while.body67
  call void @__sanitizer_cov_trace_pc() #7
  %101 = ptrtoint ptr %stream68 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %stream68, align 4
  %incdec.ptr69.1 = getelementptr i8, ptr %102, i32 1
  store ptr %incdec.ptr69.1, ptr %stream68, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %102, align 1
  %conv70.1 = zext i8 %104 to i32
  %shl72.1 = shl nuw nsw i32 %conv70.1, %add76
  %105 = ptrtoint ptr %reservoir4 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %reservoir4, align 4
  %or74.1 = or i32 %shl72.1, %106
  store i32 %or74.1, ptr %reservoir4, align 4
  %add76.1 = add nuw nsw i32 %.pr, 16
  %107 = ptrtoint ptr %nbits_in_reservoir to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %add76.1, ptr %nbits_in_reservoir, align 4
  br label %do.end79

do.end79:                                         ; preds = %while.body67.1, %while.body67.do.end79_crit_edge, %do.body61.do.end79_crit_edge
  %.lcssa = phi i32 [ %.pr, %do.body61.do.end79_crit_edge ], [ %add76, %while.body67.do.end79_crit_edge ], [ %add76.1, %while.body67.1 ]
  %108 = ptrtoint ptr %reservoir4 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %reservoir4, align 4
  %and81 = shl i32 %109, 2
  %mul82 = and i32 %and81, 252
  %arrayidx83 = getelementptr [256 x i8], ptr @hash_table_ops, i32 0, i32 %mul82
  %110 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx83, align 1
  %112 = zext i8 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values)
  switch i8 %111, label %if.else165 [
    i8 2, label %if.end208.thread
    i8 1, label %if.then97
  ]

if.end208.thread:                                 ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #7
  %shr90 = lshr i32 %109, 2
  %113 = ptrtoint ptr %reservoir4 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %shr90, ptr %reservoir4, align 4
  %sub92 = add i32 %.lcssa, -2
  %114 = ptrtoint ptr %nbits_in_reservoir to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %sub92, ptr %nbits_in_reservoir, align 4
  br label %cleanup

if.then97:                                        ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #7
  %shr101 = lshr i32 %109, 3
  %shr111 = lshr i32 %109, 7
  %115 = ptrtoint ptr %reservoir4 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %shr111, ptr %reservoir4, align 4
  %sub113 = add i32 %.lcssa, -7
  %116 = ptrtoint ptr %nbits_in_reservoir to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %sub113, ptr %nbits_in_reservoir, align 4
  %add118 = add nuw nsw i32 %offset1.0, 1
  %add119 = add nuw nsw i32 %add118, %shr101
  %and120 = and i32 %add119, 15
  %mul121 = shl nuw nsw i32 %and120, 1
  %arrayidx122 = getelementptr i8, ptr %add.ptr60, i32 %mul121
  %117 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx122, align 1
  %conv123 = zext i8 %118 to i32
  %add126 = add nuw nsw i32 %conv123, 1
  %shl127 = shl i32 2, %conv123
  %sub128 = add i32 %shl127, 33554431
  %and129 = and i32 %sub128, %shr111
  %shr133 = lshr i32 %shr111, %add126
  store i32 %shr133, ptr %reservoir4, align 4
  %sub136 = sub i32 %sub113, %add126
  store i32 %sub136, ptr %nbits_in_reservoir, align 4
  %arrayidx142 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 15, i32 %conv123, i32 %and129
  %119 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx142, align 1
  %conv143 = zext i8 %120 to i32
  %add145 = or i32 %mul121, 1
  %arrayidx146 = getelementptr i8, ptr %add.ptr60, i32 %add145
  %121 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx146, align 1
  %conv147 = zext i8 %122 to i32
  %shl148 = shl i32 %conv143, %conv147
  %add149 = add i32 %shl148, 128
  %and150 = and i32 %add149, 255
  %arrayidx151 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 14, i32 %and150
  %arrayidx157 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and120, i32 0
  %123 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx157, align 4
  %arrayidx158 = getelementptr i32, ptr %arrayidx151, i32 %124
  %125 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx158, align 4
  %127 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx36, align 4
  %add161 = add i32 %128, %126
  store i32 %add161, ptr %arrayidx36, align 4
  %arrayidx157.1 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and120, i32 1
  %129 = ptrtoint ptr %arrayidx157.1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx157.1, align 4
  %arrayidx158.1 = getelementptr i32, ptr %arrayidx151, i32 %130
  %131 = ptrtoint ptr %arrayidx158.1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx158.1, align 4
  %133 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx36.1, align 4
  %add161.1 = add i32 %134, %132
  store i32 %add161.1, ptr %arrayidx36.1, align 4
  %arrayidx157.2 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and120, i32 2
  %135 = ptrtoint ptr %arrayidx157.2 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx157.2, align 4
  %arrayidx158.2 = getelementptr i32, ptr %arrayidx151, i32 %136
  %137 = ptrtoint ptr %arrayidx158.2 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx158.2, align 4
  %139 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx36.2, align 4
  %add161.2 = add i32 %140, %138
  store i32 %add161.2, ptr %arrayidx36.2, align 4
  %arrayidx157.3 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and120, i32 3
  %141 = ptrtoint ptr %arrayidx157.3 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx157.3, align 4
  %arrayidx158.3 = getelementptr i32, ptr %arrayidx151, i32 %142
  %143 = ptrtoint ptr %arrayidx158.3 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx158.3, align 4
  %145 = ptrtoint ptr %arrayidx36.3 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx36.3, align 4
  %add161.3 = add i32 %146, %144
  store i32 %add161.3, ptr %arrayidx36.3, align 4
  %arrayidx157.4 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and120, i32 4
  %147 = ptrtoint ptr %arrayidx157.4 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx157.4, align 4
  %arrayidx158.4 = getelementptr i32, ptr %arrayidx151, i32 %148
  %149 = ptrtoint ptr %arrayidx158.4 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx158.4, align 4
  %151 = ptrtoint ptr %arrayidx36.4 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx36.4, align 4
  %add161.4 = add i32 %152, %150
  store i32 %add161.4, ptr %arrayidx36.4, align 4
  %arrayidx157.5 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and120, i32 5
  %153 = ptrtoint ptr %arrayidx157.5 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx157.5, align 4
  %arrayidx158.5 = getelementptr i32, ptr %arrayidx151, i32 %154
  %155 = ptrtoint ptr %arrayidx158.5 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx158.5, align 4
  %157 = ptrtoint ptr %arrayidx36.5 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx36.5, align 4
  %add161.5 = add i32 %158, %156
  store i32 %add161.5, ptr %arrayidx36.5, align 4
  %arrayidx157.6 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and120, i32 6
  %159 = ptrtoint ptr %arrayidx157.6 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx157.6, align 4
  %arrayidx158.6 = getelementptr i32, ptr %arrayidx151, i32 %160
  %161 = ptrtoint ptr %arrayidx158.6 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx158.6, align 4
  %163 = ptrtoint ptr %arrayidx36.6 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx36.6, align 4
  %add161.6 = add i32 %164, %162
  store i32 %add161.6, ptr %arrayidx36.6, align 4
  %arrayidx157.7 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and120, i32 7
  %165 = ptrtoint ptr %arrayidx157.7 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx157.7, align 4
  %arrayidx158.7 = getelementptr i32, ptr %arrayidx151, i32 %166
  %167 = ptrtoint ptr %arrayidx158.7 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx158.7, align 4
  %169 = ptrtoint ptr %arrayidx36.7 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx36.7, align 4
  %add161.7 = add i32 %170, %168
  store i32 %add161.7, ptr %arrayidx36.7, align 4
  %arrayidx157.8 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and120, i32 8
  %171 = ptrtoint ptr %arrayidx157.8 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx157.8, align 4
  %arrayidx158.8 = getelementptr i32, ptr %arrayidx151, i32 %172
  %173 = ptrtoint ptr %arrayidx158.8 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx158.8, align 4
  %175 = ptrtoint ptr %arrayidx36.8 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx36.8, align 4
  %add161.8 = add i32 %176, %174
  store i32 %add161.8, ptr %arrayidx36.8, align 4
  %arrayidx157.9 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and120, i32 9
  %177 = ptrtoint ptr %arrayidx157.9 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx157.9, align 4
  %arrayidx158.9 = getelementptr i32, ptr %arrayidx151, i32 %178
  %179 = ptrtoint ptr %arrayidx158.9 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx158.9, align 4
  %181 = ptrtoint ptr %arrayidx36.9 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx36.9, align 4
  %add161.9 = add i32 %182, %180
  store i32 %add161.9, ptr %arrayidx36.9, align 4
  %arrayidx157.10 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and120, i32 10
  %183 = ptrtoint ptr %arrayidx157.10 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx157.10, align 4
  %arrayidx158.10 = getelementptr i32, ptr %arrayidx151, i32 %184
  %185 = ptrtoint ptr %arrayidx158.10 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx158.10, align 4
  %187 = ptrtoint ptr %arrayidx36.10 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx36.10, align 4
  %add161.10 = add i32 %188, %186
  store i32 %add161.10, ptr %arrayidx36.10, align 4
  %arrayidx157.11 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and120, i32 11
  %189 = ptrtoint ptr %arrayidx157.11 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx157.11, align 4
  %arrayidx158.11 = getelementptr i32, ptr %arrayidx151, i32 %190
  %191 = ptrtoint ptr %arrayidx158.11 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx158.11, align 4
  %193 = ptrtoint ptr %arrayidx36.11 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx36.11, align 4
  %add161.11 = add i32 %194, %192
  store i32 %add161.11, ptr %arrayidx36.11, align 4
  %arrayidx157.12 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and120, i32 12
  %195 = ptrtoint ptr %arrayidx157.12 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx157.12, align 4
  %arrayidx158.12 = getelementptr i32, ptr %arrayidx151, i32 %196
  %197 = ptrtoint ptr %arrayidx158.12 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx158.12, align 4
  %199 = ptrtoint ptr %arrayidx36.12 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx36.12, align 4
  %add161.12 = add i32 %200, %198
  store i32 %add161.12, ptr %arrayidx36.12, align 4
  %arrayidx157.13 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and120, i32 13
  %201 = ptrtoint ptr %arrayidx157.13 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx157.13, align 4
  %arrayidx158.13 = getelementptr i32, ptr %arrayidx151, i32 %202
  %203 = ptrtoint ptr %arrayidx158.13 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %arrayidx158.13, align 4
  %205 = ptrtoint ptr %arrayidx36.13 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx36.13, align 4
  %add161.13 = add i32 %206, %204
  store i32 %add161.13, ptr %arrayidx36.13, align 4
  %arrayidx157.14 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and120, i32 14
  %207 = ptrtoint ptr %arrayidx157.14 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx157.14, align 4
  %arrayidx158.14 = getelementptr i32, ptr %arrayidx151, i32 %208
  %209 = ptrtoint ptr %arrayidx158.14 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %arrayidx158.14, align 4
  %211 = ptrtoint ptr %arrayidx36.14 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %arrayidx36.14, align 4
  %add161.14 = add i32 %212, %210
  store i32 %add161.14, ptr %arrayidx36.14, align 4
  %arrayidx157.15 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and120, i32 15
  %213 = ptrtoint ptr %arrayidx157.15 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx157.15, align 4
  %arrayidx158.15 = getelementptr i32, ptr %arrayidx151, i32 %214
  %215 = ptrtoint ptr %arrayidx158.15 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %arrayidx158.15, align 4
  %217 = ptrtoint ptr %arrayidx36.15 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %arrayidx36.15, align 4
  %add161.15 = add i32 %218, %216
  store i32 %add161.15, ptr %arrayidx36.15, align 4
  br label %do.body61.backedge

do.body61.backedge:                               ; preds = %if.else165, %if.then97
  %offset1.0.be = phi i32 [ %and172, %if.else165 ], [ %and120, %if.then97 ]
  br label %do.body61

if.else165:                                       ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #7
  %add168 = or i32 %mul82, 2
  %arrayidx169 = getelementptr [256 x i8], ptr @hash_table_ops, i32 0, i32 %add168
  %219 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx169, align 1
  %conv170 = zext i8 %220 to i32
  %add171 = add nuw nsw i32 %offset1.0, %conv170
  %and172 = and i32 %add171, 15
  %add174 = or i32 %mul82, 3
  %arrayidx175 = getelementptr [256 x i8], ptr @hash_table_ops, i32 0, i32 %add174
  %221 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx175, align 1
  %conv176 = zext i8 %222 to i32
  %add177 = add nuw nsw i32 %and172, %conv176
  %arrayidx178 = getelementptr i8, ptr %add.ptr, i32 %add177
  %223 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx178, align 1
  %conv179 = zext i8 %224 to i32
  %arrayidx181 = getelementptr %struct.pwc_dec23_private, ptr %pdec, i32 0, i32 14, i32 %conv179
  %arrayidx188 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and172, i32 0
  %225 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %arrayidx188, align 4
  %arrayidx189 = getelementptr i32, ptr %arrayidx181, i32 %226
  %227 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %arrayidx189, align 4
  %229 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %arrayidx36, align 4
  %add192 = add i32 %230, %228
  store i32 %add192, ptr %arrayidx36, align 4
  %arrayidx188.1 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and172, i32 1
  %231 = ptrtoint ptr %arrayidx188.1 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx188.1, align 4
  %arrayidx189.1 = getelementptr i32, ptr %arrayidx181, i32 %232
  %233 = ptrtoint ptr %arrayidx189.1 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %arrayidx189.1, align 4
  %235 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %arrayidx36.1, align 4
  %add192.1 = add i32 %236, %234
  store i32 %add192.1, ptr %arrayidx36.1, align 4
  %arrayidx188.2 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and172, i32 2
  %237 = ptrtoint ptr %arrayidx188.2 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %arrayidx188.2, align 4
  %arrayidx189.2 = getelementptr i32, ptr %arrayidx181, i32 %238
  %239 = ptrtoint ptr %arrayidx189.2 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %arrayidx189.2, align 4
  %241 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %arrayidx36.2, align 4
  %add192.2 = add i32 %242, %240
  store i32 %add192.2, ptr %arrayidx36.2, align 4
  %arrayidx188.3 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and172, i32 3
  %243 = ptrtoint ptr %arrayidx188.3 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %arrayidx188.3, align 4
  %arrayidx189.3 = getelementptr i32, ptr %arrayidx181, i32 %244
  %245 = ptrtoint ptr %arrayidx189.3 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %arrayidx189.3, align 4
  %247 = ptrtoint ptr %arrayidx36.3 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %arrayidx36.3, align 4
  %add192.3 = add i32 %248, %246
  store i32 %add192.3, ptr %arrayidx36.3, align 4
  %arrayidx188.4 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and172, i32 4
  %249 = ptrtoint ptr %arrayidx188.4 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %arrayidx188.4, align 4
  %arrayidx189.4 = getelementptr i32, ptr %arrayidx181, i32 %250
  %251 = ptrtoint ptr %arrayidx189.4 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %arrayidx189.4, align 4
  %253 = ptrtoint ptr %arrayidx36.4 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %arrayidx36.4, align 4
  %add192.4 = add i32 %254, %252
  store i32 %add192.4, ptr %arrayidx36.4, align 4
  %arrayidx188.5 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and172, i32 5
  %255 = ptrtoint ptr %arrayidx188.5 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %arrayidx188.5, align 4
  %arrayidx189.5 = getelementptr i32, ptr %arrayidx181, i32 %256
  %257 = ptrtoint ptr %arrayidx189.5 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %arrayidx189.5, align 4
  %259 = ptrtoint ptr %arrayidx36.5 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %arrayidx36.5, align 4
  %add192.5 = add i32 %260, %258
  store i32 %add192.5, ptr %arrayidx36.5, align 4
  %arrayidx188.6 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and172, i32 6
  %261 = ptrtoint ptr %arrayidx188.6 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx188.6, align 4
  %arrayidx189.6 = getelementptr i32, ptr %arrayidx181, i32 %262
  %263 = ptrtoint ptr %arrayidx189.6 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %arrayidx189.6, align 4
  %265 = ptrtoint ptr %arrayidx36.6 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %arrayidx36.6, align 4
  %add192.6 = add i32 %266, %264
  store i32 %add192.6, ptr %arrayidx36.6, align 4
  %arrayidx188.7 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and172, i32 7
  %267 = ptrtoint ptr %arrayidx188.7 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %arrayidx188.7, align 4
  %arrayidx189.7 = getelementptr i32, ptr %arrayidx181, i32 %268
  %269 = ptrtoint ptr %arrayidx189.7 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %arrayidx189.7, align 4
  %271 = ptrtoint ptr %arrayidx36.7 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %arrayidx36.7, align 4
  %add192.7 = add i32 %272, %270
  store i32 %add192.7, ptr %arrayidx36.7, align 4
  %arrayidx188.8 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and172, i32 8
  %273 = ptrtoint ptr %arrayidx188.8 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %arrayidx188.8, align 4
  %arrayidx189.8 = getelementptr i32, ptr %arrayidx181, i32 %274
  %275 = ptrtoint ptr %arrayidx189.8 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %arrayidx189.8, align 4
  %277 = ptrtoint ptr %arrayidx36.8 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %arrayidx36.8, align 4
  %add192.8 = add i32 %278, %276
  store i32 %add192.8, ptr %arrayidx36.8, align 4
  %arrayidx188.9 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and172, i32 9
  %279 = ptrtoint ptr %arrayidx188.9 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %arrayidx188.9, align 4
  %arrayidx189.9 = getelementptr i32, ptr %arrayidx181, i32 %280
  %281 = ptrtoint ptr %arrayidx189.9 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %arrayidx189.9, align 4
  %283 = ptrtoint ptr %arrayidx36.9 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %arrayidx36.9, align 4
  %add192.9 = add i32 %284, %282
  store i32 %add192.9, ptr %arrayidx36.9, align 4
  %arrayidx188.10 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and172, i32 10
  %285 = ptrtoint ptr %arrayidx188.10 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %arrayidx188.10, align 4
  %arrayidx189.10 = getelementptr i32, ptr %arrayidx181, i32 %286
  %287 = ptrtoint ptr %arrayidx189.10 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %arrayidx189.10, align 4
  %289 = ptrtoint ptr %arrayidx36.10 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %arrayidx36.10, align 4
  %add192.10 = add i32 %290, %288
  store i32 %add192.10, ptr %arrayidx36.10, align 4
  %arrayidx188.11 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and172, i32 11
  %291 = ptrtoint ptr %arrayidx188.11 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %arrayidx188.11, align 4
  %arrayidx189.11 = getelementptr i32, ptr %arrayidx181, i32 %292
  %293 = ptrtoint ptr %arrayidx189.11 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %arrayidx189.11, align 4
  %295 = ptrtoint ptr %arrayidx36.11 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %arrayidx36.11, align 4
  %add192.11 = add i32 %296, %294
  store i32 %add192.11, ptr %arrayidx36.11, align 4
  %arrayidx188.12 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and172, i32 12
  %297 = ptrtoint ptr %arrayidx188.12 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %arrayidx188.12, align 4
  %arrayidx189.12 = getelementptr i32, ptr %arrayidx181, i32 %298
  %299 = ptrtoint ptr %arrayidx189.12 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %arrayidx189.12, align 4
  %301 = ptrtoint ptr %arrayidx36.12 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %arrayidx36.12, align 4
  %add192.12 = add i32 %302, %300
  store i32 %add192.12, ptr %arrayidx36.12, align 4
  %arrayidx188.13 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and172, i32 13
  %303 = ptrtoint ptr %arrayidx188.13 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %arrayidx188.13, align 4
  %arrayidx189.13 = getelementptr i32, ptr %arrayidx181, i32 %304
  %305 = ptrtoint ptr %arrayidx189.13 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %arrayidx189.13, align 4
  %307 = ptrtoint ptr %arrayidx36.13 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %arrayidx36.13, align 4
  %add192.13 = add i32 %308, %306
  store i32 %add192.13, ptr %arrayidx36.13, align 4
  %arrayidx188.14 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and172, i32 14
  %309 = ptrtoint ptr %arrayidx188.14 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %arrayidx188.14, align 4
  %arrayidx189.14 = getelementptr i32, ptr %arrayidx181, i32 %310
  %311 = ptrtoint ptr %arrayidx189.14 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %arrayidx189.14, align 4
  %313 = ptrtoint ptr %arrayidx36.14 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %arrayidx36.14, align 4
  %add192.14 = add i32 %314, %312
  store i32 %add192.14, ptr %arrayidx36.14, align 4
  %arrayidx188.15 = getelementptr [16 x [16 x i32]], ptr @MulIdx, i32 0, i32 %and172, i32 15
  %315 = ptrtoint ptr %arrayidx188.15 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %arrayidx188.15, align 4
  %arrayidx189.15 = getelementptr i32, ptr %arrayidx181, i32 %316
  %317 = ptrtoint ptr %arrayidx189.15 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %arrayidx189.15, align 4
  %319 = ptrtoint ptr %arrayidx36.15 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %arrayidx36.15, align 4
  %add192.15 = add i32 %320, %318
  store i32 %add192.15, ptr %arrayidx36.15, align 4
  %add197 = or i32 %mul82, 1
  %arrayidx198 = getelementptr [256 x i8], ptr @hash_table_ops, i32 0, i32 %add197
  %321 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %arrayidx198, align 1
  %conv199 = zext i8 %322 to i32
  %323 = ptrtoint ptr %reservoir4 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %reservoir4, align 4
  %shr202 = lshr i32 %324, %conv199
  store i32 %shr202, ptr %reservoir4, align 4
  %325 = ptrtoint ptr %nbits_in_reservoir to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %nbits_in_reservoir, align 4
  %sub204 = sub i32 %326, %conv199
  store i32 %sub204, ptr %nbits_in_reservoir, align 4
  br label %do.body61.backedge

cleanup:                                          ; preds = %if.end208.thread, %do.body20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i3 @llvm.bitreverse.i3(i3) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @pwc_dec23_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/pwc/pwc-dec23.c", i32 290, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @pwc_crop_table, !4, !"pwc_crop_table", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/pwc/pwc-dec23.c", i32 277, i32 22}
!5 = distinct !{null, !6, !"initial_values", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/pwc/pwc-dec23.c", i32 43, i32 28}
!7 = distinct !{null, !8, !"values_derivated", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/pwc/pwc-dec23.c", i32 50, i32 28}
!9 = !{ptr @hash_table_ops, !10, !"hash_table_ops", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/pwc/pwc-dec23.c", i32 186, i32 28}
!11 = !{ptr @MulIdx, !12, !"MulIdx", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/pwc/pwc-dec23.c", i32 256, i32 27}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.peeled.count", i32 1}
