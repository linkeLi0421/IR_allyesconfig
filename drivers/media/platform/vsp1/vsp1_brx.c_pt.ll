; ModuleID = '/llk/IR_all_yes/drivers/media/platform/vsp1/vsp1_brx.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_brx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vsp1_entity_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vsp1_brx = type { %struct.vsp1_entity, i32, %struct.v4l2_ctrl_handler, [5 x %struct.anon.95], i32 }
%struct.vsp1_entity = type { ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, i32, ptr, ptr, i32, %struct.v4l2_subdev, ptr, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.95 = type { ptr }
%struct.vsp1_device = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, [5 x ptr], ptr, [3 x ptr], [2 x ptr], [4 x ptr], %struct.list_head, %struct.list_head, %struct.v4l2_device, %struct.media_device, %struct.media_entity_operations, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.vsp1_device_info = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.vsp1_pipeline = type { %struct.media_pipeline, %struct.spinlock, i32, %struct.wait_queue_head, ptr, %struct.mutex, %struct.kref, i32, i32, i32, i32, [5 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i8, i8, i32, ptr, ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vsp1_rwpf = type { %struct.vsp1_entity, %struct.v4l2_ctrl_handler, ptr, i32, i32, %struct.v4l2_pix_format_mplane, ptr, i32, i32, i32, i32, %struct.anon.97, %struct.vsp1_rwpf_memory, i8, ptr }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.96, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.96 = type { i8 }
%struct.anon.97 = type { %struct.spinlock, %struct.anon.98, i32, i32, i8 }
%struct.anon.98 = type { ptr, ptr, ptr }
%struct.vsp1_rwpf_memory = type { [3 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@brx_entity_ops = internal constant { %struct.vsp1_entity_operations, [40 x i8] } { %struct.vsp1_entity_operations { ptr null, ptr @brx_configure_stream, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bru\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"brs\00", [28 x i8] zeroinitializer }, align 32
@brx_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brx_pad_ops }, [32 x i8] zeroinitializer }, align 32
@vsp1_brx_create._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"vsp1_brx:439:(&brx->ctrls)->_lock\00", [62 x i8] zeroinitializer }, align 32
@brx_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @brx_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@vsp1_brx_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 448, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: failed to initialize controls\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vsp1_brx_create\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/platform/vsp1/vsp1_brx.c\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vsp1_brx_create._entry_ptr = internal global ptr @vsp1_brx_create._entry, section ".printk_index", align 4
@brx_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @vsp1_entity_init_cfg, ptr @brx_enum_mbus_code, ptr @brx_enum_frame_size, ptr null, ptr @vsp1_subdev_get_pad_format, ptr @brx_set_format, ptr @brx_get_selection, ptr @brx_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@brx_enum_mbus_code.codes = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 4109, i32 8215], [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4109, i64 8215]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 4109, i64 8215]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 258]
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"brx_entity_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 401, i32 44 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 427, i32 10 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 430, i32 10 }
@___asan_gen_.20 = private unnamed_addr constant [8 x i8] c"brx_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 278, i32 37 }
@___asan_gen_.23 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 439, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"brx_ctrl_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 53, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 448, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [12 x i8] c"brx_pad_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 268, i32 41 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"codes\00", align 1
@___asan_gen_.54 = private constant [42 x i8] c"../drivers/media/platform/vsp1/vsp1_brx.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 71, i32 28 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 1034, i32 6 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @vsp1_brx_create._entry, ptr @vsp1_brx_create._entry_ptr, ptr @brx_entity_ops, ptr @.str, ptr @.str.1, ptr @brx_ops, ptr @vsp1_brx_create._key, ptr @.str.2, ptr @brx_ctrl_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @brx_pad_ops, ptr @brx_enum_mbus_code.codes, ptr @.str.8], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brx_entity_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brx_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_brx_create._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brx_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_brx_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brx_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brx_enum_mbus_code.codes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vsp1_brx_create(ptr noundef %vsp1, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsp1, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 564, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp2 = icmp eq i32 %type, 1
  %cond = select i1 %cmp2, i32 11264, i32 14592
  %base = getelementptr inbounds %struct.vsp1_brx, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %base, align 4
  %ops = getelementptr inbounds %struct.vsp1_entity, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @brx_entity_ops, ptr %ops, align 4
  %type4 = getelementptr inbounds %struct.vsp1_entity, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %type4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %type, ptr %type4, align 4
  br i1 %cmp2, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %info = getelementptr inbounds %struct.vsp1_device, ptr %vsp1, i32 0, i32 1
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info, align 4
  %num_bru_inputs = getelementptr inbounds %struct.vsp1_device_info, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %num_bru_inputs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_bru_inputs, align 4
  %add = add i32 %8, 1
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %num_pads.0 = phi i32 [ %add, %if.then6 ], [ 3, %if.end.if.end7_crit_edge ]
  %name.0 = phi ptr [ @.str, %if.then6 ], [ @.str.1, %if.end.if.end7_crit_edge ]
  %call9 = tail call i32 @vsp1_entity_init(ptr noundef %vsp1, ptr noundef nonnull %call.i, ptr noundef nonnull %name.0, i32 noundef %num_pads.0, ptr noundef nonnull @brx_ops, i32 noundef 16385) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %9 = inttoptr i32 %call9 to ptr
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %ctrls = getelementptr inbounds %struct.vsp1_brx, ptr %call.i, i32 0, i32 2
  %call14 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls, i32 noundef 1, ptr noundef nonnull @vsp1_brx_create._key, ptr noundef nonnull @.str.2) #6
  %call16 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @brx_ctrl_ops, i32 noundef 9963811, i64 noundef 0, i64 noundef 16777215, i64 noundef 1, i64 noundef 0) #6
  %bgcolor = getelementptr inbounds %struct.vsp1_brx, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %bgcolor to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %bgcolor, align 4
  %ctrl_handler = getelementptr inbounds %struct.vsp1_entity, ptr %call.i, i32 0, i32 13, i32 8
  %11 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ctrls, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.vsp1_brx, ptr %call.i, i32 0, i32 2, i32 9
  %12 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end13.cleanup_crit_edge, label %do.end

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vsp1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef nonnull %name.0) #9
  %16 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %error, align 4
  tail call void @vsp1_entity_destroy(ptr noundef nonnull %call.i) #6
  %18 = inttoptr i32 %17 to ptr
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end13.cleanup_crit_edge, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %9, %if.then11 ], [ %18, %do.end ], [ %call.i, %if.end13.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_entity_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brx_configure_stream(ptr noundef %entity, ptr nocapture noundef readonly %pipe, ptr nocapture noundef readnone %dl, ptr noundef %dlb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 14
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %source_pad = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 9
  %2 = ptrtoint ptr %source_pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %source_pad, align 4
  %call4 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %entity, ptr noundef %1, i32 noundef %3) #6
  %output = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 12
  %4 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %output, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %flags7 = getelementptr inbounds %struct.vsp1_rwpf, ptr %5, i32 0, i32 5, i32 7
  %6 = ptrtoint ptr %flags7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags7, align 1
  %8 = and i8 %7, 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 28
  %11 = xor i32 %10, 268435456
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %11, %cond.true ], [ 268435456, %entry.cond.end_crit_edge ]
  %base.i = getelementptr inbounds %struct.vsp1_brx, ptr %entity, i32 0, i32 1
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base.i, align 4
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %13, i32 noundef %cond) #6
  %14 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call4, align 4
  %shl = shl i32 %15, 16
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call4, i32 0, i32 1
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  %or = or i32 %shl, %17
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base.i, align 4
  %add.i = add i32 %19, 4
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i, i32 noundef %or) #6
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base.i, align 4
  %add.i110 = add i32 %21, 8
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i110, i32 noundef 0) #6
  %bgcolor = getelementptr inbounds %struct.vsp1_brx, ptr %entity, i32 0, i32 4
  %22 = ptrtoint ptr %bgcolor to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bgcolor, align 4
  %or11 = or i32 %23, -16777216
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %base.i, align 4
  %add.i112 = add i32 %25, 12
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i112, i32 noundef %or11) #6
  %type = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 2
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp = icmp eq i32 %27, 1
  br i1 %cmp, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %base.i, align 4
  %add.i114 = add i32 %29, 48
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i114, i32 noundef 1048576) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %30 = ptrtoint ptr %source_pad to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %source_pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp15120.not = icmp eq i32 %31, 0
  br i1 %cmp15120.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %if.end29.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0121 = phi i32 [ %add, %if.end29.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vsp1_brx, ptr %entity, i32 0, i32 3, i32 %i.0121
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %tobool17.not = icmp eq ptr %33, null
  br i1 %tobool17.not, label %for.body.if.end29_crit_edge, label %if.then18

for.body.if.end29_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %flags24 = getelementptr inbounds %struct.vsp1_rwpf, ptr %33, i32 0, i32 5, i32 7
  %34 = ptrtoint ptr %flags24 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %flags24, align 1
  %36 = and i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool27 = icmp ne i8 %36, 0
  br label %if.end29

if.end29:                                         ; preds = %if.then18, %for.body.if.end29_crit_edge
  %premultiplied.0.off0 = phi i1 [ %tobool27, %if.then18 ], [ false, %for.body.if.end29_crit_edge ]
  %ctrl.0 = phi i32 [ -2147483648, %if.then18 ], [ 0, %for.body.if.end29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0121)
  %cmp30 = icmp eq i32 %i.0121, 0
  %or33 = or i32 %ctrl.0, 4194304
  %spec.select = select i1 %cmp30, i32 %or33, i32 %ctrl.0
  %37 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp36 = icmp eq i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0121)
  %cmp38 = icmp eq i32 %i.0121, 1
  %or.cond = select i1 %cmp36, i1 %cmp38, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0121)
  %cmp41 = icmp ult i32 %i.0121, 4
  %add = add nuw i32 %i.0121, 1
  %cond46 = select i1 %cmp41, i32 %i.0121, i32 %add
  %shl47 = shl i32 %cond46, 16
  %or48 = select i1 %or.cond, i32 0, i32 %shl47
  %ctrl.2 = or i32 %or48, %spec.select
  %mul = shl i32 %i.0121, 3
  %add50 = add i32 %mul, 16
  %cond53 = select i1 %cmp41, i32 0, i32 4
  %add54 = or i32 %add50, %cond53
  %39 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %base.i, align 4
  %add.i116 = add i32 %add54, %40
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i116, i32 noundef %ctrl.2) #6
  %add56 = add i32 %mul, 20
  %add60 = add i32 %add56, %cond53
  %spec.select122 = select i1 %premultiplied.0.off0, i32 875823359, i32 842268927
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %base.i, align 4
  %add.i118 = add i32 %add60, %42
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i118, i32 noundef %spec.select122) #6
  %43 = ptrtoint ptr %source_pad to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %source_pad, align 4
  %cmp15 = icmp ult i32 %add, %44
  br i1 %cmp15, label %if.end29.for.body_crit_edge, label %if.end29.for.end_crit_edge

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end29.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_format(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_body_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init_cfg(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brx_enum_mbus_code(ptr noundef %subdev, ptr noundef %sd_state, ptr noundef %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vsp1_subdev_enum_mbus_code(ptr noundef %subdev, ptr noundef %sd_state, ptr noundef %code, ptr noundef nonnull @brx_enum_mbus_code.codes, i32 noundef 2) #6
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @brx_enum_frame_size(ptr nocapture noundef readnone %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end.return_crit_edge [
    i32 4109, label %if.end.if.end4_crit_edge
    i32 8215, label %if.end.if.end4_crit_edge11
  ]

if.end.if.end4_crit_edge11:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %if.end.if.end4_crit_edge11
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %5 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %6 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8190, ptr %max_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %7 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %8 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8190, ptr %max_height, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_get_pad_format(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brx_set_format(ptr noundef %subdev, ptr noundef %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %subdev, i32 -60
  %lock = getelementptr i8, ptr %subdev, i32 200
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  %call2 = tail call ptr @vsp1_entity_get_pad_config(ptr noundef %add.ptr.i, ptr noundef %sd_state, i32 noundef %1) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end:                                           ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  %format3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cond27.i = icmp eq i32 %3, 0
  br i1 %cond27.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.end
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %5, label %if.then.i [
    i32 4109, label %sw.bb.i.brx_try_format.exit_crit_edge
    i32 8215, label %sw.bb.i.brx_try_format.exit_crit_edge58
  ]

sw.bb.i.brx_try_format.exit_crit_edge58:          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brx_try_format.exit

sw.bb.i.brx_try_format.exit_crit_edge:            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brx_try_format.exit

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8215, ptr %code.i, align 4
  br label %brx_try_format.exit

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %add.ptr.i, ptr noundef nonnull %call2, i32 noundef 0) #6
  %code4.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %code4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %code4.i, align 4
  %code5.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %code5.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %code5.i, align 4
  br label %brx_try_format.exit

brx_try_format.exit:                              ; preds = %sw.default.i, %if.then.i, %sw.bb.i.brx_try_format.exit_crit_edge, %sw.bb.i.brx_try_format.exit_crit_edge58
  %11 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %format3, align 4
  %13 = tail call i32 @llvm.umax.i32(i32 %12, i32 1) #6
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 8190) #6
  %15 = ptrtoint ptr %format3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %format3, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height.i, align 4
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 1) #6
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 8190) #6
  %20 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %height.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %field.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8, ptr %colorspace.i, align 4
  %23 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pad, align 4
  %call6 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %add.ptr.i, ptr noundef nonnull %call2, i32 noundef %24) #6
  %25 = call ptr @memcpy(ptr %call6, ptr %format3, i32 48)
  %26 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pad, align 4
  %source_pad = getelementptr i8, ptr %subdev, i32 -16
  %28 = ptrtoint ptr %source_pad to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %source_pad, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp.not = icmp eq i32 %27, %29
  br i1 %cmp.not, label %brx_try_format.exit.if.end15_crit_edge, label %if.then10

brx_try_format.exit.if.end15_crit_edge:           ; preds = %brx_try_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then10:                                        ; preds = %brx_try_format.exit
  %num_pads.i.i = getelementptr i8, ptr %subdev, i32 32
  %30 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %27, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then10.brx_get_compose.exit_crit_edge, label %do.end.i.i, !prof !36

if.then10.brx_get_compose.exit_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %brx_get_compose.exit

do.end.i.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1034, i32 noundef 9, ptr noundef null) #6
  br label %brx_get_compose.exit

brx_get_compose.exit:                             ; preds = %do.end.i.i, %if.then10.brx_get_compose.exit_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %27, %if.then10.brx_get_compose.exit_crit_edge ]
  %32 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call2, align 4
  %try_compose.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %33, i32 %spec.select.i.i, i32 2
  %34 = ptrtoint ptr %try_compose.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %try_compose.i.i, align 4
  %top = getelementptr %struct.v4l2_subdev_pad_config, ptr %33, i32 %spec.select.i.i, i32 2, i32 1
  %35 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %top, align 4
  %36 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call6, align 4
  %width13 = getelementptr %struct.v4l2_subdev_pad_config, ptr %33, i32 %spec.select.i.i, i32 2, i32 2
  %38 = ptrtoint ptr %width13 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %width13, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call6, i32 0, i32 1
  %39 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %height, align 4
  %height14 = getelementptr %struct.v4l2_subdev_pad_config, ptr %33, i32 %spec.select.i.i, i32 2, i32 3
  %41 = ptrtoint ptr %height14 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %height14, align 4
  %42 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr = load i32, ptr %pad, align 4
  br label %if.end15

if.end15:                                         ; preds = %brx_get_compose.exit, %brx_try_format.exit.if.end15_crit_edge
  %43 = phi i32 [ %.pr, %brx_get_compose.exit ], [ %27, %brx_try_format.exit.if.end15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp17 = icmp eq i32 %43, 0
  br i1 %cmp17, label %for.cond.preheader, label %if.end15.done_crit_edge

if.end15.done_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

for.cond.preheader:                               ; preds = %if.end15
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.057 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %call23 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %add.ptr.i, ptr noundef nonnull %call2, i32 noundef %i.057) #6
  %44 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %code, align 4
  %code25 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call23, i32 0, i32 2
  %46 = ptrtoint ptr %code25 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %code25, align 4
  %inc = add i32 %i.057, 1
  %47 = ptrtoint ptr %source_pad to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %source_pad, align 4
  %cmp21.not = icmp ugt i32 %inc, %48
  br i1 %cmp21.not, label %for.body.done_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.done_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

done:                                             ; preds = %for.body.done_crit_edge, %if.end15.done_crit_edge, %entry.done_crit_edge
  %ret.0 = phi i32 [ 0, %if.end15.done_crit_edge ], [ -22, %entry.done_crit_edge ], [ 0, %for.body.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brx_get_selection(ptr noundef %subdev, ptr noundef %sd_state, ptr nocapture noundef %sel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %subdev, i32 -60
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  %source_pad = getelementptr i8, ptr %subdev, i32 -16
  %2 = ptrtoint ptr %source_pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %source_pad, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 258, label %sw.bb
    i32 256, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %7 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %top, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %9 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8190, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8190, ptr %height, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  %11 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sel, align 4
  %call6 = tail call ptr @vsp1_entity_get_pad_config(ptr noundef %add.ptr.i, ptr noundef %sd_state, i32 noundef %12) #6
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %sw.bb4.cleanup_crit_edge, label %if.end8

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %sw.bb4
  %lock = getelementptr i8, ptr %subdev, i32 200
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %r10 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %13 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr i8, ptr %subdev, i32 32
  %15 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %14, %conv.i.i
  br i1 %cmp.not.i.i, label %if.end8.brx_get_compose.exit_crit_edge, label %do.end.i.i, !prof !36

if.end8.brx_get_compose.exit_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %brx_get_compose.exit

do.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1034, i32 noundef 9, ptr noundef null) #6
  br label %brx_get_compose.exit

brx_get_compose.exit:                             ; preds = %do.end.i.i, %if.end8.brx_get_compose.exit_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %14, %if.end8.brx_get_compose.exit_crit_edge ]
  %17 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call6, align 4
  %try_compose.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %18, i32 %spec.select.i.i, i32 2
  %19 = call ptr @memcpy(ptr %r10, ptr %try_compose.i.i, i32 16)
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %brx_get_compose.exit, %sw.bb4.cleanup_crit_edge, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %brx_get_compose.exit ], [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb4.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brx_set_selection(ptr noundef %subdev, ptr noundef %sd_state, ptr nocapture noundef %sel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %subdev, i32 -60
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  %source_pad = getelementptr i8, ptr %subdev, i32 -16
  %2 = ptrtoint ptr %source_pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %source_pad, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %5)
  %cmp1.not = icmp eq i32 %5, 256
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %lock = getelementptr i8, ptr %subdev, i32 200
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %6 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sel, align 4
  %call6 = tail call ptr @vsp1_entity_get_pad_config(ptr noundef %add.ptr.i, ptr noundef %sd_state, i32 noundef %7) #6
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end3.done_crit_edge, label %if.end8

if.end3.done_crit_edge:                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end8:                                          ; preds = %if.end3
  %8 = ptrtoint ptr %source_pad to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %source_pad, align 4
  %call12 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %add.ptr.i, ptr noundef nonnull %call6, i32 noundef %9) #6
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %10 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %r, align 4
  %12 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call12, align 4
  %sub = add i32 %13, -1
  %14 = tail call i32 @llvm.umin.i32(i32 %11, i32 %sub)
  %15 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %top, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call12, i32 0, i32 1
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  %sub29 = add i32 %19, -1
  %20 = tail call i32 @llvm.umin.i32(i32 %17, i32 %sub29)
  %21 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %top, align 4
  %22 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pad, align 4
  %call40 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %add.ptr.i, ptr noundef nonnull %call6, i32 noundef %23) #6
  %24 = ptrtoint ptr %call40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call40, align 4
  %width43 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %26 = ptrtoint ptr %width43 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %width43, align 4
  %height44 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call40, i32 0, i32 1
  %27 = ptrtoint ptr %height44 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height44, align 4
  %height46 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %29 = ptrtoint ptr %height46 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %height46, align 4
  %30 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr i8, ptr %subdev, i32 32
  %32 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %31, %conv.i.i
  br i1 %cmp.not.i.i, label %if.end8.brx_get_compose.exit_crit_edge, label %do.end.i.i, !prof !36

if.end8.brx_get_compose.exit_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %brx_get_compose.exit

do.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1034, i32 noundef 9, ptr noundef null) #6
  br label %brx_get_compose.exit

brx_get_compose.exit:                             ; preds = %do.end.i.i, %if.end8.brx_get_compose.exit_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %31, %if.end8.brx_get_compose.exit_crit_edge ]
  %34 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call6, align 4
  %try_compose.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %35, i32 %spec.select.i.i, i32 2
  %36 = call ptr @memcpy(ptr %try_compose.i.i, ptr %r, i32 16)
  br label %done

done:                                             ; preds = %brx_get_compose.exit, %if.end3.done_crit_edge
  %ret.0 = phi i32 [ 0, %brx_get_compose.exit ], [ -22, %if.end3.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %done ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_enum_mbus_code(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @brx_s_ctrl(ptr nocapture noundef readonly %ctrl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963811, i32 %1)
  %cond = icmp eq i32 %1, 9963811
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %bgcolor = getelementptr i8, ptr %3, i32 204
  %6 = ptrtoint ptr %bgcolor to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %bgcolor, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !14, !15, !17, !19, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/vsp1/vsp1_brx.c", i32 427, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/vsp1/vsp1_brx.c", i32 430, i32 10}
!4 = !{ptr @vsp1_brx_create._key, !5, !"_key", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/vsp1/vsp1_brx.c", i32 439, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/vsp1/vsp1_brx.c", i32 448, i32 3}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @vsp1_brx_create._entry, !8, !"_entry", i1 false, i1 false}
!14 = !{ptr @vsp1_brx_create._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @brx_entity_ops, !16, !"brx_entity_ops", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/vsp1/vsp1_brx.c", i32 401, i32 44}
!17 = !{ptr @brx_ops, !18, !"brx_ops", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/vsp1/vsp1_brx.c", i32 278, i32 37}
!19 = !{ptr @brx_pad_ops, !20, !"brx_pad_ops", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/vsp1/vsp1_brx.c", i32 268, i32 41}
!21 = !{ptr @brx_enum_mbus_code.codes, !22, !"codes", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/vsp1/vsp1_brx.c", i32 71, i32 28}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/media/v4l2-subdev.h", i32 1034, i32 6}
!25 = !{ptr @brx_ctrl_ops, !26, !"brx_ctrl_ops", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/vsp1/vsp1_brx.c", i32 53, i32 35}
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
