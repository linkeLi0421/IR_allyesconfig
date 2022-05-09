; ModuleID = '/llk/IR_all_yes/drivers/staging/media/tegra-video/video.c_pt.bc'
source_filename = "../drivers/staging/media/tegra-video/video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.host1x_driver = type { %struct.device_driver, ptr, %struct.list_head, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.host1x_device = type { ptr, %struct.list_head, %struct.device, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, %struct.device_dma_parameters }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.tegra_video_device = type { %struct.v4l2_device, %struct.media_device, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.tegra_vi_channel = type { %struct.list_head, %struct.video_device, %struct.mutex, %struct.media_pad, ptr, [2 x ptr], [2 x ptr], [2 x %struct.spinlock], ptr, %struct.wait_queue_head, ptr, %struct.wait_queue_head, %struct.v4l2_pix_format, ptr, %struct.vb2_queue, i32, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, [2 x i8], i8, i8, ptr, %struct.v4l2_ctrl_handler, i32, [2 x i32], [2 x i32], i32, %struct.v4l2_async_notifier }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.101, i32, i32 }
%union.anon.101 = type { i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }

@__initcall__kmod_tegra_video__298_165_host1x_video_init6 = internal global ptr @host1x_video_init, section ".initcall6.init", align 4
@drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @tegra_csi_driver, ptr @tegra_vi_driver], [24 x i8] zeroinitializer }, align 32
@host1x_video_driver = internal global { %struct.host1x_driver, [60 x i8] } { %struct.host1x_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @host1x_video_subdevs, %struct.list_head zeroinitializer, ptr @host1x_video_probe, ptr @host1x_video_remove, ptr null }, [60 x i8] zeroinitializer }, align 32
@__exitcall_host1x_video_exit = internal global ptr @host1x_video_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author299 = internal constant [64 x i8] c"tegra_video.author=Sowjanya Komatineni <skomatineni@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [57 x i8] c"tegra_video.description=NVIDIA Tegra Host1x Video driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [63 x i8] c"tegra_video.file=drivers/staging/media/tegra-video/tegra-video\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [27 x i8] c"tegra_video.license=GPL v2\00", section ".modinfo", align 1
@tegra_csi_driver = external dso_local global %struct.platform_driver, align 4
@tegra_vi_driver = external dso_local global %struct.platform_driver, align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tegra-video\00", [20 x i8] zeroinitializer }, align 32
@host1x_video_subdevs = internal constant { [1 x %struct.of_device_id], [60 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"NVIDIA Tegra Video Input Device\00", [32 x i8] zeroinitializer }, align 32
@host1x_video_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 63, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register media device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"host1x_video_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/staging/media/tegra-video/video.c\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@host1x_video_probe._entry_ptr = internal global ptr @host1x_video_probe._entry, section ".printk_index", align 4
@host1x_video_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 73, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"V4L2 device registration failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@host1x_video_probe._entry_ptr.9 = internal global ptr @host1x_video_probe._entry.7, section ".printk_index", align 4
@host1x_video_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 89, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to setup tpg graph: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@host1x_video_probe._entry_ptr.12 = internal global ptr @host1x_video_probe._entry.10, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.13 = private unnamed_addr constant [8 x i8] c"drivers\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 142, i32 39 }
@___asan_gen_.16 = private unnamed_addr constant [20 x i8] c"host1x_video_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 133, i32 29 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 135, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [21 x i8] c"host1x_video_subdevs\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 125, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 56, i32 32 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 62, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 72, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [45 x i8] c"../drivers/staging/media/tegra-video/video.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 88, i32 4 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__exitcall_host1x_video_exit, ptr @__initcall__kmod_tegra_video__298_165_host1x_video_init6, ptr @host1x_video_exit, ptr @host1x_video_probe._entry, ptr @host1x_video_probe._entry.10, ptr @host1x_video_probe._entry.7, ptr @host1x_video_probe._entry_ptr, ptr @host1x_video_probe._entry_ptr.12, ptr @host1x_video_probe._entry_ptr.9, ptr @drivers, ptr @host1x_video_driver, ptr @.str, ptr @host1x_video_subdevs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_video_driver to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_video_subdevs to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_video_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_video_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_video_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @host1x_video_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @host1x_driver_register_full(ptr noundef nonnull @host1x_video_driver, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_register_drivers(ptr noundef nonnull @drivers, i32 noundef 2, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %unregister_host1x, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

unregister_host1x:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @host1x_driver_unregister(ptr noundef nonnull @host1x_video_driver) #5
  br label %cleanup

cleanup:                                          ; preds = %unregister_host1x, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %unregister_host1x ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @host1x_video_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_unregister_drivers(ptr noundef nonnull @drivers, i32 noundef 2) #5
  tail call void @host1x_driver_unregister(ptr noundef nonnull @host1x_video_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_unregister_drivers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_register_drivers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @host1x_video_probe(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 744) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup41_crit_edge, label %if.end

entry.cleanup41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup41

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.host1x_device, ptr %dev, i32 0, i32 2
  %driver_data.i = getelementptr inbounds %struct.host1x_device, ptr %dev, i32 0, i32 2, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %media_dev = getelementptr inbounds %struct.tegra_video_device, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %media_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %media_dev, align 8
  %model = getelementptr inbounds %struct.tegra_video_device, ptr %call7.i.i, i32 0, i32 1, i32 2
  %call5 = tail call i32 @strscpy(ptr noundef %model, ptr noundef nonnull @.str.1, i32 noundef 32) #5
  tail call void @media_device_init(ptr noundef %media_dev) #5
  %call8 = tail call i32 @__media_device_register(ptr noundef %media_dev, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %call8) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %mdev = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %media_dev, ptr %mdev, align 4
  %release = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 9
  %4 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @tegra_v4l2_dev_release, ptr %release, align 4
  %notify = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @tegra_v4l2_dev_notify, ptr %notify, align 8
  %call17 = tail call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end22, label %if.end24

do.end22:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %call17) #9
  br label %unregister_media

if.end24:                                         ; preds = %if.end11
  %call25 = tail call i32 @host1x_device_init(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end24.unregister_v4l2_crit_edge, label %if.end28

if.end24.unregister_v4l2_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %unregister_v4l2

if.end28:                                         ; preds = %if.end24
  %call29 = tail call i32 @tegra_v4l2_nodes_setup_tpg(ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %do.end34, label %if.end28.cleanup41_crit_edge

if.end28.cleanup41_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup41

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %call29) #9
  %call37 = tail call i32 @host1x_device_exit(ptr noundef %dev) #5
  %vi = getelementptr inbounds %struct.tegra_video_device, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vi, align 8
  tail call void @tegra_channels_cleanup(ptr noundef %7) #5
  br label %unregister_v4l2

unregister_v4l2:                                  ; preds = %do.end34, %if.end24.unregister_v4l2_crit_edge
  %ret.0 = phi i32 [ %call25, %if.end24.unregister_v4l2_crit_edge ], [ %call29, %do.end34 ]
  tail call void @v4l2_device_unregister(ptr noundef nonnull %call7.i.i) #5
  br label %unregister_media

unregister_media:                                 ; preds = %unregister_v4l2, %do.end22
  %ret.1 = phi i32 [ %call17, %do.end22 ], [ %ret.0, %unregister_v4l2 ]
  tail call void @media_device_unregister(ptr noundef %media_dev) #5
  br label %cleanup

cleanup:                                          ; preds = %unregister_media, %do.end
  %ret.2 = phi i32 [ %call8, %do.end ], [ %ret.1, %unregister_media ]
  tail call void @media_device_cleanup(ptr noundef %media_dev) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup41

cleanup41:                                        ; preds = %cleanup, %if.end28.cleanup41_crit_edge, %entry.cleanup41_crit_edge
  %retval.0 = phi i32 [ %ret.2, %cleanup ], [ -12, %entry.cleanup41_crit_edge ], [ 0, %if.end28.cleanup41_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @host1x_video_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.host1x_device, ptr %dev, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @tegra_v4l2_nodes_cleanup_tpg(ptr noundef %1) #5
  %call2 = tail call i32 @host1x_device_exit(ptr noundef %dev) #5
  %call3 = tail call i32 @v4l2_device_put(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_v4l2_dev_release(ptr noundef %v4l2_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vi = getelementptr inbounds %struct.tegra_video_device, ptr %v4l2_dev, i32 0, i32 2
  %0 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vi, align 8
  tail call void @tegra_channels_cleanup(ptr noundef %1) #5
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #5
  %media_dev = getelementptr inbounds %struct.tegra_video_device, ptr %v4l2_dev, i32 0, i32 1
  tail call void @media_device_unregister(ptr noundef %media_dev) #5
  tail call void @media_device_cleanup(ptr noundef %media_dev) #5
  tail call void @kfree(ptr noundef %v4l2_dev) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_v4l2_dev_notify(ptr nocapture noundef readonly %sd, i32 noundef %notification, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1082684930, i32 %notification)
  %cmp.not = icmp eq i32 %notification, 1082684930
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %host_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 12
  %0 = ptrtoint ptr %host_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_priv.i, align 4
  %video = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 1
  tail call void @v4l2_event_queue(ptr noundef %video, ptr noundef %arg) #5
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp1 = icmp eq i32 %3, 5
  br i1 %cmp1, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %streaming.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 14, i32 28
  %4 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.then3, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %queue = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 14
  tail call void @vb2_queue_error(ptr noundef %queue) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_device_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_v4l2_nodes_setup_tpg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_device_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_channels_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_queue_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_v4l2_nodes_cleanup_tpg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_tegra_video__298_165_host1x_video_init6, !1, !"__initcall__kmod_tegra_video__298_165_host1x_video_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/tegra-video/video.c", i32 165, i32 1}
!2 = !{ptr @__exitcall_host1x_video_exit, !3, !"__exitcall_host1x_video_exit", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/tegra-video/video.c", i32 172, i32 1}
!4 = !{ptr @__UNIQUE_ID_author299, !5, !"__UNIQUE_ID_author299", i1 false, i1 false}
!5 = !{!"../drivers/staging/media/tegra-video/video.c", i32 174, i32 1}
!6 = !{ptr @__UNIQUE_ID_description300, !7, !"__UNIQUE_ID_description300", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/tegra-video/video.c", i32 175, i32 1}
!8 = !{ptr @__UNIQUE_ID_file301, !9, !"__UNIQUE_ID_file301", i1 false, i1 false}
!9 = !{!"../drivers/staging/media/tegra-video/video.c", i32 176, i32 1}
!10 = !{ptr @__UNIQUE_ID_license302, !9, !"__UNIQUE_ID_license302", i1 false, i1 false}
!11 = !{ptr @drivers, !12, !"drivers", i1 false, i1 false}
!12 = !{!"../drivers/staging/media/tegra-video/video.c", i32 142, i32 39}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/media/tegra-video/video.c", i32 135, i32 11}
!15 = !{ptr @host1x_video_driver, !16, !"host1x_video_driver", i1 false, i1 false}
!16 = !{!"../drivers/staging/media/tegra-video/video.c", i32 133, i32 29}
!17 = !{ptr @host1x_video_subdevs, !18, !"host1x_video_subdevs", i1 false, i1 false}
!18 = !{!"../drivers/staging/media/tegra-video/video.c", i32 125, i32 34}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/media/tegra-video/video.c", i32 56, i32 32}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/media/tegra-video/video.c", i32 62, i32 3}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @host1x_video_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @host1x_video_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/media/tegra-video/video.c", i32 72, i32 3}
!31 = !{ptr @host1x_video_probe._entry.7, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @host1x_video_probe._entry_ptr.9, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/media/tegra-video/video.c", i32 88, i32 4}
!35 = !{ptr @host1x_video_probe._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @host1x_video_probe._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
