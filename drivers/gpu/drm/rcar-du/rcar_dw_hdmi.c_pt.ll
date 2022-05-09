; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/rcar-du/rcar_dw_hdmi.c_pt.bc'
source_filename = "../drivers/gpu/drm/rcar-du/rcar_dw_hdmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dw_hdmi_plat_data = type { ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i8 }
%struct.rcar_hdmi_phy_params = type { i32, i16, i16, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_rcar_dw_hdmi__252_120_rcar_dw_hdmi_platform_driver_init6 = internal global ptr @rcar_dw_hdmi_platform_driver_init, section ".initcall6.init", align 4
@rcar_dw_hdmi_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rcar_dw_hdmi_probe, ptr @rcar_dw_hdmi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rcar_dw_hdmi_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rcar_dw_hdmi_platform_driver_exit = internal global ptr @rcar_dw_hdmi_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author253 = internal constant [73 x i8] c"rcar_dw_hdmi.author=Laurent Pinchart <laurent.pinchart@ideasonboard.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [64 x i8] c"rcar_dw_hdmi.description=Renesas R-Car Gen3 HDMI Encoder Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file255 = internal constant [55 x i8] c"rcar_dw_hdmi.file=drivers/gpu/drm/rcar-du/rcar_dw_hdmi\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [25 x i8] c"rcar_dw_hdmi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rcar-dw-hdmi\00", [19 x i8] zeroinitializer }, align 32
@rcar_dw_hdmi_of_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rcar_dw_hdmi_plat_data = internal constant { %struct.dw_hdmi_plat_data, [36 x i8] } { %struct.dw_hdmi_plat_data { ptr null, i32 1, i32 0, i8 0, i8 0, ptr null, ptr @rcar_hdmi_mode_valid, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr @rcar_hdmi_phy_configure, i8 0 }, [36 x i8] zeroinitializer }, align 32
@rcar_hdmi_phy_params = internal constant { [9 x %struct.rcar_hdmi_phy_params], [52 x i8] } { [9 x %struct.rcar_hdmi_phy_params] [%struct.rcar_hdmi_phy_params { i32 35500000, i16 3, i16 836, i16 808 }, %struct.rcar_hdmi_phy_params { i32 44900000, i16 3, i16 645, i16 296 }, %struct.rcar_hdmi_phy_params { i32 71000000, i16 2, i16 4484, i16 788 }, %struct.rcar_hdmi_phy_params { i32 90000000, i16 2, i16 4420, i16 276 }, %struct.rcar_hdmi_phy_params { i32 140250000, i16 1, i16 8388, i16 778 }, %struct.rcar_hdmi_phy_params { i32 182750000, i16 1, i16 8324, i16 266 }, %struct.rcar_hdmi_phy_params { i32 281250000, i16 0, i16 132, i16 773 }, %struct.rcar_hdmi_phy_params { i32 297000000, i16 0, i16 132, i16 261 }, %struct.rcar_hdmi_phy_params { i32 -1, i16 0, i16 0, i16 0 }], [52 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [29 x i8] c"rcar_dw_hdmi_platform_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 111, i32 31 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 115, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [22 x i8] c"rcar_dw_hdmi_of_table\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 105, i32 34 }
@___asan_gen_.10 = private unnamed_addr constant [23 x i8] c"rcar_dw_hdmi_plat_data\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 77, i32 39 }
@___asan_gen_.13 = private unnamed_addr constant [21 x i8] c"rcar_hdmi_phy_params\00", align 1
@___asan_gen_.14 = private constant [42 x i8] c"../drivers/gpu/drm/rcar-du/rcar_dw_hdmi.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 28, i32 42 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__exitcall_rcar_dw_hdmi_platform_driver_exit, ptr @__initcall__kmod_rcar_dw_hdmi__252_120_rcar_dw_hdmi_platform_driver_init6, ptr @rcar_dw_hdmi_platform_driver_exit, ptr @rcar_dw_hdmi_platform_driver, ptr @.str, ptr @rcar_dw_hdmi_of_table, ptr @rcar_dw_hdmi_plat_data, ptr @rcar_hdmi_phy_params], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_dw_hdmi_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_dw_hdmi_of_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_dw_hdmi_plat_data to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_hdmi_phy_params to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_dw_hdmi_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_dw_hdmi_platform_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rcar_dw_hdmi_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcar_dw_hdmi_platform_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_dw_hdmi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dw_hdmi_probe(ptr noundef %pdev, ptr noundef nonnull @rcar_dw_hdmi_plat_data) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_dw_hdmi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @dw_hdmi_remove(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dw_hdmi_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rcar_hdmi_mode_valid(ptr nocapture noundef readnone %hdmi, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 297000, i32 %1)
  %cmp = icmp sgt i32 %1, 297000
  %. = select i1 %cmp, i32 15, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_hdmi_phy_configure(ptr noundef %hdmi, ptr nocapture noundef readnone %data, i32 noundef %mpixelclock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %params.0 = phi ptr [ @rcar_hdmi_phy_params, %entry ], [ %incdec.ptr, %for.cond.for.cond_crit_edge ]
  %0 = ptrtoint ptr %params.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %params.0, align 4
  %cmp3.not = icmp ult i32 %1, %mpixelclock
  %incdec.ptr = getelementptr %struct.rcar_hdmi_phy_params, ptr %params.0, i32 1
  br i1 %cmp3.not, label %for.cond.for.cond_crit_edge, label %for.end

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp5 = icmp eq i32 %1, -1
  br i1 %cmp5, label %for.end.cleanup_crit_edge, label %if.end7

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %opmode_div = getelementptr inbounds %struct.rcar_hdmi_phy_params, ptr %params.0, i32 0, i32 1
  %2 = ptrtoint ptr %opmode_div to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %opmode_div, align 4
  tail call void @dw_hdmi_phy_i2c_write(ptr noundef %hdmi, i16 noundef zeroext %3, i8 noundef zeroext 6) #4
  %curr_gmp = getelementptr inbounds %struct.rcar_hdmi_phy_params, ptr %params.0, i32 0, i32 2
  %4 = ptrtoint ptr %curr_gmp to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %curr_gmp, align 2
  tail call void @dw_hdmi_phy_i2c_write(ptr noundef %hdmi, i16 noundef zeroext %5, i8 noundef zeroext 16) #4
  %div = getelementptr inbounds %struct.rcar_hdmi_phy_params, ptr %params.0, i32 0, i32 3
  %6 = ptrtoint ptr %div to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %div, align 4
  tail call void @dw_hdmi_phy_i2c_write(ptr noundef %hdmi, i16 noundef zeroext %7, i8 noundef zeroext 17) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_phy_i2c_write(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__initcall__kmod_rcar_dw_hdmi__252_120_rcar_dw_hdmi_platform_driver_init6, !1, !"__initcall__kmod_rcar_dw_hdmi__252_120_rcar_dw_hdmi_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/rcar-du/rcar_dw_hdmi.c", i32 120, i32 1}
!2 = !{ptr @__exitcall_rcar_dw_hdmi_platform_driver_exit, !1, !"__exitcall_rcar_dw_hdmi_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author253, !4, !"__UNIQUE_ID_author253", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/rcar-du/rcar_dw_hdmi.c", i32 122, i32 1}
!5 = !{ptr @__UNIQUE_ID_description254, !6, !"__UNIQUE_ID_description254", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/rcar-du/rcar_dw_hdmi.c", i32 123, i32 1}
!7 = !{ptr @__UNIQUE_ID_file255, !8, !"__UNIQUE_ID_file255", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/rcar-du/rcar_dw_hdmi.c", i32 124, i32 1}
!9 = !{ptr @__UNIQUE_ID_license256, !8, !"__UNIQUE_ID_license256", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/rcar-du/rcar_dw_hdmi.c", i32 115, i32 11}
!12 = !{ptr @rcar_dw_hdmi_platform_driver, !13, !"rcar_dw_hdmi_platform_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/rcar-du/rcar_dw_hdmi.c", i32 111, i32 31}
!14 = !{ptr @rcar_dw_hdmi_plat_data, !15, !"rcar_dw_hdmi_plat_data", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/rcar-du/rcar_dw_hdmi.c", i32 77, i32 39}
!16 = !{ptr @rcar_hdmi_phy_params, !17, !"rcar_hdmi_phy_params", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/rcar-du/rcar_dw_hdmi.c", i32 28, i32 42}
!18 = !{ptr @rcar_dw_hdmi_of_table, !19, !"rcar_dw_hdmi_of_table", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/rcar-du/rcar_dw_hdmi.c", i32 105, i32 34}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
