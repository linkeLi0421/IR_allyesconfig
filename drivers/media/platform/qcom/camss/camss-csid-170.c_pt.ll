; ModuleID = '/llk/IR_all_yes/drivers/media/platform/qcom/camss/camss-csid-170.c_pt.bc'
source_filename = "../drivers/media/platform/qcom/camss/camss-csid-170.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.csid_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.csid_format = type { i32, i8, i8, i8, i8 }
%struct.csid_device = type { ptr, i8, %struct.v4l2_subdev, [2 x %struct.media_pad], ptr, i32, [30 x i8], ptr, i32, ptr, %struct.completion, %struct.csid_testgen_config, %struct.csid_phy_config, [2 x %struct.v4l2_mbus_framefmt], %struct.v4l2_ctrl_handler, ptr, ptr, i32, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.csid_testgen_config = type { i32, ptr, i8, i8 }
%struct.csid_phy_config = type { i8, i8, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.camss = type { i32, %struct.v4l2_device, %struct.v4l2_async_notifier, %struct.media_device, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, %struct.atomic_t, [3 x ptr], [3 x ptr] }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }

@csid_ops_170 = dso_local constant { %struct.csid_hw_ops, [36 x i8] } { %struct.csid_hw_ops { ptr @csid_configure_stream, ptr @csid_configure_testgen_pattern, ptr @csid_hw_version, ptr @csid_isr, ptr @csid_reset, ptr @csid_src_pad_code, ptr @csid_subdev_init }, [36 x i8] zeroinitializer }, align 32
@csid_hw_version.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom_camss\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"csid_hw_version\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/media/platform/qcom/camss/camss-csid-170.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CSID HW Version = %u.%u.%u\0A\00", [36 x i8] zeroinitializer }, align 32
@csid_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 544, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CSID reset timeout\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"csid_reset\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@csid_reset._entry_ptr = internal global ptr @csid_reset._entry, section ".printk_index", align 4
@csid_formats = internal constant { [21 x %struct.csid_format], [56 x i8] } { [21 x %struct.csid_format] [%struct.csid_format { i32 8198, i8 30, i8 1, i8 8, i8 2 }, %struct.csid_format { i32 8199, i8 30, i8 1, i8 8, i8 2 }, %struct.csid_format { i32 8200, i8 30, i8 1, i8 8, i8 2 }, %struct.csid_format { i32 8201, i8 30, i8 1, i8 8, i8 2 }, %struct.csid_format { i32 12289, i8 42, i8 1, i8 8, i8 1 }, %struct.csid_format { i32 12307, i8 42, i8 1, i8 8, i8 1 }, %struct.csid_format { i32 12290, i8 42, i8 1, i8 8, i8 1 }, %struct.csid_format { i32 12308, i8 42, i8 1, i8 8, i8 1 }, %struct.csid_format { i32 12295, i8 43, i8 2, i8 10, i8 1 }, %struct.csid_format { i32 12302, i8 43, i8 2, i8 10, i8 1 }, %struct.csid_format { i32 12298, i8 43, i8 2, i8 10, i8 1 }, %struct.csid_format { i32 12303, i8 43, i8 2, i8 10, i8 1 }, %struct.csid_format { i32 8202, i8 43, i8 2, i8 10, i8 1 }, %struct.csid_format { i32 12296, i8 44, i8 3, i8 12, i8 1 }, %struct.csid_format { i32 12304, i8 44, i8 3, i8 12, i8 1 }, %struct.csid_format { i32 12305, i8 44, i8 3, i8 12, i8 1 }, %struct.csid_format { i32 12306, i8 44, i8 3, i8 12, i8 1 }, %struct.csid_format { i32 12313, i8 45, i8 4, i8 14, i8 1 }, %struct.csid_format { i32 12314, i8 45, i8 4, i8 14, i8 1 }, %struct.csid_format { i32 12315, i8 45, i8 4, i8 14, i8 1 }, %struct.csid_format { i32 12316, i8 45, i8 4, i8 14, i8 1 }], [56 x i8] zeroinitializer }, align 32
@csid_testgen_modes = external dso_local constant [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8202, i64 12295]
@___asan_gen_.9 = private unnamed_addr constant [13 x i8] c"csid_ops_170\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 591, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 481, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 544, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [13 x i8] c"csid_formats\00", align 1
@___asan_gen_.40 = private constant [54 x i8] c"../drivers/media/platform/qcom/camss/camss-csid-170.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 179, i32 33 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @csid_reset._entry, ptr @csid_reset._entry_ptr, ptr @csid_ops_170, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @csid_formats], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csid_ops_170 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csid_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csid_formats to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csid_configure_stream(ptr nocapture noundef readonly %csid, i8 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %testgen = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 11
  %lane_cnt1 = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %lane_cnt1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %lane_cnt1, align 1
  %arrayidx = getelementptr %struct.csid_device, ptr %csid, i32 0, i32 13, i32 1
  %formats = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 16
  %2 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %formats, align 4
  %nformats = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 17
  %4 = ptrtoint ptr %nformats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nformats, align 4
  %code = getelementptr %struct.csid_device, ptr %csid, i32 0, i32 13, i32 1, i32 2
  %6 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %code, align 4
  %call = tail call ptr @csid_get_fmt_entry(ptr noundef %3, i32 noundef %5, i32 noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %spec.store.select = select i1 %tobool.not, i8 4, i8 %1
  %enabled = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 11, i32 3
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %if.end5, label %if.end5.thread

if.end5:                                          ; preds = %entry
  %phy = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 12
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %phy, align 4
  %conv = zext i8 %11 to i32
  %phi.bo = shl nuw nsw i32 %conv, 20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool6.not = icmp eq i8 %enable, 0
  br i1 %tobool6.not, label %if.end5.if.end176_crit_edge, label %if.end5.if.end37_crit_edge

if.end5.if.end37_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.end5.if.end176_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end176

if.end5.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool6.not317 = icmp eq i8 %enable, 0
  br i1 %tobool6.not317, label %if.end5.thread.if.then179_crit_edge, label %if.then12

if.end5.thread.if.then179_crit_edge:              ; preds = %if.end5.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then179

if.then12:                                        ; preds = %if.end5.thread
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 4
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 168034304) #7, !srcloc !26
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr17 = getelementptr i8, ptr %15, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 1089945344) #7, !srcloc !26
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr19 = getelementptr i8, ptr %17, i32 1548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 2018915346) #7, !srcloc !26
  %height = getelementptr %struct.csid_device, ptr %csid, i32 0, i32 13, i32 1, i32 1
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  %and = and i32 %19, 8191
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %and20 = and i32 %21, 536805376
  %or21 = or i32 %and20, %and
  %22 = tail call i32 @llvm.bswap.i32(i32 %or21)
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr23 = getelementptr i8, ptr %24, i32 1552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %22) #7, !srcloc !26
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %add.ptr25 = getelementptr i8, ptr %26, i32 1556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 721420288) #7, !srcloc !26
  %27 = ptrtoint ptr %testgen to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %testgen, align 4
  %decode_format = getelementptr inbounds %struct.csid_format, ptr %call, i32 0, i32 2
  %29 = ptrtoint ptr %decode_format to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %decode_format, align 1
  %conv28 = zext i8 %30 to i32
  %shl29 = shl nuw nsw i32 %conv28, 16
  %or27 = or i32 %28, %shl29
  %or30 = or i32 %or27, 3040
  %31 = tail call i32 @llvm.bswap.i32(i32 %or30)
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %add.ptr32 = getelementptr i8, ptr %33, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %31) #7, !srcloc !26
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %add.ptr34 = getelementptr i8, ptr %35, i32 1600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 0) #7, !srcloc !26
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %add.ptr36 = getelementptr i8, ptr %37, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 0) #7, !srcloc !26
  br label %if.end37

if.end37:                                         ; preds = %if.then12, %if.end5.if.end37_crit_edge
  %phy_sel.0318322 = phi i32 [ 0, %if.then12 ], [ %phi.bo, %if.end5.if.end37_crit_edge ]
  %vc.0 = phi i32 [ 44822535, %if.then12 ], [ 2879495, %if.end5.if.end37_crit_edge ]
  %38 = tail call i32 @llvm.bswap.i32(i32 %vc.0)
  %base48 = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 4
  %39 = ptrtoint ptr %base48 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base48, align 4
  %id = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 1
  %41 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %42)
  %cmp = icmp eq i8 %42, 2
  %cond52 = select i1 %cmp, i32 512, i32 768
  %add.ptr53 = getelementptr i8, ptr %40, i32 %cond52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %38) #7, !srcloc !26
  %43 = ptrtoint ptr %base48 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base48, align 4
  %45 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %46)
  %cmp57 = icmp eq i8 %46, 2
  %cond61 = select i1 %cmp57, i32 516, i32 772
  %add.ptr63 = getelementptr i8, ptr %44, i32 %cond61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 33554432) #7, !srcloc !26
  %47 = ptrtoint ptr %base48 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base48, align 4
  %49 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %50)
  %cmp67 = icmp eq i8 %50, 2
  %cond71 = select i1 %cmp67, i32 528, i32 784
  %add.ptr73 = getelementptr i8, ptr %48, i32 %cond71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 16777216) #7, !srcloc !26
  %51 = ptrtoint ptr %base48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base48, align 4
  %53 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %54)
  %cmp77 = icmp eq i8 %54, 2
  %cond81 = select i1 %cmp77, i32 524, i32 780
  %add.ptr83 = getelementptr i8, ptr %52, i32 %cond81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 0) #7, !srcloc !26
  %55 = ptrtoint ptr %base48 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base48, align 4
  %57 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %58)
  %cmp87 = icmp eq i8 %58, 2
  %cond91 = select i1 %cmp87, i32 536, i32 792
  %add.ptr93 = getelementptr i8, ptr %56, i32 %cond91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 16777216) #7, !srcloc !26
  %59 = ptrtoint ptr %base48 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base48, align 4
  %61 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %62)
  %cmp97 = icmp eq i8 %62, 2
  %cond101 = select i1 %cmp97, i32 532, i32 788
  %add.ptr103 = getelementptr i8, ptr %60, i32 %cond101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 0) #7, !srcloc !26
  %63 = ptrtoint ptr %base48 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base48, align 4
  %65 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %66)
  %cmp107 = icmp eq i8 %66, 2
  %cond111 = select i1 %cmp107, i32 552, i32 808
  %add.ptr113 = getelementptr i8, ptr %64, i32 %cond111
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 16777216) #7, !srcloc !26
  %67 = ptrtoint ptr %base48 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base48, align 4
  %69 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %70)
  %cmp117 = icmp eq i8 %70, 2
  %cond121 = select i1 %cmp117, i32 548, i32 804
  %add.ptr123 = getelementptr i8, ptr %68, i32 %cond121
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 0) #7, !srcloc !26
  %71 = ptrtoint ptr %base48 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base48, align 4
  %73 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %74)
  %cmp127 = icmp eq i8 %74, 2
  %cond131 = select i1 %cmp127, i32 560, i32 816
  %add.ptr133 = getelementptr i8, ptr %72, i32 %cond131
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr133, i32 16777216) #7, !srcloc !26
  %75 = ptrtoint ptr %base48 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base48, align 4
  %77 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %78)
  %cmp137 = icmp eq i8 %78, 2
  %cond141 = select i1 %cmp137, i32 556, i32 812
  %add.ptr143 = getelementptr i8, ptr %76, i32 %cond141
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143, i32 0) #7, !srcloc !26
  %79 = ptrtoint ptr %base48 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base48, align 4
  %81 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %82)
  %cmp147 = icmp eq i8 %82, 2
  %cond151 = select i1 %cmp147, i32 520, i32 776
  %add.ptr153 = getelementptr i8, ptr %80, i32 %cond151
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153, i32 0) #7, !srcloc !26
  %83 = ptrtoint ptr %base48 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base48, align 4
  %85 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %86)
  %cmp157 = icmp eq i8 %86, 2
  %cond161 = select i1 %cmp157, i32 512, i32 768
  %add.ptr163 = getelementptr i8, ptr %84, i32 %cond161
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr163) #7, !srcloc !27
  %88 = or i32 %87, 128
  %89 = ptrtoint ptr %base48 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base48, align 4
  %91 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %92)
  %cmp169 = icmp eq i8 %92, 2
  %cond173 = select i1 %cmp169, i32 512, i32 768
  %add.ptr175 = getelementptr i8, ptr %90, i32 %cond173
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr175, i32 %88) #7, !srcloc !26
  br label %if.end176

if.end176:                                        ; preds = %if.end37, %if.end5.if.end176_crit_edge
  %phy_sel.0319.ph = phi i32 [ %phi.bo, %if.end5.if.end176_crit_edge ], [ %phy_sel.0318322, %if.end37 ]
  %93 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %93)
  %.pr = load i8, ptr %enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool178.not = icmp eq i8 %.pr, 0
  br i1 %tobool178.not, label %if.end176.if.end191_crit_edge, label %if.end176.if.then179_crit_edge

if.end176.if.then179_crit_edge:                   ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then179

if.end176.if.end191_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = zext i8 %spec.store.select to i32
  br label %if.end191

if.then179:                                       ; preds = %if.end176.if.then179_crit_edge, %if.end5.thread.if.then179_crit_edge
  %phy_sel.0319325 = phi i32 [ %phy_sel.0319.ph, %if.end176.if.then179_crit_edge ], [ 0, %if.end5.thread.if.then179_crit_edge ]
  %or183 = zext i8 %enable to i32
  %conv184 = zext i8 %spec.store.select to i32
  %sub = shl nuw nsw i32 %conv184, 4
  %shl185 = add nsw i32 %sub, -16
  %or186 = or i32 %shl185, %or183
  %or188 = or i32 %or186, 10511366
  %94 = tail call i32 @llvm.bswap.i32(i32 %or188)
  %base189 = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 4
  %95 = ptrtoint ptr %base189 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base189, align 4
  %add.ptr190 = getelementptr i8, ptr %96, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr190, i32 %94) #7, !srcloc !26
  br label %if.end191

if.end191:                                        ; preds = %if.then179, %if.end176.if.end191_crit_edge
  %conv192.pre-phi = phi i32 [ %.pre, %if.end176.if.end191_crit_edge ], [ %conv184, %if.then179 ]
  %phy_sel.0319326 = phi i32 [ %phy_sel.0319.ph, %if.end176.if.end191_crit_edge ], [ %phy_sel.0319325, %if.then179 ]
  %sub193 = add nsw i32 %conv192.pre-phi, -1
  %lane_assign = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 12, i32 2
  %97 = ptrtoint ptr %lane_assign to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %lane_assign, align 4
  %shl196 = shl i32 %98, 4
  %or197 = or i32 %phy_sel.0319326, %sub193
  %or199 = or i32 %or197, %shl196
  %99 = tail call i32 @llvm.bswap.i32(i32 %or199)
  %base200 = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 4
  %100 = ptrtoint ptr %base200 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base200, align 4
  %add.ptr201 = getelementptr i8, ptr %101, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr201, i32 %99) #7, !srcloc !26
  %102 = ptrtoint ptr %base200 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base200, align 4
  %add.ptr204 = getelementptr i8, ptr %103, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr204, i32 1090519040) #7, !srcloc !26
  %104 = ptrtoint ptr %base200 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base200, align 4
  %add.ptr206 = getelementptr i8, ptr %105, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr206, i32 -1) #7, !srcloc !26
  %106 = ptrtoint ptr %base200 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base200, align 4
  %add.ptr208 = getelementptr i8, ptr %107, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr208, i32 -1) #7, !srcloc !26
  %108 = ptrtoint ptr %base200 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base200, align 4
  %id210 = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 1
  %110 = ptrtoint ptr %id210 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %id210, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %111)
  %cmp212 = icmp eq i8 %111, 2
  %cond216 = select i1 %cmp212, i32 520, i32 776
  %add.ptr218 = getelementptr i8, ptr %109, i32 %cond216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr218, i32 16777216) #7, !srcloc !26
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @csid_configure_testgen_pattern(ptr nocapture noundef %csid, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp = icmp sgt i32 %val, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %nmodes = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 11, i32 2
  %0 = ptrtoint ptr %nmodes to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nmodes, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %val)
  %cmp1.not = icmp ult i32 %conv, %val
  br i1 %cmp1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %testgen = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 11
  %2 = ptrtoint ptr %testgen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %val, ptr %testgen, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csid_hw_version(ptr nocapture noundef readonly %csid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 4
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !27
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csid_hw_version.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csid_hw_version, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !28

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and4 = and i32 %3, 65535
  %shr1 = lshr i32 %3, 16
  %and2 = and i32 %shr1, 4095
  %shr = lshr i32 %3, 28
  %4 = ptrtoint ptr %csid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csid, align 4
  %dev = getelementptr inbounds %struct.camss, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csid_hw_version.__UNIQUE_ID_ddebug298, ptr noundef %7, ptr noundef nonnull @.str.3, i32 noundef %shr, i32 noundef %and2, i32 noundef %and4) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csid_isr(i32 noundef %irq, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.csid_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 112
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !27
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %2) #7, !srcloc !26
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 32
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !27
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %9, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %7) #7, !srcloc !26
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %id = getelementptr inbounds %struct.csid_device, ptr %dev, i32 0, i32 1
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp = icmp eq i8 %13, 2
  %cond14 = select i1 %cmp, i32 48, i32 64
  %add.ptr15 = getelementptr i8, ptr %11, i32 %cond14
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #7, !srcloc !27
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp21 = icmp eq i8 %18, 2
  %cond25 = select i1 %cmp21, i32 56, i32 72
  %add.ptr27 = getelementptr i8, ptr %16, i32 %cond25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %14) #7, !srcloc !26
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr29 = getelementptr i8, ptr %20, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 16777216) #7, !srcloc !26
  %21 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool30.not = icmp eq i32 %21, 0
  br i1 %tobool30.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %reset_complete = getelementptr inbounds %struct.csid_device, ptr %dev, i32 0, i32 10
  tail call void @complete(ptr noundef %reset_complete) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csid_reset(ptr noundef %csid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_complete = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 10
  %0 = ptrtoint ptr %reset_complete to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reset_complete, align 4
  %base = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 4
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #7, !srcloc !26
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 16777216) #7, !srcloc !26
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 16777216) #7, !srcloc !26
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %8, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 16777216) #7, !srcloc !26
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 503316480) #7, !srcloc !26
  %call10 = tail call i32 @wait_for_completion_timeout(ptr noundef %reset_complete, i32 noundef 50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %csid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csid, align 4
  %dev = getelementptr inbounds %struct.camss, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.4) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csid_src_pad_code(ptr nocapture noundef readnone %csid, i32 noundef %sink_code, i32 noundef %match_format_idx, i32 noundef %match_code) #0 align 64 {
entry:
  %src_code = alloca [2 x i32], align 8
  %src_code2 = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %sink_code to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %sink_code, label %sw.default [
    i32 12295, label %sw.bb
    i32 8202, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %src_code) #7
  %1 = ptrtoint ptr %src_code to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 52806622916612, ptr %src_code, align 8
  %call = call i32 @csid_find_code(ptr noundef nonnull %src_code, i32 noundef 2, i32 noundef %match_format_idx, i32 noundef %match_code) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %src_code) #7
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %src_code2) #7
  %2 = ptrtoint ptr %src_code2 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 35227321770028, ptr %src_code2, align 8
  %call4 = call i32 @csid_find_code(ptr noundef nonnull %src_code2, i32 noundef 2, i32 noundef %match_format_idx, i32 noundef %match_code) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %src_code2) #7
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %match_format_idx)
  %cmp.not = icmp eq i32 %match_format_idx, 0
  %sink_code. = select i1 %cmp.not, i32 %sink_code, i32 0
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ %call4, %sw.bb1 ], [ %call, %sw.bb ], [ %sink_code., %sw.default ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @csid_subdev_init(ptr nocapture noundef writeonly %csid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %formats = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 16
  %0 = ptrtoint ptr %formats to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @csid_formats, ptr %formats, align 4
  %nformats = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 17
  %1 = ptrtoint ptr %nformats to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 21, ptr %nformats, align 4
  %modes = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %modes to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @csid_testgen_modes, ptr %modes, align 4
  %nmodes = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 11, i32 2
  %3 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 9, ptr %nmodes, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @csid_get_fmt_entry(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csid_find_code(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @csid_ops_170, !1, !"csid_ops_170", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/qcom/camss/camss-csid-170.c", i32 591, i32 26}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/qcom/camss/camss-csid-170.c", i32 481, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @csid_hw_version.__UNIQUE_ID_ddebug298, !3, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/qcom/camss/camss-csid-170.c", i32 544, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @csid_reset._entry, !9, !"_entry", i1 false, i1 false}
!14 = !{ptr @csid_reset._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @csid_formats, !16, !"csid_formats", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/qcom/camss/camss-csid-170.c", i32 179, i32 33}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 4211753}
!27 = !{i64 4212171}
!28 = !{i64 2148329458, i64 2148329463, i64 2148329476, i64 2148329520, i64 2148329554, i64 2148329575}
