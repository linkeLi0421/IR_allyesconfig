; ModuleID = '/llk/IR_all_yes/drivers/staging/fbtft/fb_ili9341.c_pt.bc'
source_filename = "../drivers/staging/fbtft/fb_ili9341.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.fbtft_display = type { i32, i32, i32, i32, i32, %struct.fbtft_ops, i32, i32, i32, ptr, ptr, i32, i32, i32 }
%struct.fbtft_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.fbtft_par = type { ptr, ptr, ptr, ptr, ptr, [16 x i32], %struct.anon.85, ptr, i8, %struct.fbtft_ops, %struct.spinlock, i32, i32, %struct.anon.86, ptr, %struct.anon.87, i32, i8, i64, i8, ptr, i8 }
%struct.anon.85 = type { ptr, i32 }
%struct.anon.86 = type { ptr, ptr, ptr, ptr, ptr, ptr, [16 x ptr], [16 x ptr], [16 x ptr] }
%struct.anon.87 = type { %struct.mutex, ptr, i32, i32 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.84, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@fbtft_driver_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @fbtft_driver_probe_spi, ptr @fbtft_driver_remove_spi, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@fbtft_driver_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fbtft_driver_probe_pdev, ptr @fbtft_driver_remove_pdev, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_fb_ili9341__303_148_fbtft_driver_module_init6 = internal global ptr @fbtft_driver_module_init, section ".initcall6.init", align 4
@__exitcall_fbtft_driver_module_exit = internal global ptr @fbtft_driver_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias304 = internal constant [32 x i8] c"fb_ili9341.alias=spi:fb_ili9341\00", section ".modinfo", align 1
@__UNIQUE_ID_alias305 = internal constant [37 x i8] c"fb_ili9341.alias=platform:fb_ili9341\00", section ".modinfo", align 1
@__UNIQUE_ID_alias306 = internal constant [29 x i8] c"fb_ili9341.alias=spi:ili9341\00", section ".modinfo", align 1
@__UNIQUE_ID_alias307 = internal constant [34 x i8] c"fb_ili9341.alias=platform:ili9341\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [72 x i8] c"fb_ili9341.description=FB driver for the ILI9341 LCD display controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author309 = internal constant [39 x i8] c"fb_ili9341.author=Christian Vogelgsang\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [49 x i8] c"fb_ili9341.file=drivers/staging/fbtft/fb_ili9341\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [23 x i8] c"fb_ili9341.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fb_ili9341\00", [21 x i8] zeroinitializer }, align 32
@dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ilitek,ili9341\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@display = internal global { %struct.fbtft_display, [40 x i8] } { %struct.fbtft_display { i32 240, i32 320, i32 8, i32 0, i32 0, %struct.fbtft_ops { ptr null, ptr null, ptr null, ptr null, ptr @set_addr_win, ptr null, ptr null, ptr null, ptr @init_display, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @set_var, ptr @set_gamma }, i32 0, i32 0, i32 16384, ptr null, ptr @.str.1, i32 2, i32 15, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"1F 1A 18 0A 0F 06 45 87 32 0A 07 02 07 05 00\0A00 25 27 05 10 09 3A 78 4D 05 18 0D 38 3A 1F\00", [38 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 90, i64 180, i64 270]
@___asan_gen_.2 = private unnamed_addr constant [24 x i8] c"fbtft_driver_spi_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [29 x i8] c"fbtft_driver_platform_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"dt_ids\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 148, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 132, i32 29 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [38 x i8] c"../drivers/staging/fbtft/fb_ili9341.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 139, i32 11 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_alias304, ptr @__UNIQUE_ID_alias305, ptr @__UNIQUE_ID_alias306, ptr @__UNIQUE_ID_alias307, ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_fbtft_driver_module_exit, ptr @__initcall__kmod_fb_ili9341__303_148_fbtft_driver_module_init6, ptr @fbtft_driver_module_exit, ptr @fbtft_driver_spi_driver, ptr @fbtft_driver_platform_driver, ptr @.str, ptr @dt_ids, ptr @display, ptr @.str.1], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fbtft_driver_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @fbtft_driver_spi_driver, i32 0, i32 4)) #3
  tail call void @platform_driver_unregister(ptr noundef nonnull @fbtft_driver_platform_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @fbtft_driver_spi_driver) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @fbtft_driver_platform_driver, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @fbtft_driver_spi_driver, i32 0, i32 4)) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_probe_spi(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fbtft_probe_common(ptr noundef nonnull @display, ptr noundef %spi, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_remove_spi(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @fbtft_remove_common(ptr noundef %spi, ptr noundef %1) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fbtft_probe_common(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_addr_win(ptr noundef %par, i32 noundef %xs, i32 noundef %ys, i32 noundef %xe, i32 noundef %ye) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %0 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_register, align 4
  %2 = lshr i32 %xs, 8
  %and = and i32 %2, 255
  %and1 = and i32 %xs, 255
  %3 = lshr i32 %xe, 8
  %and3 = and i32 %3, 255
  %and4 = and i32 %xe, 255
  tail call void (ptr, i32, ...) %1(ptr noundef %par, i32 noundef 5, i32 noundef 42, i32 noundef %and, i32 noundef %and1, i32 noundef %and3, i32 noundef %and4) #3
  %4 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_register, align 4
  %6 = lshr i32 %ys, 8
  %and8 = and i32 %6, 255
  %and9 = and i32 %ys, 255
  %7 = lshr i32 %ye, 8
  %and11 = and i32 %7, 255
  %and12 = and i32 %ye, 255
  tail call void (ptr, i32, ...) %5(ptr noundef %par, i32 noundef 5, i32 noundef 43, i32 noundef %and8, i32 noundef %and9, i32 noundef %and11, i32 noundef %and12) #3
  %8 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %9(ptr noundef %par, i32 noundef 1, i32 noundef 44) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_display(ptr noundef %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %reset = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 5
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset, align 4
  tail call void %1(ptr noundef %par) #3
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %3(ptr noundef %par, i32 noundef 1, i32 noundef 1) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #3
  %9 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %10(ptr noundef %par, i32 noundef 1, i32 noundef 40) #3
  %11 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %12(ptr noundef %par, i32 noundef 4, i32 noundef 207, i32 noundef 0, i32 noundef 131, i32 noundef 48) #3
  %13 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %14(ptr noundef %par, i32 noundef 5, i32 noundef 237, i32 noundef 100, i32 noundef 3, i32 noundef 18, i32 noundef 129) #3
  %15 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %16(ptr noundef %par, i32 noundef 4, i32 noundef 232, i32 noundef 133, i32 noundef 1, i32 noundef 121) #3
  %17 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %18(ptr noundef %par, i32 noundef 6, i32 noundef 203, i32 noundef 57, i32 noundef 44, i32 noundef 0, i32 noundef 52, i32 noundef 2) #3
  %19 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %20(ptr noundef %par, i32 noundef 2, i32 noundef 247, i32 noundef 32) #3
  %21 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %22(ptr noundef %par, i32 noundef 3, i32 noundef 234, i32 noundef 0, i32 noundef 0) #3
  %23 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %24(ptr noundef %par, i32 noundef 2, i32 noundef 192, i32 noundef 38) #3
  %25 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %26(ptr noundef %par, i32 noundef 2, i32 noundef 193, i32 noundef 17) #3
  %27 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %28(ptr noundef %par, i32 noundef 3, i32 noundef 197, i32 noundef 53, i32 noundef 62) #3
  %29 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %30(ptr noundef %par, i32 noundef 2, i32 noundef 199, i32 noundef 190) #3
  %31 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %32(ptr noundef %par, i32 noundef 2, i32 noundef 58, i32 noundef 85) #3
  %33 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %34(ptr noundef %par, i32 noundef 3, i32 noundef 177, i32 noundef 0, i32 noundef 27) #3
  %35 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %36(ptr noundef %par, i32 noundef 2, i32 noundef 38, i32 noundef 1) #3
  %37 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %38(ptr noundef %par, i32 noundef 2, i32 noundef 183, i32 noundef 7) #3
  %39 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %40(ptr noundef %par, i32 noundef 5, i32 noundef 182, i32 noundef 10, i32 noundef 130, i32 noundef 39, i32 noundef 0) #3
  %41 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %42(ptr noundef %par, i32 noundef 1, i32 noundef 17) #3
  br label %while.body40

while.body40:                                     ; preds = %while.body40.while.body40_crit_edge, %entry
  %__ms36.090 = phi i32 [ 100, %entry ], [ %dec38, %while.body40.while.body40_crit_edge ]
  %dec38 = add nsw i32 %__ms36.090, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #3
  %tobool39.not = icmp eq i32 %dec38, 0
  br i1 %tobool39.not, label %while.end41, label %while.body40.while.body40_crit_edge

while.body40.while.body40_crit_edge:              ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body40

while.end41:                                      ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #5
  %44 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %45(ptr noundef %par, i32 noundef 1, i32 noundef 41) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748000) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_var(ptr noundef %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %rotate = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 26
  %2 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rotate, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.epilog.sink.split_crit_edge
    i32 270, label %sw.bb1
    i32 180, label %sw.bb9
    i32 90, label %sw.bb17
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb17, %sw.bb9, %sw.bb1, %entry.sw.epilog.sink.split_crit_edge
  %.sink39 = phi i8 [ -32, %sw.bb17 ], [ -128, %sw.bb9 ], [ 48, %sw.bb1 ], [ 64, %entry.sw.epilog.sink.split_crit_edge ]
  %write_register19 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %5 = ptrtoint ptr %write_register19 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_register19, align 4
  %bgr20 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 19
  %7 = ptrtoint ptr %bgr20 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bgr20, align 8, !range !35
  %9 = shl nuw nsw i8 %8, 3
  %10 = or i8 %9, %.sink39
  %or24 = zext i8 %10 to i32
  tail call void (ptr, i32, ...) %6(ptr noundef %par, i32 noundef 2, i32 noundef 54, i32 noundef %or24) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_gamma(ptr noundef %par, ptr nocapture noundef readonly %curves) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %num_curves = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 15, i32 3
  %0 = ptrtoint ptr %num_curves to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_curves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp121 = icmp sgt i32 %1, 0
  br i1 %cmp121, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %num_values = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 15, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_register, align 4
  %add = add nuw i32 %i.0122, 224
  %4 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_values, align 8
  %mul = mul i32 %5, %i.0122
  %arrayidx = getelementptr i32, ptr %curves, i32 %mul
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add6 = add i32 %mul, 1
  %arrayidx7 = getelementptr i32, ptr %curves, i32 %add6
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  %add11 = add i32 %mul, 2
  %arrayidx12 = getelementptr i32, ptr %curves, i32 %add11
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx12, align 4
  %add16 = add i32 %mul, 3
  %arrayidx17 = getelementptr i32, ptr %curves, i32 %add16
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx17, align 4
  %add21 = add i32 %mul, 4
  %arrayidx22 = getelementptr i32, ptr %curves, i32 %add21
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx22, align 4
  %add26 = add i32 %mul, 5
  %arrayidx27 = getelementptr i32, ptr %curves, i32 %add26
  %16 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx27, align 4
  %add31 = add i32 %mul, 6
  %arrayidx32 = getelementptr i32, ptr %curves, i32 %add31
  %18 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx32, align 4
  %add36 = add i32 %mul, 7
  %arrayidx37 = getelementptr i32, ptr %curves, i32 %add36
  %20 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx37, align 4
  %add41 = add i32 %mul, 8
  %arrayidx42 = getelementptr i32, ptr %curves, i32 %add41
  %22 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx42, align 4
  %add46 = add i32 %mul, 9
  %arrayidx47 = getelementptr i32, ptr %curves, i32 %add46
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx47, align 4
  %add51 = add i32 %mul, 10
  %arrayidx52 = getelementptr i32, ptr %curves, i32 %add51
  %26 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx52, align 4
  %add56 = add i32 %mul, 11
  %arrayidx57 = getelementptr i32, ptr %curves, i32 %add56
  %28 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx57, align 4
  %add61 = add i32 %mul, 12
  %arrayidx62 = getelementptr i32, ptr %curves, i32 %add61
  %30 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx62, align 4
  %add66 = add i32 %mul, 13
  %arrayidx67 = getelementptr i32, ptr %curves, i32 %add66
  %32 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx67, align 4
  %add71 = add i32 %mul, 14
  %arrayidx72 = getelementptr i32, ptr %curves, i32 %add71
  %34 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx72, align 4
  tail call void (ptr, i32, ...) %3(ptr noundef %par, i32 noundef 16, i32 noundef %add, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35) #3
  %inc = add nuw nsw i32 %i.0122, 1
  %36 = ptrtoint ptr %num_curves to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_curves, align 4
  %cmp = icmp slt i32 %inc, %37
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbtft_remove_common(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_probe_pdev(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fbtft_probe_common(ptr noundef nonnull @display, ptr noundef null, ptr noundef %pdev) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_remove_pdev(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @fbtft_remove_common(ptr noundef %dev, ptr noundef %1) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !22, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__initcall__kmod_fb_ili9341__303_148_fbtft_driver_module_init6, !1, !"__initcall__kmod_fb_ili9341__303_148_fbtft_driver_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/fbtft/fb_ili9341.c", i32 148, i32 1}
!2 = !{ptr @__exitcall_fbtft_driver_module_exit, !1, !"__exitcall_fbtft_driver_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias304, !4, !"__UNIQUE_ID_alias304", i1 false, i1 false}
!4 = !{!"../drivers/staging/fbtft/fb_ili9341.c", i32 150, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias305, !6, !"__UNIQUE_ID_alias305", i1 false, i1 false}
!6 = !{!"../drivers/staging/fbtft/fb_ili9341.c", i32 151, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias306, !8, !"__UNIQUE_ID_alias306", i1 false, i1 false}
!8 = !{!"../drivers/staging/fbtft/fb_ili9341.c", i32 152, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias307, !10, !"__UNIQUE_ID_alias307", i1 false, i1 false}
!10 = !{!"../drivers/staging/fbtft/fb_ili9341.c", i32 153, i32 1}
!11 = !{ptr @__UNIQUE_ID_description308, !12, !"__UNIQUE_ID_description308", i1 false, i1 false}
!12 = !{!"../drivers/staging/fbtft/fb_ili9341.c", i32 155, i32 1}
!13 = !{ptr @__UNIQUE_ID_author309, !14, !"__UNIQUE_ID_author309", i1 false, i1 false}
!14 = !{!"../drivers/staging/fbtft/fb_ili9341.c", i32 156, i32 1}
!15 = !{ptr @__UNIQUE_ID_file310, !16, !"__UNIQUE_ID_file310", i1 false, i1 false}
!16 = !{!"../drivers/staging/fbtft/fb_ili9341.c", i32 157, i32 1}
!17 = !{ptr @__UNIQUE_ID_license311, !16, !"__UNIQUE_ID_license311", i1 false, i1 false}
!18 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @fbtft_driver_spi_driver, !1, !"fbtft_driver_spi_driver", i1 false, i1 false}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/fbtft/fb_ili9341.c", i32 139, i32 11}
!22 = !{ptr @display, !23, !"display", i1 false, i1 false}
!23 = !{!"../drivers/staging/fbtft/fb_ili9341.c", i32 132, i32 29}
!24 = !{ptr @dt_ids, !1, !"dt_ids", i1 false, i1 false}
!25 = !{ptr @fbtft_driver_platform_driver, !1, !"fbtft_driver_platform_driver", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i8 0, i8 2}
