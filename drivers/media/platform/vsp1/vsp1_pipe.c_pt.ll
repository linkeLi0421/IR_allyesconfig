; ModuleID = '/llk/IR_all_yes/drivers/media/platform/vsp1/vsp1_pipe.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_pipe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vsp1_format_info = type { i32, i32, i32, i32, i32, [3 x i32], i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vsp1_device = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, [5 x ptr], ptr, [3 x ptr], [2 x ptr], [4 x ptr], %struct.list_head, %struct.list_head, %struct.v4l2_device, %struct.media_device, %struct.media_entity_operations, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.vsp1_device_info = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.vsp1_pipeline = type { %struct.media_pipeline, %struct.spinlock, i32, %struct.wait_queue_head, ptr, %struct.mutex, %struct.kref, i32, i32, i32, i32, [5 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i8, i8, i32, ptr, ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vsp1_entity = type { ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, i32, ptr, ptr, i32, %struct.v4l2_subdev, ptr, %struct.mutex }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.vsp1_route = type { i32, i32, i32, [5 x i32], i32 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vsp1_rwpf = type { %struct.vsp1_entity, %struct.v4l2_ctrl_handler, ptr, i32, i32, %struct.v4l2_pix_format_mplane, ptr, i32, i32, i32, i32, %struct.anon.97, %struct.vsp1_rwpf_memory, i8, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.96, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.96 = type { i8 }
%struct.anon.97 = type { %struct.spinlock, %struct.anon.98, i32, i32, i8 }
%struct.anon.98 = type { ptr, ptr, ptr }
%struct.vsp1_rwpf_memory = type { [3 x i32] }
%struct.vsp1_entity_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }

@vsp1_video_formats = internal constant { [44 x %struct.vsp1_format_info], [512 x i8] } { [44 x %struct.vsp1_format_info] [%struct.vsp1_format_info { i32 826427218, i32 4109, i32 0, i32 15, i32 1, [3 x i32] [i32 8, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 842093121, i32 4109, i32 25, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 1 }, %struct.vsp1_format_info { i32 842093144, i32 4109, i32 1, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 842088786, i32 4109, i32 26, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 1 }, %struct.vsp1_format_info { i32 842094674, i32 4109, i32 2, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 842089025, i32 4109, i32 29, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 1 }, %struct.vsp1_format_info { i32 842089048, i32 4109, i32 29, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 842088775, i32 4109, i32 30, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 1 }, %struct.vsp1_format_info { i32 842094658, i32 4109, i32 30, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 892424769, i32 4109, i32 27, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 1 }, %struct.vsp1_format_info { i32 892424792, i32 4109, i32 4, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 892420434, i32 4109, i32 28, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 1 }, %struct.vsp1_format_info { i32 892426322, i32 4109, i32 5, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 892420673, i32 4109, i32 31, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 1 }, %struct.vsp1_format_info { i32 892420696, i32 4109, i32 31, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 892420418, i32 4109, i32 32, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 1 }, %struct.vsp1_format_info { i32 892426306, i32 4109, i32 32, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 1346520914, i32 4109, i32 6, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 861030210, i32 4109, i32 24, i32 15, i32 1, [3 x i32] [i32 24, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 859981650, i32 4109, i32 21, i32 15, i32 1, [3 x i32] [i32 24, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 875713089, i32 4109, i32 19, i32 12, i32 1, [3 x i32] [i32 32, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 1 }, %struct.vsp1_format_info { i32 875713112, i32 4109, i32 19, i32 12, i32 1, [3 x i32] [i32 32, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 875708754, i32 4109, i32 20, i32 12, i32 1, [3 x i32] [i32 32, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 1 }, %struct.vsp1_format_info { i32 875714642, i32 4109, i32 20, i32 12, i32 1, [3 x i32] [i32 32, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 875708993, i32 4109, i32 20, i32 15, i32 1, [3 x i32] [i32 32, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 1 }, %struct.vsp1_format_info { i32 875709016, i32 4109, i32 20, i32 15, i32 1, [3 x i32] [i32 32, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 875708738, i32 4109, i32 19, i32 15, i32 1, [3 x i32] [i32 32, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 1 }, %struct.vsp1_format_info { i32 875714626, i32 4109, i32 19, i32 15, i32 1, [3 x i32] [i32 32, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 861295432, i32 24577, i32 21, i32 15, i32 1, [3 x i32] [i32 24, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 878072648, i32 24577, i32 19, i32 15, i32 1, [3 x i32] [i32 32, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 1498831189, i32 8215, i32 71, i32 15, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 2, i32 1, i8 0 }, %struct.vsp1_format_info { i32 1498765654, i32 8215, i32 71, i32 15, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 1, i32 2, i32 1, i8 0 }, %struct.vsp1_format_info { i32 1448695129, i32 8215, i32 71, i32 15, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 1, i8 0, i32 2, i32 1, i8 0 }, %struct.vsp1_format_info { i32 1431918169, i32 8215, i32 71, i32 15, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 1, i8 1, i32 2, i32 1, i8 0 }, %struct.vsp1_format_info { i32 842091854, i32 8215, i32 66, i32 15, i32 2, [3 x i32] [i32 8, i32 16, i32 0], i8 0, i8 0, i32 2, i32 2, i8 0 }, %struct.vsp1_format_info { i32 825380174, i32 8215, i32 66, i32 15, i32 2, [3 x i32] [i32 8, i32 16, i32 0], i8 0, i8 1, i32 2, i32 2, i8 0 }, %struct.vsp1_format_info { i32 909200718, i32 8215, i32 65, i32 15, i32 2, [3 x i32] [i32 8, i32 16, i32 0], i8 0, i8 0, i32 2, i32 1, i8 0 }, %struct.vsp1_format_info { i32 825642318, i32 8215, i32 65, i32 15, i32 2, [3 x i32] [i32 8, i32 16, i32 0], i8 0, i8 1, i32 2, i32 1, i8 0 }, %struct.vsp1_format_info { i32 842091865, i32 8215, i32 76, i32 15, i32 3, [3 x i32] [i32 8, i32 8, i32 8], i8 0, i8 0, i32 2, i32 2, i8 0 }, %struct.vsp1_format_info { i32 825380185, i32 8215, i32 76, i32 15, i32 3, [3 x i32] [i32 8, i32 8, i32 8], i8 0, i8 1, i32 2, i32 2, i8 0 }, %struct.vsp1_format_info { i32 909200729, i32 8215, i32 75, i32 15, i32 3, [3 x i32] [i32 8, i32 8, i32 8], i8 0, i8 0, i32 2, i32 1, i8 0 }, %struct.vsp1_format_info { i32 825642329, i32 8215, i32 75, i32 15, i32 3, [3 x i32] [i32 8, i32 8, i32 8], i8 0, i8 1, i32 2, i32 1, i8 0 }, %struct.vsp1_format_info { i32 875711833, i32 8215, i32 74, i32 15, i32 3, [3 x i32] [i32 8, i32 8, i32 8], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 842288473, i32 8215, i32 74, i32 15, i32 3, [3 x i32] [i32 8, i32 8, i32 8], i8 0, i8 1, i32 1, i32 1, i8 0 }], [512 x i8] zeroinitializer }, align 32
@vsp1_pipeline_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&pipe->lock\00", [20 x i8] zeroinitializer }, align 32
@vsp1_pipeline_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&pipe->irqlock\00", [17 x i8] zeroinitializer }, align 32
@vsp1_pipeline_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&pipe->wq\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/platform/vsp1/vsp1_pipe.c\00", [56 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 861295432, i64 878072648, i64 1498765654]
@___asan_gen_.6 = private unnamed_addr constant [19 x i8] c"vsp1_video_formats\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 32, i32 38 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 277, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 278, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 279, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [43 x i8] c"../drivers/media/platform/vsp1/vsp1_pipe.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 337, i32 9 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @vsp1_video_formats, ptr @vsp1_pipeline_init.__key, ptr @.str, ptr @vsp1_pipeline_init.__key.1, ptr @.str.2, ptr @vsp1_pipeline_init.__key.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_video_formats to i32), i32 2112, i32 2624, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_pipeline_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_pipeline_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_pipeline_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vsp1_get_format_info(ptr nocapture noundef readonly %vsp1, i32 noundef %fourcc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.vsp1_device, ptr %vsp1, i32 0, i32 1
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %gen = getelementptr inbounds %struct.vsp1_device_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %entry.for.body.preheader_crit_edge, label %if.then

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

if.then:                                          ; preds = %entry
  %4 = zext i32 %fourcc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %fourcc, label %if.then.for.body.preheader_crit_edge [
    i32 1498765654, label %if.then.cleanup7_crit_edge
    i32 861295432, label %if.then.cleanup7_crit_edge13
    i32 878072648, label %if.then.cleanup7_crit_edge14
  ]

if.then.cleanup7_crit_edge14:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup7

if.then.cleanup7_crit_edge13:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup7

if.then.cleanup7_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup7

if.then.for.body.preheader_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 44
  br i1 %exitcond.not, label %for.cond.cleanup7_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup7_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup7

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.012 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [44 x %struct.vsp1_format_info], ptr @vsp1_video_formats, i32 0, i32 %i.012
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %fourcc)
  %cmp4 = icmp eq i32 %6, %fourcc
  br i1 %cmp4, label %for.body.cleanup7_crit_edge, label %for.cond

for.body.cleanup7_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup7

cleanup7:                                         ; preds = %for.body.cleanup7_crit_edge, %for.cond.cleanup7_crit_edge, %if.then.cleanup7_crit_edge, %if.then.cleanup7_crit_edge13, %if.then.cleanup7_crit_edge14
  %retval.2 = phi ptr [ null, %if.then.cleanup7_crit_edge ], [ null, %if.then.cleanup7_crit_edge13 ], [ null, %if.then.cleanup7_crit_edge14 ], [ null, %for.cond.cleanup7_crit_edge ], [ %arrayidx, %for.body.cleanup7_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsp1_pipeline_reset(ptr noundef %pipe) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %brx = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 13
  %0 = ptrtoint ptr %brx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %brx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.body.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %uglygep = getelementptr i8, ptr %1, i32 540
  %2 = call ptr @memset(ptr %uglygep, i32 0, i32 20)
  br label %if.end

if.end:                                           ; preds = %for.body.preheader, %entry.if.end_crit_edge
  %uglygep51 = getelementptr i8, ptr %pipe, i32 360
  %entities = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 19
  %3 = call ptr @memset(ptr %uglygep51, i32 0, i32 24)
  %4 = ptrtoint ptr %entities to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn48 = load ptr, ptr %entities, align 4
  %cmp13.not49 = icmp eq ptr %.pn48, %entities
  br i1 %cmp13.not49, label %if.end.for.end22_crit_edge, label %if.end.for.body14_crit_edge

if.end.for.body14_crit_edge:                      ; preds = %if.end
  br label %for.body14

if.end.for.end22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end22

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %if.end.for.body14_crit_edge
  %.pn50 = phi ptr [ %.pn, %for.body14.for.body14_crit_edge ], [ %.pn48, %if.end.for.body14_crit_edge ]
  %pipe15 = getelementptr i8, ptr %.pn50, i32 -12
  %5 = ptrtoint ptr %pipe15 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %pipe15, align 4
  %6 = ptrtoint ptr %.pn50 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn50, align 4
  %cmp13.not = icmp eq ptr %.pn, %entities
  br i1 %cmp13.not, label %for.body14.for.end22_crit_edge, label %for.body14.for.body14_crit_edge

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body14

for.body14.for.end22_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end22

for.end22:                                        ; preds = %for.body14.for.end22_crit_edge, %if.end.for.end22_crit_edge
  %7 = ptrtoint ptr %entities to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entities, ptr %entities, align 4
  %prev.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 19, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entities, ptr %prev.i, align 4
  %state = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 2
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %state, align 4
  %buffers_ready = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 8
  %10 = ptrtoint ptr %buffers_ready to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %buffers_ready, align 4
  %num_inputs = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 10
  %11 = ptrtoint ptr %num_inputs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %num_inputs, align 4
  %12 = call ptr @memset(ptr %brx, i32 0, i32 20)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsp1_pipeline_init(ptr noundef %pipe) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @vsp1_pipeline_init.__key) #6
  %irqlock = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %irqlock, ptr noundef nonnull @.str.2, ptr noundef nonnull @vsp1_pipeline_init.__key.1, i16 noundef signext 3) #6
  %wq = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.4, ptr noundef nonnull @vsp1_pipeline_init.__key.3) #6
  %kref = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #6
  %0 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %kref, align 4
  %entities = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 19
  %1 = ptrtoint ptr %entities to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entities, ptr %entities, align 4
  %prev.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 19, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entities, ptr %prev.i, align 4
  %state = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 2
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %state, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsp1_pipeline_run(ptr nocapture noundef %pipe) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %output = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 12
  %2 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %output, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %index = getelementptr inbounds %struct.vsp1_entity, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %mul = shl i32 %7, 2
  %mmio.i = getelementptr inbounds %struct.vsp1_device, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #6, !srcloc !23
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %buffers_ready = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 8
  %11 = ptrtoint ptr %buffers_ready to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %buffers_ready, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @vsp1_pipeline_stopped(ptr noundef %pipe) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irqlock = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #6
  %state = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5 = icmp eq i32 %1, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call2) #6
  ret i1 %cmp5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vsp1_pipeline_stop(ptr noundef %pipe) local_unnamed_addr #3 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %output = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 12
  %0 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %output, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %lif = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 16
  %4 = ptrtoint ptr %lif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lif, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.body14, label %if.then

if.then:                                          ; preds = %entry
  %index = getelementptr inbounds %struct.vsp1_entity, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %call = tail call i32 @vsp1_reset_wpf(ptr noundef %3, i32 noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %do.body6, label %if.then.if.end83_crit_edge

if.then.if.end83_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

do.body6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %irqlock = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 1
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #6
  %state = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 2
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call9) #6
  br label %if.end83

do.body14:                                        ; preds = %entry
  %irqlock20 = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 1
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock20) #6
  %state27 = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 2
  %9 = ptrtoint ptr %state27 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp28 = icmp eq i32 %10, 1
  br i1 %cmp28, label %if.then30, label %do.body14.if.end32_crit_edge

do.body14.if.end32_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then30:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %state27 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %state27, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %do.body14.if.end32_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock20, i32 noundef %call22) #6
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 338) #6
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock20) #6
  %12 = ptrtoint ptr %state27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp5.i = icmp eq i32 %13, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock20, i32 noundef %call2.i) #6
  br i1 %cmp5.i, label %if.end32.if.end83_crit_edge, label %if.then52

if.end32.if.end83_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

if.then52:                                        ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %14 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %wq = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then52
  %__ret53.0 = phi i32 [ 50, %if.then52 ], [ %call76, %cleanup ]
  %call55 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %call2.i188 = call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock20) #6
  %15 = ptrtoint ptr %state27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp5.i190 = icmp eq i32 %16, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock20, i32 noundef %call2.i188) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret53.0)
  %tobool62.not = icmp eq i32 %__ret53.0, 0
  %17 = select i1 %cmp5.i190, i1 %tobool62.not, i1 false
  %__ret53.1 = select i1 %17, i32 1, i32 %__ret53.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret53.1)
  %tobool69.not = icmp eq i32 %__ret53.1, 0
  %18 = select i1 %cmp5.i190, i1 true, i1 %tobool69.not
  br i1 %18, label %if.end79, label %cleanup

cleanup:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %call76 = call i32 @schedule_timeout(i32 noundef %__ret53.1) #6
  br label %for.cond

if.end79:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  call void @finish_wait(ptr noundef %wq, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  %spec.select = select i1 %tobool69.not, i32 -110, i32 0
  br label %if.end83

if.end83:                                         ; preds = %if.end79, %if.end32.if.end83_crit_edge, %do.body6, %if.then.if.end83_crit_edge
  %ret.0 = phi i32 [ 0, %do.body6 ], [ %call, %if.then.if.end83_crit_edge ], [ 0, %if.end32.if.end83_crit_edge ], [ %spec.select, %if.end79 ]
  %entities = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 19
  %19 = ptrtoint ptr %entities to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn201 = load ptr, ptr %entities, align 4
  %cmp87.not202 = icmp eq ptr %.pn201, %entities
  br i1 %cmp87.not202, label %if.end83.for.end103_crit_edge, label %for.body.lr.ph

if.end83.for.end103_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end103

for.body.lr.ph:                                   ; preds = %if.end83
  %mmio.i = getelementptr inbounds %struct.vsp1_device, ptr %3, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn203 = phi ptr [ %.pn201, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %route = getelementptr i8, ptr %.pn203, i32 -16
  %20 = ptrtoint ptr %route to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %route, align 4
  %tobool90.not = icmp eq ptr %21, null
  br i1 %tobool90.not, label %for.body.for.inc_crit_edge, label %land.lhs.true91

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true91:                                  ; preds = %for.body
  %reg = getelementptr inbounds %struct.vsp1_route, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool93.not = icmp eq i32 %23, 0
  br i1 %tobool93.not, label %land.lhs.true91.for.inc_crit_edge, label %if.then94

land.lhs.true91.for.inc_crit_edge:                ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then94:                                        ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 %23
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1056964608) #6, !srcloc !23
  br label %for.inc

for.inc:                                          ; preds = %if.then94, %land.lhs.true91.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %26 = ptrtoint ptr %.pn203 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn = load ptr, ptr %.pn203, align 4
  %cmp87.not = icmp eq ptr %.pn, %entities
  br i1 %cmp87.not, label %for.inc.for.end103_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end103_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end103

for.end103:                                       ; preds = %for.inc.for.end103_crit_edge, %if.end83.for.end103_crit_edge
  %hgo = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 14
  %27 = ptrtoint ptr %hgo to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hgo, align 4
  %tobool104.not = icmp eq ptr %28, null
  br i1 %tobool104.not, label %for.end103.if.end106_crit_edge, label %if.then105

for.end103.if.end106_crit_edge:                   ; preds = %for.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

if.then105:                                       ; preds = %for.end103
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i191 = getelementptr inbounds %struct.vsp1_device, ptr %3, i32 0, i32 3
  %29 = ptrtoint ptr %mmio.i191 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio.i191, align 4
  %add.ptr.i192 = getelementptr i8, ptr %30, i32 8276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i192, i32 1057423360) #6, !srcloc !23
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %for.end103.if.end106_crit_edge
  %hgt = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 15
  %31 = ptrtoint ptr %hgt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hgt, align 4
  %tobool107.not = icmp eq ptr %32, null
  br i1 %tobool107.not, label %if.end106.if.end109_crit_edge, label %if.then108

if.end106.if.end109_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

if.then108:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i193 = getelementptr inbounds %struct.vsp1_device, ptr %3, i32 0, i32 3
  %33 = ptrtoint ptr %mmio.i193 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio.i193, align 4
  %add.ptr.i194 = getelementptr i8, ptr %34, i32 8280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i194, i32 1057423360) #6, !srcloc !23
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %if.end106.if.end109_crit_edge
  %35 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %output, align 4
  %subdev = getelementptr inbounds %struct.vsp1_entity, ptr %36, i32 0, i32 13
  %tobool112.not = icmp eq ptr %subdev, null
  br i1 %tobool112.not, label %if.end109.if.end136_crit_edge, label %if.else114

if.end109.if.end136_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end136

if.else114:                                       ; preds = %if.end109
  %ops = getelementptr inbounds %struct.vsp1_entity, ptr %36, i32 0, i32 13, i32 6
  %37 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %video, align 4
  %tobool115.not = icmp eq ptr %40, null
  br i1 %tobool115.not, label %if.else114.if.end136_crit_edge, label %land.lhs.true116

if.else114.if.end136_crit_edge:                   ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end136

land.lhs.true116:                                 ; preds = %if.else114
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %40, i32 0, i32 10
  %41 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_stream, align 4
  %tobool119.not = icmp eq ptr %42, null
  br i1 %tobool119.not, label %land.lhs.true116.if.end136_crit_edge, label %if.else121

land.lhs.true116.if.end136_crit_edge:             ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end136

if.else121:                                       ; preds = %land.lhs.true116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool122.not = icmp eq ptr %43, null
  br i1 %tobool122.not, label %if.else121.if.else129_crit_edge, label %land.lhs.true123

if.else121.if.else129_crit_edge:                  ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else129

land.lhs.true123:                                 ; preds = %if.else121
  %s_stream124 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %43, i32 0, i32 10
  %44 = ptrtoint ptr %s_stream124 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_stream124, align 4
  %tobool125.not = icmp eq ptr %45, null
  br i1 %tobool125.not, label %land.lhs.true123.if.else129_crit_edge, label %land.lhs.true123.if.end136.sink.split_crit_edge

land.lhs.true123.if.end136.sink.split_crit_edge:  ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end136.sink.split

land.lhs.true123.if.else129_crit_edge:            ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else129

if.else129:                                       ; preds = %land.lhs.true123.if.else129_crit_edge, %if.else121.if.else129_crit_edge
  br label %if.end136.sink.split

if.end136.sink.split:                             ; preds = %if.else129, %land.lhs.true123.if.end136.sink.split_crit_edge
  %.sink = phi ptr [ %42, %if.else129 ], [ %45, %land.lhs.true123.if.end136.sink.split_crit_edge ]
  %call133 = call i32 %.sink(ptr noundef nonnull %subdev, i32 noundef 0) #6
  br label %if.end136

if.end136:                                        ; preds = %if.end136.sink.split, %land.lhs.true116.if.end136_crit_edge, %if.else114.if.end136_crit_edge, %if.end109.if.end136_crit_edge
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_reset_wpf(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @vsp1_pipeline_ready(ptr nocapture noundef readonly %pipe) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_inputs = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 10
  %0 = ptrtoint ptr %num_inputs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_inputs, align 4
  %notmask = shl nsw i32 -1, %1
  %sub = xor i32 %notmask, -1
  %shl1 = shl i32 %sub, 1
  %lif = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 16
  %2 = ptrtoint ptr %lif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lif, align 4
  %tobool.not = icmp eq ptr %3, null
  %or = zext i1 %tobool.not to i32
  %spec.select = or i32 %shl1, %or
  %buffers_ready = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 8
  %4 = ptrtoint ptr %buffers_ready to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffers_ready, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %spec.select)
  %cmp = icmp eq i32 %5, %spec.select
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsp1_pipeline_frame_end(ptr noundef %pipe) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %pipe, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %output = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 12
  %0 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %output, align 4
  %dlm = getelementptr inbounds %struct.vsp1_rwpf, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %dlm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dlm, align 4
  %call = tail call i32 @vsp1_dlm_irq_frame_end(ptr noundef %3) #6
  %hgo = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 14
  %4 = ptrtoint ptr %hgo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hgo, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then1

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @vsp1_hgo_frame_end(ptr noundef nonnull %5) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %hgt = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 15
  %6 = ptrtoint ptr %hgt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hgt, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end3.if.end7_crit_edge, label %if.then5

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @vsp1_hgt_frame_end(ptr noundef nonnull %7) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3.if.end7_crit_edge
  %frame_end = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 4
  %8 = ptrtoint ptr %frame_end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %frame_end, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %9(ptr noundef nonnull %pipe, i32 noundef %call) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  %sequence = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 9
  %10 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sequence, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %sequence, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_dlm_irq_frame_end(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_hgo_frame_end(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_hgt_frame_end(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsp1_pipeline_propagate_alpha(ptr nocapture noundef readonly %pipe, ptr noundef %dlb, i32 noundef %alpha) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %uds = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 17
  %0 = ptrtoint ptr %uds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uds, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %uds_input = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 18
  %2 = ptrtoint ptr %uds_input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uds_input, align 4
  %type = getelementptr inbounds %struct.vsp1_entity, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %switch = icmp ult i32 %5, 2
  %spec.select = select i1 %switch, i32 255, i32 %alpha
  tail call void @vsp1_uds_set_alpha(ptr noundef nonnull %1, ptr noundef %dlb, i32 noundef %spec.select) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_uds_set_alpha(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsp1_pipeline_propagate_partition(ptr noundef %pipe, ptr noundef %partition, i32 noundef %index, ptr noundef %window) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %entities = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 19
  %prev = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 19, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn16 = load ptr, ptr %prev, align 4
  %cmp.not18 = icmp eq ptr %.pn16, %entities
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn19 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn16, %entry.for.body_crit_edge ]
  %ops = getelementptr i8, ptr %.pn19, i32 -28
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %partition2 = getelementptr inbounds %struct.vsp1_entity_operations, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %partition2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %partition2, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %entity.020 = getelementptr i8, ptr %.pn19, i32 -32
  tail call void %4(ptr noundef %entity.020, ptr noundef %pipe, ptr noundef %partition, i32 noundef %index, ptr noundef %window) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %prev7 = getelementptr inbounds %struct.list_head, ptr %.pn19, i32 0, i32 1
  %5 = ptrtoint ptr %prev7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %prev7, align 4
  %cmp.not = icmp eq ptr %.pn, %entities
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @vsp1_pipeline_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/vsp1/vsp1_pipe.c", i32 277, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @vsp1_pipeline_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/vsp1/vsp1_pipe.c", i32 278, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vsp1_pipeline_init.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/vsp1/vsp1_pipe.c", i32 279, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/vsp1/vsp1_pipe.c", i32 337, i32 9}
!11 = !{ptr @vsp1_video_formats, !12, !"vsp1_video_formats", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/vsp1/vsp1_pipe.c", i32 32, i32 38}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 2154775768}
!23 = !{i64 7241136}
