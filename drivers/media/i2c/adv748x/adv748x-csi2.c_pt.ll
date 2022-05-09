; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/adv748x/adv748x-csi2.c_pt.bc'
source_filename = "../drivers/media/i2c/adv748x/adv748x-csi2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.adv748x_csi2 = type { ptr, %struct.v4l2_mbus_framefmt, i32, i32, i32, i32, [2 x %struct.media_pad], %struct.v4l2_ctrl_handler, ptr, ptr, %struct.v4l2_subdev }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon, i16, i16, i16, [10 x i16] }
%union.anon = type { i16 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.82 }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.adv748x_state = type { ptr, ptr, %struct.mutex, [12 x ptr], [12 x ptr], [12 x ptr], %struct.adv748x_hdmi, %struct.adv748x_afe, %struct.adv748x_csi2, %struct.adv748x_csi2 }
%struct.adv748x_hdmi = type { [2 x %struct.media_pad], %struct.v4l2_ctrl_handler, %struct.v4l2_subdev, %struct.v4l2_mbus_framefmt, %struct.v4l2_dv_timings, %struct.v4l2_fract, ptr, %struct.anon.117 }
%struct.v4l2_dv_timings = type { i32, %union.anon.107 }
%union.anon.107 = type { [32 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.anon.117 = type { [512 x i8], i32, i32 }
%struct.adv748x_afe = type { [9 x %struct.media_pad], %struct.v4l2_ctrl_handler, %struct.v4l2_subdev, %struct.v4l2_mbus_framefmt, ptr, i8, i64, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_mbus_config = type { i32, i32 }

@adv748x_csi2_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @adv748x_csi2_video_ops, ptr null, ptr null, ptr null, ptr @adv748x_csi2_pad_ops }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"txa\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"txb\00", [28 x i8] zeroinitializer }, align 32
@adv748x_csi2_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr @adv748x_csi2_registered, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@adv748x_csi2_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adv748x_csi2_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@adv748x_csi2_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr null, ptr null, ptr null, ptr @adv748x_csi2_get_format, ptr @adv748x_csi2_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adv748x_csi2_get_mbus_config, ptr null }, [60 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@adv748x_csi2_registered.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adv748x\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adv748x_csi2_registered\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/i2c/adv748x/adv748x-csi2.c\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Registered %s (%s)\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TXA\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TXB\00", [28 x i8] zeroinitializer }, align 32
@adv748x_csi2_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"adv748x_csi2:292:(&tx->ctrl_hdl)->_lock\00", [56 x i8] zeroinitializer }, align 32
@adv748x_csi2_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @adv748x_csi2_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@switch.table.adv748x_csi2_get_mbus_config = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 4, i32 8], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"adv748x_csi2_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 256, i32 37 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 317, i32 21 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 317, i32 29 }
@___asan_gen_.19 = private unnamed_addr constant [26 x i8] c"adv748x_csi2_internal_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 111, i32 46 }
@___asan_gen_.22 = private unnamed_addr constant [23 x i8] c"adv748x_csi2_video_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 131, i32 43 }
@___asan_gen_.25 = private unnamed_addr constant [21 x i8] c"adv748x_csi2_pad_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 246, i32 41 }
@___asan_gen_.29 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 998, i32 6 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 74, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 292, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [22 x i8] c"adv748x_csi2_ctrl_ops\00", align 1
@___asan_gen_.56 = private constant [44 x i8] c"../drivers/media/i2c/adv748x/adv748x-csi2.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 285, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant [42 x i8] c"switch.table.adv748x_csi2_get_mbus_config\00", align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @adv748x_csi2_ops, ptr @.str, ptr @.str.1, ptr @adv748x_csi2_internal_ops, ptr @adv748x_csi2_video_ops, ptr @adv748x_csi2_pad_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @adv748x_csi2_init_controls._key, ptr @.str.9, ptr @adv748x_csi2_ctrl_ops, ptr @switch.table.adv748x_csi2_get_mbus_config], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_csi2_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_csi2_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_csi2_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_csi2_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_csi2_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_csi2_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.adv748x_csi2_get_mbus_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adv748x_csi2_set_virtual_channel(ptr nocapture noundef readonly %tx, i32 noundef %vc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx, align 4
  %page = getelementptr inbounds %struct.adv748x_csi2, ptr %tx, i32 0, i32 2
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page, align 4
  %conv = trunc i32 %3 to i8
  %vc.tr = trunc i32 %vc to i8
  %conv1 = shl i8 %vc.tr, 6
  %call = tail call i32 @adv748x_write(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext 13, i8 noundef zeroext %conv1) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adv748x_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adv748x_csi2_set_pixelrate(ptr nocapture noundef readonly %sd, i64 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pixel_rate = getelementptr i8, ptr %sd, i32 -8
  %0 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pixel_rate, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %5, i32 noundef 0) #4
  %call.i = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef nonnull %1, i64 noundef %rate) #4
  %6 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handler.i.i, align 8
  %lock.i4.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %lock.i4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lock.i4.i, align 4
  tail call void @mutex_unlock(ptr noundef %9) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adv748x_csi2_init(ptr noundef %state, ptr noundef %tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx, align 4
  %port = getelementptr inbounds %struct.adv748x_csi2, ptr %tx, i32 0, i32 3
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %arrayidx = getelementptr %struct.adv748x_state, ptr %1, i32 0, i32 3, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %sd = getelementptr inbounds %struct.adv748x_csi2, ptr %tx, i32 0, i32 10
  %txa = getelementptr inbounds %struct.adv748x_state, ptr %1, i32 0, i32 8
  %cmp3 = icmp eq ptr %txa, %tx
  %cond = select i1 %cmp3, ptr @.str, ptr @.str.1
  tail call void @adv748x_subdev_init(ptr noundef %sd, ptr noundef %state, ptr noundef nonnull @adv748x_csi2_ops, i32 noundef 20482, ptr noundef nonnull %cond) #4
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %arrayidx6 = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 3, i32 %7
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx6, align 4
  %tobool.not = icmp eq ptr %9, null
  %fwnode = getelementptr inbounds %struct.device_node, ptr %9, i32 0, i32 3
  %spec.select = select i1 %tobool.not, ptr null, ptr %fwnode
  %fwnode9 = getelementptr inbounds %struct.adv748x_csi2, ptr %tx, i32 0, i32 10, i32 15
  %10 = ptrtoint ptr %fwnode9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %spec.select, ptr %fwnode9, align 4
  %internal_ops = getelementptr inbounds %struct.adv748x_csi2, ptr %tx, i32 0, i32 10, i32 7
  %11 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @adv748x_csi2_internal_ops, ptr %internal_ops, align 4
  %pads = getelementptr inbounds %struct.adv748x_csi2, ptr %tx, i32 0, i32 6
  %flags = getelementptr inbounds %struct.adv748x_csi2, ptr %tx, i32 0, i32 6, i32 0, i32 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %flags, align 4
  %flags14 = getelementptr %struct.adv748x_csi2, ptr %tx, i32 0, i32 6, i32 1, i32 4
  %13 = ptrtoint ptr %flags14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %flags14, align 4
  %call = tail call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 2, ptr noundef %pads) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool17.not = icmp eq i32 %call, 0
  br i1 %tobool17.not, label %if.end19, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %ctrl_hdl.i = getelementptr inbounds %struct.adv748x_csi2, ptr %tx, i32 0, i32 7
  %call.i = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl.i, i32 noundef 1, ptr noundef nonnull @adv748x_csi2_init_controls._key, ptr noundef nonnull @.str.9) #4
  %call2.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl.i, ptr noundef nonnull @adv748x_csi2_ctrl_ops, i32 noundef 10422530, i64 noundef 1, i64 noundef 2147483647, i64 noundef 1, i64 noundef 1) #4
  %pixel_rate.i = getelementptr inbounds %struct.adv748x_csi2, ptr %tx, i32 0, i32 8
  %14 = ptrtoint ptr %pixel_rate.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call2.i, ptr %pixel_rate.i, align 4
  %ctrl_handler.i = getelementptr inbounds %struct.adv748x_csi2, ptr %tx, i32 0, i32 10, i32 8
  %15 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ctrl_hdl.i, ptr %ctrl_handler.i, align 4
  %error.i = getelementptr inbounds %struct.adv748x_csi2, ptr %tx, i32 0, i32 7, i32 9
  %16 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl.i) #4
  %18 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error.i, align 4
  br label %adv748x_csi2_init_controls.exit

if.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %call9.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_hdl.i) #4
  br label %adv748x_csi2_init_controls.exit

adv748x_csi2_init_controls.exit:                  ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %19, %if.then.i ], [ %call9.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool21.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool21.not, label %if.end23, label %adv748x_csi2_init_controls.exit.cleanup_crit_edge

adv748x_csi2_init_controls.exit.cleanup_crit_edge: ; preds = %adv748x_csi2_init_controls.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end23:                                         ; preds = %adv748x_csi2_init_controls.exit
  %call25 = tail call i32 @v4l2_async_register_subdev(ptr noundef %sd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %err_free_ctrl

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

err_free_ctrl:                                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl.i) #4
  br label %cleanup

cleanup:                                          ; preds = %err_free_ctrl, %if.end23.cleanup_crit_edge, %adv748x_csi2_init_controls.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ %retval.0.i, %adv748x_csi2_init_controls.exit.cleanup_crit_edge ], [ %call25, %err_free_ctrl ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @adv748x_subdev_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adv748x_csi2_cleanup(ptr noundef %tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx, align 4
  %port = getelementptr inbounds %struct.adv748x_csi2, ptr %tx, i32 0, i32 3
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %arrayidx = getelementptr %struct.adv748x_state, ptr %1, i32 0, i32 3, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sd = getelementptr inbounds %struct.adv748x_csi2, ptr %tx, i32 0, i32 10
  tail call void @v4l2_async_unregister_subdev(ptr noundef %sd) #4
  %ctrl_hdl = getelementptr inbounds %struct.adv748x_csi2, ptr %tx, i32 0, i32 7
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl) #4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv748x_csi2_s_stream(ptr noundef %sd, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pads = getelementptr i8, ptr %sd, i32 -256
  %call.i = tail call ptr @media_entity_remote_pad(ptr noundef %pads) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %adv748x_get_remote_sd.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

adv748x_get_remote_sd.exit:                       ; preds = %entry
  %entity.i = getelementptr inbounds %struct.media_pad, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %entity.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entity.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %adv748x_get_remote_sd.exit.cleanup_crit_edge, label %if.else

adv748x_get_remote_sd.exit.cleanup_crit_edge:     ; preds = %adv748x_get_remote_sd.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %adv748x_get_remote_sd.exit
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %video, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_stream, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %if.else8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else8:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool9.not = icmp eq ptr %8, null
  br i1 %tobool9.not, label %if.else8.if.else16_crit_edge, label %land.lhs.true10

if.else8.if.else16_crit_edge:                     ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else16

land.lhs.true10:                                  ; preds = %if.else8
  %s_stream11 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %s_stream11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_stream11, align 4
  %tobool12.not = icmp eq ptr %10, null
  br i1 %tobool12.not, label %land.lhs.true10.if.else16_crit_edge, label %land.lhs.true10.cleanup.sink.split_crit_edge

land.lhs.true10.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

land.lhs.true10.if.else16_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else16

if.else16:                                        ; preds = %land.lhs.true10.if.else16_crit_edge, %if.else8.if.else16_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else16, %land.lhs.true10.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %7, %if.else16 ], [ %10, %land.lhs.true10.cleanup.sink.split_crit_edge ]
  %call15 = tail call i32 %.sink(ptr noundef nonnull %1, i32 noundef %enable) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %adv748x_get_remote_sd.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -32, %adv748x_get_remote_sd.exit.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -32, %entry.cleanup_crit_edge ], [ %call15, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv748x_csi2_get_format(ptr noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sdformat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sd, i32 -324
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %5, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !36

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 998, i32 noundef 9, ptr noundef null) #4
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %5, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %adv748x_csi2_get_pad_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %format.i = getelementptr i8, ptr %sd, i32 -320
  br label %adv748x_csi2_get_pad_format.exit

adv748x_csi2_get_pad_format.exit:                 ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %format.i, %if.end.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %adv748x_csi2_get_pad_format.exit.cleanup_crit_edge, label %if.end

adv748x_csi2_get_pad_format.exit.cleanup_crit_edge: ; preds = %adv748x_csi2_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %adv748x_csi2_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #6
  %mutex = getelementptr inbounds %struct.adv748x_state, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %format, ptr %retval.0.i, i32 48)
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %adv748x_csi2_get_pad_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %adv748x_csi2_get_pad_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv748x_csi2_set_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sdformat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sd, i32 -324
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 1
  %2 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %5, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !36

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 998, i32 noundef 9, ptr noundef null) #4
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %5, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %adv748x_csi2_get_pad_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %format.i = getelementptr i8, ptr %sd, i32 -320
  br label %adv748x_csi2_get_pad_format.exit

adv748x_csi2_get_pad_format.exit:                 ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %format.i, %if.end.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %adv748x_csi2_get_pad_format.exit.cleanup12_crit_edge, label %if.end

adv748x_csi2_get_pad_format.exit.cleanup12_crit_edge: ; preds = %adv748x_csi2_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup12

if.end:                                           ; preds = %adv748x_csi2_get_pad_format.exit
  %mutex = getelementptr inbounds %struct.adv748x_state, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %10 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %if.then3, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %12 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i28 = icmp eq i32 %13, 0
  br i1 %cmp.i28, label %if.then.i32, label %if.end.i38

if.then.i32:                                      ; preds = %if.then3
  %num_pads.i.i29 = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %14 = ptrtoint ptr %num_pads.i.i29 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_pads.i.i29, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.not.i.i31.not = icmp eq i16 %15, 0
  br i1 %cmp.not.i.i31.not, label %do.end.i.i33, label %if.then.i32.v4l2_subdev_get_try_format.exit.i36_crit_edge, !prof !37

if.then.i32.v4l2_subdev_get_try_format.exit.i36_crit_edge: ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #6
  br label %v4l2_subdev_get_try_format.exit.i36

do.end.i.i33:                                     ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 998, i32 noundef 9, ptr noundef null) #4
  br label %v4l2_subdev_get_try_format.exit.i36

v4l2_subdev_get_try_format.exit.i36:              ; preds = %do.end.i.i33, %if.then.i32.v4l2_subdev_get_try_format.exit.i36_crit_edge
  %16 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sd_state, align 4
  br label %adv748x_csi2_get_pad_format.exit40

if.end.i38:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %format.i37 = getelementptr i8, ptr %sd, i32 -320
  br label %adv748x_csi2_get_pad_format.exit40

adv748x_csi2_get_pad_format.exit40:               ; preds = %if.end.i38, %v4l2_subdev_get_try_format.exit.i36
  %retval.0.i39 = phi ptr [ %17, %v4l2_subdev_get_try_format.exit.i36 ], [ %format.i37, %if.end.i38 ]
  %tobool6.not = icmp eq ptr %retval.0.i39, null
  br i1 %tobool6.not, label %adv748x_csi2_get_pad_format.exit40.unlock_crit_edge, label %cleanup.thread

adv748x_csi2_get_pad_format.exit40.unlock_crit_edge: ; preds = %adv748x_csi2_get_pad_format.exit40
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock

cleanup.thread:                                   ; preds = %adv748x_csi2_get_pad_format.exit40
  call void @__sanitizer_cov_trace_pc() #6
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %18 = call ptr @memcpy(ptr %format, ptr %retval.0.i39, i32 48)
  br label %if.end9

if.end9:                                          ; preds = %cleanup.thread, %if.end.if.end9_crit_edge
  %format10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %19 = call ptr @memcpy(ptr %retval.0.i, ptr %format10, i32 48)
  br label %unlock

unlock:                                           ; preds = %if.end9, %adv748x_csi2_get_pad_format.exit40.unlock_crit_edge
  %ret.2 = phi i32 [ 0, %if.end9 ], [ -22, %adv748x_csi2_get_pad_format.exit40.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  br label %cleanup12

cleanup12:                                        ; preds = %unlock, %adv748x_csi2_get_pad_format.exit.cleanup12_crit_edge
  %retval.0 = phi i32 [ %ret.2, %unlock ], [ -22, %adv748x_csi2_get_pad_format.exit.cleanup12_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adv748x_csi2_get_mbus_config(ptr nocapture noundef readonly %sd, i32 noundef %pad, ptr nocapture noundef writeonly %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pad)
  %cmp.not = icmp eq i32 %pad, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %config, align 4
  %active_lanes = getelementptr i8, ptr %sd, i32 -260
  %1 = ptrtoint ptr %active_lanes to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %active_lanes, align 4
  %switch.tableidx = add i32 %2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %3 = icmp ult i32 %switch.tableidx, 4
  br i1 %3, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.adv748x_csi2_get_mbus_config, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %flags = getelementptr inbounds %struct.v4l2_mbus_config, ptr %config, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %switch.load, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv748x_csi2_registered(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sd, i32 -324
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adv748x_csi2_registered.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adv748x_csi2_registered, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !38

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %txa = getelementptr inbounds %struct.adv748x_state, ptr %5, i32 0, i32 8
  %cmp = icmp eq ptr %add.ptr, %txa
  %cond = select i1 %cmp, ptr @.str.7, ptr @.str.8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adv748x_csi2_registered.__UNIQUE_ID_ddebug292, ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef nonnull %cond, ptr noundef %name) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %endpoints = getelementptr inbounds %struct.adv748x_state, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %endpoints to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %endpoints, align 4
  %cmp6.not = icmp eq ptr %7, null
  br i1 %cmp6.not, label %lor.lhs.false, label %do.end.if.then34_crit_edge

do.end.if.then34_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then34

lor.lhs.false:                                    ; preds = %do.end
  %arrayidx8 = getelementptr %struct.adv748x_state, ptr %1, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx8, align 4
  %cmp9.not = icmp eq ptr %9, null
  br i1 %cmp9.not, label %lor.lhs.false10, label %lor.lhs.false.if.then34_crit_edge

lor.lhs.false.if.then34_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then34

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %arrayidx12 = getelementptr %struct.adv748x_state, ptr %1, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx12, align 4
  %cmp13.not = icmp eq ptr %11, null
  br i1 %cmp13.not, label %lor.lhs.false14, label %lor.lhs.false10.if.then34_crit_edge

lor.lhs.false10.if.then34_crit_edge:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then34

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %arrayidx16 = getelementptr %struct.adv748x_state, ptr %1, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx16, align 4
  %cmp17.not = icmp eq ptr %13, null
  br i1 %cmp17.not, label %lor.lhs.false18, label %lor.lhs.false14.if.then34_crit_edge

lor.lhs.false14.if.then34_crit_edge:              ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then34

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %arrayidx20 = getelementptr %struct.adv748x_state, ptr %1, i32 0, i32 3, i32 4
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx20, align 4
  %cmp21.not = icmp eq ptr %15, null
  br i1 %cmp21.not, label %lor.lhs.false22, label %lor.lhs.false18.if.then34_crit_edge

lor.lhs.false18.if.then34_crit_edge:              ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then34

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %arrayidx24 = getelementptr %struct.adv748x_state, ptr %1, i32 0, i32 3, i32 5
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx24, align 4
  %cmp25.not = icmp eq ptr %17, null
  br i1 %cmp25.not, label %lor.lhs.false26, label %lor.lhs.false22.if.then34_crit_edge

lor.lhs.false22.if.then34_crit_edge:              ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then34

lor.lhs.false26:                                  ; preds = %lor.lhs.false22
  %arrayidx28 = getelementptr %struct.adv748x_state, ptr %1, i32 0, i32 3, i32 6
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx28, align 4
  %cmp29.not = icmp eq ptr %19, null
  br i1 %cmp29.not, label %lor.lhs.false30, label %lor.lhs.false26.if.then34_crit_edge

lor.lhs.false26.if.then34_crit_edge:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then34

lor.lhs.false30:                                  ; preds = %lor.lhs.false26
  %arrayidx32 = getelementptr %struct.adv748x_state, ptr %1, i32 0, i32 3, i32 7
  %20 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx32, align 4
  %cmp33.not = icmp eq ptr %21, null
  br i1 %cmp33.not, label %lor.lhs.false30.if.end49_crit_edge, label %lor.lhs.false30.if.then34_crit_edge

lor.lhs.false30.if.then34_crit_edge:              ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then34

lor.lhs.false30.if.end49_crit_edge:               ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.then34:                                        ; preds = %lor.lhs.false30.if.then34_crit_edge, %lor.lhs.false26.if.then34_crit_edge, %lor.lhs.false22.if.then34_crit_edge, %lor.lhs.false18.if.then34_crit_edge, %lor.lhs.false14.if.then34_crit_edge, %lor.lhs.false10.if.then34_crit_edge, %lor.lhs.false.if.then34_crit_edge, %do.end.if.then34_crit_edge
  %sd35 = getelementptr inbounds %struct.adv748x_state, ptr %1, i32 0, i32 7, i32 2
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 4
  %txb = getelementptr inbounds %struct.adv748x_state, ptr %23, i32 0, i32 9
  %cmp37 = icmp eq ptr %add.ptr, %txb
  %v4l2_dev1.i = getelementptr inbounds %struct.adv748x_state, ptr %1, i32 0, i32 7, i32 2, i32 5
  %24 = ptrtoint ptr %v4l2_dev1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %v4l2_dev1.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then34.if.end4.i_crit_edge

if.then34.if.end4.i_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.then.i:                                        ; preds = %if.then34
  %v4l2_dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %26 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %v4l2_dev, align 4
  %call.i = tail call i32 @v4l2_device_register_subdev(ptr noundef %27, ptr noundef %sd35) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end4.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %if.then34.if.end4.i_crit_edge
  %cond.i = zext i1 %cmp37 to i32
  %call8.i = tail call i32 @media_create_pad_link(ptr noundef %sd35, i16 noundef zeroext 8, ptr noundef %sd, i16 noundef zeroext 0, i32 noundef %cond.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  %28 = and i1 %cmp37, %tobool9.not.i
  br i1 %28, label %adv748x_csi2_register_link.exit.thread, label %adv748x_csi2_register_link.exit

adv748x_csi2_register_link.exit.thread:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  %src14.i = getelementptr i8, ptr %sd, i32 -4
  %29 = ptrtoint ptr %src14.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %sd35, ptr %src14.i, align 4
  br label %if.end41

adv748x_csi2_register_link.exit:                  ; preds = %if.end4.i
  br i1 %tobool9.not.i, label %adv748x_csi2_register_link.exit.if.end41_crit_edge, label %adv748x_csi2_register_link.exit.cleanup_crit_edge

adv748x_csi2_register_link.exit.cleanup_crit_edge: ; preds = %adv748x_csi2_register_link.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

adv748x_csi2_register_link.exit.if.end41_crit_edge: ; preds = %adv748x_csi2_register_link.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.end41:                                         ; preds = %adv748x_csi2_register_link.exit.if.end41_crit_edge, %adv748x_csi2_register_link.exit.thread
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  %txb43 = getelementptr inbounds %struct.adv748x_state, ptr %31, i32 0, i32 9
  %cmp44 = icmp eq ptr %add.ptr, %txb43
  br i1 %cmp44, label %if.then45, label %if.end41.if.end49_crit_edge

if.end41.if.end49_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  %tx47 = getelementptr inbounds %struct.adv748x_state, ptr %1, i32 0, i32 7, i32 4
  %32 = ptrtoint ptr %tx47 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr, ptr %tx47, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %if.end41.if.end49_crit_edge, %lor.lhs.false30.if.end49_crit_edge
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 4
  %txb51 = getelementptr inbounds %struct.adv748x_state, ptr %34, i32 0, i32 9
  %cmp52 = icmp eq ptr %add.ptr, %txb51
  br i1 %cmp52, label %if.end49.cleanup_crit_edge, label %lor.lhs.false53

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false53:                                  ; preds = %if.end49
  %arrayidx55 = getelementptr %struct.adv748x_state, ptr %1, i32 0, i32 3, i32 8
  %35 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx55, align 4
  %cmp56.not = icmp eq ptr %36, null
  br i1 %cmp56.not, label %lor.lhs.false53.cleanup_crit_edge, label %if.end58

lor.lhs.false53.cleanup_crit_edge:                ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end58:                                         ; preds = %lor.lhs.false53
  %sd60 = getelementptr inbounds %struct.adv748x_state, ptr %1, i32 0, i32 6, i32 2
  %v4l2_dev1.i101 = getelementptr inbounds %struct.adv748x_state, ptr %1, i32 0, i32 6, i32 2, i32 5
  %37 = ptrtoint ptr %v4l2_dev1.i101 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %v4l2_dev1.i101, align 4
  %tobool.not.i102 = icmp eq ptr %38, null
  br i1 %tobool.not.i102, label %if.then.i105, label %if.end58.if.end4.i109_crit_edge

if.end58.if.end4.i109_crit_edge:                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i109

if.then.i105:                                     ; preds = %if.end58
  %v4l2_dev59 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %39 = ptrtoint ptr %v4l2_dev59 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %v4l2_dev59, align 4
  %call.i103 = tail call i32 @v4l2_device_register_subdev(ptr noundef %40, ptr noundef %sd60) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool2.not.i104 = icmp eq i32 %call.i103, 0
  br i1 %tobool2.not.i104, label %if.then.i105.if.end4.i109_crit_edge, label %if.then.i105.cleanup_crit_edge

if.then.i105.cleanup_crit_edge:                   ; preds = %if.then.i105
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i105.if.end4.i109_crit_edge:              ; preds = %if.then.i105
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i109

if.end4.i109:                                     ; preds = %if.then.i105.if.end4.i109_crit_edge, %if.end58.if.end4.i109_crit_edge
  %call8.i107 = tail call i32 @media_create_pad_link(ptr noundef %sd60, i16 noundef zeroext 1, ptr noundef %sd, i16 noundef zeroext 0, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i107)
  %tobool9.not.i108 = icmp eq i32 %call8.i107, 0
  br i1 %tobool9.not.i108, label %if.end64, label %if.end4.i109.cleanup_crit_edge

if.end4.i109.cleanup_crit_edge:                   ; preds = %if.end4.i109
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end64:                                         ; preds = %if.end4.i109
  call void @__sanitizer_cov_trace_pc() #6
  %src14.i110 = getelementptr i8, ptr %sd, i32 -4
  %41 = ptrtoint ptr %src14.i110 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %sd60, ptr %src14.i110, align 4
  %tx66 = getelementptr inbounds %struct.adv748x_state, ptr %1, i32 0, i32 6, i32 6
  %42 = ptrtoint ptr %tx66 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr, ptr %tx66, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.end4.i109.cleanup_crit_edge, %if.then.i105.cleanup_crit_edge, %lor.lhs.false53.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %adv748x_csi2_register_link.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end64 ], [ %call8.i, %adv748x_csi2_register_link.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false53.cleanup_crit_edge ], [ 0, %if.end49.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call8.i107, %if.end4.i109.cleanup_crit_edge ], [ %call.i103, %if.then.i105.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adv748x_csi2_s_ctrl(ptr nocapture noundef readonly %ctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10422530, i32 %1)
  %cond = icmp eq i32 %1, 10422530
  %. = select i1 %cond, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/adv748x/adv748x-csi2.c", i32 317, i32 21}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/adv748x/adv748x-csi2.c", i32 317, i32 29}
!4 = !{ptr @adv748x_csi2_ops, !5, !"adv748x_csi2_ops", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/adv748x/adv748x-csi2.c", i32 256, i32 37}
!6 = !{ptr @adv748x_csi2_video_ops, !7, !"adv748x_csi2_video_ops", i1 false, i1 false}
!7 = !{!"../drivers/media/i2c/adv748x/adv748x-csi2.c", i32 131, i32 43}
!8 = !{ptr @adv748x_csi2_pad_ops, !9, !"adv748x_csi2_pad_ops", i1 false, i1 false}
!9 = !{!"../drivers/media/i2c/adv748x/adv748x-csi2.c", i32 246, i32 41}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!12 = !{ptr @adv748x_csi2_internal_ops, !13, !"adv748x_csi2_internal_ops", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/adv748x/adv748x-csi2.c", i32 111, i32 46}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/adv748x/adv748x-csi2.c", i32 74, i32 2}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @adv748x_csi2_registered.__UNIQUE_ID_ddebug292, !15, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!20 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @adv748x_csi2_init_controls._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/adv748x/adv748x-csi2.c", i32 292, i32 2}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @adv748x_csi2_ctrl_ops, !26, !"adv748x_csi2_ctrl_ops", i1 false, i1 false}
!26 = !{!"../drivers/media/i2c/adv748x/adv748x-csi2.c", i32 285, i32 35}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{i64 2148960003, i64 2148960008, i64 2148960021, i64 2148960065, i64 2148960099, i64 2148960120}
