; ModuleID = '/llk/IR_all_yes/drivers/media/platform/qcom/camss/camss-csid-4-1.c_pt.bc'
source_filename = "../drivers/media/platform/qcom/camss/camss-csid-4-1.c"
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

@csid_ops_4_1 = dso_local constant { %struct.csid_hw_ops, [36 x i8] } { %struct.csid_hw_ops { ptr @csid_configure_stream, ptr @csid_configure_testgen_pattern, ptr @csid_hw_version, ptr @csid_isr, ptr @csid_reset, ptr @csid_src_pad_code, ptr @csid_subdev_init }, [36 x i8] zeroinitializer }, align 32
@csid_hw_version.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom_camss\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"csid_hw_version\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/media/platform/qcom/camss/camss-csid-4-1.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CSID HW Version = 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@csid_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 296, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CSID reset timeout\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"csid_reset\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@csid_reset._entry_ptr = internal global ptr @csid_reset._entry, section ".printk_index", align 4
@csid_formats = internal constant { [17 x %struct.csid_format], [56 x i8] } { [17 x %struct.csid_format] [%struct.csid_format { i32 8198, i8 30, i8 1, i8 8, i8 2 }, %struct.csid_format { i32 8199, i8 30, i8 1, i8 8, i8 2 }, %struct.csid_format { i32 8200, i8 30, i8 1, i8 8, i8 2 }, %struct.csid_format { i32 8201, i8 30, i8 1, i8 8, i8 2 }, %struct.csid_format { i32 12289, i8 42, i8 1, i8 8, i8 1 }, %struct.csid_format { i32 12307, i8 42, i8 1, i8 8, i8 1 }, %struct.csid_format { i32 12290, i8 42, i8 1, i8 8, i8 1 }, %struct.csid_format { i32 12308, i8 42, i8 1, i8 8, i8 1 }, %struct.csid_format { i32 12295, i8 43, i8 2, i8 10, i8 1 }, %struct.csid_format { i32 12302, i8 43, i8 2, i8 10, i8 1 }, %struct.csid_format { i32 12298, i8 43, i8 2, i8 10, i8 1 }, %struct.csid_format { i32 12303, i8 43, i8 2, i8 10, i8 1 }, %struct.csid_format { i32 12296, i8 44, i8 3, i8 12, i8 1 }, %struct.csid_format { i32 12304, i8 44, i8 3, i8 12, i8 1 }, %struct.csid_format { i32 12305, i8 44, i8 3, i8 12, i8 1 }, %struct.csid_format { i32 12306, i8 44, i8 3, i8 12, i8 1 }, %struct.csid_format { i32 8202, i8 43, i8 2, i8 10, i8 1 }], [56 x i8] zeroinitializer }, align 32
@csid_testgen_modes = external dso_local constant [0 x ptr], align 4
@___asan_gen_.8 = private unnamed_addr constant [13 x i8] c"csid_ops_4_1\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 320, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 266, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 296, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [13 x i8] c"csid_formats\00", align 1
@___asan_gen_.39 = private constant [54 x i8] c"../drivers/media/platform/qcom/camss/camss-csid-4-1.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 48, i32 33 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @csid_reset._entry, ptr @csid_reset._entry_ptr, ptr @csid_ops_4_1, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @csid_formats], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csid_ops_4_1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csid_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csid_formats to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csid_configure_stream(ptr nocapture noundef readonly %csid, i8 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %testgen = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool.not = icmp eq i8 %enable, 0
  %enabled72 = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 11, i32 3
  %0 = ptrtoint ptr %enabled72 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled72, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool73.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else71, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool73.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
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
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %bpp = getelementptr inbounds %struct.csid_format, ptr %call, i32 0, i32 3
  %10 = ptrtoint ptr %bpp to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bpp, align 2
  %conv4 = zext i8 %11 to i32
  %spp = getelementptr inbounds %struct.csid_format, ptr %call, i32 0, i32 4
  %12 = ptrtoint ptr %spp to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %spp, align 1
  %conv6 = zext i8 %13 to i32
  %height = getelementptr %struct.csid_device, ptr %csid, i32 0, i32 13, i32 1, i32 1
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  %base = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 4
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 14712703) #7, !srcloc !26
  %mul5 = shl i32 %9, 13
  %mul7 = mul i32 %mul5, %conv4
  %18 = mul i32 %mul7, %conv6
  %shl = and i32 %18, 536805376
  %and8 = and i32 %15, 8191
  %or = or i32 %shl, %and8
  %19 = tail call i32 @llvm.bswap.i32(i32 %or)
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %21, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %19) #7, !srcloc !26
  %data_type = getelementptr inbounds %struct.csid_format, ptr %call, i32 0, i32 1
  %22 = ptrtoint ptr %data_type to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data_type, align 4
  %conv11 = zext i8 %23 to i32
  %24 = shl nuw i32 %conv11, 24
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %26, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %24) #7, !srcloc !26
  %27 = ptrtoint ptr %testgen to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %testgen, align 4
  %sub = add i32 %28, -1
  %29 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %31, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %29) #7, !srcloc !26
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %phy16 = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 12
  %formats19 = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 16
  %32 = ptrtoint ptr %formats19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %formats19, align 4
  %nformats20 = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 17
  %34 = ptrtoint ptr %nformats20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nformats20, align 4
  %code21 = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 13, i32 0, i32 2
  %36 = ptrtoint ptr %code21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %code21, align 4
  %call22 = tail call ptr @csid_get_fmt_entry(ptr noundef %33, i32 noundef %35, i32 noundef %37) #7
  %lane_cnt = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 12, i32 1
  %38 = ptrtoint ptr %lane_cnt to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %lane_cnt, align 1
  %conv23 = zext i8 %39 to i32
  %sub24 = add nsw i32 %conv23, -1
  %lane_assign = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 12, i32 2
  %40 = ptrtoint ptr %lane_assign to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lane_assign, align 4
  %shl25 = shl i32 %41, 4
  %or26 = or i32 %sub24, %shl25
  %42 = tail call i32 @llvm.bswap.i32(i32 %or26)
  %base27 = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 4
  %43 = ptrtoint ptr %base27 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base27, align 4
  %add.ptr28 = getelementptr i8, ptr %44, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %42) #7, !srcloc !26
  %45 = ptrtoint ptr %phy16 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %phy16, align 4
  %conv29 = zext i8 %46 to i32
  %shl30 = shl nuw nsw i32 %conv29, 17
  %or31 = or i32 %shl30, 9
  %47 = tail call i32 @llvm.bswap.i32(i32 %or31)
  %48 = ptrtoint ptr %base27 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base27, align 4
  %add.ptr33 = getelementptr i8, ptr %49, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %47) #7, !srcloc !26
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %format.0 = phi ptr [ %call, %if.then3 ], [ %call22, %if.else ]
  %base37 = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 4
  %50 = ptrtoint ptr %base37 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base37, align 4
  %add.ptr40 = getelementptr i8, ptr %51, i32 16
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #7, !srcloc !27
  %53 = and i32 %52, 16777215
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %data_type45 = getelementptr inbounds %struct.csid_format, ptr %format.0, i32 0, i32 1
  %55 = ptrtoint ptr %data_type45 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %data_type45, align 4
  %conv46 = zext i8 %56 to i32
  %or49 = or i32 %54, %conv46
  %57 = tail call i32 @llvm.bswap.i32(i32 %or49)
  %58 = ptrtoint ptr %base37 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base37, align 4
  %add.ptr54 = getelementptr i8, ptr %59, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %57) #7, !srcloc !26
  %decode_format = getelementptr inbounds %struct.csid_format, ptr %format.0, i32 0, i32 2
  %60 = ptrtoint ptr %decode_format to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %decode_format, align 1
  %conv56 = zext i8 %61 to i32
  %shl57 = shl nuw nsw i32 %conv56, 4
  %or58 = or i32 %shl57, 3
  %62 = tail call i32 @llvm.bswap.i32(i32 %or58)
  %63 = ptrtoint ptr %base37 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base37, align 4
  %add.ptr64 = getelementptr i8, ptr %64, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %62) #7, !srcloc !26
  %65 = ptrtoint ptr %enabled72 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %enabled72, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool66.not = icmp eq i8 %66, 0
  br i1 %tobool66.not, label %if.end.if.end78_crit_edge, label %if.then67

if.end.if.end78_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then67:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %base37 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base37, align 4
  %add.ptr69 = getelementptr i8, ptr %68, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 929341440) #7, !srcloc !26
  br label %if.end78

if.else71:                                        ; preds = %entry
  br i1 %tobool73.not, label %if.else71.if.end78_crit_edge, label %if.then74

if.else71.if.end78_crit_edge:                     ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then74:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #9
  %base75 = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 4
  %69 = ptrtoint ptr %base75 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base75, align 4
  %add.ptr76 = getelementptr i8, ptr %70, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 912564224) #7, !srcloc !26
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %if.else71.if.end78_crit_edge, %if.then67, %if.end.if.end78_crit_edge
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
  %4 = ptrtoint ptr %csid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csid, align 4
  %dev = getelementptr inbounds %struct.camss, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csid_hw_version.__UNIQUE_ID_ddebug298, ptr noundef %7, ptr noundef nonnull @.str.3, i32 noundef %3) #7
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
  %add.ptr = getelementptr i8, ptr %1, i32 104
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !27
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %2) #7, !srcloc !26
  %5 = and i32 %2, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

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
  %add.ptr = getelementptr i8, ptr %2, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -8454144) #7, !srcloc !26
  %call2 = tail call i32 @wait_for_completion_timeout(ptr noundef %reset_complete, i32 noundef 50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %csid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csid, align 4
  %dev = getelementptr inbounds %struct.camss, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.4) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @csid_src_pad_code(ptr nocapture noundef readnone %csid, i32 noundef %sink_code, i32 noundef %match_format_idx, i32 noundef %match_code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %match_format_idx)
  %cmp.not = icmp eq i32 %match_format_idx, 0
  %sink_code. = select i1 %cmp.not, i32 %sink_code, i32 0
  ret i32 %sink_code.
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @csid_subdev_init(ptr nocapture noundef writeonly %csid) #3 align 64 {
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
  store i32 17, ptr %nformats, align 4
  %modes = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %modes to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @csid_testgen_modes, ptr %modes, align 4
  %nmodes = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 11, i32 2
  %3 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 6, ptr %nmodes, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @csid_get_fmt_entry(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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

!0 = !{ptr @csid_ops_4_1, !1, !"csid_ops_4_1", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/qcom/camss/camss-csid-4-1.c", i32 320, i32 26}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/qcom/camss/camss-csid-4-1.c", i32 266, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @csid_hw_version.__UNIQUE_ID_ddebug298, !3, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/qcom/camss/camss-csid-4-1.c", i32 296, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @csid_reset._entry, !9, !"_entry", i1 false, i1 false}
!14 = !{ptr @csid_reset._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @csid_formats, !16, !"csid_formats", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/qcom/camss/camss-csid-4-1.c", i32 48, i32 33}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 4204026}
!27 = !{i64 4204444}
!28 = !{i64 2148321731, i64 2148321736, i64 2148321749, i64 2148321793, i64 2148321827, i64 2148321848}
