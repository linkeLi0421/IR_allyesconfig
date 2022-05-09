; ModuleID = '/llk/IR_all_yes/drivers/staging/media/imx/imx-media-internal-sd.c_pt.bc'
source_filename = "../drivers/staging/media/imx/imx-media-internal-sd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.internal_subdev = type { i32, [8 x %struct.internal_pad], ptr, ptr }
%struct.internal_pad = type { i32, [8 x %struct.internal_link] }
%struct.internal_link = type { i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.imx_media_dev = type { %struct.media_device, %struct.v4l2_device, %struct.media_pipeline, %struct.mutex, %struct.list_head, [2 x ptr], %struct.v4l2_async_notifier, ptr, [2 x [6 x ptr]] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }

@imx_media_register_ipu_internal_subdevs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: invalid IPU device!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"imx_media_register_ipu_internal_subdevs\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/staging/media/imx/imx-media-internal-sd.c\00", [46 x i8] zeroinitializer }, align 32
@imx_media_register_ipu_internal_subdevs._entry_ptr = internal global ptr @imx_media_register_ipu_internal_subdevs._entry, section ".printk_index", align 4
@imx_media_register_ipu_internal_subdevs._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: invalid IPU id %d!\0A\00", [38 x i8] zeroinitializer }, align 32
@imx_media_register_ipu_internal_subdevs._entry_ptr.5 = internal global ptr @imx_media_register_ipu_internal_subdevs._entry.3, section ".printk_index", align 4
@int_subdev = internal constant { [6 x %struct.internal_subdev], [1240 x i8] } { [6 x %struct.internal_subdev] [%struct.internal_subdev { i32 1024, [8 x %struct.internal_pad] [%struct.internal_pad zeroinitializer, %struct.internal_pad { i32 2, [8 x %struct.internal_link] [%struct.internal_link { i32 3, i32 1, i32 0 }, %struct.internal_link { i32 2, i32 1, i32 0 }, %struct.internal_link zeroinitializer, %struct.internal_link zeroinitializer, %struct.internal_link zeroinitializer, %struct.internal_link zeroinitializer, %struct.internal_link zeroinitializer, %struct.internal_link zeroinitializer] }, %struct.internal_pad zeroinitializer, %struct.internal_pad zeroinitializer, %struct.internal_pad zeroinitializer, %struct.internal_pad zeroinitializer, %struct.internal_pad zeroinitializer, %struct.internal_pad zeroinitializer], ptr null, ptr null }, %struct.internal_subdev { i32 2048, [8 x %struct.internal_pad] [%struct.internal_pad zeroinitializer, %struct.internal_pad { i32 2, [8 x %struct.internal_link] [%struct.internal_link { i32 3, i32 1, i32 0 }, %struct.internal_link { i32 2, i32 1, i32 0 }, %struct.internal_link zeroinitializer, %struct.internal_link zeroinitializer, %struct.internal_link zeroinitializer, %struct.internal_link zeroinitializer, %struct.internal_link zeroinitializer, %struct.internal_link zeroinitializer] }, %struct.internal_pad zeroinitializer, %struct.internal_pad zeroinitializer, %struct.internal_pad zeroinitializer, %struct.internal_pad zeroinitializer, %struct.internal_pad zeroinitializer, %struct.internal_pad zeroinitializer], ptr null, ptr null }, %struct.internal_subdev { i32 4096, [8 x %struct.internal_pad] [%struct.internal_pad zeroinitializer, %struct.internal_pad zeroinitializer, %struct.internal_pad { i32 1, [8 x %struct.internal_link] [%struct.internal_link { i32 3, i32 2, i32 0 }, %struct.internal_link zeroinitializer, %struct.internal_link zeroinitializer, %struct.internal_link zeroinitializer, %struct.internal_link zeroinitializer, %struct.internal_link zeroinitializer, %struct.internal_link zeroinitializer, %struct.internal_link zeroinitializer] }, %struct.internal_pad zeroinitializer, %struct.internal_pad zeroinitializer, %struct.internal_pad zeroinitializer, %struct.internal_pad zeroinitializer, %struct.internal_pad zeroinitializer], ptr @imx_media_vdic_register, ptr @imx_media_vdic_unregister }, %struct.internal_subdev { i32 8192, [8 x %struct.internal_pad] [%struct.internal_pad zeroinitializer, %struct.internal_pad { i32 1, [8 x %struct.internal_link] [%struct.internal_link { i32 4, i32 1, i32 0 }, %struct.internal_link zeroinitializer, %struct.internal_link zeroinitializer, %struct.internal_link zeroinitializer, %struct.internal_link zeroinitializer, %struct.internal_link zeroinitializer, %struct.internal_link zeroinitializer, %struct.internal_link zeroinitializer] }, %struct.internal_pad { i32 1, [8 x %struct.internal_link] [%struct.internal_link { i32 5, i32 2, i32 0 }, %struct.internal_link zeroinitializer, %struct.internal_link zeroinitializer, %struct.internal_link zeroinitializer, %struct.internal_link zeroinitializer, %struct.internal_link zeroinitializer, %struct.internal_link zeroinitializer, %struct.internal_link zeroinitializer] }, %struct.internal_pad zeroinitializer, %struct.internal_pad zeroinitializer, %struct.internal_pad zeroinitializer, %struct.internal_pad zeroinitializer, %struct.internal_pad zeroinitializer], ptr @imx_media_ic_register, ptr @imx_media_ic_unregister }, %struct.internal_subdev { i32 16384, [8 x %struct.internal_pad] zeroinitializer, ptr @imx_media_ic_register, ptr @imx_media_ic_unregister }, %struct.internal_subdev { i32 32768, [8 x %struct.internal_pad] zeroinitializer, ptr @imx_media_ic_register, ptr @imx_media_ic_unregister }], [1240 x i8] zeroinitializer }, align 32
@create_internal_link.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imx6_media\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"create_internal_link\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s:%d -> %s:%d\0A\00", [16 x i8] zeroinitializer }, align 32
@create_internal_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s: %s failed: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@create_internal_link._entry_ptr = internal global ptr @create_internal_link._entry, section ".printk_index", align 4
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 201, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 207, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [11 x i8] c"int_subdev\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 41, i32 37 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 145, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [53 x i8] c"../drivers/staging/media/imx/imx-media-internal-sd.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 152, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @create_internal_link._entry, ptr @create_internal_link._entry_ptr, ptr @imx_media_register_ipu_internal_subdevs._entry, ptr @imx_media_register_ipu_internal_subdevs._entry.3, ptr @imx_media_register_ipu_internal_subdevs._entry_ptr, ptr @imx_media_register_ipu_internal_subdevs._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @int_subdev, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_media_register_ipu_internal_subdevs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_media_register_ipu_internal_subdevs._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_subdev to i32), i32 4872, i32 6112, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_internal_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_media_register_ipu_internal_subdevs(ptr noundef %imxmd, ptr noundef %csi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.v4l2_subdev, ptr %csi, i32 0, i32 14
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %name = getelementptr inbounds %struct.imx_media_dev, ptr %imxmd, i32 0, i32 1, i32 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ipu_get_num(ptr noundef nonnull %5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp = icmp sgt i32 %call2, 1
  br i1 %cmp, label %do.end6, label %if.end12

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %name9 = getelementptr inbounds %struct.imx_media_dev, ptr %imxmd, i32 0, i32 1, i32 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name9, i32 noundef %call2) #6
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %mutex = getelementptr inbounds %struct.imx_media_dev, ptr %imxmd, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %arrayidx = getelementptr %struct.imx_media_dev, ptr %imxmd, i32 0, i32 5, i32 %call2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %if.then15, label %if.end12.if.end18_crit_edge

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %arrayidx, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end12.if.end18_crit_edge
  %v4l2_dev29 = getelementptr inbounds %struct.imx_media_dev, ptr %imxmd, i32 0, i32 1
  br label %for.body

for.cond39.preheader:                             ; preds = %for.inc
  %grp_id44 = getelementptr inbounds %struct.v4l2_subdev, ptr %csi, i32 0, i32 10
  br label %for.body41

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end18
  %i.0151 = phi i32 [ 0, %if.end18 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx22 = getelementptr %struct.imx_media_dev, ptr %imxmd, i32 0, i32 8, i32 %call2, i32 %i.0151
  %9 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx22, align 4
  %tobool23.not = icmp ne ptr %10, null
  %11 = and i32 %i.0151, 1073741822
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  %or.cond = select i1 %tobool23.not, i1 true, i1 %12
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.end26

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end26:                                         ; preds = %for.body
  %arrayidx20 = getelementptr [6 x %struct.internal_subdev], ptr @int_subdev, i32 0, i32 %i.0151
  %sync_register = getelementptr [6 x %struct.internal_subdev], ptr @int_subdev, i32 0, i32 %i.0151, i32 2
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  %13 = ptrtoint ptr %sync_register to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sync_register, align 4
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx20, align 4
  %call30 = tail call ptr %14(ptr noundef %v4l2_dev29, ptr noundef %3, ptr noundef nonnull %5, i32 noundef %16) #3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %cmp.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %while.body.preheader, label %if.end35

while.body.preheader:                             ; preds = %if.end26
  %17 = ptrtoint ptr %call30 to i32
  %dec157 = add nsw i32 %i.0151, -1
  %arrayidx67 = getelementptr %struct.imx_media_dev, ptr %imxmd, i32 0, i32 8, i32 %call2, i32 %dec157
  %18 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx67, align 4
  %tobool68.not = icmp eq ptr %19, null
  %20 = and i32 %dec157, 1073741822
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %21 = icmp eq i32 %20, 0
  %or.cond145 = select i1 %tobool68.not, i1 true, i1 %21
  br i1 %or.cond145, label %while.body.preheader.while.cond.backedge_crit_edge, label %if.end72

while.body.preheader.while.cond.backedge_crit_edge: ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.backedge

if.end35:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call30, ptr %arrayidx22, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end35, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0151, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.cond39.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body41:                                       ; preds = %for.inc59.for.body41_crit_edge, %for.cond39.preheader
  %i.1153 = phi i32 [ 0, %for.cond39.preheader ], [ %inc60, %for.inc59.for.body41_crit_edge ]
  %arrayidx42 = getelementptr [6 x %struct.internal_subdev], ptr @int_subdev, i32 0, i32 %i.1153
  %23 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx42, align 4
  %25 = ptrtoint ptr %grp_id44 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %grp_id44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp45 = icmp eq i32 %24, %26
  br i1 %cmp45, label %for.body41.if.end53_crit_edge, label %if.else

for.body41.if.end53_crit_edge:                    ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end53

if.else:                                          ; preds = %for.body41
  %arrayidx49 = getelementptr %struct.imx_media_dev, ptr %imxmd, i32 0, i32 8, i32 %call2, i32 %i.1153
  %27 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx49, align 4
  %tobool50.not = icmp eq ptr %28, null
  br i1 %tobool50.not, label %if.else.for.inc59_crit_edge, label %if.else.if.end53_crit_edge

if.else.if.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end53

if.else.for.inc59_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc59

if.end53:                                         ; preds = %if.else.if.end53_crit_edge, %for.body41.if.end53_crit_edge
  %sd.0 = phi ptr [ %28, %if.else.if.end53_crit_edge ], [ %csi, %for.body41.if.end53_crit_edge ]
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd.0, i32 0, i32 5
  %29 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp40.not.i = icmp eq i16 %30, 0
  br i1 %cmp40.not.i, label %if.end53.for.inc59_crit_edge, label %for.body.lr.ph.i

if.end53.for.inc59_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc59

for.body.lr.ph.i:                                 ; preds = %if.end53
  %pads.i = getelementptr inbounds %struct.media_entity, ptr %sd.0, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc16.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.041.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc17.i, %for.inc16.i.for.body.i_crit_edge ]
  %31 = ptrtoint ptr %pads.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pads.i, align 4
  %flags.i = getelementptr %struct.media_pad, ptr %32, i32 %i.041.i, i32 4
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc16.i_crit_edge, label %for.cond5.preheader.i

for.body.i.for.inc16.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc16.i

for.cond5.preheader.i:                            ; preds = %for.body.i
  %arrayidx.i = getelementptr [6 x %struct.internal_subdev], ptr @int_subdev, i32 0, i32 %i.1153, i32 1, i32 %i.041.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp637.i = icmp sgt i32 %36, 0
  br i1 %cmp637.i, label %for.cond5.preheader.i.for.body8.i_crit_edge, label %for.cond5.preheader.i.for.inc16.i_crit_edge

for.cond5.preheader.i.for.inc16.i_crit_edge:      ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc16.i

for.cond5.preheader.i.for.body8.i_crit_edge:      ; preds = %for.cond5.preheader.i
  br label %for.body8.i

for.cond5.i:                                      ; preds = %for.body8.i
  %inc.i = add nuw nsw i32 %j.038.i, 1
  %exitcond160.not = icmp eq i32 %inc.i, %36
  br i1 %exitcond160.not, label %for.cond5.i.for.inc16.i_crit_edge, label %for.cond5.i.for.body8.i_crit_edge

for.cond5.i.for.body8.i_crit_edge:                ; preds = %for.cond5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body8.i

for.cond5.i.for.inc16.i_crit_edge:                ; preds = %for.cond5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc16.i

for.body8.i:                                      ; preds = %for.cond5.i.for.body8.i_crit_edge, %for.cond5.preheader.i.for.body8.i_crit_edge
  %j.038.i = phi i32 [ %inc.i, %for.cond5.i.for.body8.i_crit_edge ], [ 0, %for.cond5.preheader.i.for.body8.i_crit_edge ]
  %arrayidx10.i = getelementptr [6 x %struct.internal_subdev], ptr @int_subdev, i32 0, i32 %i.1153, i32 1, i32 %i.041.i, i32 1, i32 %j.038.i
  %37 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx10.i, align 4
  %arrayidx12.i = getelementptr %struct.imx_media_dev, ptr %imxmd, i32 0, i32 8, i32 %call2, i32 %38
  %39 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx12.i, align 4
  %call.i = tail call fastcc i32 @create_internal_link(ptr noundef %imxmd, ptr noundef %sd.0, ptr noundef %40, ptr noundef %arrayidx10.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool13.not.i, label %for.cond5.i, label %if.then56

for.inc16.i:                                      ; preds = %for.cond5.i.for.inc16.i_crit_edge, %for.cond5.preheader.i.for.inc16.i_crit_edge, %for.body.i.for.inc16.i_crit_edge
  %inc17.i = add nuw nsw i32 %i.041.i, 1
  %41 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %42 to i32
  %cmp.i146 = icmp ult i32 %inc17.i, %conv.i
  br i1 %cmp.i146, label %for.inc16.i.for.body.i_crit_edge, label %for.inc16.i.for.inc59_crit_edge

for.inc16.i.for.inc59_crit_edge:                  ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc59

for.inc16.i.for.body.i_crit_edge:                 ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

if.then56:                                        ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  tail call void @imx_media_unregister_ipu_internal_subdevs(ptr noundef %imxmd)
  br label %cleanup

for.inc59:                                        ; preds = %for.inc16.i.for.inc59_crit_edge, %if.end53.for.inc59_crit_edge, %if.else.for.inc59_crit_edge
  %inc60 = add nuw nsw i32 %i.1153, 1
  %exitcond161.not = icmp eq i32 %inc60, 6
  br i1 %exitcond161.not, label %for.end61, label %for.inc59.for.body41_crit_edge

for.inc59.for.body41_crit_edge:                   ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body41

for.end61:                                        ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  br label %cleanup

if.end72:                                         ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  %sync_unregister = getelementptr [6 x %struct.internal_subdev], ptr @int_subdev, i32 0, i32 %dec157, i32 3
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  %43 = ptrtoint ptr %sync_unregister to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sync_unregister, align 4
  %call75 = tail call i32 %44(ptr noundef nonnull %19) #3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end72, %while.body.preheader.while.cond.backedge_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0151)
  %cmp63 = icmp ugt i32 %i.0151, 1
  br i1 %cmp63, label %while.body.1, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.1:                                     ; preds = %while.cond.backedge
  %dec157.1 = add nsw i32 %i.0151, -2
  %arrayidx67.1 = getelementptr %struct.imx_media_dev, ptr %imxmd, i32 0, i32 8, i32 %call2, i32 %dec157.1
  %45 = ptrtoint ptr %arrayidx67.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx67.1, align 4
  %tobool68.not.1 = icmp eq ptr %46, null
  %47 = and i32 %dec157.1, 1073741822
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %48 = icmp eq i32 %47, 0
  %or.cond145.1 = select i1 %tobool68.not.1, i1 true, i1 %48
  br i1 %or.cond145.1, label %while.body.1.while.cond.backedge.1_crit_edge, label %if.end72.1

while.body.1.while.cond.backedge.1_crit_edge:     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.backedge.1

if.end72.1:                                       ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #5
  %sync_unregister.1 = getelementptr [6 x %struct.internal_subdev], ptr @int_subdev, i32 0, i32 %dec157.1, i32 3
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  %49 = ptrtoint ptr %sync_unregister.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sync_unregister.1, align 4
  %call75.1 = tail call i32 %50(ptr noundef nonnull %46) #3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  br label %while.cond.backedge.1

while.cond.backedge.1:                            ; preds = %if.end72.1, %while.body.1.while.cond.backedge.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0151)
  %cmp63.1 = icmp ugt i32 %i.0151, 2
  br i1 %cmp63.1, label %while.body.2, label %while.cond.backedge.1.while.end_crit_edge

while.cond.backedge.1.while.end_crit_edge:        ; preds = %while.cond.backedge.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.2:                                     ; preds = %while.cond.backedge.1
  %dec157.2 = add nsw i32 %i.0151, -3
  %arrayidx67.2 = getelementptr %struct.imx_media_dev, ptr %imxmd, i32 0, i32 8, i32 %call2, i32 %dec157.2
  %51 = ptrtoint ptr %arrayidx67.2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx67.2, align 4
  %tobool68.not.2 = icmp eq ptr %52, null
  %53 = and i32 %dec157.2, 1073741822
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %54 = icmp eq i32 %53, 0
  %or.cond145.2 = select i1 %tobool68.not.2, i1 true, i1 %54
  br i1 %or.cond145.2, label %while.body.2.while.cond.backedge.2_crit_edge, label %if.end72.2

while.body.2.while.cond.backedge.2_crit_edge:     ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.backedge.2

if.end72.2:                                       ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #5
  %sync_unregister.2 = getelementptr [6 x %struct.internal_subdev], ptr @int_subdev, i32 0, i32 %dec157.2, i32 3
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  %55 = ptrtoint ptr %sync_unregister.2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sync_unregister.2, align 4
  %call75.2 = tail call i32 %56(ptr noundef nonnull %52) #3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  br label %while.cond.backedge.2

while.cond.backedge.2:                            ; preds = %if.end72.2, %while.body.2.while.cond.backedge.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0151)
  %cmp63.2 = icmp ugt i32 %i.0151, 3
  br i1 %cmp63.2, label %while.body.3, label %while.cond.backedge.2.while.end_crit_edge

while.cond.backedge.2.while.end_crit_edge:        ; preds = %while.cond.backedge.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.3:                                     ; preds = %while.cond.backedge.2
  %dec157.3 = add nsw i32 %i.0151, -4
  %arrayidx67.3 = getelementptr %struct.imx_media_dev, ptr %imxmd, i32 0, i32 8, i32 %call2, i32 %dec157.3
  %57 = ptrtoint ptr %arrayidx67.3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx67.3, align 4
  %tobool68.not.3 = icmp eq ptr %58, null
  %59 = and i32 %dec157.3, 1073741822
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %60 = icmp eq i32 %59, 0
  %or.cond145.3 = select i1 %tobool68.not.3, i1 true, i1 %60
  br i1 %or.cond145.3, label %while.body.3.while.cond.backedge.3_crit_edge, label %if.end72.3

while.body.3.while.cond.backedge.3_crit_edge:     ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.backedge.3

if.end72.3:                                       ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #5
  %sync_unregister.3 = getelementptr [6 x %struct.internal_subdev], ptr @int_subdev, i32 0, i32 %dec157.3, i32 3
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  %61 = ptrtoint ptr %sync_unregister.3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sync_unregister.3, align 4
  %call75.3 = tail call i32 %62(ptr noundef nonnull %58) #3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  br label %while.cond.backedge.3

while.cond.backedge.3:                            ; preds = %if.end72.3, %while.body.3.while.cond.backedge.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0151)
  %cmp63.3 = icmp ugt i32 %i.0151, 4
  br i1 %cmp63.3, label %while.body.4, label %while.cond.backedge.3.while.end_crit_edge

while.cond.backedge.3.while.end_crit_edge:        ; preds = %while.cond.backedge.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.4:                                     ; preds = %while.cond.backedge.3
  %dec157.4 = add nsw i32 %i.0151, -5
  %arrayidx67.4 = getelementptr %struct.imx_media_dev, ptr %imxmd, i32 0, i32 8, i32 %call2, i32 %dec157.4
  %63 = ptrtoint ptr %arrayidx67.4 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx67.4, align 4
  %tobool68.not.4 = icmp eq ptr %64, null
  %65 = and i32 %dec157.4, 1073741822
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %66 = icmp eq i32 %65, 0
  %or.cond145.4 = select i1 %tobool68.not.4, i1 true, i1 %66
  br i1 %or.cond145.4, label %while.body.4.while.end_crit_edge, label %if.end72.4

while.body.4.while.end_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

if.end72.4:                                       ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #5
  %sync_unregister.4 = getelementptr [6 x %struct.internal_subdev], ptr @int_subdev, i32 0, i32 %dec157.4, i32 3
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  %67 = ptrtoint ptr %sync_unregister.4 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sync_unregister.4, align 4
  %call75.4 = tail call i32 %68(ptr noundef nonnull %64) #3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  br label %while.end

while.end:                                        ; preds = %if.end72.4, %while.body.4.while.end_crit_edge, %while.cond.backedge.3.while.end_crit_edge, %while.cond.backedge.2.while.end_crit_edge, %while.cond.backedge.1.while.end_crit_edge, %while.cond.backedge.while.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  br label %cleanup

cleanup:                                          ; preds = %while.end, %for.end61, %if.then56, %do.end6, %do.end
  %retval.0 = phi i32 [ -19, %do.end6 ], [ %17, %while.end ], [ %call.i, %if.then56 ], [ 0, %for.end61 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_get_num(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_media_unregister_ipu_internal_subdevs(ptr noundef %imxmd) local_unnamed_addr #0 align 64 {
for.inc.1:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.imx_media_dev, ptr %imxmd, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %arrayidx5.2 = getelementptr %struct.imx_media_dev, ptr %imxmd, i32 0, i32 8, i32 0, i32 2
  %0 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx5.2, align 4
  %tobool.not.2 = icmp eq ptr %1, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  %call.2 = tail call i32 @imx_media_vdic_unregister(ptr noundef nonnull %1) #3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx5.3 = getelementptr %struct.imx_media_dev, ptr %imxmd, i32 0, i32 8, i32 0, i32 3
  %2 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx5.3, align 4
  %tobool.not.3 = icmp eq ptr %3, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  %call.3 = tail call i32 @imx_media_ic_unregister(ptr noundef nonnull %3) #3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx5.4 = getelementptr %struct.imx_media_dev, ptr %imxmd, i32 0, i32 8, i32 0, i32 4
  %4 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx5.4, align 4
  %tobool.not.4 = icmp eq ptr %5, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  %call.4 = tail call i32 @imx_media_ic_unregister(ptr noundef nonnull %5) #3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx5.5 = getelementptr %struct.imx_media_dev, ptr %imxmd, i32 0, i32 8, i32 0, i32 5
  %6 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5.5, align 4
  %tobool.not.5 = icmp eq ptr %7, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.1.1_crit_edge, label %if.end.5

for.inc.4.for.inc.1.1_crit_edge:                  ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.1.1

if.end.5:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  %call.5 = tail call i32 @imx_media_ic_unregister(ptr noundef nonnull %7) #3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  br label %for.inc.1.1

for.inc.1.1:                                      ; preds = %if.end.5, %for.inc.4.for.inc.1.1_crit_edge
  %arrayidx5.2.1 = getelementptr %struct.imx_media_dev, ptr %imxmd, i32 0, i32 8, i32 1, i32 2
  %8 = ptrtoint ptr %arrayidx5.2.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5.2.1, align 4
  %tobool.not.2.1 = icmp eq ptr %9, null
  br i1 %tobool.not.2.1, label %for.inc.1.1.for.inc.2.1_crit_edge, label %if.end.2.1

for.inc.1.1.for.inc.2.1_crit_edge:                ; preds = %for.inc.1.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.2.1

if.end.2.1:                                       ; preds = %for.inc.1.1
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  %call.2.1 = tail call i32 @imx_media_vdic_unregister(ptr noundef nonnull %9) #3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  br label %for.inc.2.1

for.inc.2.1:                                      ; preds = %if.end.2.1, %for.inc.1.1.for.inc.2.1_crit_edge
  %arrayidx5.3.1 = getelementptr %struct.imx_media_dev, ptr %imxmd, i32 0, i32 8, i32 1, i32 3
  %10 = ptrtoint ptr %arrayidx5.3.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx5.3.1, align 4
  %tobool.not.3.1 = icmp eq ptr %11, null
  br i1 %tobool.not.3.1, label %for.inc.2.1.for.inc.3.1_crit_edge, label %if.end.3.1

for.inc.2.1.for.inc.3.1_crit_edge:                ; preds = %for.inc.2.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.3.1

if.end.3.1:                                       ; preds = %for.inc.2.1
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  %call.3.1 = tail call i32 @imx_media_ic_unregister(ptr noundef nonnull %11) #3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  br label %for.inc.3.1

for.inc.3.1:                                      ; preds = %if.end.3.1, %for.inc.2.1.for.inc.3.1_crit_edge
  %arrayidx5.4.1 = getelementptr %struct.imx_media_dev, ptr %imxmd, i32 0, i32 8, i32 1, i32 4
  %12 = ptrtoint ptr %arrayidx5.4.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx5.4.1, align 4
  %tobool.not.4.1 = icmp eq ptr %13, null
  br i1 %tobool.not.4.1, label %for.inc.3.1.for.inc.4.1_crit_edge, label %if.end.4.1

for.inc.3.1.for.inc.4.1_crit_edge:                ; preds = %for.inc.3.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.4.1

if.end.4.1:                                       ; preds = %for.inc.3.1
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  %call.4.1 = tail call i32 @imx_media_ic_unregister(ptr noundef nonnull %13) #3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  br label %for.inc.4.1

for.inc.4.1:                                      ; preds = %if.end.4.1, %for.inc.3.1.for.inc.4.1_crit_edge
  %arrayidx5.5.1 = getelementptr %struct.imx_media_dev, ptr %imxmd, i32 0, i32 8, i32 1, i32 5
  %14 = ptrtoint ptr %arrayidx5.5.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx5.5.1, align 4
  %tobool.not.5.1 = icmp eq ptr %15, null
  br i1 %tobool.not.5.1, label %for.inc.4.1.for.inc.5.1_crit_edge, label %if.end.5.1

for.inc.4.1.for.inc.5.1_crit_edge:                ; preds = %for.inc.4.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.5.1

if.end.5.1:                                       ; preds = %for.inc.4.1
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  %call.5.1 = tail call i32 @imx_media_ic_unregister(ptr noundef nonnull %15) #3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  br label %for.inc.5.1

for.inc.5.1:                                      ; preds = %if.end.5.1, %for.inc.4.1.for.inc.5.1_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_media_vdic_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_vdic_unregister(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_media_ic_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_ic_unregister(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_internal_link(ptr noundef %imxmd, ptr noundef %src, ptr noundef %sink, ptr nocapture noundef readonly %link) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pads = getelementptr inbounds %struct.media_entity, ptr %src, i32 0, i32 9
  %0 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pads, align 4
  %local_pad = getelementptr inbounds %struct.internal_link, ptr %link, i32 0, i32 1
  %2 = ptrtoint ptr %local_pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %local_pad, align 4
  %arrayidx = getelementptr %struct.media_pad, ptr %1, i32 %3
  %pads2 = getelementptr inbounds %struct.media_entity, ptr %sink, i32 0, i32 9
  %4 = ptrtoint ptr %pads2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pads2, align 4
  %remote_pad = getelementptr inbounds %struct.internal_link, ptr %link, i32 0, i32 2
  %6 = ptrtoint ptr %remote_pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %remote_pad, align 4
  %arrayidx3 = getelementptr %struct.media_pad, ptr %5, i32 %7
  %call = tail call ptr @media_entity_find_link(ptr noundef %arrayidx, ptr noundef %arrayidx3) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_internal_link.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_internal_link, %if.then8)) #3
          to label %do.end [label %if.then8], !srcloc !30

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %imxmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %imxmd, align 8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %src, i32 0, i32 9
  %10 = ptrtoint ptr %local_pad to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %local_pad, align 4
  %name10 = getelementptr inbounds %struct.v4l2_subdev, ptr %sink, i32 0, i32 9
  %12 = ptrtoint ptr %remote_pad to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %remote_pad, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @create_internal_link.__UNIQUE_ID_ddebug315, ptr noundef %9, ptr noundef nonnull @.str.8, ptr noundef %name, i32 noundef %11, ptr noundef %name10, i32 noundef %13) #3
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %14 = ptrtoint ptr %local_pad to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %local_pad, align 4
  %conv = trunc i32 %15 to i16
  %16 = ptrtoint ptr %remote_pad to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %remote_pad, align 4
  %conv18 = trunc i32 %17 to i16
  %call19 = tail call i32 @media_create_pad_link(ptr noundef %src, i16 noundef zeroext %conv, ptr noundef %sink, i16 noundef zeroext %conv18, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.end.cleanup_crit_edge, label %do.end24

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end24:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %name26 = getelementptr inbounds %struct.imx_media_dev, ptr %imxmd, i32 0, i32 1, i32 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name26, ptr noundef nonnull @.str.7, i32 noundef %call19) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call19, %do.end24 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_find_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !15, !16, !17, !19, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/imx/imx-media-internal-sd.c", i32 201, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @imx_media_register_ipu_internal_subdevs._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @imx_media_register_ipu_internal_subdevs._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/imx/imx-media-internal-sd.c", i32 207, i32 3}
!8 = !{ptr @imx_media_register_ipu_internal_subdevs._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @imx_media_register_ipu_internal_subdevs._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @int_subdev, !11, !"int_subdev", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/imx/imx-media-internal-sd.c", i32 41, i32 37}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/imx/imx-media-internal-sd.c", i32 145, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @create_internal_link.__UNIQUE_ID_ddebug315, !13, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/media/imx/imx-media-internal-sd.c", i32 152, i32 3}
!19 = !{ptr @create_internal_link._entry, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @create_internal_link._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i64 2148294719, i64 2148294724, i64 2148294737, i64 2148294781, i64 2148294815, i64 2148294836}
