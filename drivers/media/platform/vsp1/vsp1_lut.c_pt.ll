; ModuleID = '/llk/IR_all_yes/drivers/media/platform/vsp1/vsp1_lut.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_lut.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vsp1_entity_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.vsp1_lut = type { %struct.vsp1_entity, %struct.v4l2_ctrl_handler, %struct.spinlock, ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }

@vsp1_lut_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&lut->lock\00", [21 x i8] zeroinitializer }, align 32
@lut_entity_ops = internal constant { %struct.vsp1_entity_operations, [40 x i8] } { %struct.vsp1_entity_operations { ptr @lut_destroy, ptr @lut_configure_stream, ptr @lut_configure_frame, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lut\00", [28 x i8] zeroinitializer }, align 32
@lut_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lut_pad_ops }, [32 x i8] zeroinitializer }, align 32
@vsp1_lut_create._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"vsp1_lut:227:(&lut->ctrls)->_lock\00", [62 x i8] zeroinitializer }, align 32
@lut_table_control = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @lut_ctrl_ops, ptr null, i32 9967873, ptr @.str.8, i32 258, i64 0, i64 16777215, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] [i32 256, i32 0, i32 0, i32 0], i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vsp1_lut_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 233, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"lut: failed to initialize controls\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vsp1_lut_create\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/platform/vsp1/vsp1_lut.c\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vsp1_lut_create._entry_ptr = internal global ptr @vsp1_lut_create._entry, section ".printk_index", align 4
@lut_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @vsp1_entity_init_cfg, ptr @lut_enum_mbus_code, ptr @lut_enum_frame_size, ptr null, ptr @vsp1_subdev_get_pad_format, ptr @lut_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@lut_codes = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4109, i32 24577, i32 8215], [20 x i8] zeroinitializer }, align 32
@lut_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @lut_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Look-Up Table\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 207, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"lut_entity_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 188, i32 44 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 212, i32 45 }
@___asan_gen_.21 = private unnamed_addr constant [8 x i8] c"lut_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 141, i32 37 }
@___asan_gen_.24 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 227, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"lut_table_control\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 79, i32 38 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 233, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"lut_pad_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 133, i32 41 }
@___asan_gen_.54 = private unnamed_addr constant [10 x i8] c"lut_codes\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 95, i32 27 }
@___asan_gen_.57 = private unnamed_addr constant [13 x i8] c"lut_ctrl_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 75, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [42 x i8] c"../drivers/media/platform/vsp1/vsp1_lut.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 82, i32 10 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @vsp1_lut_create._entry, ptr @vsp1_lut_create._entry_ptr, ptr @vsp1_lut_create.__key, ptr @.str, ptr @lut_entity_ops, ptr @.str.1, ptr @lut_ops, ptr @vsp1_lut_create._key, ptr @.str.2, ptr @lut_table_control, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @lut_pad_ops, ptr @lut_codes, ptr @lut_ctrl_ops, ptr @.str.8], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_lut_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lut_entity_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lut_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_lut_create._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lut_table_control to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_lut_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lut_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lut_codes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lut_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vsp1_lut_create(ptr noundef %vsp1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsp1, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 588, i32 noundef 3520) #3
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.vsp1_lut, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @vsp1_lut_create.__key, i16 noundef signext 3) #3
  %ops = getelementptr inbounds %struct.vsp1_entity, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @lut_entity_ops, ptr %ops, align 4
  %type = getelementptr inbounds %struct.vsp1_entity, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8, ptr %type, align 4
  %call5 = tail call i32 @vsp1_entity_init(ptr noundef %vsp1, ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, i32 noundef 2, ptr noundef nonnull @lut_ops, i32 noundef 16388) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %4 = inttoptr i32 %call5 to ptr
  br label %cleanup

if.end9:                                          ; preds = %do.body
  %call10 = tail call ptr @vsp1_dl_body_pool_create(ptr noundef %vsp1, i32 noundef 3, i32 noundef 256, i32 noundef 0) #3
  %pool = getelementptr inbounds %struct.vsp1_lut, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call10, ptr %pool, align 4
  %tobool.not = icmp eq ptr %call10, null
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %ctrls = getelementptr inbounds %struct.vsp1_lut, ptr %call.i, i32 0, i32 1
  %call15 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls, i32 noundef 1, ptr noundef nonnull @vsp1_lut_create._key, ptr noundef nonnull @.str.2) #3
  %call17 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrls, ptr noundef nonnull @lut_table_control, ptr noundef null) #3
  %ctrl_handler = getelementptr inbounds %struct.vsp1_entity, ptr %call.i, i32 0, i32 13, i32 8
  %6 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ctrls, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.vsp1_lut, ptr %call.i, i32 0, i32 1, i32 9
  %7 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool21.not = icmp eq i32 %8, 0
  br i1 %tobool21.not, label %if.end31, label %do.end25

do.end25:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vsp1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.3) #6
  %11 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error, align 4
  tail call void @vsp1_entity_destroy(ptr noundef nonnull %call.i) #3
  %13 = inttoptr i32 %12 to ptr
  br label %cleanup

if.end31:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  %call33 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrls) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end25, %if.end9.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %if.then7 ], [ %13, %do.end25 ], [ %call.i, %if.end31 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end9.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_dl_body_pool_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_entity_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lut_destroy(ptr nocapture noundef readonly %entity) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pool = getelementptr inbounds %struct.vsp1_lut, ptr %entity, i32 0, i32 4
  %0 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool, align 4
  tail call void @vsp1_dl_body_pool_destroy(ptr noundef %1) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lut_configure_stream(ptr nocapture noundef readnone %entity, ptr nocapture noundef readnone %pipe, ptr nocapture noundef readnone %dl, ptr noundef %dlb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef 10240, i32 noundef 1) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lut_configure_frame(ptr noundef %entity, ptr nocapture noundef readnone %pipe, ptr noundef %dl, ptr nocapture noundef readnone %dlb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.vsp1_lut, ptr %entity, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #3
  %lut6 = getelementptr inbounds %struct.vsp1_lut, ptr %entity, i32 0, i32 3
  %0 = ptrtoint ptr %lut6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lut6, align 4
  store ptr null, ptr %lut6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #3
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call9 = tail call i32 @vsp1_dl_list_add_body(ptr noundef %dl, ptr noundef nonnull %1) #3
  tail call void @vsp1_dl_body_put(ptr noundef nonnull %1) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_body_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_body_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_dl_list_add_body(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_body_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init_cfg(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lut_enum_mbus_code(ptr noundef %subdev, ptr noundef %sd_state, ptr noundef %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vsp1_subdev_enum_mbus_code(ptr noundef %subdev, ptr noundef %sd_state, ptr noundef %code, ptr noundef nonnull @lut_codes, i32 noundef 3) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lut_enum_frame_size(ptr noundef %subdev, ptr noundef %sd_state, ptr noundef %fse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vsp1_subdev_enum_frame_size(ptr noundef %subdev, ptr noundef %sd_state, ptr noundef %fse, i32 noundef 4, i32 noundef 4, i32 noundef 8190, i32 noundef 8190) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_get_pad_format(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lut_set_format(ptr noundef %subdev, ptr noundef %sd_state, ptr noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vsp1_subdev_set_pad_format(ptr noundef %subdev, ptr noundef %sd_state, ptr noundef %fmt, ptr noundef nonnull @lut_codes, i32 noundef 3, i32 noundef 4, i32 noundef 4, i32 noundef 8190, i32 noundef 8190) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_enum_mbus_code(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_enum_frame_size(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_set_pad_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lut_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9967873, i32 %1)
  %cond = icmp eq i32 %1, 9967873
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  %pool.i = getelementptr i8, ptr %3, i32 232
  %4 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pool.i, align 4
  %call.i = tail call ptr @vsp1_dl_body_get(ptr noundef %5) #3
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %for.cond.preheader.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

for.cond.preheader.i:                             ; preds = %sw.bb
  %p_new.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 25
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.01.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %mul.i = shl nuw nsw i32 %i.01.i, 2
  %add.i = add nuw nsw i32 %mul.i, 28672
  %6 = ptrtoint ptr %p_new.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p_new.i, align 8
  %arrayidx.i = getelementptr i32, ptr %7, i32 %i.01.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  tail call void @vsp1_dl_body_write(ptr noundef nonnull %call.i, i32 noundef %add.i, i32 noundef %9) #3
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %lock.i = getelementptr i8, ptr %3, i32 184
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #3
  %lut1.i = getelementptr i8, ptr %3, i32 228
  %10 = ptrtoint ptr %lut1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lut1.i, align 4
  store ptr %call.i, ptr %lut1.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #3
  tail call void @vsp1_dl_body_put(ptr noundef %11) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_dl_body_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @vsp1_lut_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/vsp1/vsp1_lut.c", i32 207, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/vsp1/vsp1_lut.c", i32 212, i32 45}
!5 = !{ptr @vsp1_lut_create._key, !6, !"_key", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/vsp1/vsp1_lut.c", i32 227, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/vsp1/vsp1_lut.c", i32 233, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @vsp1_lut_create._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @vsp1_lut_create._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @lut_entity_ops, !17, !"lut_entity_ops", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/vsp1/vsp1_lut.c", i32 188, i32 44}
!18 = !{ptr @lut_ops, !19, !"lut_ops", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/vsp1/vsp1_lut.c", i32 141, i32 37}
!20 = !{ptr @lut_pad_ops, !21, !"lut_pad_ops", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/vsp1/vsp1_lut.c", i32 133, i32 41}
!22 = !{ptr @lut_codes, !23, !"lut_codes", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/vsp1/vsp1_lut.c", i32 95, i32 27}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/vsp1/vsp1_lut.c", i32 82, i32 10}
!26 = !{ptr @lut_table_control, !27, !"lut_table_control", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/vsp1/vsp1_lut.c", i32 79, i32 38}
!28 = !{ptr @lut_ctrl_ops, !29, !"lut_ctrl_ops", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/vsp1/vsp1_lut.c", i32 75, i32 35}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
