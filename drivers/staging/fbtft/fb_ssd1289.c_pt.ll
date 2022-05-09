; ModuleID = '/llk/IR_all_yes/drivers/staging/fbtft/fb_ssd1289.c_pt.bc'
source_filename = "../drivers/staging/fbtft/fb_ssd1289.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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

@__param_str_reg11 = internal constant [17 x i8] c"fb_ssd1289.reg11\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@reg11 = internal global { i32, [28 x i8] } { i32 24640, [28 x i8] zeroinitializer }, align 32
@__param_reg11 = internal constant %struct.kernel_param { ptr @__param_str_reg11, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @reg11 } }, section "__param", align 4
@__UNIQUE_ID_reg11type303 = internal constant [31 x i8] c"fb_ssd1289.parmtype=reg11:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_reg11304 = internal constant [41 x i8] c"fb_ssd1289.parm=reg11:Register 11h value\00", section ".modinfo", align 1
@fbtft_driver_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @fbtft_driver_probe_spi, ptr @fbtft_driver_remove_spi, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@fbtft_driver_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fbtft_driver_probe_pdev, ptr @fbtft_driver_remove_pdev, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_fb_ssd1289__305_170_fbtft_driver_module_init6 = internal global ptr @fbtft_driver_module_init, section ".initcall6.init", align 4
@__exitcall_fbtft_driver_module_exit = internal global ptr @fbtft_driver_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias306 = internal constant [32 x i8] c"fb_ssd1289.alias=spi:fb_ssd1289\00", section ".modinfo", align 1
@__UNIQUE_ID_alias307 = internal constant [37 x i8] c"fb_ssd1289.alias=platform:fb_ssd1289\00", section ".modinfo", align 1
@__UNIQUE_ID_alias308 = internal constant [29 x i8] c"fb_ssd1289.alias=spi:ssd1289\00", section ".modinfo", align 1
@__UNIQUE_ID_alias309 = internal constant [34 x i8] c"fb_ssd1289.alias=platform:ssd1289\00", section ".modinfo", align 1
@__UNIQUE_ID_description310 = internal constant [64 x i8] c"fb_ssd1289.description=FB driver for the SSD1289 LCD Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author311 = internal constant [33 x i8] c"fb_ssd1289.author=Noralf Tronnes\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [49 x i8] c"fb_ssd1289.file=drivers/staging/fbtft/fb_ssd1289\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [23 x i8] c"fb_ssd1289.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fb_ssd1289\00", [21 x i8] zeroinitializer }, align 32
@dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"solomon,ssd1289\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@display = internal global { %struct.fbtft_display, [40 x i8] } { %struct.fbtft_display { i32 240, i32 320, i32 16, i32 0, i32 0, %struct.fbtft_ops { ptr null, ptr null, ptr null, ptr null, ptr @set_addr_win, ptr null, ptr null, ptr null, ptr @init_display, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @set_var, ptr @set_gamma }, i32 0, i32 0, i32 0, ptr null, ptr @.str.1, i32 2, i32 10, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"02 03 2 5 7 7 4 2 4 2\0A02 03 2 5 7 5 4 2 4 2\00", [52 x i8] zeroinitializer }, align 32
@set_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 98, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: skipping since custom init_display() is used\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"set_var\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/staging/fbtft/fb_ssd1289.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@set_var._entry_ptr = internal global ptr @set_var._entry, section ".printk_index", align 4
@set_gamma.mask = internal constant { [20 x i32], [48 x i8] } { [20 x i32] [i32 31, i32 31, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 31, i32 31, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 90, i64 180, i64 270]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 90, i64 180, i64 270]
@___asan_gen_.8 = private unnamed_addr constant [6 x i8] c"reg11\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 22, i32 21 }
@___asan_gen_.11 = private unnamed_addr constant [24 x i8] c"fbtft_driver_spi_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [29 x i8] c"fbtft_driver_platform_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"dt_ids\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 170, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 155, i32 29 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 161, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 96, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@___asan_gen_.48 = private constant [38 x i8] c"../drivers/staging/fbtft/fb_ssd1289.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 128, i32 29 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_alias306, ptr @__UNIQUE_ID_alias307, ptr @__UNIQUE_ID_alias308, ptr @__UNIQUE_ID_alias309, ptr @__UNIQUE_ID_author311, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_license313, ptr @__UNIQUE_ID_reg11304, ptr @__UNIQUE_ID_reg11type303, ptr @__exitcall_fbtft_driver_module_exit, ptr @__initcall__kmod_fb_ssd1289__305_170_fbtft_driver_module_init6, ptr @__param_reg11, ptr @fbtft_driver_module_exit, ptr @set_var._entry, ptr @set_var._entry_ptr, ptr @reg11, ptr @fbtft_driver_spi_driver, ptr @fbtft_driver_platform_driver, ptr @.str, ptr @dt_ids, ptr @display, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @set_gamma.mask], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_gamma.mask to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
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
define internal void @set_addr_win(ptr noundef %par, i32 noundef %xs, i32 noundef %ys, i32 noundef %xe, i32 noundef %ye) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
    i32 270, label %sw.bb15
    i32 90, label %sw.bb25
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %5 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %6(ptr noundef %par, i32 noundef 2, i32 noundef 78, i32 noundef %xs) #4
  %7 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %8(ptr noundef %par, i32 noundef 2, i32 noundef 79, i32 noundef %ys) #4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %var = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %write_register5 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %9 = ptrtoint ptr %write_register5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_register5, align 4
  %11 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %var, align 4
  %13 = xor i32 %xs, -1
  %sub8 = add i32 %12, %13
  tail call void (ptr, i32, ...) %10(ptr noundef %par, i32 noundef 2, i32 noundef 78, i32 noundef %sub8) #4
  %14 = ptrtoint ptr %write_register5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_register5, align 4
  %16 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %info, align 8
  %yres = getelementptr inbounds %struct.fb_info, ptr %17, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %yres, align 4
  %20 = xor i32 %ys, -1
  %sub14 = add i32 %19, %20
  tail call void (ptr, i32, ...) %15(ptr noundef %par, i32 noundef 2, i32 noundef 79, i32 noundef %sub14) #4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %write_register17 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %21 = ptrtoint ptr %write_register17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_register17, align 4
  %yres20 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %yres20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %yres20, align 4
  %25 = xor i32 %ys, -1
  %sub22 = add i32 %24, %25
  tail call void (ptr, i32, ...) %22(ptr noundef %par, i32 noundef 2, i32 noundef 78, i32 noundef %sub22) #4
  %26 = ptrtoint ptr %write_register17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_register17, align 4
  tail call void (ptr, i32, ...) %27(ptr noundef %par, i32 noundef 2, i32 noundef 79, i32 noundef %xs) #4
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %write_register27 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %28 = ptrtoint ptr %write_register27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_register27, align 4
  tail call void (ptr, i32, ...) %29(ptr noundef %par, i32 noundef 2, i32 noundef 78, i32 noundef %ys) #4
  %30 = ptrtoint ptr %write_register27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_register27, align 4
  %32 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %info, align 8
  %var31 = getelementptr inbounds %struct.fb_info, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %var31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %var31, align 4
  %36 = xor i32 %xs, -1
  %sub34 = add i32 %35, %36
  tail call void (ptr, i32, ...) %31(ptr noundef %par, i32 noundef 2, i32 noundef 79, i32 noundef %sub34) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb25, %sw.bb15, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %write_register36 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %37 = ptrtoint ptr %write_register36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_register36, align 4
  tail call void (ptr, i32, ...) %38(ptr noundef %par, i32 noundef 1, i32 noundef 34) #4
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
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %3(ptr noundef %par, i32 noundef 2, i32 noundef 0, i32 noundef 1) #4
  %4 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %5(ptr noundef %par, i32 noundef 2, i32 noundef 3, i32 noundef 43172) #4
  %6 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %7(ptr noundef %par, i32 noundef 2, i32 noundef 12, i32 noundef 0) #4
  %8 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %9(ptr noundef %par, i32 noundef 2, i32 noundef 13, i32 noundef 2060) #4
  %10 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %11(ptr noundef %par, i32 noundef 2, i32 noundef 14, i32 noundef 11008) #4
  %12 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %13(ptr noundef %par, i32 noundef 2, i32 noundef 30, i32 noundef 183) #4
  %14 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_register, align 4
  %bgr = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 19
  %16 = ptrtoint ptr %bgr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bgr, align 8, !range !53
  %18 = zext i8 %17 to i32
  %shl = shl nuw nsw i32 %18, 11
  %or15 = or i32 %shl, 9023
  tail call void (ptr, i32, ...) %15(ptr noundef %par, i32 noundef 2, i32 noundef 1, i32 noundef %or15) #4
  %19 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %20(ptr noundef %par, i32 noundef 2, i32 noundef 2, i32 noundef 1536) #4
  %21 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %22(ptr noundef %par, i32 noundef 2, i32 noundef 16, i32 noundef 0) #4
  %23 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %24(ptr noundef %par, i32 noundef 2, i32 noundef 5, i32 noundef 0) #4
  %25 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %26(ptr noundef %par, i32 noundef 2, i32 noundef 6, i32 noundef 0) #4
  %27 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %28(ptr noundef %par, i32 noundef 2, i32 noundef 22, i32 noundef 61212) #4
  %29 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %30(ptr noundef %par, i32 noundef 2, i32 noundef 23, i32 noundef 3) #4
  %31 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %32(ptr noundef %par, i32 noundef 2, i32 noundef 7, i32 noundef 563) #4
  %33 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %34(ptr noundef %par, i32 noundef 2, i32 noundef 11, i32 noundef 0) #4
  %35 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %36(ptr noundef %par, i32 noundef 2, i32 noundef 15, i32 noundef 0) #4
  %37 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %38(ptr noundef %par, i32 noundef 2, i32 noundef 65, i32 noundef 0) #4
  %39 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %40(ptr noundef %par, i32 noundef 2, i32 noundef 66, i32 noundef 0) #4
  %41 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %42(ptr noundef %par, i32 noundef 2, i32 noundef 72, i32 noundef 0) #4
  %43 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %44(ptr noundef %par, i32 noundef 2, i32 noundef 73, i32 noundef 319) #4
  %45 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %46(ptr noundef %par, i32 noundef 2, i32 noundef 74, i32 noundef 0) #4
  %47 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %48(ptr noundef %par, i32 noundef 2, i32 noundef 75, i32 noundef 0) #4
  %49 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %50(ptr noundef %par, i32 noundef 2, i32 noundef 68, i32 noundef 61184) #4
  %51 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %52(ptr noundef %par, i32 noundef 2, i32 noundef 69, i32 noundef 0) #4
  %53 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %54(ptr noundef %par, i32 noundef 2, i32 noundef 70, i32 noundef 319) #4
  %55 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %56(ptr noundef %par, i32 noundef 2, i32 noundef 35, i32 noundef 0) #4
  %57 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %58(ptr noundef %par, i32 noundef 2, i32 noundef 36, i32 noundef 0) #4
  %59 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %60(ptr noundef %par, i32 noundef 2, i32 noundef 37, i32 noundef 32768) #4
  %61 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %62(ptr noundef %par, i32 noundef 2, i32 noundef 79, i32 noundef 0) #4
  %63 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %64(ptr noundef %par, i32 noundef 2, i32 noundef 78, i32 noundef 0) #4
  %65 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %66(ptr noundef %par, i32 noundef 1, i32 noundef 34) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_var(ptr noundef %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %init_display = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %init_display to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_display, align 4
  %cmp.not = icmp eq ptr %1, @init_display
  br i1 %cmp.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 16
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 8
  %and = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.return_crit_edge, label %do.end, !prof !54

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #7
  br label %return

if.end6:                                          ; preds = %entry
  %info7 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %8 = ptrtoint ptr %info7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info7, align 8
  %rotate = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 6, i32 26
  %10 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rotate, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %11, label %if.end6.return_crit_edge [
    i32 0, label %sw.bb
    i32 270, label %sw.bb9
    i32 180, label %sw.bb13
    i32 90, label %sw.bb17
  ]

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %13 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_register, align 4
  %15 = load i32, ptr @reg11, align 4
  %or = or i32 %15, 48
  tail call void (ptr, i32, ...) %14(ptr noundef %par, i32 noundef 2, i32 noundef 17, i32 noundef %or) #4
  br label %return

sw.bb9:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %write_register11 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %16 = ptrtoint ptr %write_register11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_register11, align 4
  %18 = load i32, ptr @reg11, align 4
  %or12 = or i32 %18, 40
  tail call void (ptr, i32, ...) %17(ptr noundef %par, i32 noundef 2, i32 noundef 17, i32 noundef %or12) #4
  br label %return

sw.bb13:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %write_register15 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %19 = ptrtoint ptr %write_register15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_register15, align 4
  %21 = load i32, ptr @reg11, align 4
  tail call void (ptr, i32, ...) %20(ptr noundef %par, i32 noundef 2, i32 noundef 17, i32 noundef %21) #4
  br label %return

sw.bb17:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %write_register19 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %22 = ptrtoint ptr %write_register19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_register19, align 4
  %24 = load i32, ptr @reg11, align 4
  %or20 = or i32 %24, 24
  tail call void (ptr, i32, ...) %23(ptr noundef %par, i32 noundef 2, i32 noundef 17, i32 noundef %or20) #4
  br label %return

return:                                           ; preds = %sw.bb17, %sw.bb13, %sw.bb9, %sw.bb, %if.end6.return_crit_edge, %do.end, %do.body.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_gamma(ptr noundef %par, ptr noundef %curves) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  tail call void (ptr, i32, ...) %72(ptr noundef %par, i32 noundef 2, i32 noundef 48, i32 noundef %or) #4
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
  tail call void (ptr, i32, ...) %76(ptr noundef %par, i32 noundef 2, i32 noundef 49, i32 noundef %or35) #4
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
  tail call void (ptr, i32, ...) %82(ptr noundef %par, i32 noundef 2, i32 noundef 50, i32 noundef %or49) #4
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
  tail call void (ptr, i32, ...) %88(ptr noundef %par, i32 noundef 2, i32 noundef 51, i32 noundef %or63) #4
  %93 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write_register, align 4
  %95 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num_values, align 8
  %add69 = add i32 %96, 5
  %arrayidx70 = getelementptr i32, ptr %curves, i32 %add69
  %97 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx70, align 4
  %shl71 = shl i32 %98, 8
  %add75 = add i32 %96, 4
  %arrayidx76 = getelementptr i32, ptr %curves, i32 %add75
  %99 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx76, align 4
  %or77 = or i32 %shl71, %100
  tail call void (ptr, i32, ...) %94(ptr noundef %par, i32 noundef 2, i32 noundef 52, i32 noundef %or77) #4
  %101 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write_register, align 4
  %103 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %num_values, align 8
  %add83 = add i32 %104, 7
  %arrayidx84 = getelementptr i32, ptr %curves, i32 %add83
  %105 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx84, align 4
  %shl85 = shl i32 %106, 8
  %add89 = add i32 %104, 6
  %arrayidx90 = getelementptr i32, ptr %curves, i32 %add89
  %107 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx90, align 4
  %or91 = or i32 %shl85, %108
  tail call void (ptr, i32, ...) %102(ptr noundef %par, i32 noundef 2, i32 noundef 53, i32 noundef %or91) #4
  %109 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %write_register, align 4
  %111 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %num_values, align 8
  %add97 = add i32 %112, 9
  %arrayidx98 = getelementptr i32, ptr %curves, i32 %add97
  %113 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx98, align 4
  %shl99 = shl i32 %114, 8
  %add103 = add i32 %112, 8
  %arrayidx104 = getelementptr i32, ptr %curves, i32 %add103
  %115 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx104, align 4
  %or105 = or i32 %shl99, %116
  tail call void (ptr, i32, ...) %110(ptr noundef %par, i32 noundef 2, i32 noundef 54, i32 noundef %or105) #4
  %117 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %write_register, align 4
  %119 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %num_values, align 8
  %add111 = add i32 %120, 3
  %arrayidx112 = getelementptr i32, ptr %curves, i32 %add111
  %121 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx112, align 4
  %shl113 = shl i32 %122, 8
  %add117 = add i32 %120, 2
  %arrayidx118 = getelementptr i32, ptr %curves, i32 %add117
  %123 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx118, align 4
  %or119 = or i32 %shl113, %124
  tail call void (ptr, i32, ...) %118(ptr noundef %par, i32 noundef 2, i32 noundef 55, i32 noundef %or119) #4
  %125 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write_register, align 4
  %127 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx8.1, align 4
  %shl127 = shl i32 %128, 8
  %129 = ptrtoint ptr %curves to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %curves, align 4
  %or133 = or i32 %shl127, %130
  tail call void (ptr, i32, ...) %126(ptr noundef %par, i32 noundef 2, i32 noundef 58, i32 noundef %or133) #4
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
  tail call void (ptr, i32, ...) %132(ptr noundef %par, i32 noundef 2, i32 noundef 59, i32 noundef %or147) #4
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

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

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !26, !27, !28, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__param_reg11, !1, !"__param_reg11", i1 false, i1 false}
!1 = !{!"../drivers/staging/fbtft/fb_ssd1289.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_reg11type303, !1, !"__UNIQUE_ID_reg11type303", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_reg11304, !4, !"__UNIQUE_ID_reg11304", i1 false, i1 false}
!4 = !{!"../drivers/staging/fbtft/fb_ssd1289.c", i32 24, i32 1}
!5 = !{ptr @__initcall__kmod_fb_ssd1289__305_170_fbtft_driver_module_init6, !6, !"__initcall__kmod_fb_ssd1289__305_170_fbtft_driver_module_init6", i1 false, i1 false}
!6 = !{!"../drivers/staging/fbtft/fb_ssd1289.c", i32 170, i32 1}
!7 = !{ptr @__exitcall_fbtft_driver_module_exit, !6, !"__exitcall_fbtft_driver_module_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias306, !9, !"__UNIQUE_ID_alias306", i1 false, i1 false}
!9 = !{!"../drivers/staging/fbtft/fb_ssd1289.c", i32 172, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias307, !11, !"__UNIQUE_ID_alias307", i1 false, i1 false}
!11 = !{!"../drivers/staging/fbtft/fb_ssd1289.c", i32 173, i32 1}
!12 = !{ptr @__UNIQUE_ID_alias308, !13, !"__UNIQUE_ID_alias308", i1 false, i1 false}
!13 = !{!"../drivers/staging/fbtft/fb_ssd1289.c", i32 174, i32 1}
!14 = !{ptr @__UNIQUE_ID_alias309, !15, !"__UNIQUE_ID_alias309", i1 false, i1 false}
!15 = !{!"../drivers/staging/fbtft/fb_ssd1289.c", i32 175, i32 1}
!16 = !{ptr @__UNIQUE_ID_description310, !17, !"__UNIQUE_ID_description310", i1 false, i1 false}
!17 = !{!"../drivers/staging/fbtft/fb_ssd1289.c", i32 177, i32 1}
!18 = !{ptr @__UNIQUE_ID_author311, !19, !"__UNIQUE_ID_author311", i1 false, i1 false}
!19 = !{!"../drivers/staging/fbtft/fb_ssd1289.c", i32 178, i32 1}
!20 = !{ptr @__UNIQUE_ID_file312, !21, !"__UNIQUE_ID_file312", i1 false, i1 false}
!21 = !{!"../drivers/staging/fbtft/fb_ssd1289.c", i32 179, i32 1}
!22 = !{ptr @__UNIQUE_ID_license313, !21, !"__UNIQUE_ID_license313", i1 false, i1 false}
!23 = !{ptr @__param_str_reg11, !1, !"__param_str_reg11", i1 false, i1 false}
!24 = !{ptr @reg11, !25, !"reg11", i1 false, i1 false}
!25 = !{!"../drivers/staging/fbtft/fb_ssd1289.c", i32 22, i32 21}
!26 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @fbtft_driver_spi_driver, !6, !"fbtft_driver_spi_driver", i1 false, i1 false}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/fbtft/fb_ssd1289.c", i32 161, i32 11}
!30 = !{ptr @display, !31, !"display", i1 false, i1 false}
!31 = !{!"../drivers/staging/fbtft/fb_ssd1289.c", i32 155, i32 29}
!32 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/fbtft/fb_ssd1289.c", i32 96, i32 3}
!34 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @set_var._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @set_var._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @set_gamma.mask, !41, !"mask", i1 false, i1 false}
!41 = !{!"../drivers/staging/fbtft/fb_ssd1289.c", i32 128, i32 29}
!42 = !{ptr @dt_ids, !6, !"dt_ids", i1 false, i1 false}
!43 = !{ptr @fbtft_driver_platform_driver, !6, !"fbtft_driver_platform_driver", i1 false, i1 false}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i8 0, i8 2}
!54 = !{!"branch_weights", i32 2000, i32 1}
