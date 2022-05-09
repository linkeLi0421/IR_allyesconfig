; ModuleID = '/llk/IR_all_yes/drivers/staging/fbtft/fb_bd663474.c_pt.bc'
source_filename = "../drivers/staging/fbtft/fb_bd663474.c"
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
@__initcall__kmod_fb_bd663474__303_162_fbtft_driver_module_init6 = internal global ptr @fbtft_driver_module_init, section ".initcall6.init", align 4
@__exitcall_fbtft_driver_module_exit = internal global ptr @fbtft_driver_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias304 = internal constant [34 x i8] c"fb_bd663474.alias=spi:fb_bd663474\00", section ".modinfo", align 1
@__UNIQUE_ID_alias305 = internal constant [39 x i8] c"fb_bd663474.alias=platform:fb_bd663474\00", section ".modinfo", align 1
@__UNIQUE_ID_alias306 = internal constant [31 x i8] c"fb_bd663474.alias=spi:bd663474\00", section ".modinfo", align 1
@__UNIQUE_ID_alias307 = internal constant [36 x i8] c"fb_bd663474.alias=platform:bd663474\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [67 x i8] c"fb_bd663474.description=FB driver for the uPD161704 LCD Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author309 = internal constant [33 x i8] c"fb_bd663474.author=Seong-Woo Kim\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [51 x i8] c"fb_bd663474.file=drivers/staging/fbtft/fb_bd663474\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [24 x i8] c"fb_bd663474.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fb_bd663474\00", [20 x i8] zeroinitializer }, align 32
@dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hitachi,bd663474\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@display = internal global { %struct.fbtft_display, [40 x i8] } { %struct.fbtft_display { i32 240, i32 320, i32 16, i32 0, i32 0, %struct.fbtft_ops { ptr null, ptr null, ptr null, ptr null, ptr @set_addr_win, ptr null, ptr null, ptr null, ptr @init_display, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @set_var, ptr null }, i32 16, i32 0, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 90, i64 180, i64 270]
@__sancov_gen_cov_switch_values.1 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 90, i64 180, i64 270]
@___asan_gen_.2 = private unnamed_addr constant [24 x i8] c"fbtft_driver_spi_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [29 x i8] c"fbtft_driver_platform_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"dt_ids\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 162, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@___asan_gen_.15 = private constant [39 x i8] c"../drivers/staging/fbtft/fb_bd663474.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 150, i32 29 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_alias304, ptr @__UNIQUE_ID_alias305, ptr @__UNIQUE_ID_alias306, ptr @__UNIQUE_ID_alias307, ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_fbtft_driver_module_exit, ptr @__initcall__kmod_fb_bd663474__303_162_fbtft_driver_module_init6, ptr @fbtft_driver_module_exit, ptr @fbtft_driver_spi_driver, ptr @fbtft_driver_platform_driver, ptr @.str, ptr @dt_ids, ptr @display], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
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
  tail call void (ptr, i32, ...) %6(ptr noundef %par, i32 noundef 2, i32 noundef 512, i32 noundef %xs) #3
  %7 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %8(ptr noundef %par, i32 noundef 2, i32 noundef 513, i32 noundef %ys) #3
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %write_register5 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %9 = ptrtoint ptr %write_register5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_register5, align 4
  %sub = sub i32 239, %xs
  tail call void (ptr, i32, ...) %10(ptr noundef %par, i32 noundef 2, i32 noundef 512, i32 noundef %sub) #3
  %11 = ptrtoint ptr %write_register5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_register5, align 4
  %sub8 = sub i32 319, %ys
  tail call void (ptr, i32, ...) %12(ptr noundef %par, i32 noundef 2, i32 noundef 513, i32 noundef %sub8) #3
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %write_register11 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %13 = ptrtoint ptr %write_register11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_register11, align 4
  %sub12 = sub i32 239, %ys
  tail call void (ptr, i32, ...) %14(ptr noundef %par, i32 noundef 2, i32 noundef 512, i32 noundef %sub12) #3
  %15 = ptrtoint ptr %write_register11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_register11, align 4
  tail call void (ptr, i32, ...) %16(ptr noundef %par, i32 noundef 2, i32 noundef 513, i32 noundef %xs) #3
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %write_register17 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %17 = ptrtoint ptr %write_register17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_register17, align 4
  tail call void (ptr, i32, ...) %18(ptr noundef %par, i32 noundef 2, i32 noundef 512, i32 noundef %ys) #3
  %19 = ptrtoint ptr %write_register17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_register17, align 4
  %sub20 = sub i32 319, %xs
  tail call void (ptr, i32, ...) %20(ptr noundef %par, i32 noundef 2, i32 noundef 513, i32 noundef %sub20) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb9, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %write_register22 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %21 = ptrtoint ptr %write_register22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_register22, align 4
  tail call void (ptr, i32, ...) %22(ptr noundef %par, i32 noundef 1, i32 noundef 514) #3
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
  tail call void (ptr, i32, ...) %3(ptr noundef %par, i32 noundef 2, i32 noundef 0, i32 noundef 1) #3
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #3
  %14 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %15(ptr noundef %par, i32 noundef 2, i32 noundef 256, i32 noundef 0) #3
  %16 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %17(ptr noundef %par, i32 noundef 2, i32 noundef 257, i32 noundef 0) #3
  %18 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %19(ptr noundef %par, i32 noundef 2, i32 noundef 258, i32 noundef 12560) #3
  %20 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %21(ptr noundef %par, i32 noundef 2, i32 noundef 259, i32 noundef 57856) #3
  %22 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %23(ptr noundef %par, i32 noundef 2, i32 noundef 272, i32 noundef 157) #3
  %24 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %25(ptr noundef %par, i32 noundef 2, i32 noundef 273, i32 noundef 34) #3
  %26 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %27(ptr noundef %par, i32 noundef 2, i32 noundef 256, i32 noundef 288) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #3
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #3
  %48 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %49(ptr noundef %par, i32 noundef 2, i32 noundef 256, i32 noundef 12576) #3
  br label %while.body28

while.body28:                                     ; preds = %while.body28.while.body28_crit_edge, %entry
  %__ms24.0233 = phi i32 [ 80, %entry ], [ %dec26, %while.body28.while.body28_crit_edge ]
  %dec26 = add nsw i32 %__ms24.0233, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #3
  %tobool27.not = icmp eq i32 %dec26, 0
  br i1 %tobool27.not, label %while.end29, label %while.body28.while.body28_crit_edge

while.body28.while.body28_crit_edge:              ; preds = %while.body28
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body28

while.end29:                                      ; preds = %while.body28
  call void @__sanitizer_cov_trace_pc() #5
  %51 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %52(ptr noundef %par, i32 noundef 2, i32 noundef 1, i32 noundef 256) #3
  %53 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %54(ptr noundef %par, i32 noundef 2, i32 noundef 2, i32 noundef 0) #3
  %55 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %56(ptr noundef %par, i32 noundef 2, i32 noundef 3, i32 noundef 4656) #3
  %57 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %58(ptr noundef %par, i32 noundef 2, i32 noundef 6, i32 noundef 0) #3
  %59 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %60(ptr noundef %par, i32 noundef 2, i32 noundef 7, i32 noundef 257) #3
  %61 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %62(ptr noundef %par, i32 noundef 2, i32 noundef 8, i32 noundef 2056) #3
  %63 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %64(ptr noundef %par, i32 noundef 2, i32 noundef 9, i32 noundef 0) #3
  %65 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %66(ptr noundef %par, i32 noundef 2, i32 noundef 11, i32 noundef 0) #3
  %67 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %68(ptr noundef %par, i32 noundef 2, i32 noundef 12, i32 noundef 0) #3
  %69 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %70(ptr noundef %par, i32 noundef 2, i32 noundef 13, i32 noundef 24) #3
  %71 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %72(ptr noundef %par, i32 noundef 2, i32 noundef 18, i32 noundef 0) #3
  %73 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %74(ptr noundef %par, i32 noundef 2, i32 noundef 19, i32 noundef 0) #3
  %75 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %76(ptr noundef %par, i32 noundef 2, i32 noundef 24, i32 noundef 0) #3
  %77 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %78(ptr noundef %par, i32 noundef 2, i32 noundef 25, i32 noundef 0) #3
  %79 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %80(ptr noundef %par, i32 noundef 2, i32 noundef 515, i32 noundef 0) #3
  %81 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %82(ptr noundef %par, i32 noundef 2, i32 noundef 516, i32 noundef 0) #3
  %83 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %84(ptr noundef %par, i32 noundef 2, i32 noundef 528, i32 noundef 0) #3
  %85 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %86(ptr noundef %par, i32 noundef 2, i32 noundef 529, i32 noundef 239) #3
  %87 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %88(ptr noundef %par, i32 noundef 2, i32 noundef 530, i32 noundef 0) #3
  %89 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %90(ptr noundef %par, i32 noundef 2, i32 noundef 531, i32 noundef 319) #3
  %91 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %92(ptr noundef %par, i32 noundef 2, i32 noundef 532, i32 noundef 0) #3
  %93 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %94(ptr noundef %par, i32 noundef 2, i32 noundef 533, i32 noundef 0) #3
  %95 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %96(ptr noundef %par, i32 noundef 2, i32 noundef 534, i32 noundef 0) #3
  %97 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %98(ptr noundef %par, i32 noundef 2, i32 noundef 535, i32 noundef 0) #3
  %99 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %100(ptr noundef %par, i32 noundef 2, i32 noundef 768, i32 noundef 21315) #3
  %101 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %102(ptr noundef %par, i32 noundef 2, i32 noundef 769, i32 noundef 4129) #3
  %103 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %104(ptr noundef %par, i32 noundef 2, i32 noundef 770, i32 noundef 3) #3
  %105 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %106(ptr noundef %par, i32 noundef 2, i32 noundef 771, i32 noundef 17) #3
  %107 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %108(ptr noundef %par, i32 noundef 2, i32 noundef 772, i32 noundef 1290) #3
  %109 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %110(ptr noundef %par, i32 noundef 2, i32 noundef 773, i32 noundef 17218) #3
  %111 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %112(ptr noundef %par, i32 noundef 2, i32 noundef 774, i32 noundef 4352) #3
  %113 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %114(ptr noundef %par, i32 noundef 2, i32 noundef 775, i32 noundef 3) #3
  %115 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %116(ptr noundef %par, i32 noundef 2, i32 noundef 776, i32 noundef 4609) #3
  %117 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %118(ptr noundef %par, i32 noundef 2, i32 noundef 777, i32 noundef 1290) #3
  %119 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %120(ptr noundef %par, i32 noundef 2, i32 noundef 1024, i32 noundef 16423) #3
  %121 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %122(ptr noundef %par, i32 noundef 2, i32 noundef 1025, i32 noundef 0) #3
  %123 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %124(ptr noundef %par, i32 noundef 2, i32 noundef 1026, i32 noundef 0) #3
  %125 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %126(ptr noundef %par, i32 noundef 2, i32 noundef 1027, i32 noundef 319) #3
  %127 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %128(ptr noundef %par, i32 noundef 2, i32 noundef 1028, i32 noundef 0) #3
  %129 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %130(ptr noundef %par, i32 noundef 2, i32 noundef 512, i32 noundef 0) #3
  %131 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %132(ptr noundef %par, i32 noundef 2, i32 noundef 513, i32 noundef 0) #3
  %133 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %134(ptr noundef %par, i32 noundef 2, i32 noundef 256, i32 noundef 28960) #3
  %135 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %136(ptr noundef %par, i32 noundef 2, i32 noundef 7, i32 noundef 259) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %137 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %137(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %138 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %138(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %139 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %139(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %140 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %140(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %141(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %142(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %143(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %144 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %144(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %145(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %146(i32 noundef 214748000) #3
  %147 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %148(ptr noundef %par, i32 noundef 2, i32 noundef 7, i32 noundef 275) #3
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.epilog.sink.split_crit_edge
    i32 180, label %sw.bb1
    i32 270, label %sw.bb4
    i32 90, label %sw.bb7
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

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb7, %sw.bb4, %sw.bb1, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 4632, %sw.bb7 ], [ 4648, %sw.bb4 ], [ 4608, %sw.bb1 ], [ 4656, %entry.sw.epilog.sink.split_crit_edge ]
  %write_register9 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %5 = ptrtoint ptr %write_register9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_register9, align 4
  tail call void (ptr, i32, ...) %6(ptr noundef %par, i32 noundef 2, i32 noundef 3, i32 noundef %.sink) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
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

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_fb_bd663474__303_162_fbtft_driver_module_init6, !1, !"__initcall__kmod_fb_bd663474__303_162_fbtft_driver_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/fbtft/fb_bd663474.c", i32 162, i32 1}
!2 = !{ptr @__exitcall_fbtft_driver_module_exit, !1, !"__exitcall_fbtft_driver_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias304, !4, !"__UNIQUE_ID_alias304", i1 false, i1 false}
!4 = !{!"../drivers/staging/fbtft/fb_bd663474.c", i32 164, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias305, !6, !"__UNIQUE_ID_alias305", i1 false, i1 false}
!6 = !{!"../drivers/staging/fbtft/fb_bd663474.c", i32 165, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias306, !8, !"__UNIQUE_ID_alias306", i1 false, i1 false}
!8 = !{!"../drivers/staging/fbtft/fb_bd663474.c", i32 166, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias307, !10, !"__UNIQUE_ID_alias307", i1 false, i1 false}
!10 = !{!"../drivers/staging/fbtft/fb_bd663474.c", i32 167, i32 1}
!11 = !{ptr @__UNIQUE_ID_description308, !12, !"__UNIQUE_ID_description308", i1 false, i1 false}
!12 = !{!"../drivers/staging/fbtft/fb_bd663474.c", i32 169, i32 1}
!13 = !{ptr @__UNIQUE_ID_author309, !14, !"__UNIQUE_ID_author309", i1 false, i1 false}
!14 = !{!"../drivers/staging/fbtft/fb_bd663474.c", i32 170, i32 1}
!15 = !{ptr @__UNIQUE_ID_file310, !16, !"__UNIQUE_ID_file310", i1 false, i1 false}
!16 = !{!"../drivers/staging/fbtft/fb_bd663474.c", i32 171, i32 1}
!17 = !{ptr @__UNIQUE_ID_license311, !16, !"__UNIQUE_ID_license311", i1 false, i1 false}
!18 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @fbtft_driver_spi_driver, !1, !"fbtft_driver_spi_driver", i1 false, i1 false}
!20 = !{ptr @display, !21, !"display", i1 false, i1 false}
!21 = !{!"../drivers/staging/fbtft/fb_bd663474.c", i32 150, i32 29}
!22 = !{ptr @dt_ids, !1, !"dt_ids", i1 false, i1 false}
!23 = !{ptr @fbtft_driver_platform_driver, !1, !"fbtft_driver_platform_driver", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
