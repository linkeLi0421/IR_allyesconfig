; ModuleID = '/llk/IR_all_yes/drivers/staging/fbtft/fb_st7735r.c_pt.bc'
source_filename = "../drivers/staging/fbtft/fb_st7735r.c"
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
@__initcall__kmod_fb_st7735r__303_177_fbtft_driver_module_init6 = internal global ptr @fbtft_driver_module_init, section ".initcall6.init", align 4
@__exitcall_fbtft_driver_module_exit = internal global ptr @fbtft_driver_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias304 = internal constant [32 x i8] c"fb_st7735r.alias=spi:fb_st7735r\00", section ".modinfo", align 1
@__UNIQUE_ID_alias305 = internal constant [37 x i8] c"fb_st7735r.alias=platform:fb_st7735r\00", section ".modinfo", align 1
@__UNIQUE_ID_alias306 = internal constant [29 x i8] c"fb_st7735r.alias=spi:st7735r\00", section ".modinfo", align 1
@__UNIQUE_ID_alias307 = internal constant [34 x i8] c"fb_st7735r.alias=platform:st7735r\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [64 x i8] c"fb_st7735r.description=FB driver for the ST7735R LCD Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author309 = internal constant [33 x i8] c"fb_st7735r.author=Noralf Tronnes\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [49 x i8] c"fb_st7735r.file=drivers/staging/fbtft/fb_st7735r\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [23 x i8] c"fb_st7735r.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fb_st7735r\00", [21 x i8] zeroinitializer }, align 32
@dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sitronix,st7735r\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@display = internal global { %struct.fbtft_display, [40 x i8] } { %struct.fbtft_display { i32 128, i32 160, i32 8, i32 0, i32 0, %struct.fbtft_ops { ptr null, ptr null, ptr null, ptr null, ptr @set_addr_win, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @set_var, ptr @set_gamma }, i32 0, i32 0, i32 0, ptr @default_init_sequence, ptr @.str.1, i32 2, i32 16, i32 0 }, [40 x i8] zeroinitializer }, align 32
@default_init_sequence = internal constant { [66 x i16], [60 x i8] } { [66 x i16] [i16 -1, i16 1, i16 -2, i16 150, i16 -1, i16 17, i16 -2, i16 500, i16 -1, i16 177, i16 1, i16 44, i16 45, i16 -1, i16 178, i16 1, i16 44, i16 45, i16 -1, i16 179, i16 1, i16 44, i16 45, i16 1, i16 44, i16 45, i16 -1, i16 180, i16 7, i16 -1, i16 192, i16 162, i16 2, i16 132, i16 -1, i16 193, i16 197, i16 -1, i16 194, i16 10, i16 0, i16 -1, i16 195, i16 138, i16 42, i16 -1, i16 196, i16 138, i16 238, i16 -1, i16 197, i16 14, i16 -1, i16 32, i16 -1, i16 58, i16 5, i16 -1, i16 41, i16 -2, i16 100, i16 -1, i16 19, i16 -2, i16 10, i16 -3], [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"0F 1A 0F 18 2F 28 20 22 1F 1B 23 37 00 07 02 10\0A0F 1B 0F 17 33 2C 29 2E 30 30 39 3F 00 07 03 10\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 90, i64 180, i64 270]
@___asan_gen_.2 = private unnamed_addr constant [24 x i8] c"fbtft_driver_spi_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [29 x i8] c"fbtft_driver_platform_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"dt_ids\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 177, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 162, i32 29 }
@___asan_gen_.17 = private unnamed_addr constant [22 x i8] c"default_init_sequence\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 19, i32 18 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [38 x i8] c"../drivers/staging/fbtft/fb_st7735r.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 169, i32 11 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_alias304, ptr @__UNIQUE_ID_alias305, ptr @__UNIQUE_ID_alias306, ptr @__UNIQUE_ID_alias307, ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_fbtft_driver_module_exit, ptr @__initcall__kmod_fb_st7735r__303_177_fbtft_driver_module_init6, ptr @fbtft_driver_module_exit, ptr @fbtft_driver_spi_driver, ptr @fbtft_driver_platform_driver, ptr @.str, ptr @dt_ids, ptr @display, ptr @default_init_sequence, ptr @.str.1], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_init_sequence to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
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
  %shr = ashr i32 %xs, 8
  %and = and i32 %xs, 255
  %shr1 = ashr i32 %xe, 8
  %and2 = and i32 %xe, 255
  tail call void (ptr, i32, ...) %1(ptr noundef %par, i32 noundef 5, i32 noundef 42, i32 noundef %shr, i32 noundef %and, i32 noundef %shr1, i32 noundef %and2) #3
  %2 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_register, align 4
  %shr5 = ashr i32 %ys, 8
  %and6 = and i32 %ys, 255
  %shr7 = ashr i32 %ye, 8
  %and8 = and i32 %ye, 255
  tail call void (ptr, i32, ...) %3(ptr noundef %par, i32 noundef 5, i32 noundef 43, i32 noundef %shr5, i32 noundef %and6, i32 noundef %shr7, i32 noundef %and8) #3
  %4 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %5(ptr noundef %par, i32 noundef 1, i32 noundef 44) #3
  ret void
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
    i32 180, label %sw.bb9
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
  %8 = or i8 %7, -64
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %bgr4 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 19
  %9 = ptrtoint ptr %bgr4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bgr4, align 8, !range !37
  %11 = shl nuw nsw i8 %10, 3
  %12 = or i8 %11, -96
  br label %sw.epilog.sink.split

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %bgr12 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 19
  %13 = ptrtoint ptr %bgr12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bgr12, align 8, !range !37
  %15 = shl nuw nsw i8 %14, 3
  br label %sw.epilog.sink.split

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %bgr19 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 19
  %16 = ptrtoint ptr %bgr19 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bgr19, align 8, !range !37
  %18 = shl nuw nsw i8 %17, 3
  %19 = or i8 %18, 96
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb16, %sw.bb9, %sw.bb1, %sw.bb
  %.sink36 = phi i8 [ %19, %sw.bb16 ], [ %15, %sw.bb9 ], [ %12, %sw.bb1 ], [ %8, %sw.bb ]
  %.sink.in = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %20 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %.sink = load ptr, ptr %.sink.in, align 4
  %or23 = zext i8 %.sink36 to i32
  tail call void (ptr, i32, ...) %.sink(ptr noundef %par, i32 noundef 2, i32 noundef 54, i32 noundef %or23) #3
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
  %cmp161 = icmp sgt i32 %1, 0
  br i1 %cmp161, label %for.cond1.preheader.lr.ph, label %entry.for.end98_crit_edge

entry.for.end98_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end98

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %num_values = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 15, i32 2
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc7.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %i.0162 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc8, %for.inc7.for.cond1.preheader_crit_edge ]
  %2 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_values, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3159 = icmp sgt i32 %3, 0
  br i1 %cmp3159, label %for.cond1.preheader.for.body4_crit_edge, label %for.cond1.preheader.for.inc7_crit_edge

for.cond1.preheader.for.inc7_crit_edge:           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc7

for.cond1.preheader.for.body4_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body4

for.cond10.preheader:                             ; preds = %for.inc7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp13164 = icmp sgt i32 %10, 0
  br i1 %cmp13164, label %for.body14.lr.ph, label %for.cond10.preheader.for.end98_crit_edge

for.cond10.preheader.for.end98_crit_edge:         ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end98

for.body14.lr.ph:                                 ; preds = %for.cond10.preheader
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %num_values17 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 15, i32 2
  br label %for.body14

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.cond1.preheader.for.body4_crit_edge
  %4 = phi i32 [ %8, %for.body4.for.body4_crit_edge ], [ %3, %for.cond1.preheader.for.body4_crit_edge ]
  %j.0160 = phi i32 [ %inc, %for.body4.for.body4_crit_edge ], [ 0, %for.cond1.preheader.for.body4_crit_edge ]
  %mul = mul i32 %4, %i.0162
  %add = add i32 %mul, %j.0160
  %arrayidx = getelementptr i32, ptr %curves, i32 %add
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %and = and i32 %6, 63
  store i32 %and, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %j.0160, 1
  %7 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_values, align 8
  %cmp3 = icmp slt i32 %inc, %8
  br i1 %cmp3, label %for.body4.for.body4_crit_edge, label %for.body4.for.inc7_crit_edge

for.body4.for.inc7_crit_edge:                     ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc7

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body4

for.inc7:                                         ; preds = %for.body4.for.inc7_crit_edge, %for.cond1.preheader.for.inc7_crit_edge
  %inc8 = add nuw nsw i32 %i.0162, 1
  %9 = ptrtoint ptr %num_curves to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_curves, align 4
  %cmp = icmp slt i32 %inc8, %10
  br i1 %cmp, label %for.inc7.for.cond1.preheader_crit_edge, label %for.cond10.preheader

for.inc7.for.cond1.preheader_crit_edge:           ; preds = %for.inc7
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond1.preheader

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.body14.lr.ph
  %i.1165 = phi i32 [ 0, %for.body14.lr.ph ], [ %inc97, %for.body14.for.body14_crit_edge ]
  %11 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_register, align 4
  %add15 = add nuw i32 %i.1165, 224
  %13 = ptrtoint ptr %num_values17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_values17, align 8
  %mul18 = mul i32 %14, %i.1165
  %arrayidx20 = getelementptr i32, ptr %curves, i32 %mul18
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx20, align 4
  %add24 = add i32 %mul18, 1
  %arrayidx25 = getelementptr i32, ptr %curves, i32 %add24
  %17 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx25, align 4
  %add29 = add i32 %mul18, 2
  %arrayidx30 = getelementptr i32, ptr %curves, i32 %add29
  %19 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx30, align 4
  %add34 = add i32 %mul18, 3
  %arrayidx35 = getelementptr i32, ptr %curves, i32 %add34
  %21 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx35, align 4
  %add39 = add i32 %mul18, 4
  %arrayidx40 = getelementptr i32, ptr %curves, i32 %add39
  %23 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx40, align 4
  %add44 = add i32 %mul18, 5
  %arrayidx45 = getelementptr i32, ptr %curves, i32 %add44
  %25 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx45, align 4
  %add49 = add i32 %mul18, 6
  %arrayidx50 = getelementptr i32, ptr %curves, i32 %add49
  %27 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx50, align 4
  %add54 = add i32 %mul18, 7
  %arrayidx55 = getelementptr i32, ptr %curves, i32 %add54
  %29 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx55, align 4
  %add59 = add i32 %mul18, 8
  %arrayidx60 = getelementptr i32, ptr %curves, i32 %add59
  %31 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx60, align 4
  %add64 = add i32 %mul18, 9
  %arrayidx65 = getelementptr i32, ptr %curves, i32 %add64
  %33 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx65, align 4
  %add69 = add i32 %mul18, 10
  %arrayidx70 = getelementptr i32, ptr %curves, i32 %add69
  %35 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx70, align 4
  %add74 = add i32 %mul18, 11
  %arrayidx75 = getelementptr i32, ptr %curves, i32 %add74
  %37 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx75, align 4
  %add79 = add i32 %mul18, 12
  %arrayidx80 = getelementptr i32, ptr %curves, i32 %add79
  %39 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx80, align 4
  %add84 = add i32 %mul18, 13
  %arrayidx85 = getelementptr i32, ptr %curves, i32 %add84
  %41 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx85, align 4
  %add89 = add i32 %mul18, 14
  %arrayidx90 = getelementptr i32, ptr %curves, i32 %add89
  %43 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx90, align 4
  %add94 = add i32 %mul18, 15
  %arrayidx95 = getelementptr i32, ptr %curves, i32 %add94
  %45 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx95, align 4
  tail call void (ptr, i32, ...) %12(ptr noundef %par, i32 noundef 17, i32 noundef %add15, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46) #3
  %inc97 = add nuw nsw i32 %i.1165, 1
  %47 = ptrtoint ptr %num_curves to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_curves, align 4
  %cmp13 = icmp slt i32 %inc97, %48
  br i1 %cmp13, label %for.body14.for.body14_crit_edge, label %for.body14.for.end98_crit_edge

for.body14.for.end98_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end98

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body14

for.end98:                                        ; preds = %for.body14.for.end98_crit_edge, %for.cond10.preheader.for.end98_crit_edge, %entry.for.end98_crit_edge
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

!0 = !{ptr @__initcall__kmod_fb_st7735r__303_177_fbtft_driver_module_init6, !1, !"__initcall__kmod_fb_st7735r__303_177_fbtft_driver_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/fbtft/fb_st7735r.c", i32 177, i32 1}
!2 = !{ptr @__exitcall_fbtft_driver_module_exit, !1, !"__exitcall_fbtft_driver_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias304, !4, !"__UNIQUE_ID_alias304", i1 false, i1 false}
!4 = !{!"../drivers/staging/fbtft/fb_st7735r.c", i32 179, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias305, !6, !"__UNIQUE_ID_alias305", i1 false, i1 false}
!6 = !{!"../drivers/staging/fbtft/fb_st7735r.c", i32 180, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias306, !8, !"__UNIQUE_ID_alias306", i1 false, i1 false}
!8 = !{!"../drivers/staging/fbtft/fb_st7735r.c", i32 181, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias307, !10, !"__UNIQUE_ID_alias307", i1 false, i1 false}
!10 = !{!"../drivers/staging/fbtft/fb_st7735r.c", i32 182, i32 1}
!11 = !{ptr @__UNIQUE_ID_description308, !12, !"__UNIQUE_ID_description308", i1 false, i1 false}
!12 = !{!"../drivers/staging/fbtft/fb_st7735r.c", i32 184, i32 1}
!13 = !{ptr @__UNIQUE_ID_author309, !14, !"__UNIQUE_ID_author309", i1 false, i1 false}
!14 = !{!"../drivers/staging/fbtft/fb_st7735r.c", i32 185, i32 1}
!15 = !{ptr @__UNIQUE_ID_file310, !16, !"__UNIQUE_ID_file310", i1 false, i1 false}
!16 = !{!"../drivers/staging/fbtft/fb_st7735r.c", i32 186, i32 1}
!17 = !{ptr @__UNIQUE_ID_license311, !16, !"__UNIQUE_ID_license311", i1 false, i1 false}
!18 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @fbtft_driver_spi_driver, !1, !"fbtft_driver_spi_driver", i1 false, i1 false}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/fbtft/fb_st7735r.c", i32 169, i32 11}
!22 = !{ptr @display, !23, !"display", i1 false, i1 false}
!23 = !{!"../drivers/staging/fbtft/fb_st7735r.c", i32 162, i32 29}
!24 = !{ptr @default_init_sequence, !25, !"default_init_sequence", i1 false, i1 false}
!25 = !{!"../drivers/staging/fbtft/fb_st7735r.c", i32 19, i32 18}
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
