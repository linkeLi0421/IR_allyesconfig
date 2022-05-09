; ModuleID = '/llk/IR_all_yes/drivers/staging/fbtft/fb_ili9320.c_pt.bc'
source_filename = "../drivers/staging/fbtft/fb_ili9320.c"
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
@__initcall__kmod_fb_ili9320__303_258_fbtft_driver_module_init6 = internal global ptr @fbtft_driver_module_init, section ".initcall6.init", align 4
@__exitcall_fbtft_driver_module_exit = internal global ptr @fbtft_driver_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias304 = internal constant [32 x i8] c"fb_ili9320.alias=spi:fb_ili9320\00", section ".modinfo", align 1
@__UNIQUE_ID_alias305 = internal constant [37 x i8] c"fb_ili9320.alias=platform:fb_ili9320\00", section ".modinfo", align 1
@__UNIQUE_ID_alias306 = internal constant [29 x i8] c"fb_ili9320.alias=spi:ili9320\00", section ".modinfo", align 1
@__UNIQUE_ID_alias307 = internal constant [34 x i8] c"fb_ili9320.alias=platform:ili9320\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [64 x i8] c"fb_ili9320.description=FB driver for the ILI9320 LCD Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author309 = internal constant [33 x i8] c"fb_ili9320.author=Noralf Tronnes\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [49 x i8] c"fb_ili9320.file=drivers/staging/fbtft/fb_ili9320\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [23 x i8] c"fb_ili9320.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fb_ili9320\00", [21 x i8] zeroinitializer }, align 32
@dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ilitek,ili9320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@display = internal global { %struct.fbtft_display, [40 x i8] } { %struct.fbtft_display { i32 240, i32 320, i32 16, i32 0, i32 0, %struct.fbtft_ops { ptr null, ptr null, ptr null, ptr null, ptr @set_addr_win, ptr null, ptr null, ptr null, ptr @init_display, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @set_var, ptr @set_gamma }, i32 0, i32 0, i32 0, ptr null, ptr @.str.1, i32 2, i32 10, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"07 07 6 0 0 0 5 5 4 0\0A07 08 4 7 5 1 2 0 7 7\00", [52 x i8] zeroinitializer }, align 32
@init_display._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 39, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Device code: 0x%04X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_display\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/staging/fbtft/fb_ili9320.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@init_display._entry_ptr = internal global ptr @init_display._entry, section ".printk_index", align 4
@init_display._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 43, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Unrecognized Device code: 0x%04X (expected 0x9320)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@init_display._entry_ptr.10 = internal global ptr @init_display._entry.7, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@set_gamma.mask = internal constant { [20 x i32], [48 x i8] } { [20 x i32] [i32 31, i32 31, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 31, i32 31, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 90, i64 180, i64 270]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 37664]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 90, i64 180, i64 270]
@___asan_gen_.13 = private unnamed_addr constant [24 x i8] c"fbtft_driver_spi_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [29 x i8] c"fbtft_driver_platform_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"dt_ids\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 258, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 243, i32 29 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 249, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 38, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 41, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@___asan_gen_.59 = private constant [38 x i8] c"../drivers/staging/fbtft/fb_ili9320.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 215, i32 29 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_alias304, ptr @__UNIQUE_ID_alias305, ptr @__UNIQUE_ID_alias306, ptr @__UNIQUE_ID_alias307, ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_fbtft_driver_module_exit, ptr @__initcall__kmod_fb_ili9320__303_258_fbtft_driver_module_init6, ptr @fbtft_driver_module_exit, ptr @init_display._entry, ptr @init_display._entry.7, ptr @init_display._entry_ptr, ptr @init_display._entry_ptr.10, ptr @fbtft_driver_spi_driver, ptr @fbtft_driver_platform_driver, ptr @.str, ptr @dt_ids, ptr @display, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @set_gamma.mask], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_display._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_display._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_gamma.mask to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
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
define internal void @set_addr_win(ptr noundef %par, i32 noundef %xs, i32 noundef %ys, i32 noundef %xe, i32 noundef %ye) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %5 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %6(ptr noundef %par, i32 noundef 2, i32 noundef 32, i32 noundef %xs) #5
  %7 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %8(ptr noundef %par, i32 noundef 2, i32 noundef 33, i32 noundef %ys) #5
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %write_register5 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %9 = ptrtoint ptr %write_register5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_register5, align 4
  %sub = sub i32 239, %xs
  tail call void (ptr, i32, ...) %10(ptr noundef %par, i32 noundef 2, i32 noundef 32, i32 noundef %sub) #5
  %11 = ptrtoint ptr %write_register5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_register5, align 4
  %sub8 = sub i32 319, %ys
  tail call void (ptr, i32, ...) %12(ptr noundef %par, i32 noundef 2, i32 noundef 33, i32 noundef %sub8) #5
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %write_register11 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %13 = ptrtoint ptr %write_register11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_register11, align 4
  %sub12 = sub i32 239, %ys
  tail call void (ptr, i32, ...) %14(ptr noundef %par, i32 noundef 2, i32 noundef 32, i32 noundef %sub12) #5
  %15 = ptrtoint ptr %write_register11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_register11, align 4
  tail call void (ptr, i32, ...) %16(ptr noundef %par, i32 noundef 2, i32 noundef 33, i32 noundef %xs) #5
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %write_register17 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %17 = ptrtoint ptr %write_register17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_register17, align 4
  tail call void (ptr, i32, ...) %18(ptr noundef %par, i32 noundef 2, i32 noundef 32, i32 noundef %ys) #5
  %19 = ptrtoint ptr %write_register17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_register17, align 4
  %sub20 = sub i32 319, %xs
  tail call void (ptr, i32, ...) %20(ptr noundef %par, i32 noundef 2, i32 noundef 33, i32 noundef %sub20) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb9, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %write_register22 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %21 = ptrtoint ptr %write_register22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_register22, align 4
  tail call void (ptr, i32, ...) %22(ptr noundef %par, i32 noundef 1, i32 noundef 34) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_display(ptr noundef %par) #2 align 64 {
entry:
  %rxbuf.i = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reset = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 5
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset, align 4
  tail call void %1(ptr noundef %par) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rxbuf.i) #5
  %2 = ptrtoint ptr %rxbuf.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %rxbuf.i, align 8
  %write_register.i = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %3 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write_register.i, align 4
  tail call void (ptr, i32, ...) %4(ptr noundef %par, i32 noundef 1, i32 noundef 0) #5
  %read.i = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read.i, align 4
  %call.i = call i32 %6(ptr noundef %par, ptr noundef nonnull %rxbuf.i, i32 noundef 4) #5
  %arrayidx.i = getelementptr inbounds [8 x i8], ptr %rxbuf.i, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 2
  %conv.i = zext i8 %8 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %arrayidx2.i = getelementptr inbounds [8 x i8], ptr %rxbuf.i, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %10 to i32
  %or.i = or i32 %shl.i, %conv3.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rxbuf.i) #5
  %debug = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 16
  %11 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debug, align 8
  %and = and i32 %12, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !50

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %13 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %14, i32 0, i32 21
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.2, i32 noundef %or.i) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %trunc = trunc i32 %or.i to i16
  %17 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %trunc, label %do.end10 [
    i16 0, label %do.end5.if.end13_crit_edge
    i16 -27872, label %do.end5.if.end13_crit_edge212
  ]

do.end5.if.end13_crit_edge212:                    ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

do.end5.if.end13_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

do.end10:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %info11 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %18 = ptrtoint ptr %info11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info11, align 8
  %device12 = getelementptr inbounds %struct.fb_info, ptr %19, i32 0, i32 21
  %20 = ptrtoint ptr %device12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device12, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.8, i32 noundef %or.i) #8
  br label %if.end13

if.end13:                                         ; preds = %do.end10, %do.end5.if.end13_crit_edge, %do.end5.if.end13_crit_edge212
  %22 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %23(ptr noundef %par, i32 noundef 2, i32 noundef 229, i32 noundef 32768) #5
  %24 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %25(ptr noundef %par, i32 noundef 2, i32 noundef 0, i32 noundef 1) #5
  %26 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %27(ptr noundef %par, i32 noundef 2, i32 noundef 1, i32 noundef 256) #5
  %28 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %29(ptr noundef %par, i32 noundef 2, i32 noundef 2, i32 noundef 1792) #5
  %30 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %31(ptr noundef %par, i32 noundef 2, i32 noundef 4, i32 noundef 0) #5
  %32 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %33(ptr noundef %par, i32 noundef 2, i32 noundef 8, i32 noundef 514) #5
  %34 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %35(ptr noundef %par, i32 noundef 2, i32 noundef 9, i32 noundef 0) #5
  %36 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %37(ptr noundef %par, i32 noundef 2, i32 noundef 10, i32 noundef 0) #5
  %38 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %39(ptr noundef %par, i32 noundef 2, i32 noundef 12, i32 noundef 0) #5
  %40 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %41(ptr noundef %par, i32 noundef 2, i32 noundef 13, i32 noundef 0) #5
  %42 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %43(ptr noundef %par, i32 noundef 2, i32 noundef 15, i32 noundef 0) #5
  %44 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %45(ptr noundef %par, i32 noundef 2, i32 noundef 16, i32 noundef 0) #5
  %46 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %47(ptr noundef %par, i32 noundef 2, i32 noundef 17, i32 noundef 7) #5
  %48 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %49(ptr noundef %par, i32 noundef 2, i32 noundef 18, i32 noundef 0) #5
  %50 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %51(ptr noundef %par, i32 noundef 2, i32 noundef 19, i32 noundef 0) #5
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end13
  %__ms.0208 = phi i32 [ 200, %if.end13 ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0208, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %52(i32 noundef 214748000) #5
  %tobool43.not = icmp eq i32 %dec, 0
  br i1 %tobool43.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  %53 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %54(ptr noundef %par, i32 noundef 2, i32 noundef 16, i32 noundef 6064) #5
  %55 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %56(ptr noundef %par, i32 noundef 2, i32 noundef 17, i32 noundef 49) #5
  br label %while.body52

while.body52:                                     ; preds = %while.body52.while.body52_crit_edge, %while.end
  %__ms48.0209 = phi i32 [ 50, %while.end ], [ %dec50, %while.body52.while.body52_crit_edge ]
  %dec50 = add nsw i32 %__ms48.0209, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %57(i32 noundef 214748000) #5
  %tobool51.not = icmp eq i32 %dec50, 0
  br i1 %tobool51.not, label %while.end53, label %while.body52.while.body52_crit_edge

while.body52.while.body52_crit_edge:              ; preds = %while.body52
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body52

while.end53:                                      ; preds = %while.body52
  %58 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %59(ptr noundef %par, i32 noundef 2, i32 noundef 18, i32 noundef 312) #5
  br label %while.body60

while.body60:                                     ; preds = %while.body60.while.body60_crit_edge, %while.end53
  %__ms56.0210 = phi i32 [ 50, %while.end53 ], [ %dec58, %while.body60.while.body60_crit_edge ]
  %dec58 = add nsw i32 %__ms56.0210, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %60(i32 noundef 214748000) #5
  %tobool59.not = icmp eq i32 %dec58, 0
  br i1 %tobool59.not, label %while.end61, label %while.body60.while.body60_crit_edge

while.body60.while.body60_crit_edge:              ; preds = %while.body60
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body60

while.end61:                                      ; preds = %while.body60
  %61 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %62(ptr noundef %par, i32 noundef 2, i32 noundef 19, i32 noundef 6144) #5
  %63 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %64(ptr noundef %par, i32 noundef 2, i32 noundef 41, i32 noundef 8) #5
  br label %while.body70

while.body70:                                     ; preds = %while.body70.while.body70_crit_edge, %while.end61
  %__ms66.0211 = phi i32 [ 50, %while.end61 ], [ %dec68, %while.body70.while.body70_crit_edge ]
  %dec68 = add nsw i32 %__ms66.0211, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %65(i32 noundef 214748000) #5
  %tobool69.not = icmp eq i32 %dec68, 0
  br i1 %tobool69.not, label %while.end71, label %while.body70.while.body70_crit_edge

while.body70.while.body70_crit_edge:              ; preds = %while.body70
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body70

while.end71:                                      ; preds = %while.body70
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %67(ptr noundef %par, i32 noundef 2, i32 noundef 32, i32 noundef 0) #5
  %68 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %69(ptr noundef %par, i32 noundef 2, i32 noundef 33, i32 noundef 0) #5
  %70 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %71(ptr noundef %par, i32 noundef 2, i32 noundef 80, i32 noundef 0) #5
  %72 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %73(ptr noundef %par, i32 noundef 2, i32 noundef 81, i32 noundef 239) #5
  %74 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %75(ptr noundef %par, i32 noundef 2, i32 noundef 82, i32 noundef 0) #5
  %76 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %77(ptr noundef %par, i32 noundef 2, i32 noundef 83, i32 noundef 319) #5
  %78 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %79(ptr noundef %par, i32 noundef 2, i32 noundef 96, i32 noundef 9984) #5
  %80 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %81(ptr noundef %par, i32 noundef 2, i32 noundef 97, i32 noundef 1) #5
  %82 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %83(ptr noundef %par, i32 noundef 2, i32 noundef 106, i32 noundef 0) #5
  %84 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %85(ptr noundef %par, i32 noundef 2, i32 noundef 128, i32 noundef 0) #5
  %86 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %87(ptr noundef %par, i32 noundef 2, i32 noundef 129, i32 noundef 0) #5
  %88 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %89(ptr noundef %par, i32 noundef 2, i32 noundef 130, i32 noundef 0) #5
  %90 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %91(ptr noundef %par, i32 noundef 2, i32 noundef 131, i32 noundef 0) #5
  %92 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %93(ptr noundef %par, i32 noundef 2, i32 noundef 132, i32 noundef 0) #5
  %94 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %95(ptr noundef %par, i32 noundef 2, i32 noundef 133, i32 noundef 0) #5
  %96 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %97(ptr noundef %par, i32 noundef 2, i32 noundef 144, i32 noundef 16) #5
  %98 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %99(ptr noundef %par, i32 noundef 2, i32 noundef 146, i32 noundef 0) #5
  %100 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %101(ptr noundef %par, i32 noundef 2, i32 noundef 147, i32 noundef 3) #5
  %102 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %103(ptr noundef %par, i32 noundef 2, i32 noundef 149, i32 noundef 272) #5
  %104 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %105(ptr noundef %par, i32 noundef 2, i32 noundef 151, i32 noundef 0) #5
  %106 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %107(ptr noundef %par, i32 noundef 2, i32 noundef 152, i32 noundef 0) #5
  %108 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %write_register.i, align 4
  call void (ptr, i32, ...) %109(ptr noundef %par, i32 noundef 2, i32 noundef 7, i32 noundef 371) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_var(ptr noundef %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 270, label %sw.bb1
    i32 180, label %sw.bb9
    i32 90, label %sw.bb17
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %5 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_register, align 4
  %bgr = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 19
  %7 = ptrtoint ptr %bgr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bgr, align 8, !range !51
  %9 = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %9, 12
  %or = or i32 %shl, 48
  tail call void (ptr, i32, ...) %6(ptr noundef %par, i32 noundef 2, i32 noundef 3, i32 noundef %or) #5
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %write_register3 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %10 = ptrtoint ptr %write_register3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_register3, align 4
  %bgr4 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 19
  %12 = ptrtoint ptr %bgr4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bgr4, align 8, !range !51
  %14 = zext i8 %13 to i32
  %shl7 = shl nuw nsw i32 %14, 12
  %or8 = or i32 %shl7, 40
  tail call void (ptr, i32, ...) %11(ptr noundef %par, i32 noundef 2, i32 noundef 3, i32 noundef %or8) #5
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %write_register11 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %15 = ptrtoint ptr %write_register11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_register11, align 4
  %bgr12 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 19
  %17 = ptrtoint ptr %bgr12 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bgr12, align 8, !range !51
  %19 = zext i8 %18 to i32
  %shl15 = shl nuw nsw i32 %19, 12
  tail call void (ptr, i32, ...) %16(ptr noundef %par, i32 noundef 2, i32 noundef 3, i32 noundef %shl15) #5
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %write_register19 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %20 = ptrtoint ptr %write_register19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_register19, align 4
  %bgr20 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 19
  %22 = ptrtoint ptr %bgr20 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bgr20, align 8, !range !51
  %24 = zext i8 %23 to i32
  %shl23 = shl nuw nsw i32 %24, 12
  %or24 = or i32 %shl23, 24
  tail call void (ptr, i32, ...) %21(ptr noundef %par, i32 noundef 2, i32 noundef 3, i32 noundef %or24) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb9, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_gamma(ptr noundef %par, ptr noundef %curves) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_values = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 15, i32 2
  %0 = ptrtoint ptr %curves to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %curves, align 4
  %and = and i32 %1, 31
  store i32 %and, ptr %curves, align 4
  %arrayidx8.1 = getelementptr i32, ptr %curves, i32 1
  %2 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx8.1, align 4
  %and.1 = and i32 %3, 31
  store i32 %and.1, ptr %arrayidx8.1, align 4
  %arrayidx8.2 = getelementptr i32, ptr %curves, i32 2
  %4 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx8.2, align 4
  %and.2 = and i32 %5, 7
  store i32 %and.2, ptr %arrayidx8.2, align 4
  %arrayidx8.3 = getelementptr i32, ptr %curves, i32 3
  %6 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx8.3, align 4
  %and.3 = and i32 %7, 7
  store i32 %and.3, ptr %arrayidx8.3, align 4
  %arrayidx8.4 = getelementptr i32, ptr %curves, i32 4
  %8 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx8.4, align 4
  %and.4 = and i32 %9, 7
  store i32 %and.4, ptr %arrayidx8.4, align 4
  %arrayidx8.5 = getelementptr i32, ptr %curves, i32 5
  %10 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx8.5, align 4
  %and.5 = and i32 %11, 7
  store i32 %and.5, ptr %arrayidx8.5, align 4
  %arrayidx8.6 = getelementptr i32, ptr %curves, i32 6
  %12 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx8.6, align 4
  %and.6 = and i32 %13, 7
  store i32 %and.6, ptr %arrayidx8.6, align 4
  %arrayidx8.7 = getelementptr i32, ptr %curves, i32 7
  %14 = ptrtoint ptr %arrayidx8.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx8.7, align 4
  %and.7 = and i32 %15, 7
  store i32 %and.7, ptr %arrayidx8.7, align 4
  %arrayidx8.8 = getelementptr i32, ptr %curves, i32 8
  %16 = ptrtoint ptr %arrayidx8.8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8.8, align 4
  %and.8 = and i32 %17, 7
  store i32 %and.8, ptr %arrayidx8.8, align 4
  %arrayidx8.9 = getelementptr i32, ptr %curves, i32 9
  %18 = ptrtoint ptr %arrayidx8.9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx8.9, align 4
  %and.9 = and i32 %19, 7
  store i32 %and.9, ptr %arrayidx8.9, align 4
  %20 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_values, align 8
  %arrayidx.1218 = getelementptr [20 x i32], ptr @set_gamma.mask, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.1218 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.1218, align 4
  %arrayidx8.1219 = getelementptr i32, ptr %curves, i32 %21
  %24 = ptrtoint ptr %arrayidx8.1219 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx8.1219, align 4
  %and.1220 = and i32 %25, %23
  store i32 %and.1220, ptr %arrayidx8.1219, align 4
  %26 = load i32, ptr %num_values, align 8
  %add.1.1 = add i32 %26, 1
  %arrayidx.1.1 = getelementptr [20 x i32], ptr @set_gamma.mask, i32 0, i32 %add.1.1
  %27 = ptrtoint ptr %arrayidx.1.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.1.1, align 4
  %arrayidx8.1.1 = getelementptr i32, ptr %curves, i32 %add.1.1
  %29 = ptrtoint ptr %arrayidx8.1.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx8.1.1, align 4
  %and.1.1 = and i32 %30, %28
  store i32 %and.1.1, ptr %arrayidx8.1.1, align 4
  %31 = load i32, ptr %num_values, align 8
  %add.2.1 = add i32 %31, 2
  %arrayidx.2.1 = getelementptr [20 x i32], ptr @set_gamma.mask, i32 0, i32 %add.2.1
  %32 = ptrtoint ptr %arrayidx.2.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.2.1, align 4
  %arrayidx8.2.1 = getelementptr i32, ptr %curves, i32 %add.2.1
  %34 = ptrtoint ptr %arrayidx8.2.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx8.2.1, align 4
  %and.2.1 = and i32 %35, %33
  store i32 %and.2.1, ptr %arrayidx8.2.1, align 4
  %36 = load i32, ptr %num_values, align 8
  %add.3.1 = add i32 %36, 3
  %arrayidx.3.1 = getelementptr [20 x i32], ptr @set_gamma.mask, i32 0, i32 %add.3.1
  %37 = ptrtoint ptr %arrayidx.3.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.3.1, align 4
  %arrayidx8.3.1 = getelementptr i32, ptr %curves, i32 %add.3.1
  %39 = ptrtoint ptr %arrayidx8.3.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx8.3.1, align 4
  %and.3.1 = and i32 %40, %38
  store i32 %and.3.1, ptr %arrayidx8.3.1, align 4
  %41 = load i32, ptr %num_values, align 8
  %add.4.1 = add i32 %41, 4
  %arrayidx.4.1 = getelementptr [20 x i32], ptr @set_gamma.mask, i32 0, i32 %add.4.1
  %42 = ptrtoint ptr %arrayidx.4.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.4.1, align 4
  %arrayidx8.4.1 = getelementptr i32, ptr %curves, i32 %add.4.1
  %44 = ptrtoint ptr %arrayidx8.4.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx8.4.1, align 4
  %and.4.1 = and i32 %45, %43
  store i32 %and.4.1, ptr %arrayidx8.4.1, align 4
  %46 = load i32, ptr %num_values, align 8
  %add.5.1 = add i32 %46, 5
  %arrayidx.5.1 = getelementptr [20 x i32], ptr @set_gamma.mask, i32 0, i32 %add.5.1
  %47 = ptrtoint ptr %arrayidx.5.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.5.1, align 4
  %arrayidx8.5.1 = getelementptr i32, ptr %curves, i32 %add.5.1
  %49 = ptrtoint ptr %arrayidx8.5.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx8.5.1, align 4
  %and.5.1 = and i32 %50, %48
  store i32 %and.5.1, ptr %arrayidx8.5.1, align 4
  %51 = load i32, ptr %num_values, align 8
  %add.6.1 = add i32 %51, 6
  %arrayidx.6.1 = getelementptr [20 x i32], ptr @set_gamma.mask, i32 0, i32 %add.6.1
  %52 = ptrtoint ptr %arrayidx.6.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.6.1, align 4
  %arrayidx8.6.1 = getelementptr i32, ptr %curves, i32 %add.6.1
  %54 = ptrtoint ptr %arrayidx8.6.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx8.6.1, align 4
  %and.6.1 = and i32 %55, %53
  store i32 %and.6.1, ptr %arrayidx8.6.1, align 4
  %56 = load i32, ptr %num_values, align 8
  %add.7.1 = add i32 %56, 7
  %arrayidx.7.1 = getelementptr [20 x i32], ptr @set_gamma.mask, i32 0, i32 %add.7.1
  %57 = ptrtoint ptr %arrayidx.7.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.7.1, align 4
  %arrayidx8.7.1 = getelementptr i32, ptr %curves, i32 %add.7.1
  %59 = ptrtoint ptr %arrayidx8.7.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx8.7.1, align 4
  %and.7.1 = and i32 %60, %58
  store i32 %and.7.1, ptr %arrayidx8.7.1, align 4
  %61 = load i32, ptr %num_values, align 8
  %add.8.1 = add i32 %61, 8
  %arrayidx.8.1 = getelementptr [20 x i32], ptr @set_gamma.mask, i32 0, i32 %add.8.1
  %62 = ptrtoint ptr %arrayidx.8.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.8.1, align 4
  %arrayidx8.8.1 = getelementptr i32, ptr %curves, i32 %add.8.1
  %64 = ptrtoint ptr %arrayidx8.8.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx8.8.1, align 4
  %and.8.1 = and i32 %65, %63
  store i32 %and.8.1, ptr %arrayidx8.8.1, align 4
  %66 = load i32, ptr %num_values, align 8
  %add.9.1 = add i32 %66, 9
  %arrayidx.9.1 = getelementptr [20 x i32], ptr @set_gamma.mask, i32 0, i32 %add.9.1
  %67 = ptrtoint ptr %arrayidx.9.1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.9.1, align 4
  %arrayidx8.9.1 = getelementptr i32, ptr %curves, i32 %add.9.1
  %69 = ptrtoint ptr %arrayidx8.9.1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx8.9.1, align 4
  %and.9.1 = and i32 %70, %68
  store i32 %and.9.1, ptr %arrayidx8.9.1, align 4
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %71 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write_register, align 4
  %73 = load i32, ptr %arrayidx8.5, align 4
  %shl = shl i32 %73, 8
  %74 = load i32, ptr %arrayidx8.4, align 4
  %or = or i32 %shl, %74
  tail call void (ptr, i32, ...) %72(ptr noundef %par, i32 noundef 2, i32 noundef 48, i32 noundef %or) #5
  %75 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write_register, align 4
  %77 = ptrtoint ptr %arrayidx8.7 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx8.7, align 4
  %shl29 = shl i32 %78, 8
  %79 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx8.6, align 4
  %or35 = or i32 %shl29, %80
  tail call void (ptr, i32, ...) %76(ptr noundef %par, i32 noundef 2, i32 noundef 49, i32 noundef %or35) #5
  %81 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write_register, align 4
  %83 = ptrtoint ptr %arrayidx8.9 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx8.9, align 4
  %shl43 = shl i32 %84, 8
  %85 = ptrtoint ptr %arrayidx8.8 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx8.8, align 4
  %or49 = or i32 %shl43, %86
  tail call void (ptr, i32, ...) %82(ptr noundef %par, i32 noundef 2, i32 noundef 50, i32 noundef %or49) #5
  %87 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %write_register, align 4
  %89 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx8.3, align 4
  %shl57 = shl i32 %90, 8
  %91 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx8.2, align 4
  %or63 = or i32 %shl57, %92
  tail call void (ptr, i32, ...) %88(ptr noundef %par, i32 noundef 2, i32 noundef 53, i32 noundef %or63) #5
  %93 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write_register, align 4
  %95 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx8.1, align 4
  %shl71 = shl i32 %96, 8
  %97 = ptrtoint ptr %curves to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %curves, align 4
  %or77 = or i32 %shl71, %98
  tail call void (ptr, i32, ...) %94(ptr noundef %par, i32 noundef 2, i32 noundef 54, i32 noundef %or77) #5
  %99 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %write_register, align 4
  %101 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %num_values, align 8
  %add83 = add i32 %102, 5
  %arrayidx84 = getelementptr i32, ptr %curves, i32 %add83
  %103 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx84, align 4
  %shl85 = shl i32 %104, 8
  %add89 = add i32 %102, 4
  %arrayidx90 = getelementptr i32, ptr %curves, i32 %add89
  %105 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx90, align 4
  %or91 = or i32 %shl85, %106
  tail call void (ptr, i32, ...) %100(ptr noundef %par, i32 noundef 2, i32 noundef 55, i32 noundef %or91) #5
  %107 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %write_register, align 4
  %109 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %num_values, align 8
  %add97 = add i32 %110, 7
  %arrayidx98 = getelementptr i32, ptr %curves, i32 %add97
  %111 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx98, align 4
  %shl99 = shl i32 %112, 8
  %add103 = add i32 %110, 6
  %arrayidx104 = getelementptr i32, ptr %curves, i32 %add103
  %113 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx104, align 4
  %or105 = or i32 %shl99, %114
  tail call void (ptr, i32, ...) %108(ptr noundef %par, i32 noundef 2, i32 noundef 56, i32 noundef %or105) #5
  %115 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write_register, align 4
  %117 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %num_values, align 8
  %add111 = add i32 %118, 9
  %arrayidx112 = getelementptr i32, ptr %curves, i32 %add111
  %119 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx112, align 4
  %shl113 = shl i32 %120, 8
  %add117 = add i32 %118, 8
  %arrayidx118 = getelementptr i32, ptr %curves, i32 %add117
  %121 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx118, align 4
  %or119 = or i32 %shl113, %122
  tail call void (ptr, i32, ...) %116(ptr noundef %par, i32 noundef 2, i32 noundef 57, i32 noundef %or119) #5
  %123 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %write_register, align 4
  %125 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %num_values, align 8
  %add125 = add i32 %126, 3
  %arrayidx126 = getelementptr i32, ptr %curves, i32 %add125
  %127 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx126, align 4
  %shl127 = shl i32 %128, 8
  %add131 = add i32 %126, 2
  %arrayidx132 = getelementptr i32, ptr %curves, i32 %add131
  %129 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx132, align 4
  %or133 = or i32 %shl127, %130
  tail call void (ptr, i32, ...) %124(ptr noundef %par, i32 noundef 2, i32 noundef 60, i32 noundef %or133) #5
  %131 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %write_register, align 4
  %133 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %num_values, align 8
  %add139 = add i32 %134, 1
  %arrayidx140 = getelementptr i32, ptr %curves, i32 %add139
  %135 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx140, align 4
  %shl141 = shl i32 %136, 8
  %arrayidx146 = getelementptr i32, ptr %curves, i32 %134
  %137 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx146, align 4
  %or147 = or i32 %shl141, %138
  tail call void (ptr, i32, ...) %132(ptr noundef %par, i32 noundef 2, i32 noundef 61, i32 noundef %or147) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_fb_ili9320__303_258_fbtft_driver_module_init6, !1, !"__initcall__kmod_fb_ili9320__303_258_fbtft_driver_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/fbtft/fb_ili9320.c", i32 258, i32 1}
!2 = !{ptr @__exitcall_fbtft_driver_module_exit, !1, !"__exitcall_fbtft_driver_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias304, !4, !"__UNIQUE_ID_alias304", i1 false, i1 false}
!4 = !{!"../drivers/staging/fbtft/fb_ili9320.c", i32 260, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias305, !6, !"__UNIQUE_ID_alias305", i1 false, i1 false}
!6 = !{!"../drivers/staging/fbtft/fb_ili9320.c", i32 261, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias306, !8, !"__UNIQUE_ID_alias306", i1 false, i1 false}
!8 = !{!"../drivers/staging/fbtft/fb_ili9320.c", i32 262, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias307, !10, !"__UNIQUE_ID_alias307", i1 false, i1 false}
!10 = !{!"../drivers/staging/fbtft/fb_ili9320.c", i32 263, i32 1}
!11 = !{ptr @__UNIQUE_ID_description308, !12, !"__UNIQUE_ID_description308", i1 false, i1 false}
!12 = !{!"../drivers/staging/fbtft/fb_ili9320.c", i32 265, i32 1}
!13 = !{ptr @__UNIQUE_ID_author309, !14, !"__UNIQUE_ID_author309", i1 false, i1 false}
!14 = !{!"../drivers/staging/fbtft/fb_ili9320.c", i32 266, i32 1}
!15 = !{ptr @__UNIQUE_ID_file310, !16, !"__UNIQUE_ID_file310", i1 false, i1 false}
!16 = !{!"../drivers/staging/fbtft/fb_ili9320.c", i32 267, i32 1}
!17 = !{ptr @__UNIQUE_ID_license311, !16, !"__UNIQUE_ID_license311", i1 false, i1 false}
!18 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @fbtft_driver_spi_driver, !1, !"fbtft_driver_spi_driver", i1 false, i1 false}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/fbtft/fb_ili9320.c", i32 249, i32 11}
!22 = !{ptr @display, !23, !"display", i1 false, i1 false}
!23 = !{!"../drivers/staging/fbtft/fb_ili9320.c", i32 243, i32 29}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/fbtft/fb_ili9320.c", i32 38, i32 2}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @init_display._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @init_display._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/fbtft/fb_ili9320.c", i32 41, i32 3}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @init_display._entry.7, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @init_display._entry_ptr.10, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @set_gamma.mask, !38, !"mask", i1 false, i1 false}
!38 = !{!"../drivers/staging/fbtft/fb_ili9320.c", i32 215, i32 29}
!39 = !{ptr @dt_ids, !1, !"dt_ids", i1 false, i1 false}
!40 = !{ptr @fbtft_driver_platform_driver, !1, !"fbtft_driver_platform_driver", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{i8 0, i8 2}
