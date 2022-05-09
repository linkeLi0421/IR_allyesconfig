; ModuleID = '/llk/IR_all_yes/drivers/media/usb/uvc/uvc_entity.c_pt.bc'
source_filename = "../drivers/media/usb/uvc/uvc_entity.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uvc_video_chain = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, %struct.mutex, %struct.v4l2_prio_state, i32, i8 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.uvc_device = type { ptr, ptr, i32, i32, i32, [32 x i8], ptr, %struct.mutex, i32, %struct.atomic_t, %struct.media_device, %struct.v4l2_device, i16, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.kref, ptr, ptr, ptr, ptr, [64 x i8], %struct.uvc_ctrl_work, ptr }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.uvc_ctrl_work = type { %struct.work_struct, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.uvc_entity = type { %struct.list_head, %struct.list_head, i32, i16, i16, [64 x i8], [16 x i8], ptr, %struct.v4l2_subdev, i32, i32, ptr, %union.anon.92, i8, ptr, ptr, ptr, i32, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%union.anon.92 = type { %struct.anon.94 }
%struct.anon.94 = type { i8, ptr, i8, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@uvc_mc_register_entities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 145, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to initialize entity for entity %u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"uvc_mc_register_entities\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/usb/uvc/uvc_entity.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uvc_mc_register_entities._entry_ptr = internal global ptr @uvc_mc_register_entities._entry, section ".printk_index", align 4
@uvc_mc_register_entities._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 155, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to create links for entity %u\0A\00", [58 x i8] zeroinitializer }, align 32
@uvc_mc_register_entities._entry_ptr.7 = internal global ptr @uvc_mc_register_entities._entry.5, section ".printk_index", align 4
@uvc_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 5, i64 6, i64 513, i64 1025, i64 1026, i64 1027]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 143, i32 4 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 153, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"uvc_subdev_ops\00", align 1
@___asan_gen_.33 = private constant [38 x i8] c"../drivers/media/usb/uvc/uvc_entity.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 59, i32 37 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @uvc_mc_register_entities._entry, ptr @uvc_mc_register_entities._entry.5, ptr @uvc_mc_register_entities._entry_ptr, ptr @uvc_mc_register_entities._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @uvc_subdev_ops], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_mc_register_entities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_mc_register_entities._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @uvc_mc_cleanup_entity(ptr nocapture noundef %entity) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_mc_register_entities(ptr noundef readonly %chain) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %entities = getelementptr inbounds %struct.uvc_video_chain, ptr %chain, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %uvc_mc_init_entity.exit.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %entities, %entry ], [ %.pn, %uvc_mc_init_entity.exit.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %entities
  br i1 %cmp.not, label %for.cond15.preheader, label %for.body

for.cond15.preheader:                             ; preds = %for.cond
  %1 = ptrtoint ptr %entities to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn6076 = load ptr, ptr %entities, align 4
  %cmp18.not77 = icmp eq ptr %.pn6076, %entities
  br i1 %cmp18.not77, label %for.cond15.preheader.cleanup_crit_edge, label %for.cond15.preheader.for.body21_crit_edge

for.cond15.preheader.for.body21_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body21

for.cond15.preheader.cleanup_crit_edge:           ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %type.i = getelementptr i8, ptr %.pn, i32 14
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type.i, align 2
  %4 = and i16 %3, 32767
  call void @__sanitizer_cov_trace_const_cmp2(i16 257, i16 %4)
  %cmp.not.i = icmp eq i16 %4, 257
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %subdev.i = getelementptr i8, ptr %.pn, i32 100
  tail call void @v4l2_subdev_init(ptr noundef %subdev.i, ptr noundef nonnull @uvc_subdev_ops) #4
  %name.i = getelementptr i8, ptr %.pn, i32 216
  %name3.i = getelementptr i8, ptr %.pn, i32 16
  %call.i = tail call i32 @strscpy(ptr noundef %name.i, ptr noundef %name3.i, i32 noundef 32) #4
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %type.i, align 2
  %7 = and i16 %6, 32767
  %and7.i = zext i16 %7 to i32
  %8 = zext i32 %and7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and7.i, label %sw.default.i [
    i32 4, label %if.then.i.sw.epilog.i_crit_edge
    i32 5, label %if.then.i.sw.bb8.i_crit_edge
    i32 6, label %if.then.i.sw.bb8.i_crit_edge95
    i32 1025, label %if.then.i.sw.bb9.i_crit_edge
    i32 1027, label %if.then.i.sw.bb9.i_crit_edge96
    i32 1026, label %sw.bb10.i
    i32 513, label %sw.bb11.i
  ]

if.then.i.sw.bb9.i_crit_edge96:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb9.i

if.then.i.sw.bb9.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb9.i

if.then.i.sw.bb8.i_crit_edge95:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb8.i

if.then.i.sw.bb8.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb8.i

if.then.i.sw.epilog.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.then.i.sw.bb8.i_crit_edge, %if.then.i.sw.bb8.i_crit_edge95
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.then.i.sw.bb9.i_crit_edge, %if.then.i.sw.bb9.i_crit_edge96
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %if.then.i.sw.epilog.i_crit_edge
  %function.0.i = phi i32 [ 131072, %sw.default.i ], [ 131073, %sw.bb11.i ], [ 196610, %sw.bb10.i ], [ 196611, %sw.bb9.i ], [ 16386, %sw.bb8.i ], [ 20481, %if.then.i.sw.epilog.i_crit_edge ]
  %function15.i = getelementptr i8, ptr %.pn, i32 124
  %9 = ptrtoint ptr %function15.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %function.0.i, ptr %function15.i, align 4
  %num_pads.i = getelementptr i8, ptr %.pn, i32 296
  %10 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_pads.i, align 4
  %conv18.i = trunc i32 %11 to i16
  %pads.i = getelementptr i8, ptr %.pn, i32 304
  %12 = ptrtoint ptr %pads.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pads.i, align 4
  %call19.i = tail call i32 @media_entity_pads_init(ptr noundef %subdev.i, i16 noundef zeroext %conv18.i, ptr noundef %13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %sw.epilog.i.cleanup.sink.split_crit_edge, label %cleanup.i

sw.epilog.i.cleanup.sink.split_crit_edge:         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

cleanup.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chain, align 4
  %vdev.i = getelementptr inbounds %struct.uvc_device, ptr %15, i32 0, i32 11
  %call24.i = tail call i32 @v4l2_device_register_subdev(ptr noundef %vdev.i, ptr noundef %subdev.i) #4
  br label %uvc_mc_init_entity.exit

if.else.i:                                        ; preds = %for.body
  %vdev25.i = getelementptr i8, ptr %.pn, i32 96
  %16 = ptrtoint ptr %vdev25.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vdev25.i, align 4
  %cmp26.not.i = icmp eq ptr %17, null
  br i1 %cmp26.not.i, label %if.else.i.uvc_mc_init_entity.exit_crit_edge, label %if.then28.i

if.else.i.uvc_mc_init_entity.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %uvc_mc_init_entity.exit

if.then28.i:                                      ; preds = %if.else.i
  %num_pads31.i = getelementptr i8, ptr %.pn, i32 296
  %18 = ptrtoint ptr %num_pads31.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_pads31.i, align 4
  %conv32.i = trunc i32 %19 to i16
  %pads33.i = getelementptr i8, ptr %.pn, i32 304
  %20 = ptrtoint ptr %pads33.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pads33.i, align 4
  %call34.i = tail call i32 @media_entity_pads_init(ptr noundef nonnull %17, i16 noundef zeroext %conv32.i, ptr noundef %21) #4
  %flags.i = getelementptr i8, ptr %.pn, i32 8
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 4
  %and35.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool.not.i, label %if.then28.i.uvc_mc_init_entity.exit_crit_edge, label %if.then36.i

if.then28.i.uvc_mc_init_entity.exit_crit_edge:    ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %uvc_mc_init_entity.exit

if.then36.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %vdev25.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vdev25.i, align 4
  %flags39.i = getelementptr inbounds %struct.media_entity, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %flags39.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags39.i, align 4
  %or.i = or i32 %27, 1
  store i32 %or.i, ptr %flags39.i, align 4
  br label %uvc_mc_init_entity.exit

uvc_mc_init_entity.exit:                          ; preds = %if.then36.i, %if.then28.i.uvc_mc_init_entity.exit_crit_edge, %if.else.i.uvc_mc_init_entity.exit_crit_edge, %cleanup.i
  %retval.1.i = phi i32 [ %call24.i, %cleanup.i ], [ %call34.i, %if.then36.i ], [ %call34.i, %if.then28.i.uvc_mc_init_entity.exit_crit_edge ], [ 0, %if.else.i.uvc_mc_init_entity.exit_crit_edge ]
  %cmp3 = icmp slt i32 %retval.1.i, 0
  br i1 %cmp3, label %uvc_mc_init_entity.exit.cleanup.sink.split_crit_edge, label %uvc_mc_init_entity.exit.for.cond_crit_edge

uvc_mc_init_entity.exit.for.cond_crit_edge:       ; preds = %uvc_mc_init_entity.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

uvc_mc_init_entity.exit.cleanup.sink.split_crit_edge: ; preds = %uvc_mc_init_entity.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

for.body21:                                       ; preds = %uvc_mc_create_links.exit.for.body21_crit_edge, %for.cond15.preheader.for.body21_crit_edge
  %.pn6078 = phi ptr [ %.pn60, %uvc_mc_create_links.exit.for.body21_crit_edge ], [ %.pn6076, %for.cond15.preheader.for.body21_crit_edge ]
  %type.i61 = getelementptr i8, ptr %.pn6078, i32 14
  %28 = ptrtoint ptr %type.i61 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %type.i61, align 2
  %30 = and i16 %29, 32767
  call void @__sanitizer_cov_trace_const_cmp2(i16 257, i16 %30)
  %cmp.i = icmp eq i16 %30, 257
  br i1 %cmp.i, label %cond.true.i, label %cond.false5.i

cond.true.i:                                      ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #6
  %vdev.i62 = getelementptr i8, ptr %.pn6078, i32 96
  %31 = ptrtoint ptr %vdev.i62 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vdev.i62, align 4
  br label %cond.end7.i

cond.false5.i:                                    ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #6
  %subdev.i63 = getelementptr i8, ptr %.pn6078, i32 100
  br label %cond.end7.i

cond.end7.i:                                      ; preds = %cond.false5.i, %cond.true.i
  %cond8.i = phi ptr [ %subdev.i63, %cond.false5.i ], [ %32, %cond.true.i ]
  %cmp9.i = icmp eq ptr %cond8.i, null
  br i1 %cmp9.i, label %cond.end7.i.uvc_mc_create_links.exit_crit_edge, label %for.cond.preheader.i

cond.end7.i.uvc_mc_create_links.exit_crit_edge:   ; preds = %cond.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %uvc_mc_create_links.exit

for.cond.preheader.i:                             ; preds = %cond.end7.i
  %num_pads.i64 = getelementptr i8, ptr %.pn6078, i32 296
  %33 = ptrtoint ptr %num_pads.i64 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_pads.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp1185.not.i = icmp eq i32 %34, 0
  br i1 %cmp1185.not.i, label %for.cond.preheader.i.uvc_mc_create_links.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.uvc_mc_create_links.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %uvc_mc_create_links.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %pads.i65 = getelementptr i8, ptr %.pn6078, i32 304
  %baSourceID.i = getelementptr i8, ptr %.pn6078, i32 328
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.086.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %35 = ptrtoint ptr %pads.i65 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pads.i65, align 4
  %flags13.i = getelementptr %struct.media_pad, ptr %36, i32 %i.086.i, i32 4
  %37 = ptrtoint ptr %flags13.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags13.i, align 4
  %and14.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end17.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end17.i:                                       ; preds = %for.body.i
  %39 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chain, align 4
  %41 = ptrtoint ptr %baSourceID.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %baSourceID.i, align 4
  %arrayidx18.i = getelementptr i8, ptr %42, i32 %i.086.i
  %43 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx18.i, align 1
  %conv19.i = zext i8 %44 to i32
  %call.i66 = tail call ptr @uvc_entity_by_id(ptr noundef %40, i32 noundef %conv19.i) #4
  %cmp20.i67 = icmp eq ptr %call.i66, null
  br i1 %cmp20.i67, label %if.end17.i.cleanup.sink.split_crit_edge, label %if.end23.i

if.end17.i.cleanup.sink.split_crit_edge:          ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end23.i:                                       ; preds = %if.end17.i
  %type24.i = getelementptr inbounds %struct.uvc_entity, ptr %call.i66, i32 0, i32 4
  %45 = ptrtoint ptr %type24.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %type24.i, align 2
  %47 = and i16 %46, 32767
  call void @__sanitizer_cov_trace_const_cmp2(i16 257, i16 %47)
  %cmp27.i = icmp eq i16 %47, 257
  br i1 %cmp27.i, label %cond.true29.i, label %cond.false38.i

cond.true29.i:                                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #6
  %vdev30.i = getelementptr inbounds %struct.uvc_entity, ptr %call.i66, i32 0, i32 7
  %48 = ptrtoint ptr %vdev30.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vdev30.i, align 4
  br label %cond.end41.i

cond.false38.i:                                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #6
  %subdev39.i = getelementptr inbounds %struct.uvc_entity, ptr %call.i66, i32 0, i32 8
  br label %cond.end41.i

cond.end41.i:                                     ; preds = %cond.false38.i, %cond.true29.i
  %cond42.i = phi ptr [ %subdev39.i, %cond.false38.i ], [ %49, %cond.true29.i ]
  %cmp43.i = icmp eq ptr %cond42.i, null
  br i1 %cmp43.i, label %cond.end41.i.for.inc.i_crit_edge, label %if.end46.i

cond.end41.i.for.inc.i_crit_edge:                 ; preds = %cond.end41.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end46.i:                                       ; preds = %cond.end41.i
  %num_pads47.i = getelementptr inbounds %struct.uvc_entity, ptr %call.i66, i32 0, i32 9
  %50 = ptrtoint ptr %num_pads47.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_pads47.i, align 4
  %52 = trunc i32 %51 to i8
  %conv48.i = add i8 %52, -1
  %conv49.i = zext i8 %conv48.i to i16
  %conv50.i = trunc i32 %i.086.i to i16
  %call51.i = tail call i32 @media_create_pad_link(ptr noundef nonnull %cond42.i, i16 noundef zeroext %conv49.i, ptr noundef nonnull %cond8.i, i16 noundef zeroext %conv50.i, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %cmp52.i = icmp slt i32 %call51.i, 0
  br i1 %cmp52.i, label %if.end46.i.cleanup.sink.split_crit_edge, label %if.end46.i.for.inc.i_crit_edge

if.end46.i.for.inc.i_crit_edge:                   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end46.i.cleanup.sink.split_crit_edge:          ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

for.inc.i:                                        ; preds = %if.end46.i.for.inc.i_crit_edge, %cond.end41.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.086.i, 1
  %53 = ptrtoint ptr %num_pads.i64 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_pads.i64, align 4
  %cmp11.i = icmp ult i32 %inc.i, %54
  br i1 %cmp11.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.uvc_mc_create_links.exit_crit_edge

for.inc.i.uvc_mc_create_links.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %uvc_mc_create_links.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

uvc_mc_create_links.exit:                         ; preds = %for.inc.i.uvc_mc_create_links.exit_crit_edge, %for.cond.preheader.i.uvc_mc_create_links.exit_crit_edge, %cond.end7.i.uvc_mc_create_links.exit_crit_edge
  %55 = ptrtoint ptr %.pn6078 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn60 = load ptr, ptr %.pn6078, align 4
  %cmp18.not = icmp eq ptr %.pn60, %entities
  br i1 %cmp18.not, label %uvc_mc_create_links.exit.cleanup_crit_edge, label %uvc_mc_create_links.exit.for.body21_crit_edge

uvc_mc_create_links.exit.for.body21_crit_edge:    ; preds = %uvc_mc_create_links.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body21

uvc_mc_create_links.exit.cleanup_crit_edge:       ; preds = %uvc_mc_create_links.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end46.i.cleanup.sink.split_crit_edge, %if.end17.i.cleanup.sink.split_crit_edge, %uvc_mc_init_entity.exit.cleanup.sink.split_crit_edge, %sw.epilog.i.cleanup.sink.split_crit_edge
  %.pn6078.lcssa.sink = phi ptr [ %.pn6078, %if.end17.i.cleanup.sink.split_crit_edge ], [ %.pn6078, %if.end46.i.cleanup.sink.split_crit_edge ], [ %.pn, %sw.epilog.i.cleanup.sink.split_crit_edge ], [ %.pn, %uvc_mc_init_entity.exit.cleanup.sink.split_crit_edge ]
  %.str.6.sink = phi ptr [ @.str.6, %if.end17.i.cleanup.sink.split_crit_edge ], [ @.str.6, %if.end46.i.cleanup.sink.split_crit_edge ], [ @.str, %sw.epilog.i.cleanup.sink.split_crit_edge ], [ @.str, %uvc_mc_init_entity.exit.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call51.i, %if.end46.i.cleanup.sink.split_crit_edge ], [ -22, %if.end17.i.cleanup.sink.split_crit_edge ], [ %retval.1.i, %uvc_mc_init_entity.exit.cleanup.sink.split_crit_edge ], [ %call19.i, %sw.epilog.i.cleanup.sink.split_crit_edge ]
  %56 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %chain, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 8
  %dev31 = getelementptr inbounds %struct.usb_device, ptr %59, i32 0, i32 15
  %id32 = getelementptr i8, ptr %.pn6078.lcssa.sink, i32 12
  %60 = ptrtoint ptr %id32 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %id32, align 4
  %conv33 = zext i16 %61 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev31, ptr noundef nonnull %.str.6.sink, i32 noundef %conv33) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %uvc_mc_create_links.exit.cleanup_crit_edge, %for.cond15.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.cond15.preheader.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %uvc_mc_create_links.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uvc_entity_by_id(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/uvc/uvc_entity.c", i32 143, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @uvc_mc_register_entities._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @uvc_mc_register_entities._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/uvc/uvc_entity.c", i32 153, i32 4}
!10 = !{ptr @uvc_mc_register_entities._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @uvc_mc_register_entities._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @uvc_subdev_ops, !13, !"uvc_subdev_ops", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/uvc/uvc_entity.c", i32 59, i32 37}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
