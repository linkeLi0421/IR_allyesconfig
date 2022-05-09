; ModuleID = '/llk/IR_all_yes/drivers/staging/fbtft/fb_ssd1306.c_pt.bc'
source_filename = "../drivers/staging/fbtft/fb_ssd1306.c"
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
@__initcall__kmod_fb_ssd1306__303_219_fbtft_driver_module_init6 = internal global ptr @fbtft_driver_module_init, section ".initcall6.init", align 4
@__exitcall_fbtft_driver_module_exit = internal global ptr @fbtft_driver_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias304 = internal constant [32 x i8] c"fb_ssd1306.alias=spi:fb_ssd1306\00", section ".modinfo", align 1
@__UNIQUE_ID_alias305 = internal constant [37 x i8] c"fb_ssd1306.alias=platform:fb_ssd1306\00", section ".modinfo", align 1
@__UNIQUE_ID_alias306 = internal constant [29 x i8] c"fb_ssd1306.alias=spi:ssd1306\00", section ".modinfo", align 1
@__UNIQUE_ID_alias307 = internal constant [34 x i8] c"fb_ssd1306.alias=platform:ssd1306\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [43 x i8] c"fb_ssd1306.description=SSD1306 OLED Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author309 = internal constant [33 x i8] c"fb_ssd1306.author=Noralf Tronnes\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [49 x i8] c"fb_ssd1306.file=drivers/staging/fbtft/fb_ssd1306\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [23 x i8] c"fb_ssd1306.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fb_ssd1306\00", [21 x i8] zeroinitializer }, align 32
@dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"solomon,ssd1306\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@display = internal global { %struct.fbtft_display, [40 x i8] } { %struct.fbtft_display { i32 128, i32 64, i32 8, i32 0, i32 0, %struct.fbtft_ops { ptr null, ptr null, ptr @write_vmem, ptr null, ptr @set_addr_win, ptr null, ptr null, ptr null, ptr @init_display, ptr @blank, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @set_gamma }, i32 0, i32 0, i32 0, ptr null, ptr @.str.1, i32 1, i32 1, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"00\00", [29 x i8] zeroinitializer }, align 32
@write_vmem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 198, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"write failed and returned: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"write_vmem\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/staging/fbtft/fb_ssd1306.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@write_vmem._entry_ptr = internal global ptr @write_vmem._entry, section ".printk_index", align 4
@blank._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 152, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"(%s=%s)\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"blank\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@blank._entry_ptr = internal global ptr @blank._entry, section ".printk_index", align 4
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [24 x i8] c"fbtft_driver_spi_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [29 x i8] c"fbtft_driver_platform_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"dt_ids\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 219, i32 1 }
@___asan_gen_.24 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 203, i32 29 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 209, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 197, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [38 x i8] c"../drivers/staging/fbtft/fb_ssd1306.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 151, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_alias304, ptr @__UNIQUE_ID_alias305, ptr @__UNIQUE_ID_alias306, ptr @__UNIQUE_ID_alias307, ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_fbtft_driver_module_exit, ptr @__initcall__kmod_fb_ssd1306__303_219_fbtft_driver_module_init6, ptr @blank._entry, ptr @blank._entry_ptr, ptr @fbtft_driver_module_exit, ptr @write_vmem._entry, ptr @write_vmem._entry_ptr, ptr @fbtft_driver_spi_driver, ptr @fbtft_driver_platform_driver, ptr @.str, ptr @dt_ids, ptr @display, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_vmem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blank._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fbtft_driver_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @fbtft_driver_spi_driver, i32 0, i32 4)) #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @fbtft_driver_platform_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @fbtft_driver_spi_driver) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @fbtft_driver_platform_driver, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @fbtft_driver_spi_driver, i32 0, i32 4)) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fbtft_probe_common(ptr noundef nonnull @display, ptr noundef %spi, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_remove_spi(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @fbtft_remove_common(ptr noundef %spi, ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fbtft_probe_common(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_vmem(ptr noundef %par, i32 noundef %offset, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %2 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %var, align 4
  %yres5 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %yres5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %yres5, align 4
  %txbuf = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp60.not = icmp eq i32 %6, 0
  br i1 %cmp60.not, label %entry.for.end21_crit_edge, label %for.cond7.preheader.lr.ph

entry.for.end21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end21

for.cond7.preheader.lr.ph:                        ; preds = %entry
  %9 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %txbuf, align 4
  %div54 = lshr i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %cmp857.not = icmp ult i32 %8, 8
  %umax = call i32 @llvm.umax.i32(i32 %div54, i32 1)
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.inc19.for.cond7.preheader_crit_edge, %for.cond7.preheader.lr.ph
  %x.062 = phi i32 [ 0, %for.cond7.preheader.lr.ph ], [ %inc20, %for.inc19.for.cond7.preheader_crit_edge ]
  %buf.061 = phi ptr [ %10, %for.cond7.preheader.lr.ph ], [ %buf.1.lcssa, %for.inc19.for.cond7.preheader_crit_edge ]
  br i1 %cmp857.not, label %for.cond7.preheader.for.inc19_crit_edge, label %for.cond7.preheader.for.body9_crit_edge

for.cond7.preheader.for.body9_crit_edge:          ; preds = %for.cond7.preheader
  br label %for.body9

for.cond7.preheader.for.inc19_crit_edge:          ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc19

for.body9:                                        ; preds = %for.inc.7.for.body9_crit_edge, %for.cond7.preheader.for.body9_crit_edge
  %y.059 = phi i32 [ %inc17, %for.inc.7.for.body9_crit_edge ], [ 0, %for.cond7.preheader.for.body9_crit_edge ]
  %buf.158 = phi ptr [ %incdec.ptr, %for.inc.7.for.body9_crit_edge ], [ %buf.061, %for.cond7.preheader.for.body9_crit_edge ]
  %11 = ptrtoint ptr %buf.158 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %buf.158, align 1
  %mul = shl i32 %y.059, 3
  %mul13 = mul i32 %mul, %6
  %add14 = add i32 %mul13, %x.062
  %arrayidx = getelementptr i16, ptr %4, i32 %add14
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp eq i16 %13, 0
  br i1 %tobool.not, label %for.body9.for.inc_crit_edge, label %if.then

for.body9.for.inc_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %buf.158 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buf.158, align 1
  %conv15 = or i8 %15, 1
  store i8 %conv15, ptr %buf.158, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body9.for.inc_crit_edge
  %add.1 = or i32 %mul, 1
  %mul13.1 = mul i32 %add.1, %6
  %add14.1 = add i32 %mul13.1, %x.062
  %arrayidx.1 = getelementptr i16, ptr %4, i32 %add14.1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.1 = icmp eq i16 %17, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %buf.158 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %buf.158, align 1
  %conv15.1 = or i8 %19, 2
  store i8 %conv15.1, ptr %buf.158, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %add.2 = or i32 %mul, 2
  %mul13.2 = mul i32 %add.2, %6
  %add14.2 = add i32 %mul13.2, %x.062
  %arrayidx.2 = getelementptr i16, ptr %4, i32 %add14.2
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.2 = icmp eq i16 %21, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %buf.158 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %buf.158, align 1
  %conv15.2 = or i8 %23, 4
  store i8 %conv15.2, ptr %buf.158, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %add.3 = or i32 %mul, 3
  %mul13.3 = mul i32 %add.3, %6
  %add14.3 = add i32 %mul13.3, %x.062
  %arrayidx.3 = getelementptr i16, ptr %4, i32 %add14.3
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not.3 = icmp eq i16 %25, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %buf.158 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %buf.158, align 1
  %conv15.3 = or i8 %27, 8
  store i8 %conv15.3, ptr %buf.158, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %add.4 = or i32 %mul, 4
  %mul13.4 = mul i32 %add.4, %6
  %add14.4 = add i32 %mul13.4, %x.062
  %arrayidx.4 = getelementptr i16, ptr %4, i32 %add14.4
  %28 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not.4 = icmp eq i16 %29, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %buf.158 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %buf.158, align 1
  %conv15.4 = or i8 %31, 16
  store i8 %conv15.4, ptr %buf.158, align 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %add.5 = or i32 %mul, 5
  %mul13.5 = mul i32 %add.5, %6
  %add14.5 = add i32 %mul13.5, %x.062
  %arrayidx.5 = getelementptr i16, ptr %4, i32 %add14.5
  %32 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool.not.5 = icmp eq i16 %33, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %buf.158 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %buf.158, align 1
  %conv15.5 = or i8 %35, 32
  store i8 %conv15.5, ptr %buf.158, align 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %add.6 = or i32 %mul, 6
  %mul13.6 = mul i32 %add.6, %6
  %add14.6 = add i32 %mul13.6, %x.062
  %arrayidx.6 = getelementptr i16, ptr %4, i32 %add14.6
  %36 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not.6 = icmp eq i16 %37, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %buf.158 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %buf.158, align 1
  %conv15.6 = or i8 %39, 64
  store i8 %conv15.6, ptr %buf.158, align 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %add.7 = or i32 %mul, 7
  %mul13.7 = mul i32 %add.7, %6
  %add14.7 = add i32 %mul13.7, %x.062
  %arrayidx.7 = getelementptr i16, ptr %4, i32 %add14.7
  %40 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool.not.7 = icmp eq i16 %41, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %buf.158 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %buf.158, align 1
  %conv15.7 = or i8 %43, -128
  store i8 %conv15.7, ptr %buf.158, align 1
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  %incdec.ptr = getelementptr i8, ptr %buf.158, i32 1
  %inc17 = add nuw nsw i32 %y.059, 1
  %exitcond.not = icmp eq i32 %inc17, %umax
  br i1 %exitcond.not, label %for.inc.7.for.inc19_crit_edge, label %for.inc.7.for.body9_crit_edge

for.inc.7.for.body9_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body9

for.inc.7.for.inc19_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc19

for.inc19:                                        ; preds = %for.inc.7.for.inc19_crit_edge, %for.cond7.preheader.for.inc19_crit_edge
  %buf.1.lcssa = phi ptr [ %buf.061, %for.cond7.preheader.for.inc19_crit_edge ], [ %incdec.ptr, %for.inc.7.for.inc19_crit_edge ]
  %inc20 = add nuw i32 %x.062, 1
  %exitcond64.not = icmp eq i32 %inc20, %6
  br i1 %exitcond64.not, label %for.inc19.for.end21_crit_edge, label %for.inc19.for.cond7.preheader_crit_edge

for.inc19.for.cond7.preheader_crit_edge:          ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond7.preheader

for.inc19.for.end21_crit_edge:                    ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end21

for.end21:                                        ; preds = %for.inc19.for.end21_crit_edge, %entry.for.end21_crit_edge
  %dc = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 1
  %44 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dc, align 4
  tail call void @gpiod_set_value(ptr noundef %45, i32 noundef 1) #5
  %fbtftops = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9
  %46 = ptrtoint ptr %fbtftops to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fbtftops, align 4
  %48 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %txbuf, align 4
  %mul24 = mul i32 %8, %6
  %div2553 = lshr i32 %mul24, 3
  %call = tail call i32 %47(ptr noundef %par, ptr noundef %49, i32 noundef %div2553) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp26 = icmp slt i32 %call, 0
  br i1 %cmp26, label %do.end, label %for.end21.if.end30_crit_edge

for.end21.if.end30_crit_edge:                     ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.end:                                           ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %51, i32 0, i32 21
  %52 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.2, i32 noundef %call) #8
  br label %if.end30

if.end30:                                         ; preds = %do.end, %for.end21.if.end30_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_addr_win(ptr noundef %par, i32 noundef %xs, i32 noundef %ys, i32 noundef %xe, i32 noundef %ye) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %0 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %1(ptr noundef %par, i32 noundef 1, i32 noundef 0) #5
  %2 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %3(ptr noundef %par, i32 noundef 1, i32 noundef 16) #5
  %4 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %5(ptr noundef %par, i32 noundef 1, i32 noundef 64) #5
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 8
  %var = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %9)
  %cmp = icmp eq i32 %9, 64
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %yres = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %11)
  %cmp7 = icmp eq i32 %11, 48
  br i1 %cmp7, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %13(ptr noundef %par, i32 noundef 1, i32 noundef 33) #5
  %14 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %15(ptr noundef %par, i32 noundef 1, i32 noundef 32) #5
  %16 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %17(ptr noundef %par, i32 noundef 1, i32 noundef 95) #5
  %18 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %19(ptr noundef %par, i32 noundef 1, i32 noundef 34) #5
  %20 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %21(ptr noundef %par, i32 noundef 1, i32 noundef 0) #5
  %22 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %23(ptr noundef %par, i32 noundef 1, i32 noundef 5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_display(ptr noundef %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reset = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 5
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset, align 4
  tail call void %1(ptr noundef %par) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %gamma = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %gamma, i32 noundef 0) #5
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
  tail call void @mutex_unlock(ptr noundef %gamma) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then, %entry.if.end12_crit_edge
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %13 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %14(ptr noundef %par, i32 noundef 1, i32 noundef 174) #5
  %15 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %16(ptr noundef %par, i32 noundef 1, i32 noundef 213) #5
  %17 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %18(ptr noundef %par, i32 noundef 1, i32 noundef 128) #5
  %19 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %20(ptr noundef %par, i32 noundef 1, i32 noundef 168) #5
  %info20 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %21 = ptrtoint ptr %info20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %info20, align 8
  %yres22 = getelementptr inbounds %struct.fb_info, ptr %22, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %yres22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %yres22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %24)
  %switch.selectcmp = icmp eq i32 %24, 48
  %switch.select = select i1 %switch.selectcmp, i32 47, i32 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %24)
  %switch.selectcmp164 = icmp eq i32 %24, 64
  %switch.select165 = select i1 %switch.selectcmp164, i32 63, i32 %switch.select
  %25 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %26(ptr noundef %par, i32 noundef 1, i32 noundef %switch.select165) #5
  %27 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %28(ptr noundef %par, i32 noundef 1, i32 noundef 211) #5
  %29 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %30(ptr noundef %par, i32 noundef 1, i32 noundef 0) #5
  %31 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %32(ptr noundef %par, i32 noundef 1, i32 noundef 64) #5
  %33 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %34(ptr noundef %par, i32 noundef 1, i32 noundef 141) #5
  %35 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %36(ptr noundef %par, i32 noundef 1, i32 noundef 20) #5
  %37 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %38(ptr noundef %par, i32 noundef 1, i32 noundef 32) #5
  %39 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %40(ptr noundef %par, i32 noundef 1, i32 noundef 1) #5
  %41 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %42(ptr noundef %par, i32 noundef 1, i32 noundef 161) #5
  %43 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %44(ptr noundef %par, i32 noundef 1, i32 noundef 200) #5
  %45 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %46(ptr noundef %par, i32 noundef 1, i32 noundef 218) #5
  %47 = ptrtoint ptr %info20 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %info20, align 8
  %yres62 = getelementptr inbounds %struct.fb_info, ptr %48, i32 0, i32 6, i32 1
  %49 = ptrtoint ptr %yres62 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %yres62, align 4
  %51 = add i32 %50, -48
  %switch.and = and i32 %51, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp166 = icmp eq i32 %switch.and, 0
  %52 = select i1 %switch.selectcmp166, i32 18, i32 2
  %53 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %54(ptr noundef %par, i32 noundef 1, i32 noundef %52) #5
  %55 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %56(ptr noundef %par, i32 noundef 1, i32 noundef 217) #5
  %57 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %58(ptr noundef %par, i32 noundef 1, i32 noundef 241) #5
  %59 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %60(ptr noundef %par, i32 noundef 1, i32 noundef 219) #5
  %61 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %62(ptr noundef %par, i32 noundef 1, i32 noundef 64) #5
  %63 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %64(ptr noundef %par, i32 noundef 1, i32 noundef 164) #5
  %65 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %66(ptr noundef %par, i32 noundef 1, i32 noundef 166) #5
  %67 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %68(ptr noundef %par, i32 noundef 1, i32 noundef 175) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blank(ptr noundef %par, i1 noundef zeroext %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 16
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !51

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %cond = select i1 %on, ptr @.str.10, ptr @.str.11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %6 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_register, align 4
  %. = select i1 %on, i32 174, i32 175
  tail call void (ptr, i32, ...) %7(ptr noundef %par, i32 noundef 1, i32 noundef %.) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_gamma(ptr noundef %par, ptr nocapture noundef %curves) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void (ptr, i32, ...) %3(ptr noundef %par, i32 noundef 1, i32 noundef 129) #5
  %4 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_register, align 4
  %6 = ptrtoint ptr %curves to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %curves, align 4
  tail call void (ptr, i32, ...) %5(ptr noundef %par, i32 noundef 1, i32 noundef %7) #5
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbtft_remove_common(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_probe_pdev(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fbtft_probe_common(ptr noundef nonnull @display, ptr noundef null, ptr noundef %pdev) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_remove_pdev(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @fbtft_remove_common(ptr noundef %dev, ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !38, !39, !40, !41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__initcall__kmod_fb_ssd1306__303_219_fbtft_driver_module_init6, !1, !"__initcall__kmod_fb_ssd1306__303_219_fbtft_driver_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/fbtft/fb_ssd1306.c", i32 219, i32 1}
!2 = !{ptr @__exitcall_fbtft_driver_module_exit, !1, !"__exitcall_fbtft_driver_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias304, !4, !"__UNIQUE_ID_alias304", i1 false, i1 false}
!4 = !{!"../drivers/staging/fbtft/fb_ssd1306.c", i32 221, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias305, !6, !"__UNIQUE_ID_alias305", i1 false, i1 false}
!6 = !{!"../drivers/staging/fbtft/fb_ssd1306.c", i32 222, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias306, !8, !"__UNIQUE_ID_alias306", i1 false, i1 false}
!8 = !{!"../drivers/staging/fbtft/fb_ssd1306.c", i32 223, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias307, !10, !"__UNIQUE_ID_alias307", i1 false, i1 false}
!10 = !{!"../drivers/staging/fbtft/fb_ssd1306.c", i32 224, i32 1}
!11 = !{ptr @__UNIQUE_ID_description308, !12, !"__UNIQUE_ID_description308", i1 false, i1 false}
!12 = !{!"../drivers/staging/fbtft/fb_ssd1306.c", i32 226, i32 1}
!13 = !{ptr @__UNIQUE_ID_author309, !14, !"__UNIQUE_ID_author309", i1 false, i1 false}
!14 = !{!"../drivers/staging/fbtft/fb_ssd1306.c", i32 227, i32 1}
!15 = !{ptr @__UNIQUE_ID_file310, !16, !"__UNIQUE_ID_file310", i1 false, i1 false}
!16 = !{!"../drivers/staging/fbtft/fb_ssd1306.c", i32 228, i32 1}
!17 = !{ptr @__UNIQUE_ID_license311, !16, !"__UNIQUE_ID_license311", i1 false, i1 false}
!18 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @fbtft_driver_spi_driver, !1, !"fbtft_driver_spi_driver", i1 false, i1 false}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/fbtft/fb_ssd1306.c", i32 209, i32 11}
!22 = !{ptr @display, !23, !"display", i1 false, i1 false}
!23 = !{!"../drivers/staging/fbtft/fb_ssd1306.c", i32 203, i32 29}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/fbtft/fb_ssd1306.c", i32 197, i32 3}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @write_vmem._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @write_vmem._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/fbtft/fb_ssd1306.c", i32 151, i32 2}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @blank._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @blank._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @dt_ids, !1, !"dt_ids", i1 false, i1 false}
!41 = !{ptr @fbtft_driver_platform_driver, !1, !"fbtft_driver_platform_driver", i1 false, i1 false}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"branch_weights", i32 2000, i32 1}
