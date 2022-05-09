; ModuleID = '/llk/IR_all_yes/drivers/staging/fbtft/fb_s6d1121.c_pt.bc'
source_filename = "../drivers/staging/fbtft/fb_s6d1121.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.fbtft_display = type { i32, i32, i32, i32, i32, %struct.fbtft_ops, i32, i32, i32, ptr, ptr, i32, i32, i32 }
%struct.fbtft_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
@__initcall__kmod_fb_s6d1121__303_173_fbtft_driver_module_init6 = internal global ptr @fbtft_driver_module_init, section ".initcall6.init", align 4
@__exitcall_fbtft_driver_module_exit = internal global ptr @fbtft_driver_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias304 = internal constant [32 x i8] c"fb_s6d1121.alias=spi:fb_s6d1121\00", section ".modinfo", align 1
@__UNIQUE_ID_alias305 = internal constant [37 x i8] c"fb_s6d1121.alias=platform:fb_s6d1121\00", section ".modinfo", align 1
@__UNIQUE_ID_alias306 = internal constant [29 x i8] c"fb_s6d1121.alias=spi:s6d1121\00", section ".modinfo", align 1
@__UNIQUE_ID_alias307 = internal constant [34 x i8] c"fb_s6d1121.alias=platform:s6d1121\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [64 x i8] c"fb_s6d1121.description=FB driver for the S6D1121 LCD Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author309 = internal constant [33 x i8] c"fb_s6d1121.author=Roman Rolinsky\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [49 x i8] c"fb_s6d1121.file=drivers/staging/fbtft/fb_s6d1121\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [23 x i8] c"fb_s6d1121.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fb_s6d1121\00", [21 x i8] zeroinitializer }, align 32
@dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s6d1121\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@display = internal global { %struct.fbtft_display, [40 x i8] } { %struct.fbtft_display { i32 240, i32 320, i32 16, i32 0, i32 0, %struct.fbtft_ops { ptr null, ptr null, ptr null, ptr null, ptr @set_addr_win, ptr null, ptr null, ptr null, ptr @init_display, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @set_var, ptr @set_gamma }, i32 16, i32 20, i32 0, ptr null, ptr @.str.1, i32 2, i32 14, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"26 09 24 2C 1F 23 24 25 22 26 25 23 0D 00\0A1C 1A 13 1D 0B 11 12 10 13 15 36 19 00 0D\00", [44 x i8] zeroinitializer }, align 32
@set_gamma.mask = internal constant { [28 x i32], [48 x i8] } { [28 x i32] [i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 31, i32 31, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 31, i32 31], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 90, i64 180, i64 270]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 90, i64 180, i64 270]
@___asan_gen_.3 = private unnamed_addr constant [24 x i8] c"fbtft_driver_spi_driver\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [29 x i8] c"fbtft_driver_platform_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [7 x i8] c"dt_ids\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 173, i32 1 }
@___asan_gen_.15 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 156, i32 29 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 164, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@___asan_gen_.22 = private constant [38 x i8] c"../drivers/staging/fbtft/fb_s6d1121.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 122, i32 29 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_alias304, ptr @__UNIQUE_ID_alias305, ptr @__UNIQUE_ID_alias306, ptr @__UNIQUE_ID_alias307, ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_fbtft_driver_module_exit, ptr @__initcall__kmod_fb_s6d1121__303_173_fbtft_driver_module_init6, ptr @fbtft_driver_module_exit, ptr @fbtft_driver_spi_driver, ptr @fbtft_driver_platform_driver, ptr @.str, ptr @dt_ids, ptr @display, ptr @.str.1, ptr @set_gamma.mask], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_gamma.mask to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
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
    i32 180, label %sw.bb3
    i32 270, label %sw.bb9
    i32 90, label %sw.bb15
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %5 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %6(ptr noundef %par, i32 noundef 2, i32 noundef 32, i32 noundef %xs) #3
  %7 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %8(ptr noundef %par, i32 noundef 2, i32 noundef 33, i32 noundef %ys) #3
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %write_register5 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %9 = ptrtoint ptr %write_register5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_register5, align 4
  %sub = sub i32 239, %xs
  tail call void (ptr, i32, ...) %10(ptr noundef %par, i32 noundef 2, i32 noundef 32, i32 noundef %sub) #3
  %11 = ptrtoint ptr %write_register5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_register5, align 4
  %sub8 = sub i32 319, %ys
  tail call void (ptr, i32, ...) %12(ptr noundef %par, i32 noundef 2, i32 noundef 33, i32 noundef %sub8) #3
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %write_register11 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %13 = ptrtoint ptr %write_register11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_register11, align 4
  %sub12 = sub i32 239, %ys
  tail call void (ptr, i32, ...) %14(ptr noundef %par, i32 noundef 2, i32 noundef 32, i32 noundef %sub12) #3
  %15 = ptrtoint ptr %write_register11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_register11, align 4
  tail call void (ptr, i32, ...) %16(ptr noundef %par, i32 noundef 2, i32 noundef 33, i32 noundef %xs) #3
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %write_register17 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %17 = ptrtoint ptr %write_register17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_register17, align 4
  tail call void (ptr, i32, ...) %18(ptr noundef %par, i32 noundef 2, i32 noundef 32, i32 noundef %ys) #3
  %19 = ptrtoint ptr %write_register17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_register17, align 4
  %sub20 = sub i32 319, %xs
  tail call void (ptr, i32, ...) %20(ptr noundef %par, i32 noundef 2, i32 noundef 33, i32 noundef %sub20) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb9, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %write_register22 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %21 = ptrtoint ptr %write_register22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_register22, align 4
  tail call void (ptr, i32, ...) %22(ptr noundef %par, i32 noundef 1, i32 noundef 34) #3
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
  tail call void (ptr, i32, ...) %3(ptr noundef %par, i32 noundef 2, i32 noundef 17, i32 noundef 8196) #3
  %4 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %5(ptr noundef %par, i32 noundef 2, i32 noundef 19, i32 noundef 52224) #3
  %6 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %7(ptr noundef %par, i32 noundef 2, i32 noundef 21, i32 noundef 9728) #3
  %8 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %9(ptr noundef %par, i32 noundef 2, i32 noundef 20, i32 noundef 9514) #3
  %10 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %11(ptr noundef %par, i32 noundef 2, i32 noundef 18, i32 noundef 51) #3
  %12 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %13(ptr noundef %par, i32 noundef 2, i32 noundef 19, i32 noundef 52228) #3
  %14 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %15(ptr noundef %par, i32 noundef 2, i32 noundef 19, i32 noundef 52230) #3
  %16 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %17(ptr noundef %par, i32 noundef 2, i32 noundef 19, i32 noundef 52303) #3
  %18 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %19(ptr noundef %par, i32 noundef 2, i32 noundef 19, i32 noundef 26447) #3
  %20 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %21(ptr noundef %par, i32 noundef 2, i32 noundef 17, i32 noundef 8195) #3
  %22 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %23(ptr noundef %par, i32 noundef 2, i32 noundef 22, i32 noundef 7) #3
  %24 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %25(ptr noundef %par, i32 noundef 2, i32 noundef 2, i32 noundef 19) #3
  %26 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %27(ptr noundef %par, i32 noundef 2, i32 noundef 3, i32 noundef 3) #3
  %28 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %29(ptr noundef %par, i32 noundef 2, i32 noundef 1, i32 noundef 295) #3
  %30 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %31(ptr noundef %par, i32 noundef 2, i32 noundef 8, i32 noundef 771) #3
  %32 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %33(ptr noundef %par, i32 noundef 2, i32 noundef 10, i32 noundef 11) #3
  %34 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %35(ptr noundef %par, i32 noundef 2, i32 noundef 11, i32 noundef 3) #3
  %36 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %37(ptr noundef %par, i32 noundef 2, i32 noundef 12, i32 noundef 0) #3
  %38 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %39(ptr noundef %par, i32 noundef 2, i32 noundef 65, i32 noundef 0) #3
  %40 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %41(ptr noundef %par, i32 noundef 2, i32 noundef 80, i32 noundef 0) #3
  %42 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %43(ptr noundef %par, i32 noundef 2, i32 noundef 96, i32 noundef 5) #3
  %44 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %45(ptr noundef %par, i32 noundef 2, i32 noundef 112, i32 noundef 11) #3
  %46 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %47(ptr noundef %par, i32 noundef 2, i32 noundef 113, i32 noundef 0) #3
  %48 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %49(ptr noundef %par, i32 noundef 2, i32 noundef 120, i32 noundef 0) #3
  %50 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %51(ptr noundef %par, i32 noundef 2, i32 noundef 122, i32 noundef 0) #3
  %52 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %53(ptr noundef %par, i32 noundef 2, i32 noundef 121, i32 noundef 7) #3
  %54 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %55(ptr noundef %par, i32 noundef 2, i32 noundef 7, i32 noundef 81) #3
  %56 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %57(ptr noundef %par, i32 noundef 2, i32 noundef 7, i32 noundef 83) #3
  %58 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %59(ptr noundef %par, i32 noundef 2, i32 noundef 121, i32 noundef 0) #3
  %60 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %61(ptr noundef %par, i32 noundef 1, i32 noundef 34) #3
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 180, label %sw.bb1
    i32 270, label %sw.bb9
    i32 90, label %sw.bb17
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %5 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_register, align 4
  %bgr = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 19
  %7 = ptrtoint ptr %bgr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bgr, align 8, !range !37
  %9 = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %9, 12
  %or = or i32 %shl, 3
  tail call void (ptr, i32, ...) %6(ptr noundef %par, i32 noundef 2, i32 noundef 3, i32 noundef %or) #3
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %write_register3 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %10 = ptrtoint ptr %write_register3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_register3, align 4
  %bgr4 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 19
  %12 = ptrtoint ptr %bgr4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bgr4, align 8, !range !37
  %14 = zext i8 %13 to i32
  %shl7 = shl nuw nsw i32 %14, 12
  tail call void (ptr, i32, ...) %11(ptr noundef %par, i32 noundef 2, i32 noundef 3, i32 noundef %shl7) #3
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %write_register11 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %15 = ptrtoint ptr %write_register11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_register11, align 4
  %bgr12 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 19
  %17 = ptrtoint ptr %bgr12 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bgr12, align 8, !range !37
  %19 = zext i8 %18 to i32
  %shl15 = shl nuw nsw i32 %19, 12
  %or16 = or i32 %shl15, 10
  tail call void (ptr, i32, ...) %16(ptr noundef %par, i32 noundef 2, i32 noundef 3, i32 noundef %or16) #3
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %write_register19 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %20 = ptrtoint ptr %write_register19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_register19, align 4
  %bgr20 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 19
  %22 = ptrtoint ptr %bgr20 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bgr20, align 8, !range !37
  %24 = zext i8 %23 to i32
  %shl23 = shl nuw nsw i32 %24, 12
  %or24 = or i32 %shl23, 9
  tail call void (ptr, i32, ...) %21(ptr noundef %par, i32 noundef 2, i32 noundef 3, i32 noundef %or24) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb9, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_gamma(ptr noundef %par, ptr noundef %curves) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %num_values = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 15, i32 2
  %0 = ptrtoint ptr %curves to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %curves, align 4
  %and = and i32 %1, 63
  store i32 %and, ptr %curves, align 4
  %arrayidx8.1 = getelementptr i32, ptr %curves, i32 1
  %2 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx8.1, align 4
  %and.1 = and i32 %3, 63
  store i32 %and.1, ptr %arrayidx8.1, align 4
  %arrayidx8.2 = getelementptr i32, ptr %curves, i32 2
  %4 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx8.2, align 4
  %and.2 = and i32 %5, 63
  store i32 %and.2, ptr %arrayidx8.2, align 4
  %arrayidx8.3 = getelementptr i32, ptr %curves, i32 3
  %6 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx8.3, align 4
  %and.3 = and i32 %7, 63
  store i32 %and.3, ptr %arrayidx8.3, align 4
  %arrayidx8.4 = getelementptr i32, ptr %curves, i32 4
  %8 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx8.4, align 4
  %and.4 = and i32 %9, 63
  store i32 %and.4, ptr %arrayidx8.4, align 4
  %arrayidx8.5 = getelementptr i32, ptr %curves, i32 5
  %10 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx8.5, align 4
  %and.5 = and i32 %11, 63
  store i32 %and.5, ptr %arrayidx8.5, align 4
  %arrayidx8.6 = getelementptr i32, ptr %curves, i32 6
  %12 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx8.6, align 4
  %and.6 = and i32 %13, 63
  store i32 %and.6, ptr %arrayidx8.6, align 4
  %arrayidx8.7 = getelementptr i32, ptr %curves, i32 7
  %14 = ptrtoint ptr %arrayidx8.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx8.7, align 4
  %and.7 = and i32 %15, 63
  store i32 %and.7, ptr %arrayidx8.7, align 4
  %arrayidx8.8 = getelementptr i32, ptr %curves, i32 8
  %16 = ptrtoint ptr %arrayidx8.8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8.8, align 4
  %and.8 = and i32 %17, 63
  store i32 %and.8, ptr %arrayidx8.8, align 4
  %arrayidx8.9 = getelementptr i32, ptr %curves, i32 9
  %18 = ptrtoint ptr %arrayidx8.9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx8.9, align 4
  %and.9 = and i32 %19, 63
  store i32 %and.9, ptr %arrayidx8.9, align 4
  %arrayidx8.10 = getelementptr i32, ptr %curves, i32 10
  %20 = ptrtoint ptr %arrayidx8.10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx8.10, align 4
  %and.10 = and i32 %21, 63
  store i32 %and.10, ptr %arrayidx8.10, align 4
  %arrayidx8.11 = getelementptr i32, ptr %curves, i32 11
  %22 = ptrtoint ptr %arrayidx8.11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx8.11, align 4
  %and.11 = and i32 %23, 63
  store i32 %and.11, ptr %arrayidx8.11, align 4
  %arrayidx8.12 = getelementptr i32, ptr %curves, i32 12
  %24 = ptrtoint ptr %arrayidx8.12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx8.12, align 4
  %and.12 = and i32 %25, 31
  store i32 %and.12, ptr %arrayidx8.12, align 4
  %arrayidx8.13 = getelementptr i32, ptr %curves, i32 13
  %26 = ptrtoint ptr %arrayidx8.13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx8.13, align 4
  %and.13 = and i32 %27, 31
  store i32 %and.13, ptr %arrayidx8.13, align 4
  %28 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_values, align 8
  %arrayidx.1298 = getelementptr [28 x i32], ptr @set_gamma.mask, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx.1298 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.1298, align 4
  %arrayidx8.1299 = getelementptr i32, ptr %curves, i32 %29
  %32 = ptrtoint ptr %arrayidx8.1299 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx8.1299, align 4
  %and.1300 = and i32 %33, %31
  store i32 %and.1300, ptr %arrayidx8.1299, align 4
  %34 = load i32, ptr %num_values, align 8
  %add.1.1 = add i32 %34, 1
  %arrayidx.1.1 = getelementptr [28 x i32], ptr @set_gamma.mask, i32 0, i32 %add.1.1
  %35 = ptrtoint ptr %arrayidx.1.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.1.1, align 4
  %arrayidx8.1.1 = getelementptr i32, ptr %curves, i32 %add.1.1
  %37 = ptrtoint ptr %arrayidx8.1.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx8.1.1, align 4
  %and.1.1 = and i32 %38, %36
  store i32 %and.1.1, ptr %arrayidx8.1.1, align 4
  %39 = load i32, ptr %num_values, align 8
  %add.2.1 = add i32 %39, 2
  %arrayidx.2.1 = getelementptr [28 x i32], ptr @set_gamma.mask, i32 0, i32 %add.2.1
  %40 = ptrtoint ptr %arrayidx.2.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.2.1, align 4
  %arrayidx8.2.1 = getelementptr i32, ptr %curves, i32 %add.2.1
  %42 = ptrtoint ptr %arrayidx8.2.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx8.2.1, align 4
  %and.2.1 = and i32 %43, %41
  store i32 %and.2.1, ptr %arrayidx8.2.1, align 4
  %44 = load i32, ptr %num_values, align 8
  %add.3.1 = add i32 %44, 3
  %arrayidx.3.1 = getelementptr [28 x i32], ptr @set_gamma.mask, i32 0, i32 %add.3.1
  %45 = ptrtoint ptr %arrayidx.3.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.3.1, align 4
  %arrayidx8.3.1 = getelementptr i32, ptr %curves, i32 %add.3.1
  %47 = ptrtoint ptr %arrayidx8.3.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx8.3.1, align 4
  %and.3.1 = and i32 %48, %46
  store i32 %and.3.1, ptr %arrayidx8.3.1, align 4
  %49 = load i32, ptr %num_values, align 8
  %add.4.1 = add i32 %49, 4
  %arrayidx.4.1 = getelementptr [28 x i32], ptr @set_gamma.mask, i32 0, i32 %add.4.1
  %50 = ptrtoint ptr %arrayidx.4.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.4.1, align 4
  %arrayidx8.4.1 = getelementptr i32, ptr %curves, i32 %add.4.1
  %52 = ptrtoint ptr %arrayidx8.4.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx8.4.1, align 4
  %and.4.1 = and i32 %53, %51
  store i32 %and.4.1, ptr %arrayidx8.4.1, align 4
  %54 = load i32, ptr %num_values, align 8
  %add.5.1 = add i32 %54, 5
  %arrayidx.5.1 = getelementptr [28 x i32], ptr @set_gamma.mask, i32 0, i32 %add.5.1
  %55 = ptrtoint ptr %arrayidx.5.1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.5.1, align 4
  %arrayidx8.5.1 = getelementptr i32, ptr %curves, i32 %add.5.1
  %57 = ptrtoint ptr %arrayidx8.5.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx8.5.1, align 4
  %and.5.1 = and i32 %58, %56
  store i32 %and.5.1, ptr %arrayidx8.5.1, align 4
  %59 = load i32, ptr %num_values, align 8
  %add.6.1 = add i32 %59, 6
  %arrayidx.6.1 = getelementptr [28 x i32], ptr @set_gamma.mask, i32 0, i32 %add.6.1
  %60 = ptrtoint ptr %arrayidx.6.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.6.1, align 4
  %arrayidx8.6.1 = getelementptr i32, ptr %curves, i32 %add.6.1
  %62 = ptrtoint ptr %arrayidx8.6.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx8.6.1, align 4
  %and.6.1 = and i32 %63, %61
  store i32 %and.6.1, ptr %arrayidx8.6.1, align 4
  %64 = load i32, ptr %num_values, align 8
  %add.7.1 = add i32 %64, 7
  %arrayidx.7.1 = getelementptr [28 x i32], ptr @set_gamma.mask, i32 0, i32 %add.7.1
  %65 = ptrtoint ptr %arrayidx.7.1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.7.1, align 4
  %arrayidx8.7.1 = getelementptr i32, ptr %curves, i32 %add.7.1
  %67 = ptrtoint ptr %arrayidx8.7.1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx8.7.1, align 4
  %and.7.1 = and i32 %68, %66
  store i32 %and.7.1, ptr %arrayidx8.7.1, align 4
  %69 = load i32, ptr %num_values, align 8
  %add.8.1 = add i32 %69, 8
  %arrayidx.8.1 = getelementptr [28 x i32], ptr @set_gamma.mask, i32 0, i32 %add.8.1
  %70 = ptrtoint ptr %arrayidx.8.1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.8.1, align 4
  %arrayidx8.8.1 = getelementptr i32, ptr %curves, i32 %add.8.1
  %72 = ptrtoint ptr %arrayidx8.8.1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx8.8.1, align 4
  %and.8.1 = and i32 %73, %71
  store i32 %and.8.1, ptr %arrayidx8.8.1, align 4
  %74 = load i32, ptr %num_values, align 8
  %add.9.1 = add i32 %74, 9
  %arrayidx.9.1 = getelementptr [28 x i32], ptr @set_gamma.mask, i32 0, i32 %add.9.1
  %75 = ptrtoint ptr %arrayidx.9.1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.9.1, align 4
  %arrayidx8.9.1 = getelementptr i32, ptr %curves, i32 %add.9.1
  %77 = ptrtoint ptr %arrayidx8.9.1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx8.9.1, align 4
  %and.9.1 = and i32 %78, %76
  store i32 %and.9.1, ptr %arrayidx8.9.1, align 4
  %79 = load i32, ptr %num_values, align 8
  %add.10.1 = add i32 %79, 10
  %arrayidx.10.1 = getelementptr [28 x i32], ptr @set_gamma.mask, i32 0, i32 %add.10.1
  %80 = ptrtoint ptr %arrayidx.10.1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.10.1, align 4
  %arrayidx8.10.1 = getelementptr i32, ptr %curves, i32 %add.10.1
  %82 = ptrtoint ptr %arrayidx8.10.1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx8.10.1, align 4
  %and.10.1 = and i32 %83, %81
  store i32 %and.10.1, ptr %arrayidx8.10.1, align 4
  %84 = load i32, ptr %num_values, align 8
  %add.11.1 = add i32 %84, 11
  %arrayidx.11.1 = getelementptr [28 x i32], ptr @set_gamma.mask, i32 0, i32 %add.11.1
  %85 = ptrtoint ptr %arrayidx.11.1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.11.1, align 4
  %arrayidx8.11.1 = getelementptr i32, ptr %curves, i32 %add.11.1
  %87 = ptrtoint ptr %arrayidx8.11.1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx8.11.1, align 4
  %and.11.1 = and i32 %88, %86
  store i32 %and.11.1, ptr %arrayidx8.11.1, align 4
  %89 = load i32, ptr %num_values, align 8
  %add.12.1 = add i32 %89, 12
  %arrayidx.12.1 = getelementptr [28 x i32], ptr @set_gamma.mask, i32 0, i32 %add.12.1
  %90 = ptrtoint ptr %arrayidx.12.1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.12.1, align 4
  %arrayidx8.12.1 = getelementptr i32, ptr %curves, i32 %add.12.1
  %92 = ptrtoint ptr %arrayidx8.12.1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx8.12.1, align 4
  %and.12.1 = and i32 %93, %91
  store i32 %and.12.1, ptr %arrayidx8.12.1, align 4
  %94 = load i32, ptr %num_values, align 8
  %add.13.1 = add i32 %94, 13
  %arrayidx.13.1 = getelementptr [28 x i32], ptr @set_gamma.mask, i32 0, i32 %add.13.1
  %95 = ptrtoint ptr %arrayidx.13.1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.13.1, align 4
  %arrayidx8.13.1 = getelementptr i32, ptr %curves, i32 %add.13.1
  %97 = ptrtoint ptr %arrayidx8.13.1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx8.13.1, align 4
  %and.13.1 = and i32 %98, %96
  store i32 %and.13.1, ptr %arrayidx8.13.1, align 4
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %99 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %write_register, align 4
  %101 = load i32, ptr %arrayidx8.1, align 4
  %shl = shl i32 %101, 8
  %102 = load i32, ptr %curves, align 4
  %or = or i32 %shl, %102
  tail call void (ptr, i32, ...) %100(ptr noundef %par, i32 noundef 2, i32 noundef 48, i32 noundef %or) #3
  %103 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %write_register, align 4
  %105 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx8.3, align 4
  %shl29 = shl i32 %106, 8
  %107 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx8.2, align 4
  %or35 = or i32 %shl29, %108
  tail call void (ptr, i32, ...) %104(ptr noundef %par, i32 noundef 2, i32 noundef 49, i32 noundef %or35) #3
  %109 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %write_register, align 4
  %111 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx8.5, align 4
  %shl43 = shl i32 %112, 8
  %113 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx8.3, align 4
  %or49 = or i32 %shl43, %114
  tail call void (ptr, i32, ...) %110(ptr noundef %par, i32 noundef 2, i32 noundef 50, i32 noundef %or49) #3
  %115 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write_register, align 4
  %117 = ptrtoint ptr %arrayidx8.7 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx8.7, align 4
  %shl57 = shl i32 %118, 8
  %119 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx8.6, align 4
  %or63 = or i32 %shl57, %120
  tail call void (ptr, i32, ...) %116(ptr noundef %par, i32 noundef 2, i32 noundef 51, i32 noundef %or63) #3
  %121 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %write_register, align 4
  %123 = ptrtoint ptr %arrayidx8.9 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx8.9, align 4
  %shl71 = shl i32 %124, 8
  %125 = ptrtoint ptr %arrayidx8.8 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx8.8, align 4
  %or77 = or i32 %shl71, %126
  tail call void (ptr, i32, ...) %122(ptr noundef %par, i32 noundef 2, i32 noundef 52, i32 noundef %or77) #3
  %127 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %write_register, align 4
  %129 = ptrtoint ptr %arrayidx8.11 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx8.11, align 4
  %shl85 = shl i32 %130, 8
  %131 = ptrtoint ptr %arrayidx8.10 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx8.10, align 4
  %or91 = or i32 %shl85, %132
  tail call void (ptr, i32, ...) %128(ptr noundef %par, i32 noundef 2, i32 noundef 53, i32 noundef %or91) #3
  %133 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %write_register, align 4
  %135 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %num_values, align 8
  %add97 = add i32 %136, 1
  %arrayidx98 = getelementptr i32, ptr %curves, i32 %add97
  %137 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx98, align 4
  %shl99 = shl i32 %138, 8
  %arrayidx104 = getelementptr i32, ptr %curves, i32 %136
  %139 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx104, align 4
  %or105 = or i32 %shl99, %140
  tail call void (ptr, i32, ...) %134(ptr noundef %par, i32 noundef 2, i32 noundef 54, i32 noundef %or105) #3
  %141 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %write_register, align 4
  %143 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %num_values, align 8
  %add111 = add i32 %144, 3
  %arrayidx112 = getelementptr i32, ptr %curves, i32 %add111
  %145 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx112, align 4
  %shl113 = shl i32 %146, 8
  %add117 = add i32 %144, 2
  %arrayidx118 = getelementptr i32, ptr %curves, i32 %add117
  %147 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx118, align 4
  %or119 = or i32 %shl113, %148
  tail call void (ptr, i32, ...) %142(ptr noundef %par, i32 noundef 2, i32 noundef 55, i32 noundef %or119) #3
  %149 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %write_register, align 4
  %151 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %num_values, align 8
  %add125 = add i32 %152, 5
  %arrayidx126 = getelementptr i32, ptr %curves, i32 %add125
  %153 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx126, align 4
  %shl127 = shl i32 %154, 8
  %add131 = add i32 %152, 4
  %arrayidx132 = getelementptr i32, ptr %curves, i32 %add131
  %155 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx132, align 4
  %or133 = or i32 %shl127, %156
  tail call void (ptr, i32, ...) %150(ptr noundef %par, i32 noundef 2, i32 noundef 56, i32 noundef %or133) #3
  %157 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %write_register, align 4
  %159 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %num_values, align 8
  %add139 = add i32 %160, 7
  %arrayidx140 = getelementptr i32, ptr %curves, i32 %add139
  %161 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx140, align 4
  %shl141 = shl i32 %162, 8
  %add145 = add i32 %160, 6
  %arrayidx146 = getelementptr i32, ptr %curves, i32 %add145
  %163 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx146, align 4
  %or147 = or i32 %shl141, %164
  tail call void (ptr, i32, ...) %158(ptr noundef %par, i32 noundef 2, i32 noundef 57, i32 noundef %or147) #3
  %165 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %write_register, align 4
  %167 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %num_values, align 8
  %add153 = add i32 %168, 9
  %arrayidx154 = getelementptr i32, ptr %curves, i32 %add153
  %169 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx154, align 4
  %shl155 = shl i32 %170, 8
  %add159 = add i32 %168, 8
  %arrayidx160 = getelementptr i32, ptr %curves, i32 %add159
  %171 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx160, align 4
  %or161 = or i32 %shl155, %172
  tail call void (ptr, i32, ...) %166(ptr noundef %par, i32 noundef 2, i32 noundef 58, i32 noundef %or161) #3
  %173 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %write_register, align 4
  %175 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %num_values, align 8
  %add167 = add i32 %176, 11
  %arrayidx168 = getelementptr i32, ptr %curves, i32 %add167
  %177 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx168, align 4
  %shl169 = shl i32 %178, 8
  %add173 = add i32 %176, 10
  %arrayidx174 = getelementptr i32, ptr %curves, i32 %add173
  %179 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx174, align 4
  %or175 = or i32 %shl169, %180
  tail call void (ptr, i32, ...) %174(ptr noundef %par, i32 noundef 2, i32 noundef 59, i32 noundef %or175) #3
  %181 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %write_register, align 4
  %183 = ptrtoint ptr %arrayidx8.13 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx8.13, align 4
  %shl183 = shl i32 %184, 8
  %185 = ptrtoint ptr %arrayidx8.12 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx8.12, align 4
  %or189 = or i32 %shl183, %186
  tail call void (ptr, i32, ...) %182(ptr noundef %par, i32 noundef 2, i32 noundef 60, i32 noundef %or189) #3
  %187 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %write_register, align 4
  %189 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %num_values, align 8
  %add195 = add i32 %190, 13
  %arrayidx196 = getelementptr i32, ptr %curves, i32 %add195
  %191 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx196, align 4
  %shl197 = shl i32 %192, 8
  %add201 = add i32 %190, 12
  %arrayidx202 = getelementptr i32, ptr %curves, i32 %add201
  %193 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx202, align 4
  %or203 = or i32 %shl197, %194
  tail call void (ptr, i32, ...) %188(ptr noundef %par, i32 noundef 2, i32 noundef 61, i32 noundef %or203) #3
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

!0 = !{ptr @__initcall__kmod_fb_s6d1121__303_173_fbtft_driver_module_init6, !1, !"__initcall__kmod_fb_s6d1121__303_173_fbtft_driver_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/fbtft/fb_s6d1121.c", i32 173, i32 1}
!2 = !{ptr @__exitcall_fbtft_driver_module_exit, !1, !"__exitcall_fbtft_driver_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias304, !4, !"__UNIQUE_ID_alias304", i1 false, i1 false}
!4 = !{!"../drivers/staging/fbtft/fb_s6d1121.c", i32 175, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias305, !6, !"__UNIQUE_ID_alias305", i1 false, i1 false}
!6 = !{!"../drivers/staging/fbtft/fb_s6d1121.c", i32 176, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias306, !8, !"__UNIQUE_ID_alias306", i1 false, i1 false}
!8 = !{!"../drivers/staging/fbtft/fb_s6d1121.c", i32 177, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias307, !10, !"__UNIQUE_ID_alias307", i1 false, i1 false}
!10 = !{!"../drivers/staging/fbtft/fb_s6d1121.c", i32 178, i32 1}
!11 = !{ptr @__UNIQUE_ID_description308, !12, !"__UNIQUE_ID_description308", i1 false, i1 false}
!12 = !{!"../drivers/staging/fbtft/fb_s6d1121.c", i32 180, i32 1}
!13 = !{ptr @__UNIQUE_ID_author309, !14, !"__UNIQUE_ID_author309", i1 false, i1 false}
!14 = !{!"../drivers/staging/fbtft/fb_s6d1121.c", i32 181, i32 1}
!15 = !{ptr @__UNIQUE_ID_file310, !16, !"__UNIQUE_ID_file310", i1 false, i1 false}
!16 = !{!"../drivers/staging/fbtft/fb_s6d1121.c", i32 182, i32 1}
!17 = !{ptr @__UNIQUE_ID_license311, !16, !"__UNIQUE_ID_license311", i1 false, i1 false}
!18 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @fbtft_driver_spi_driver, !1, !"fbtft_driver_spi_driver", i1 false, i1 false}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/fbtft/fb_s6d1121.c", i32 164, i32 11}
!22 = !{ptr @display, !23, !"display", i1 false, i1 false}
!23 = !{!"../drivers/staging/fbtft/fb_s6d1121.c", i32 156, i32 29}
!24 = !{ptr @set_gamma.mask, !25, !"mask", i1 false, i1 false}
!25 = !{!"../drivers/staging/fbtft/fb_s6d1121.c", i32 122, i32 29}
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
