; ModuleID = '/llk/IR_all_yes/drivers/staging/fbtft/fb_ssd1305.c_pt.bc'
source_filename = "../drivers/staging/fbtft/fb_ssd1305.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.fbtft_display = type { i32, i32, i32, i32, i32, %struct.fbtft_ops, i32, i32, i32, ptr, ptr, i32, i32, i32 }
%struct.fbtft_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
@__initcall__kmod_fb_ssd1305__303_198_fbtft_driver_module_init6 = internal global ptr @fbtft_driver_module_init, section ".initcall6.init", align 4
@__exitcall_fbtft_driver_module_exit = internal global ptr @fbtft_driver_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias304 = internal constant [32 x i8] c"fb_ssd1305.alias=spi:fb_ssd1305\00", section ".modinfo", align 1
@__UNIQUE_ID_alias305 = internal constant [37 x i8] c"fb_ssd1305.alias=platform:fb_ssd1305\00", section ".modinfo", align 1
@__UNIQUE_ID_alias306 = internal constant [29 x i8] c"fb_ssd1305.alias=spi:ssd1305\00", section ".modinfo", align 1
@__UNIQUE_ID_alias307 = internal constant [34 x i8] c"fb_ssd1305.alias=platform:ssd1305\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [43 x i8] c"fb_ssd1305.description=SSD1305 OLED Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author309 = internal constant [32 x i8] c"fb_ssd1305.author=Alexey Mednyy\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [49 x i8] c"fb_ssd1305.file=drivers/staging/fbtft/fb_ssd1305\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [23 x i8] c"fb_ssd1305.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fb_ssd1305\00", [21 x i8] zeroinitializer }, align 32
@dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"solomon,ssd1305\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@display = internal global { %struct.fbtft_display, [40 x i8] } { %struct.fbtft_display { i32 128, i32 64, i32 8, i32 0, i32 0, %struct.fbtft_ops { ptr null, ptr null, ptr @write_vmem, ptr null, ptr @set_addr_win, ptr null, ptr null, ptr null, ptr @init_display, ptr @blank, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @set_gamma }, i32 0, i32 0, i32 1024, ptr null, ptr @.str.1, i32 1, i32 1, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"00\00", [29 x i8] zeroinitializer }, align 32
@write_vmem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 177, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"write failed and returned: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"write_vmem\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/staging/fbtft/fb_ssd1305.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@write_vmem._entry_ptr = internal global ptr @write_vmem._entry, section ".printk_index", align 4
@___asan_gen_.7 = private unnamed_addr constant [24 x i8] c"fbtft_driver_spi_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [29 x i8] c"fbtft_driver_platform_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [7 x i8] c"dt_ids\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 198, i32 1 }
@___asan_gen_.19 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 181, i32 29 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 188, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [38 x i8] c"../drivers/staging/fbtft/fb_ssd1305.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 176, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_alias304, ptr @__UNIQUE_ID_alias305, ptr @__UNIQUE_ID_alias306, ptr @__UNIQUE_ID_alias307, ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_fbtft_driver_module_exit, ptr @__initcall__kmod_fb_ssd1305__303_198_fbtft_driver_module_init6, ptr @fbtft_driver_module_exit, ptr @write_vmem._entry, ptr @write_vmem._entry_ptr, ptr @fbtft_driver_spi_driver, ptr @fbtft_driver_platform_driver, ptr @.str, ptr @dt_ids, ptr @display, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_vmem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fbtft_driver_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @fbtft_driver_spi_driver, i32 0, i32 4)) #4
  tail call void @platform_driver_unregister(ptr noundef nonnull @fbtft_driver_platform_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @fbtft_driver_spi_driver) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @fbtft_driver_platform_driver, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @fbtft_driver_spi_driver, i32 0, i32 4)) #4
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
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fbtft_probe_common(ptr noundef nonnull @display, ptr noundef %spi, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_remove_spi(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @fbtft_remove_common(ptr noundef %spi, ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fbtft_probe_common(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_vmem(ptr noundef %par, i32 noundef %offset, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %2 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %txbuf = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 6
  %var67 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %var67 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %var67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp68.not = icmp eq i32 %6, 0
  br i1 %cmp68.not, label %entry.for.end23_crit_edge, label %for.cond3.preheader.preheader

entry.for.end23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end23

for.cond3.preheader.preheader:                    ; preds = %entry
  %7 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %txbuf, align 4
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc21.for.cond3.preheader_crit_edge, %for.cond3.preheader.preheader
  %x.070 = phi i32 [ %inc22, %for.inc21.for.cond3.preheader_crit_edge ], [ 0, %for.cond3.preheader.preheader ]
  %buf.069 = phi ptr [ %buf.1.lcssa, %for.inc21.for.cond3.preheader_crit_edge ], [ %8, %for.cond3.preheader.preheader ]
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 8
  %yres62 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %yres62 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %yres62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %cmp664.not = icmp ult i32 %12, 8
  br i1 %cmp664.not, label %for.cond3.preheader.for.inc21_crit_edge, label %for.cond3.preheader.for.body7_crit_edge

for.cond3.preheader.for.body7_crit_edge:          ; preds = %for.cond3.preheader
  br label %for.body7

for.cond3.preheader.for.inc21_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc21

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.cond3.preheader.for.body7_crit_edge
  %y.066 = phi i32 [ %inc19, %for.body7.for.body7_crit_edge ], [ 0, %for.cond3.preheader.for.body7_crit_edge ]
  %buf.165 = phi ptr [ %incdec.ptr, %for.body7.for.body7_crit_edge ], [ %buf.069, %for.cond3.preheader.for.body7_crit_edge ]
  %13 = ptrtoint ptr %buf.165 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %buf.165, align 1
  %mul = shl i32 %y.066, 3
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info, align 8
  %var12 = getelementptr inbounds %struct.fb_info, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %var12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %var12, align 4
  %mul14 = mul i32 %17, %mul
  %add15 = add i32 %mul14, %x.070
  %arrayidx = getelementptr i16, ptr %4, i32 %add15
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not = icmp ne i16 %19, 0
  %20 = zext i1 %tobool.not to i8
  %21 = ptrtoint ptr %buf.165 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %buf.165, align 1
  %add.1 = or i32 %mul, 1
  %22 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %info, align 8
  %var12.1 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %var12.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %var12.1, align 4
  %mul14.1 = mul i32 %25, %add.1
  %add15.1 = add i32 %mul14.1, %x.070
  %arrayidx.1 = getelementptr i16, ptr %4, i32 %add15.1
  %26 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not.1.not = icmp eq i16 %27, 0
  %28 = select i1 %tobool.not.1.not, i8 0, i8 2
  %conv17.1 = or i8 %28, %20
  %29 = ptrtoint ptr %buf.165 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv17.1, ptr %buf.165, align 1
  %add.2 = or i32 %mul, 2
  %30 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %info, align 8
  %var12.2 = getelementptr inbounds %struct.fb_info, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %var12.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %var12.2, align 4
  %mul14.2 = mul i32 %33, %add.2
  %add15.2 = add i32 %mul14.2, %x.070
  %arrayidx.2 = getelementptr i16, ptr %4, i32 %add15.2
  %34 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool.not.2.not = icmp eq i16 %35, 0
  %36 = select i1 %tobool.not.2.not, i8 0, i8 4
  %conv17.2 = or i8 %conv17.1, %36
  %37 = ptrtoint ptr %buf.165 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv17.2, ptr %buf.165, align 1
  %add.3 = or i32 %mul, 3
  %38 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %info, align 8
  %var12.3 = getelementptr inbounds %struct.fb_info, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %var12.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %var12.3, align 4
  %mul14.3 = mul i32 %41, %add.3
  %add15.3 = add i32 %mul14.3, %x.070
  %arrayidx.3 = getelementptr i16, ptr %4, i32 %add15.3
  %42 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool.not.3.not = icmp eq i16 %43, 0
  %44 = select i1 %tobool.not.3.not, i8 0, i8 8
  %conv17.3 = or i8 %conv17.2, %44
  %45 = ptrtoint ptr %buf.165 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv17.3, ptr %buf.165, align 1
  %add.4 = or i32 %mul, 4
  %46 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %info, align 8
  %var12.4 = getelementptr inbounds %struct.fb_info, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %var12.4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %var12.4, align 4
  %mul14.4 = mul i32 %49, %add.4
  %add15.4 = add i32 %mul14.4, %x.070
  %arrayidx.4 = getelementptr i16, ptr %4, i32 %add15.4
  %50 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx.4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool.not.4.not = icmp eq i16 %51, 0
  %52 = select i1 %tobool.not.4.not, i8 0, i8 16
  %conv17.4 = or i8 %conv17.3, %52
  %53 = ptrtoint ptr %buf.165 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv17.4, ptr %buf.165, align 1
  %add.5 = or i32 %mul, 5
  %54 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %info, align 8
  %var12.5 = getelementptr inbounds %struct.fb_info, ptr %55, i32 0, i32 6
  %56 = ptrtoint ptr %var12.5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %var12.5, align 4
  %mul14.5 = mul i32 %57, %add.5
  %add15.5 = add i32 %mul14.5, %x.070
  %arrayidx.5 = getelementptr i16, ptr %4, i32 %add15.5
  %58 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx.5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool.not.5.not = icmp eq i16 %59, 0
  %60 = select i1 %tobool.not.5.not, i8 0, i8 32
  %conv17.5 = or i8 %conv17.4, %60
  %61 = ptrtoint ptr %buf.165 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv17.5, ptr %buf.165, align 1
  %add.6 = or i32 %mul, 6
  %62 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %info, align 8
  %var12.6 = getelementptr inbounds %struct.fb_info, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %var12.6 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %var12.6, align 4
  %mul14.6 = mul i32 %65, %add.6
  %add15.6 = add i32 %mul14.6, %x.070
  %arrayidx.6 = getelementptr i16, ptr %4, i32 %add15.6
  %66 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx.6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool.not.6.not = icmp eq i16 %67, 0
  %68 = select i1 %tobool.not.6.not, i8 0, i8 64
  %conv17.6 = or i8 %conv17.5, %68
  %69 = ptrtoint ptr %buf.165 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv17.6, ptr %buf.165, align 1
  %add.7 = or i32 %mul, 7
  %70 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %info, align 8
  %var12.7 = getelementptr inbounds %struct.fb_info, ptr %71, i32 0, i32 6
  %72 = ptrtoint ptr %var12.7 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %var12.7, align 4
  %mul14.7 = mul i32 %73, %add.7
  %add15.7 = add i32 %mul14.7, %x.070
  %arrayidx.7 = getelementptr i16, ptr %4, i32 %add15.7
  %74 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx.7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool.not.7.not = icmp eq i16 %75, 0
  %76 = select i1 %tobool.not.7.not, i8 0, i8 -128
  %conv17.7 = or i8 %conv17.6, %76
  %77 = ptrtoint ptr %buf.165 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv17.7, ptr %buf.165, align 1
  %incdec.ptr = getelementptr i8, ptr %buf.165, i32 1
  %inc19 = add nuw nsw i32 %y.066, 1
  %78 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %info, align 8
  %yres = getelementptr inbounds %struct.fb_info, ptr %79, i32 0, i32 6, i32 1
  %80 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %yres, align 4
  %div60 = lshr i32 %81, 3
  %cmp6 = icmp ult i32 %inc19, %div60
  br i1 %cmp6, label %for.body7.for.body7_crit_edge, label %for.body7.for.inc21_crit_edge

for.body7.for.inc21_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc21

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body7

for.inc21:                                        ; preds = %for.body7.for.inc21_crit_edge, %for.cond3.preheader.for.inc21_crit_edge
  %buf.1.lcssa = phi ptr [ %buf.069, %for.cond3.preheader.for.inc21_crit_edge ], [ %incdec.ptr, %for.body7.for.inc21_crit_edge ]
  %inc22 = add nuw i32 %x.070, 1
  %82 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %info, align 8
  %var = getelementptr inbounds %struct.fb_info, ptr %83, i32 0, i32 6
  %84 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %var, align 4
  %cmp = icmp ult i32 %inc22, %85
  br i1 %cmp, label %for.inc21.for.cond3.preheader_crit_edge, label %for.inc21.for.end23_crit_edge

for.inc21.for.end23_crit_edge:                    ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end23

for.inc21.for.cond3.preheader_crit_edge:          ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond3.preheader

for.end23:                                        ; preds = %for.inc21.for.end23_crit_edge, %entry.for.end23_crit_edge
  %dc = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 1
  %86 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dc, align 4
  tail call void @gpiod_set_value(ptr noundef %87, i32 noundef 1) #4
  %fbtftops = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9
  %88 = ptrtoint ptr %fbtftops to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %fbtftops, align 4
  %90 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %txbuf, align 4
  %92 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %info, align 8
  %var27 = getelementptr inbounds %struct.fb_info, ptr %93, i32 0, i32 6
  %94 = ptrtoint ptr %var27 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %var27, align 4
  %yres31 = getelementptr inbounds %struct.fb_info, ptr %93, i32 0, i32 6, i32 1
  %96 = ptrtoint ptr %yres31 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %yres31, align 4
  %mul32 = mul i32 %97, %95
  %div3359 = lshr i32 %mul32, 3
  %call = tail call i32 %89(ptr noundef %par, ptr noundef %91, i32 noundef %div3359) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp34 = icmp slt i32 %call, 0
  br i1 %cmp34, label %do.end, label %for.end23.if.end_crit_edge

for.end23.if.end_crit_edge:                       ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #6
  %98 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %99, i32 0, i32 21
  %100 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.2, i32 noundef %call) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %for.end23.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_addr_win(ptr noundef %par, i32 noundef %xs, i32 noundef %ys, i32 noundef %xe, i32 noundef %ye) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %0 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_register, align 4
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %rotate = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 6, i32 26
  %4 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rotate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 180, i32 %5)
  %cmp = icmp eq i32 %5, 180
  %cond = select i1 %cmp, i32 0, i32 4
  tail call void (ptr, i32, ...) %1(ptr noundef %par, i32 noundef 1, i32 noundef %cond) #4
  %6 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %7(ptr noundef %par, i32 noundef 1, i32 noundef 16) #4
  %8 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %9(ptr noundef %par, i32 noundef 1, i32 noundef 64) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_display(ptr noundef %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reset = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 5
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset, align 4
  tail call void %1(ptr noundef %par) #4
  %curves = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 15, i32 1
  %2 = ptrtoint ptr %curves to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curves, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %gamma = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %gamma, i32 noundef 0) #4
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 8
  %yres = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %9)
  %cmp2 = icmp eq i32 %9, 64
  %10 = ptrtoint ptr %curves to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %curves, align 4
  %. = select i1 %cmp2, i32 207, i32 143
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %., ptr %11, align 4
  tail call void @mutex_unlock(ptr noundef %gamma) #4
  br label %if.end12

if.end12:                                         ; preds = %if.then, %entry.if.end12_crit_edge
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %13 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %14(ptr noundef %par, i32 noundef 1, i32 noundef 174) #4
  %15 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %16(ptr noundef %par, i32 noundef 1, i32 noundef 213) #4
  %17 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %18(ptr noundef %par, i32 noundef 1, i32 noundef 128) #4
  %19 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %20(ptr noundef %par, i32 noundef 1, i32 noundef 168) #4
  %info20 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %21 = ptrtoint ptr %info20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %info20, align 8
  %yres22 = getelementptr inbounds %struct.fb_info, ptr %22, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %yres22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %yres22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %24)
  %cmp23 = icmp eq i32 %24, 64
  %25 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_register, align 4
  %.140 = select i1 %cmp23, i32 63, i32 31
  tail call void (ptr, i32, ...) %26(ptr noundef %par, i32 noundef 1, i32 noundef %.140) #4
  %27 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %28(ptr noundef %par, i32 noundef 1, i32 noundef 211) #4
  %29 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %30(ptr noundef %par, i32 noundef 1, i32 noundef 0) #4
  %31 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %32(ptr noundef %par, i32 noundef 1, i32 noundef 64) #4
  %33 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %34(ptr noundef %par, i32 noundef 1, i32 noundef 141) #4
  %35 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %36(ptr noundef %par, i32 noundef 1, i32 noundef 20) #4
  %37 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %38(ptr noundef %par, i32 noundef 1, i32 noundef 32) #4
  %39 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %40(ptr noundef %par, i32 noundef 1, i32 noundef 1) #4
  %41 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_register, align 4
  %43 = ptrtoint ptr %info20 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %info20, align 8
  %rotate = getelementptr inbounds %struct.fb_info, ptr %44, i32 0, i32 6, i32 26
  %45 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rotate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 180, i32 %46)
  %cmp49 = icmp ne i32 %46, 180
  %cond = zext i1 %cmp49 to i32
  %or = or i32 %cond, 160
  tail call void (ptr, i32, ...) %42(ptr noundef %par, i32 noundef 1, i32 noundef %or) #4
  %47 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write_register, align 4
  %49 = ptrtoint ptr %info20 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %info20, align 8
  %rotate54 = getelementptr inbounds %struct.fb_info, ptr %50, i32 0, i32 6, i32 26
  %51 = ptrtoint ptr %rotate54 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rotate54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 180, i32 %52)
  %cmp55 = icmp eq i32 %52, 180
  %cond56 = select i1 %cmp55, i32 200, i32 192
  tail call void (ptr, i32, ...) %48(ptr noundef %par, i32 noundef 1, i32 noundef %cond56) #4
  %53 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %54(ptr noundef %par, i32 noundef 1, i32 noundef 218) #4
  %55 = ptrtoint ptr %info20 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %info20, align 8
  %yres61 = getelementptr inbounds %struct.fb_info, ptr %56, i32 0, i32 6, i32 1
  %57 = ptrtoint ptr %yres61 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %yres61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %58)
  %cmp62 = icmp eq i32 %58, 64
  %.sink138 = select i1 %cmp62, i32 18, i32 2
  %59 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %60(ptr noundef %par, i32 noundef 1, i32 noundef %.sink138) #4
  %61 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %62(ptr noundef %par, i32 noundef 1, i32 noundef 217) #4
  %63 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %64(ptr noundef %par, i32 noundef 1, i32 noundef 241) #4
  %65 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %66(ptr noundef %par, i32 noundef 1, i32 noundef 164) #4
  %67 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %68(ptr noundef %par, i32 noundef 1, i32 noundef 166) #4
  %69 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %70(ptr noundef %par, i32 noundef 1, i32 noundef 175) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blank(ptr noundef %par, i1 noundef zeroext %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %0 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_register, align 4
  %. = select i1 %on, i32 174, i32 175
  tail call void (ptr, i32, ...) %1(ptr noundef %par, i32 noundef 1, i32 noundef %.) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_gamma(ptr noundef %par, ptr nocapture noundef %curves) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %curves to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %curves, align 4
  %and = and i32 %1, 255
  store i32 %and, ptr %curves, align 4
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %3(ptr noundef %par, i32 noundef 1, i32 noundef 129) #4
  %4 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_register, align 4
  %6 = ptrtoint ptr %curves to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %curves, align 4
  tail call void (ptr, i32, ...) %5(ptr noundef %par, i32 noundef 1, i32 noundef %7) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbtft_remove_common(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_probe_pdev(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fbtft_probe_common(ptr noundef nonnull @display, ptr noundef null, ptr noundef %pdev) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_remove_pdev(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @fbtft_remove_common(ptr noundef %dev, ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_fb_ssd1305__303_198_fbtft_driver_module_init6, !1, !"__initcall__kmod_fb_ssd1305__303_198_fbtft_driver_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/fbtft/fb_ssd1305.c", i32 198, i32 1}
!2 = !{ptr @__exitcall_fbtft_driver_module_exit, !1, !"__exitcall_fbtft_driver_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias304, !4, !"__UNIQUE_ID_alias304", i1 false, i1 false}
!4 = !{!"../drivers/staging/fbtft/fb_ssd1305.c", i32 200, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias305, !6, !"__UNIQUE_ID_alias305", i1 false, i1 false}
!6 = !{!"../drivers/staging/fbtft/fb_ssd1305.c", i32 201, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias306, !8, !"__UNIQUE_ID_alias306", i1 false, i1 false}
!8 = !{!"../drivers/staging/fbtft/fb_ssd1305.c", i32 202, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias307, !10, !"__UNIQUE_ID_alias307", i1 false, i1 false}
!10 = !{!"../drivers/staging/fbtft/fb_ssd1305.c", i32 203, i32 1}
!11 = !{ptr @__UNIQUE_ID_description308, !12, !"__UNIQUE_ID_description308", i1 false, i1 false}
!12 = !{!"../drivers/staging/fbtft/fb_ssd1305.c", i32 205, i32 1}
!13 = !{ptr @__UNIQUE_ID_author309, !14, !"__UNIQUE_ID_author309", i1 false, i1 false}
!14 = !{!"../drivers/staging/fbtft/fb_ssd1305.c", i32 206, i32 1}
!15 = !{ptr @__UNIQUE_ID_file310, !16, !"__UNIQUE_ID_file310", i1 false, i1 false}
!16 = !{!"../drivers/staging/fbtft/fb_ssd1305.c", i32 207, i32 1}
!17 = !{ptr @__UNIQUE_ID_license311, !16, !"__UNIQUE_ID_license311", i1 false, i1 false}
!18 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @fbtft_driver_spi_driver, !1, !"fbtft_driver_spi_driver", i1 false, i1 false}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/fbtft/fb_ssd1305.c", i32 188, i32 11}
!22 = !{ptr @display, !23, !"display", i1 false, i1 false}
!23 = !{!"../drivers/staging/fbtft/fb_ssd1305.c", i32 181, i32 29}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/fbtft/fb_ssd1305.c", i32 176, i32 3}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @write_vmem._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @write_vmem._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @dt_ids, !1, !"dt_ids", i1 false, i1 false}
!33 = !{ptr @fbtft_driver_platform_driver, !1, !"fbtft_driver_platform_driver", i1 false, i1 false}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
