; ModuleID = '/llk/IR_all_yes/drivers/media/platform/vsp1/vsp1_sru.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_sru.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vsp1_entity_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vsp1_sru_param = type { i32, i32 }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
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
%struct.vsp1_sru = type { %struct.vsp1_entity, %struct.v4l2_ctrl_handler, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.88, i16, i16, i16, [10 x i16] }
%union.anon.88 = type { i16 }
%struct.vsp1_partition_window = type { i32, i32 }
%struct.vsp1_partition = type { %struct.vsp1_partition_window, %struct.vsp1_partition_window, %struct.vsp1_partition_window, %struct.vsp1_partition_window, %struct.vsp1_partition_window }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }

@sru_entity_ops = internal constant { %struct.vsp1_entity_operations, [40 x i8] } { %struct.vsp1_entity_operations { ptr null, ptr @sru_configure_stream, ptr null, ptr null, ptr @sru_max_width, ptr @sru_partition }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sru\00", [28 x i8] zeroinitializer }, align 32
@sru_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sru_pad_ops }, [32 x i8] zeroinitializer }, align 32
@vsp1_sru_create._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"vsp1_sru:381:(&sru->ctrls)->_lock\00", [62 x i8] zeroinitializer }, align 32
@sru_intensity_control = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @sru_ctrl_ops, ptr null, i32 9967873, ptr @.str.7, i32 1, i64 1, i64 6, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vsp1_sru_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 389, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sru: failed to initialize controls\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vsp1_sru_create\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/platform/vsp1/vsp1_sru.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vsp1_sru_create._entry_ptr = internal global ptr @vsp1_sru_create._entry, section ".printk_index", align 4
@vsp1_sru_params = internal constant { [6 x %struct.vsp1_sru_param], [48 x i8] } { [6 x %struct.vsp1_sru_param] [%struct.vsp1_sru_param { i32 16778241, i32 1583359 }, %struct.vsp1_sru_param { i32 16778241, i32 528639 }, %struct.vsp1_sru_param { i32 25167105, i32 2374911 }, %struct.vsp1_sru_param { i32 25167105, i32 793599 }, %struct.vsp1_sru_param { i32 33490433, i32 3166463 }, %struct.vsp1_sru_param { i32 33490433, i32 1058047 }], [48 x i8] zeroinitializer }, align 32
@sru_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @vsp1_entity_init_cfg, ptr @sru_enum_mbus_code, ptr @sru_enum_frame_size, ptr null, ptr @vsp1_subdev_get_pad_format, ptr @sru_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@sru_enum_mbus_code.codes = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 4109, i32 8215], [24 x i8] zeroinitializer }, align 32
@sru_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sru_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Intensity\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 4109, i64 8215]
@___asan_gen_.9 = private unnamed_addr constant [15 x i8] c"sru_entity_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 353, i32 44 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 375, i32 45 }
@___asan_gen_.15 = private unnamed_addr constant [8 x i8] c"sru_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 264, i32 37 }
@___asan_gen_.18 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 381, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [22 x i8] c"sru_intensity_control\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 93, i32 38 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 389, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"vsp1_sru_params\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 53, i32 36 }
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"sru_pad_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 256, i32 41 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"codes\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 112, i32 28 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"sru_ctrl_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 89, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [42 x i8] c"../drivers/media/platform/vsp1/vsp1_sru.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 96, i32 10 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @vsp1_sru_create._entry, ptr @vsp1_sru_create._entry_ptr, ptr @sru_entity_ops, ptr @.str, ptr @sru_ops, ptr @vsp1_sru_create._key, ptr @.str.1, ptr @sru_intensity_control, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @vsp1_sru_params, ptr @sru_pad_ops, ptr @sru_enum_mbus_code.codes, ptr @sru_ctrl_ops, ptr @.str.7], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sru_entity_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sru_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_sru_create._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sru_intensity_control to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_sru_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_sru_params to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sru_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sru_enum_mbus_code.codes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sru_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vsp1_sru_create(ptr noundef %vsp1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsp1, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 540, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.vsp1_entity, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @sru_entity_ops, ptr %ops, align 4
  %type = getelementptr inbounds %struct.vsp1_entity, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 10, ptr %type, align 4
  %call4 = tail call i32 @vsp1_entity_init(ptr noundef %vsp1, ptr noundef nonnull %call.i, ptr noundef nonnull @.str, i32 noundef 2, ptr noundef nonnull @sru_ops, i32 noundef 16389) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = inttoptr i32 %call4 to ptr
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %ctrls = getelementptr inbounds %struct.vsp1_sru, ptr %call.i, i32 0, i32 1
  %call9 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls, i32 noundef 1, ptr noundef nonnull @vsp1_sru_create._key, ptr noundef nonnull @.str.1) #5
  %call11 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrls, ptr noundef nonnull @sru_intensity_control, ptr noundef null) #5
  %intensity = getelementptr inbounds %struct.vsp1_sru, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %intensity to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %intensity, align 4
  %ctrl_handler = getelementptr inbounds %struct.vsp1_entity, ptr %call.i, i32 0, i32 13, i32 8
  %6 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ctrls, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.vsp1_sru, ptr %call.i, i32 0, i32 1, i32 9
  %7 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %do.end

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vsp1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.2) #8
  %11 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error, align 4
  tail call void @vsp1_entity_destroy(ptr noundef nonnull %call.i) #5
  %13 = inttoptr i32 %12 to ptr
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end8.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %if.then6 ], [ %13, %do.end ], [ %call.i, %if.end8.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_entity_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sru_configure_stream(ptr noundef %entity, ptr nocapture noundef readnone %pipe, ptr nocapture noundef readnone %dl, ptr noundef %dlb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 14
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %call3 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %entity, ptr noundef %1, i32 noundef 0) #5
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %call7 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %entity, ptr noundef %3, i32 noundef 1) #5
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4109, i32 %5)
  %cmp = icmp eq i32 %5, 4109
  %. = select i1 %cmp, i32 14, i32 4
  %6 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call3, align 4
  %8 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp9.not = icmp eq i32 %7, %9
  %or = or i32 %., 64
  %ctrl0.1 = select i1 %cmp9.not, i32 %., i32 %or
  %intensity = getelementptr inbounds %struct.vsp1_sru, ptr %entity, i32 0, i32 2
  %10 = ptrtoint ptr %intensity to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %intensity, align 4
  %sub = add i32 %11, -1
  %arrayidx = getelementptr [6 x %struct.vsp1_sru_param], ptr @vsp1_sru_params, i32 0, i32 %sub
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %or13 = or i32 %ctrl0.1, %13
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef 8704, i32 noundef %or13) #5
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef 8708, i32 noundef 2047) #5
  %ctrl2 = getelementptr [6 x %struct.vsp1_sru_param], ptr @vsp1_sru_params, i32 0, i32 %sub, i32 1
  %14 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctrl2, align 4
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef 8712, i32 noundef %15) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sru_max_width(ptr noundef %entity, ptr nocapture noundef readnone %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 14
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %call3 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %entity, ptr noundef %1, i32 noundef 0) #5
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %call7 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %entity, ptr noundef %3, i32 noundef 1) #5
  %4 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call3, align 4
  %6 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  %. = select i1 %cmp.not, i32 256, i32 512
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sru_partition(ptr noundef %entity, ptr nocapture noundef readnone %pipe, ptr nocapture noundef writeonly %partition, i32 noundef %partition_idx, ptr nocapture noundef %window) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 14
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %call3 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %entity, ptr noundef %1, i32 noundef 0) #5
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %call7 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %entity, ptr noundef %3, i32 noundef 1) #5
  %4 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call3, align 4
  %6 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %width9 = getelementptr inbounds %struct.vsp1_partition_window, ptr %window, i32 0, i32 1
  %8 = ptrtoint ptr %width9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width9, align 4
  %div17 = lshr i32 %9, 1
  store i32 %div17, ptr %width9, align 4
  %10 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %window, align 4
  %div1018 = lshr i32 %11, 1
  store i32 %div1018, ptr %window, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sru11 = getelementptr inbounds %struct.vsp1_partition, ptr %partition, i32 0, i32 3
  %12 = ptrtoint ptr %window to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %window, align 4
  %14 = ptrtoint ptr %sru11 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %sru11, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_format(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_body_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init_cfg(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sru_enum_mbus_code(ptr noundef %subdev, ptr noundef %sd_state, ptr noundef %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vsp1_subdev_enum_mbus_code(ptr noundef %subdev, ptr noundef %sd_state, ptr noundef %code, ptr noundef nonnull @sru_enum_mbus_code.codes, i32 noundef 2) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sru_enum_frame_size(ptr noundef %subdev, ptr noundef %sd_state, ptr nocapture noundef %fse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %subdev, i32 -60
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 7
  %0 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %which, align 4
  %call1 = tail call ptr @vsp1_entity_get_pad_config(ptr noundef %add.ptr.i, ptr noundef %sd_state, i32 noundef %1) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %add.ptr.i, ptr noundef nonnull %call1, i32 noundef 0) #5
  %lock = getelementptr i8, ptr %subdev, i32 200
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %2 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

lor.lhs.false:                                    ; preds = %if.end
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code, align 4
  %code6 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %code6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %code6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %if.end8, label %lor.lhs.false.done_crit_edge

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end8:                                          ; preds = %lor.lhs.false
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %8 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9 = icmp eq i32 %9, 0
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %10 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %11 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8190, ptr %max_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %12 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %min_height, align 4
  br label %done.sink.split

if.else:                                          ; preds = %if.end8
  %13 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call3, align 4
  %min_width11 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %15 = ptrtoint ptr %min_width11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %min_width11, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call3, i32 0, i32 1
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  %min_height12 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %18 = ptrtoint ptr %min_height12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %min_height12, align 4
  %19 = load i32, ptr %call3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %19)
  %cmp14 = icmp ult i32 %19, 4096
  br i1 %cmp14, label %land.lhs.true, label %if.else.if.else23_crit_edge

if.else.if.else23_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else23

land.lhs.true:                                    ; preds = %if.else
  %20 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %21)
  %cmp16 = icmp ult i32 %21, 4096
  br i1 %cmp16, label %if.then17, label %land.lhs.true.if.else23_crit_edge

land.lhs.true.if.else23_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else23

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %mul = shl nuw nsw i32 %19, 1
  %max_width19 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %22 = ptrtoint ptr %max_width19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul, ptr %max_width19, align 4
  %23 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height, align 4
  %mul21 = shl i32 %24, 1
  br label %done.sink.split

if.else23:                                        ; preds = %land.lhs.true.if.else23_crit_edge, %if.else.if.else23_crit_edge
  %max_width25 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %25 = ptrtoint ptr %max_width25 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %19, ptr %max_width25, align 4
  %26 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height, align 4
  br label %done.sink.split

done.sink.split:                                  ; preds = %if.else23, %if.then17, %if.then10
  %.sink = phi i32 [ 8190, %if.then10 ], [ %27, %if.else23 ], [ %mul21, %if.then17 ]
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %28 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink, ptr %max_height, align 4
  br label %done

done:                                             ; preds = %done.sink.split, %lor.lhs.false.done_crit_edge, %if.end.done_crit_edge
  %ret.0 = phi i32 [ -22, %lor.lhs.false.done_crit_edge ], [ -22, %if.end.done_crit_edge ], [ 0, %done.sink.split ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %done ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_get_pad_format(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sru_set_format(ptr noundef %subdev, ptr noundef %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %subdev, i32 -60
  %lock = getelementptr i8, ptr %subdev, i32 200
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  %call2 = tail call ptr @vsp1_entity_get_pad_config(ptr noundef %add.ptr.i, ptr noundef %sd_state, i32 noundef %1) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end:                                           ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  %format3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  tail call fastcc void @sru_try_format(ptr noundef %add.ptr.i, ptr noundef nonnull %call2, i32 noundef %3, ptr noundef %format3)
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  %call6 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %add.ptr.i, ptr noundef nonnull %call2, i32 noundef %5) #5
  %6 = call ptr @memcpy(ptr %call6, ptr %format3, i32 48)
  %7 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then9, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.then9:                                         ; preds = %if.end
  %call11 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %add.ptr.i, ptr noundef nonnull %call2, i32 noundef 1) #5
  %9 = call ptr @memcpy(ptr %call11, ptr %format3, i32 48)
  %call.i = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %add.ptr.i, ptr noundef nonnull %call2, i32 noundef 0) #5
  %code26.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %code26.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %code26.i, align 4
  %code27.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call11, i32 0, i32 2
  %12 = ptrtoint ptr %code27.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %code27.i, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call.i, align 4
  %height29.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call11, align 4
  %height37.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call11, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %16)
  %cmp46.i = icmp ult i32 %16, 4096
  br i1 %cmp46.i, label %land.lhs.true47.i, label %if.then9.if.else.i_crit_edge

if.then9.if.else.i_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

land.lhs.true47.i:                                ; preds = %if.then9
  %17 = ptrtoint ptr %height37.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height37.i, align 4
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 8190) #5
  %mul44.i = mul nuw nsw i32 %19, %16
  %20 = ptrtoint ptr %height29.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %18)
  %cmp49.i = icmp ult i32 %18, 4096
  %mul.i = mul i32 %14, 9
  %mul51.i = mul i32 %mul.i, %21
  %div104.i = lshr i32 %mul51.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul44.i, i32 %div104.i)
  %cmp52.i = icmp ugt i32 %mul44.i, %div104.i
  %or.cond.i = select i1 %cmp49.i, i1 %cmp52.i, i1 false
  br i1 %or.cond.i, label %if.then53.i, label %land.lhs.true47.i.if.else.i_crit_edge

land.lhs.true47.i.if.else.i_crit_edge:            ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.then53.i:                                      ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul55.i = shl i32 %14, 1
  %22 = ptrtoint ptr %call11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul55.i, ptr %call11, align 4
  %23 = ptrtoint ptr %height29.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height29.i, align 4
  %mul58.i = shl i32 %24, 1
  br label %sru_try_format.exit

if.else.i:                                        ; preds = %land.lhs.true47.i.if.else.i_crit_edge, %if.then9.if.else.i_crit_edge
  %25 = ptrtoint ptr %call11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %14, ptr %call11, align 4
  %26 = ptrtoint ptr %height29.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height29.i, align 4
  br label %sru_try_format.exit

sru_try_format.exit:                              ; preds = %if.else.i, %if.then53.i
  %storemerge = phi i32 [ %27, %if.else.i ], [ %mul58.i, %if.then53.i ]
  %28 = ptrtoint ptr %height37.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %storemerge, ptr %height37.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call11, i32 0, i32 3
  %29 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %field.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call11, i32 0, i32 4
  %30 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 8, ptr %colorspace.i, align 4
  br label %done

done:                                             ; preds = %sru_try_format.exit, %if.end.done_crit_edge, %entry.done_crit_edge
  %ret.0 = phi i32 [ 0, %sru_try_format.exit ], [ 0, %if.end.done_crit_edge ], [ -22, %entry.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_enum_mbus_code(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sru_try_format(ptr noundef %sru, ptr noundef %sd_state, i32 noundef %pad, ptr nocapture noundef %fmt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %pad to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %pad, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb25
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 2
  %1 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %code, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %2, label %if.then [
    i32 4109, label %sw.bb.if.end_crit_edge
    i32 8215, label %sw.bb.if.end_crit_edge106
  ]

sw.bb.if.end_crit_edge106:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8215, ptr %code, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge, %sw.bb.if.end_crit_edge106
  %5 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fmt, align 4
  %7 = tail call i32 @llvm.umax.i32(i32 %6, i32 4)
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 8190)
  %9 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 4)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 8190)
  %14 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %height, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  %call = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %sru, ptr noundef %sd_state, i32 noundef 0) #5
  %code26 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call, i32 0, i32 2
  %15 = ptrtoint ptr %code26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %code26, align 4
  %code27 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 2
  %17 = ptrtoint ptr %code27 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %code27, align 4
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call, align 4
  %height29 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call, i32 0, i32 1
  %20 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fmt, align 4
  %height37 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %21)
  %cmp46 = icmp ult i32 %21, 4096
  br i1 %cmp46, label %land.lhs.true47, label %sw.bb25.if.else_crit_edge

sw.bb25.if.else_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true47:                                  ; preds = %sw.bb25
  %22 = ptrtoint ptr %height37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height37, align 4
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 8190)
  %mul44 = mul nuw nsw i32 %24, %21
  %25 = ptrtoint ptr %height29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %23)
  %cmp49 = icmp ult i32 %23, 4096
  %mul = mul i32 %19, 9
  %mul51 = mul i32 %mul, %26
  %div104 = lshr i32 %mul51, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul44, i32 %div104)
  %cmp52 = icmp ugt i32 %mul44, %div104
  %or.cond = select i1 %cmp49, i1 %cmp52, i1 false
  br i1 %or.cond, label %if.then53, label %land.lhs.true47.if.else_crit_edge

land.lhs.true47.if.else_crit_edge:                ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then53:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #7
  %mul55 = shl i32 %19, 1
  %27 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul55, ptr %fmt, align 4
  %28 = ptrtoint ptr %height29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height29, align 4
  %mul58 = shl i32 %29, 1
  %30 = ptrtoint ptr %height37 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul58, ptr %height37, align 4
  br label %sw.epilog

if.else:                                          ; preds = %land.lhs.true47.if.else_crit_edge, %sw.bb25.if.else_crit_edge
  %31 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %19, ptr %fmt, align 4
  %32 = ptrtoint ptr %height29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %height29, align 4
  %34 = ptrtoint ptr %height37 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %height37, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then53, %if.end, %entry.sw.epilog_crit_edge
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 3
  %35 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 4
  %36 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8, ptr %colorspace, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sru_s_ctrl(ptr nocapture noundef readonly %ctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9967873, i32 %1)
  %cond = icmp eq i32 %1, 9967873
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %intensity = getelementptr i8, ptr %3, i32 184
  %6 = ptrtoint ptr %intensity to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %intensity, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !12, !13, !15, !17, !19, !21, !23, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/vsp1/vsp1_sru.c", i32 375, i32 45}
!2 = !{ptr @vsp1_sru_create._key, !3, !"_key", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/vsp1/vsp1_sru.c", i32 381, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/vsp1/vsp1_sru.c", i32 389, i32 3}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @vsp1_sru_create._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @vsp1_sru_create._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @sru_entity_ops, !14, !"sru_entity_ops", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/vsp1/vsp1_sru.c", i32 353, i32 44}
!15 = !{ptr @vsp1_sru_params, !16, !"vsp1_sru_params", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/vsp1/vsp1_sru.c", i32 53, i32 36}
!17 = !{ptr @sru_ops, !18, !"sru_ops", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/vsp1/vsp1_sru.c", i32 264, i32 37}
!19 = !{ptr @sru_pad_ops, !20, !"sru_pad_ops", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/vsp1/vsp1_sru.c", i32 256, i32 41}
!21 = !{ptr @sru_enum_mbus_code.codes, !22, !"codes", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/vsp1/vsp1_sru.c", i32 112, i32 28}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/vsp1/vsp1_sru.c", i32 96, i32 10}
!25 = !{ptr @sru_intensity_control, !26, !"sru_intensity_control", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/vsp1/vsp1_sru.c", i32 93, i32 38}
!27 = !{ptr @sru_ctrl_ops, !28, !"sru_ctrl_ops", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/vsp1/vsp1_sru.c", i32 89, i32 35}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
