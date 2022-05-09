; ModuleID = '/llk/IR_all_yes/drivers/staging/fbtft/fb_hx8347d.c_pt.bc'
source_filename = "../drivers/staging/fbtft/fb_hx8347d.c"
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
@__initcall__kmod_fb_hx8347d__303_174_fbtft_driver_module_init6 = internal global ptr @fbtft_driver_module_init, section ".initcall6.init", align 4
@__exitcall_fbtft_driver_module_exit = internal global ptr @fbtft_driver_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias304 = internal constant [32 x i8] c"fb_hx8347d.alias=spi:fb_hx8347d\00", section ".modinfo", align 1
@__UNIQUE_ID_alias305 = internal constant [37 x i8] c"fb_hx8347d.alias=platform:fb_hx8347d\00", section ".modinfo", align 1
@__UNIQUE_ID_alias306 = internal constant [29 x i8] c"fb_hx8347d.alias=spi:hx8347d\00", section ".modinfo", align 1
@__UNIQUE_ID_alias307 = internal constant [34 x i8] c"fb_hx8347d.alias=platform:hx8347d\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [64 x i8] c"fb_hx8347d.description=FB driver for the HX8347D LCD Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author309 = internal constant [39 x i8] c"fb_hx8347d.author=Christian Vogelgsang\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [49 x i8] c"fb_hx8347d.file=drivers/staging/fbtft/fb_hx8347d\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [23 x i8] c"fb_hx8347d.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fb_hx8347d\00", [21 x i8] zeroinitializer }, align 32
@dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"himax,hx8347d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@display = internal global { %struct.fbtft_display, [40 x i8] } { %struct.fbtft_display { i32 320, i32 240, i32 8, i32 0, i32 0, %struct.fbtft_ops { ptr null, ptr null, ptr null, ptr null, ptr @set_addr_win, ptr null, ptr null, ptr null, ptr @init_display, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @set_var, ptr @set_gamma }, i32 0, i32 0, i32 0, ptr null, ptr @.str.1, i32 2, i32 14, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"0 0 0 0 0 0 0 0 0 0 0 0 0 0\0A0 0 0 0 0 0 0 0 0 0 0 0 0 0\00", [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@set_gamma.mask = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 127, i32 127, i32 31, i32 31, i32 31, i32 31, i32 31, i32 15], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 90, i64 180, i64 270]
@___asan_gen_.2 = private unnamed_addr constant [24 x i8] c"fbtft_driver_spi_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [29 x i8] c"fbtft_driver_platform_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"dt_ids\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 174, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 159, i32 29 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 165, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@___asan_gen_.21 = private constant [38 x i8] c"../drivers/staging/fbtft/fb_hx8347d.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 120, i32 29 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_alias304, ptr @__UNIQUE_ID_alias305, ptr @__UNIQUE_ID_alias306, ptr @__UNIQUE_ID_alias307, ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_fbtft_driver_module_exit, ptr @__initcall__kmod_fb_hx8347d__303_174_fbtft_driver_module_init6, ptr @fbtft_driver_module_exit, ptr @fbtft_driver_spi_driver, ptr @fbtft_driver_platform_driver, ptr @.str, ptr @dt_ids, ptr @display, ptr @.str.1, ptr @set_gamma.mask], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_gamma.mask to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
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
  tail call void (ptr, i32, ...) %1(ptr noundef %par, i32 noundef 2, i32 noundef 2, i32 noundef %and) #3
  %3 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write_register, align 4
  %and3 = and i32 %xs, 255
  tail call void (ptr, i32, ...) %4(ptr noundef %par, i32 noundef 2, i32 noundef 3, i32 noundef %and3) #3
  %5 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_register, align 4
  %7 = lshr i32 %xe, 8
  %and7 = and i32 %7, 255
  tail call void (ptr, i32, ...) %6(ptr noundef %par, i32 noundef 2, i32 noundef 4, i32 noundef %and7) #3
  %8 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_register, align 4
  %and10 = and i32 %xe, 255
  tail call void (ptr, i32, ...) %9(ptr noundef %par, i32 noundef 2, i32 noundef 5, i32 noundef %and10) #3
  %10 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_register, align 4
  %12 = lshr i32 %ys, 8
  %and14 = and i32 %12, 255
  tail call void (ptr, i32, ...) %11(ptr noundef %par, i32 noundef 2, i32 noundef 6, i32 noundef %and14) #3
  %13 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_register, align 4
  %and17 = and i32 %ys, 255
  tail call void (ptr, i32, ...) %14(ptr noundef %par, i32 noundef 2, i32 noundef 7, i32 noundef %and17) #3
  %15 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_register, align 4
  %17 = lshr i32 %ye, 8
  %and21 = and i32 %17, 255
  tail call void (ptr, i32, ...) %16(ptr noundef %par, i32 noundef 2, i32 noundef 8, i32 noundef %and21) #3
  %18 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_register, align 4
  %and24 = and i32 %ye, 255
  tail call void (ptr, i32, ...) %19(ptr noundef %par, i32 noundef 2, i32 noundef 9, i32 noundef %and24) #3
  %20 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %21(ptr noundef %par, i32 noundef 1, i32 noundef 34) #3
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
  tail call void (ptr, i32, ...) %3(ptr noundef %par, i32 noundef 2, i32 noundef 234, i32 noundef 0) #3
  %4 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %5(ptr noundef %par, i32 noundef 2, i32 noundef 235, i32 noundef 32) #3
  %6 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %7(ptr noundef %par, i32 noundef 2, i32 noundef 236, i32 noundef 12) #3
  %8 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %9(ptr noundef %par, i32 noundef 2, i32 noundef 237, i32 noundef 196) #3
  %10 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %11(ptr noundef %par, i32 noundef 2, i32 noundef 232, i32 noundef 64) #3
  %12 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %13(ptr noundef %par, i32 noundef 2, i32 noundef 233, i32 noundef 56) #3
  %14 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %15(ptr noundef %par, i32 noundef 2, i32 noundef 241, i32 noundef 1) #3
  %16 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %17(ptr noundef %par, i32 noundef 2, i32 noundef 242, i32 noundef 16) #3
  %18 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %19(ptr noundef %par, i32 noundef 2, i32 noundef 39, i32 noundef 163) #3
  %20 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %21(ptr noundef %par, i32 noundef 2, i32 noundef 27, i32 noundef 27) #3
  %22 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %23(ptr noundef %par, i32 noundef 2, i32 noundef 26, i32 noundef 1) #3
  %24 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %25(ptr noundef %par, i32 noundef 2, i32 noundef 36, i32 noundef 47) #3
  %26 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %27(ptr noundef %par, i32 noundef 2, i32 noundef 37, i32 noundef 87) #3
  %28 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %29(ptr noundef %par, i32 noundef 2, i32 noundef 35, i32 noundef 141) #3
  %30 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %31(ptr noundef %par, i32 noundef 2, i32 noundef 24, i32 noundef 54) #3
  %32 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %33(ptr noundef %par, i32 noundef 2, i32 noundef 25, i32 noundef 1) #3
  %34 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %35(ptr noundef %par, i32 noundef 2, i32 noundef 1, i32 noundef 0) #3
  %36 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %37(ptr noundef %par, i32 noundef 2, i32 noundef 31, i32 noundef 136) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #3
  %43 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %44(ptr noundef %par, i32 noundef 2, i32 noundef 31, i32 noundef 128) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #3
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
  %50 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %51(ptr noundef %par, i32 noundef 2, i32 noundef 31, i32 noundef 144) #3
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
  %57 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %58(ptr noundef %par, i32 noundef 2, i32 noundef 31, i32 noundef 208) #3
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
  %64 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %65(ptr noundef %par, i32 noundef 2, i32 noundef 23, i32 noundef 5) #3
  %66 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %67(ptr noundef %par, i32 noundef 2, i32 noundef 54, i32 noundef 0) #3
  %68 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %69(ptr noundef %par, i32 noundef 2, i32 noundef 40, i32 noundef 56) #3
  br label %while.body70

while.body70:                                     ; preds = %while.body70.while.body70_crit_edge, %entry
  %__ms66.0129 = phi i32 [ 40, %entry ], [ %dec68, %while.body70.while.body70_crit_edge ]
  %dec68 = add nsw i32 %__ms66.0129, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #3
  %tobool69.not = icmp eq i32 %dec68, 0
  br i1 %tobool69.not, label %while.end71, label %while.body70.while.body70_crit_edge

while.body70.while.body70_crit_edge:              ; preds = %while.body70
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body70

while.end71:                                      ; preds = %while.body70
  call void @__sanitizer_cov_trace_pc() #5
  %71 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %72(ptr noundef %par, i32 noundef 2, i32 noundef 40, i32 noundef 60) #3
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
    i32 0, label %sw.bb
    i32 270, label %sw.bb1
    i32 180, label %sw.bb8
    i32 90, label %sw.bb16
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %bgr = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 19
  %5 = ptrtoint ptr %bgr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bgr, align 8, !range !37
  %7 = shl nuw nsw i8 %6, 3
  %8 = or i8 %7, 96
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %bgr4 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 19
  %9 = ptrtoint ptr %bgr4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bgr4, align 8, !range !37
  %11 = shl nuw nsw i8 %10, 3
  br label %sw.epilog.sink.split

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %bgr11 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 19
  %12 = ptrtoint ptr %bgr11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bgr11, align 8, !range !37
  %14 = shl nuw nsw i8 %13, 3
  %15 = or i8 %14, -96
  br label %sw.epilog.sink.split

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %bgr19 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 19
  %16 = ptrtoint ptr %bgr19 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bgr19, align 8, !range !37
  %18 = shl nuw nsw i8 %17, 3
  %19 = or i8 %18, -64
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb16, %sw.bb8, %sw.bb1, %sw.bb
  %.sink36 = phi i8 [ %19, %sw.bb16 ], [ %15, %sw.bb8 ], [ %11, %sw.bb1 ], [ %8, %sw.bb ]
  %.sink.in = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %20 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %.sink = load ptr, ptr %.sink.in, align 4
  %or23 = zext i8 %.sink36 to i32
  tail call void (ptr, i32, ...) %.sink(ptr noundef %par, i32 noundef 2, i32 noundef 22, i32 noundef %or23) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_gamma(ptr noundef %par, ptr nocapture noundef %curves) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %num_curves = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 15, i32 3
  %0 = ptrtoint ptr %num_curves to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_curves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp257 = icmp sgt i32 %1, 0
  br i1 %cmp257, label %for.cond1.preheader.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %num_values = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 15, i32 2
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc14.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %acc.0260 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %acc.1.lcssa, %for.inc14.for.cond1.preheader_crit_edge ]
  %i.0258 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc15, %for.inc14.for.cond1.preheader_crit_edge ]
  %2 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_values, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3254 = icmp sgt i32 %3, 0
  br i1 %cmp3254, label %for.cond1.preheader.for.body4_crit_edge, label %for.cond1.preheader.for.inc14_crit_edge

for.cond1.preheader.for.inc14_crit_edge:          ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc14

for.cond1.preheader.for.body4_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body4

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.cond1.preheader.for.body4_crit_edge
  %4 = phi i32 [ %10, %for.body4.for.body4_crit_edge ], [ %3, %for.cond1.preheader.for.body4_crit_edge ]
  %acc.1256 = phi i32 [ %add7, %for.body4.for.body4_crit_edge ], [ %acc.0260, %for.cond1.preheader.for.body4_crit_edge ]
  %j.0255 = phi i32 [ %inc, %for.body4.for.body4_crit_edge ], [ 0, %for.cond1.preheader.for.body4_crit_edge ]
  %mul = mul i32 %4, %i.0258
  %add = add i32 %mul, %j.0255
  %arrayidx = getelementptr i32, ptr %curves, i32 %add
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add7 = add i32 %6, %acc.1256
  %arrayidx8 = getelementptr [14 x i32], ptr @set_gamma.mask, i32 0, i32 %j.0255
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx8, align 4
  %and = and i32 %8, %6
  store i32 %and, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %j.0255, 1
  %9 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_values, align 8
  %cmp3 = icmp slt i32 %inc, %10
  br i1 %cmp3, label %for.body4.for.body4_crit_edge, label %for.body4.for.inc14_crit_edge

for.body4.for.inc14_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc14

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body4

for.inc14:                                        ; preds = %for.body4.for.inc14_crit_edge, %for.cond1.preheader.for.inc14_crit_edge
  %acc.1.lcssa = phi i32 [ %acc.0260, %for.cond1.preheader.for.inc14_crit_edge ], [ %add7, %for.body4.for.inc14_crit_edge ]
  %inc15 = add nuw nsw i32 %i.0258, 1
  %11 = ptrtoint ptr %num_curves to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_curves, align 4
  %cmp = icmp slt i32 %inc15, %12
  br i1 %cmp, label %for.inc14.for.cond1.preheader_crit_edge, label %for.end16

for.inc14.for.cond1.preheader_crit_edge:          ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond1.preheader

for.end16:                                        ; preds = %for.inc14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %acc.1.lcssa)
  %cmp17 = icmp eq i32 %acc.1.lcssa, 0
  br i1 %cmp17, label %for.end16.cleanup_crit_edge, label %for.cond18.preheader

for.end16.cleanup_crit_edge:                      ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond18.preheader:                             ; preds = %for.end16
  %13 = ptrtoint ptr %num_curves to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_curves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp21262 = icmp sgt i32 %14, 0
  br i1 %cmp21262, label %for.body22.lr.ph, label %for.cond18.preheader.for.end140_crit_edge

for.cond18.preheader.for.end140_crit_edge:        ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end140

for.body22.lr.ph:                                 ; preds = %for.cond18.preheader
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %num_values26 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 15, i32 2
  br label %for.body22

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %for.body22.lr.ph
  %i.1263 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc139, %for.body22.for.body22_crit_edge ]
  %15 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_register, align 4
  %mul23 = shl i32 %i.1263, 4
  %add24 = add i32 %mul23, 64
  %17 = ptrtoint ptr %num_values26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_values26, align 8
  %mul27 = mul i32 %18, %i.1263
  %arrayidx29 = getelementptr i32, ptr %curves, i32 %mul27
  %19 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx29, align 4
  tail call void (ptr, i32, ...) %16(ptr noundef %par, i32 noundef 2, i32 noundef %add24, i32 noundef %20) #3
  %21 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_register, align 4
  %add33 = add i32 %mul23, 65
  %23 = ptrtoint ptr %num_values26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_values26, align 8
  %mul36 = mul i32 %24, %i.1263
  %add37 = add i32 %mul36, 1
  %arrayidx38 = getelementptr i32, ptr %curves, i32 %add37
  %25 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx38, align 4
  tail call void (ptr, i32, ...) %22(ptr noundef %par, i32 noundef 2, i32 noundef %add33, i32 noundef %26) #3
  %27 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_register, align 4
  %add42 = add i32 %mul23, 66
  %29 = ptrtoint ptr %num_values26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_values26, align 8
  %mul45 = mul i32 %30, %i.1263
  %add46 = add i32 %mul45, 2
  %arrayidx47 = getelementptr i32, ptr %curves, i32 %add46
  %31 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx47, align 4
  tail call void (ptr, i32, ...) %28(ptr noundef %par, i32 noundef 2, i32 noundef %add42, i32 noundef %32) #3
  %33 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_register, align 4
  %add51 = add i32 %mul23, 67
  %35 = ptrtoint ptr %num_values26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_values26, align 8
  %mul54 = mul i32 %36, %i.1263
  %add55 = add i32 %mul54, 3
  %arrayidx56 = getelementptr i32, ptr %curves, i32 %add55
  %37 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx56, align 4
  tail call void (ptr, i32, ...) %34(ptr noundef %par, i32 noundef 2, i32 noundef %add51, i32 noundef %38) #3
  %39 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_register, align 4
  %add60 = add i32 %mul23, 68
  %41 = ptrtoint ptr %num_values26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_values26, align 8
  %mul63 = mul i32 %42, %i.1263
  %add64 = add i32 %mul63, 4
  %arrayidx65 = getelementptr i32, ptr %curves, i32 %add64
  %43 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx65, align 4
  tail call void (ptr, i32, ...) %40(ptr noundef %par, i32 noundef 2, i32 noundef %add60, i32 noundef %44) #3
  %45 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_register, align 4
  %add69 = add i32 %mul23, 69
  %47 = ptrtoint ptr %num_values26 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_values26, align 8
  %mul72 = mul i32 %48, %i.1263
  %add73 = add i32 %mul72, 5
  %arrayidx74 = getelementptr i32, ptr %curves, i32 %add73
  %49 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx74, align 4
  tail call void (ptr, i32, ...) %46(ptr noundef %par, i32 noundef 2, i32 noundef %add69, i32 noundef %50) #3
  %51 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write_register, align 4
  %add78 = add i32 %mul23, 70
  %53 = ptrtoint ptr %num_values26 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_values26, align 8
  %mul81 = mul i32 %54, %i.1263
  %add82 = add i32 %mul81, 6
  %arrayidx83 = getelementptr i32, ptr %curves, i32 %add82
  %55 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx83, align 4
  tail call void (ptr, i32, ...) %52(ptr noundef %par, i32 noundef 2, i32 noundef %add78, i32 noundef %56) #3
  %57 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write_register, align 4
  %add87 = add i32 %mul23, 71
  %59 = ptrtoint ptr %num_values26 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_values26, align 8
  %mul90 = mul i32 %60, %i.1263
  %add91 = add i32 %mul90, 7
  %arrayidx92 = getelementptr i32, ptr %curves, i32 %add91
  %61 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx92, align 4
  tail call void (ptr, i32, ...) %58(ptr noundef %par, i32 noundef 2, i32 noundef %add87, i32 noundef %62) #3
  %63 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write_register, align 4
  %add96 = add i32 %mul23, 72
  %65 = ptrtoint ptr %num_values26 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_values26, align 8
  %mul99 = mul i32 %66, %i.1263
  %add100 = add i32 %mul99, 8
  %arrayidx101 = getelementptr i32, ptr %curves, i32 %add100
  %67 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx101, align 4
  tail call void (ptr, i32, ...) %64(ptr noundef %par, i32 noundef 2, i32 noundef %add96, i32 noundef %68) #3
  %69 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write_register, align 4
  %add105 = add i32 %mul23, 73
  %71 = ptrtoint ptr %num_values26 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_values26, align 8
  %mul108 = mul i32 %72, %i.1263
  %add109 = add i32 %mul108, 9
  %arrayidx110 = getelementptr i32, ptr %curves, i32 %add109
  %73 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx110, align 4
  tail call void (ptr, i32, ...) %70(ptr noundef %par, i32 noundef 2, i32 noundef %add105, i32 noundef %74) #3
  %75 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write_register, align 4
  %add114 = add i32 %mul23, 74
  %77 = ptrtoint ptr %num_values26 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_values26, align 8
  %mul117 = mul i32 %78, %i.1263
  %add118 = add i32 %mul117, 10
  %arrayidx119 = getelementptr i32, ptr %curves, i32 %add118
  %79 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx119, align 4
  tail call void (ptr, i32, ...) %76(ptr noundef %par, i32 noundef 2, i32 noundef %add114, i32 noundef %80) #3
  %81 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write_register, align 4
  %add123 = add i32 %mul23, 75
  %83 = ptrtoint ptr %num_values26 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %num_values26, align 8
  %mul126 = mul i32 %84, %i.1263
  %add127 = add i32 %mul126, 11
  %arrayidx128 = getelementptr i32, ptr %curves, i32 %add127
  %85 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx128, align 4
  tail call void (ptr, i32, ...) %82(ptr noundef %par, i32 noundef 2, i32 noundef %add123, i32 noundef %86) #3
  %87 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %write_register, align 4
  %add132 = add i32 %mul23, 76
  %89 = ptrtoint ptr %num_values26 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %num_values26, align 8
  %mul135 = mul i32 %90, %i.1263
  %add136 = add i32 %mul135, 12
  %arrayidx137 = getelementptr i32, ptr %curves, i32 %add136
  %91 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx137, align 4
  tail call void (ptr, i32, ...) %88(ptr noundef %par, i32 noundef 2, i32 noundef %add132, i32 noundef %92) #3
  %inc139 = add nuw nsw i32 %i.1263, 1
  %93 = ptrtoint ptr %num_curves to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_curves, align 4
  %cmp21 = icmp slt i32 %inc139, %94
  br i1 %cmp21, label %for.body22.for.body22_crit_edge, label %for.body22.for.end140_crit_edge

for.body22.for.end140_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end140

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body22

for.end140:                                       ; preds = %for.body22.for.end140_crit_edge, %for.cond18.preheader.for.end140_crit_edge
  %write_register142 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %95 = ptrtoint ptr %write_register142 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %write_register142, align 4
  %num_values144 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 15, i32 2
  %97 = ptrtoint ptr %num_values144 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_values144, align 8
  %arrayidx147 = getelementptr i32, ptr %curves, i32 %98
  %99 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx147, align 4
  %shl = shl i32 %100, 4
  %101 = ptrtoint ptr %curves to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %curves, align 4
  %or = or i32 %shl, %102
  tail call void (ptr, i32, ...) %96(ptr noundef %par, i32 noundef 2, i32 noundef 93, i32 noundef %or) #3
  br label %cleanup

cleanup:                                          ; preds = %for.end140, %for.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !22, !24, !26, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_fb_hx8347d__303_174_fbtft_driver_module_init6, !1, !"__initcall__kmod_fb_hx8347d__303_174_fbtft_driver_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/fbtft/fb_hx8347d.c", i32 174, i32 1}
!2 = !{ptr @__exitcall_fbtft_driver_module_exit, !1, !"__exitcall_fbtft_driver_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias304, !4, !"__UNIQUE_ID_alias304", i1 false, i1 false}
!4 = !{!"../drivers/staging/fbtft/fb_hx8347d.c", i32 176, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias305, !6, !"__UNIQUE_ID_alias305", i1 false, i1 false}
!6 = !{!"../drivers/staging/fbtft/fb_hx8347d.c", i32 177, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias306, !8, !"__UNIQUE_ID_alias306", i1 false, i1 false}
!8 = !{!"../drivers/staging/fbtft/fb_hx8347d.c", i32 178, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias307, !10, !"__UNIQUE_ID_alias307", i1 false, i1 false}
!10 = !{!"../drivers/staging/fbtft/fb_hx8347d.c", i32 179, i32 1}
!11 = !{ptr @__UNIQUE_ID_description308, !12, !"__UNIQUE_ID_description308", i1 false, i1 false}
!12 = !{!"../drivers/staging/fbtft/fb_hx8347d.c", i32 181, i32 1}
!13 = !{ptr @__UNIQUE_ID_author309, !14, !"__UNIQUE_ID_author309", i1 false, i1 false}
!14 = !{!"../drivers/staging/fbtft/fb_hx8347d.c", i32 182, i32 1}
!15 = !{ptr @__UNIQUE_ID_file310, !16, !"__UNIQUE_ID_file310", i1 false, i1 false}
!16 = !{!"../drivers/staging/fbtft/fb_hx8347d.c", i32 183, i32 1}
!17 = !{ptr @__UNIQUE_ID_license311, !16, !"__UNIQUE_ID_license311", i1 false, i1 false}
!18 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @fbtft_driver_spi_driver, !1, !"fbtft_driver_spi_driver", i1 false, i1 false}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/fbtft/fb_hx8347d.c", i32 165, i32 11}
!22 = !{ptr @display, !23, !"display", i1 false, i1 false}
!23 = !{!"../drivers/staging/fbtft/fb_hx8347d.c", i32 159, i32 29}
!24 = !{ptr @set_gamma.mask, !25, !"mask", i1 false, i1 false}
!25 = !{!"../drivers/staging/fbtft/fb_hx8347d.c", i32 120, i32 29}
!26 = !{ptr @dt_ids, !1, !"dt_ids", i1 false, i1 false}
!27 = !{ptr @fbtft_driver_platform_driver, !1, !"fbtft_driver_platform_driver", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i8 0, i8 2}
