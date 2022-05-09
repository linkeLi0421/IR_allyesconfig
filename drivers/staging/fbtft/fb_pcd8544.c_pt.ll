; ModuleID = '/llk/IR_all_yes/drivers/staging/fbtft/fb_pcd8544.c_pt.bc'
source_filename = "../drivers/staging/fbtft/fb_pcd8544.c"
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

@__param_str_tc = internal constant [14 x i8] c"fb_pcd8544.tc\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@tc = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_tc = internal constant %struct.kernel_param { ptr @__param_str_tc, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @tc } }, section "__param", align 4
@__UNIQUE_ID_tctype303 = internal constant [28 x i8] c"fb_pcd8544.parmtype=tc:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_tc304 = internal constant [69 x i8] c"fb_pcd8544.parm=tc:TC[1:0] Temperature coefficient: 0-3 (default: 0)\00", section ".modinfo", align 1
@__param_str_bs = internal constant [14 x i8] c"fb_pcd8544.bs\00", align 1
@bs = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_bs = internal constant %struct.kernel_param { ptr @__param_str_bs, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @bs } }, section "__param", align 4
@__UNIQUE_ID_bstype305 = internal constant [28 x i8] c"fb_pcd8544.parmtype=bs:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_bs306 = internal constant [64 x i8] c"fb_pcd8544.parm=bs:BS[2:0] Bias voltage level: 0-7 (default: 4)\00", section ".modinfo", align 1
@fbtft_driver_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @fbtft_driver_probe_spi, ptr @fbtft_driver_remove_spi, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@fbtft_driver_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fbtft_driver_probe_pdev, ptr @fbtft_driver_remove_pdev, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_fb_pcd8544__307_160_fbtft_driver_module_init6 = internal global ptr @fbtft_driver_module_init, section ".initcall6.init", align 4
@__exitcall_fbtft_driver_module_exit = internal global ptr @fbtft_driver_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias308 = internal constant [32 x i8] c"fb_pcd8544.alias=spi:fb_pcd8544\00", section ".modinfo", align 1
@__UNIQUE_ID_alias309 = internal constant [29 x i8] c"fb_pcd8544.alias=spi:pcd8544\00", section ".modinfo", align 1
@__UNIQUE_ID_description310 = internal constant [64 x i8] c"fb_pcd8544.description=FB driver for the PCD8544 LCD Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author311 = internal constant [33 x i8] c"fb_pcd8544.author=Noralf Tronnes\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [49 x i8] c"fb_pcd8544.file=drivers/staging/fbtft/fb_pcd8544\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [23 x i8] c"fb_pcd8544.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fb_pcd8544\00", [21 x i8] zeroinitializer }, align 32
@dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"philips,pcd8544\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@display = internal global { %struct.fbtft_display, [40 x i8] } { %struct.fbtft_display { i32 84, i32 48, i32 8, i32 0, i32 1, %struct.fbtft_ops { ptr null, ptr null, ptr @write_vmem, ptr null, ptr @set_addr_win, ptr null, ptr null, ptr null, ptr @init_display, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @set_gamma }, i32 0, i32 0, i32 504, ptr null, ptr @.str.1, i32 1, i32 1, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"40\00", [29 x i8] zeroinitializer }, align 32
@write_vmem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 126, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"write failed and returned: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"write_vmem\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/staging/fbtft/fb_pcd8544.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@write_vmem._entry_ptr = internal global ptr @write_vmem._entry, section ".printk_index", align 4
@___asan_gen_.7 = private unnamed_addr constant [3 x i8] c"tc\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 26, i32 21 }
@___asan_gen_.10 = private unnamed_addr constant [3 x i8] c"bs\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 30, i32 21 }
@___asan_gen_.13 = private unnamed_addr constant [24 x i8] c"fbtft_driver_spi_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [29 x i8] c"fbtft_driver_platform_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"dt_ids\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 160, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 143, i32 29 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 150, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [38 x i8] c"../drivers/staging/fbtft/fb_pcd8544.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 125, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_alias308, ptr @__UNIQUE_ID_alias309, ptr @__UNIQUE_ID_author311, ptr @__UNIQUE_ID_bs306, ptr @__UNIQUE_ID_bstype305, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_license313, ptr @__UNIQUE_ID_tc304, ptr @__UNIQUE_ID_tctype303, ptr @__exitcall_fbtft_driver_module_exit, ptr @__initcall__kmod_fb_pcd8544__307_160_fbtft_driver_module_init6, ptr @__param_bs, ptr @__param_tc, ptr @fbtft_driver_module_exit, ptr @write_vmem._entry, ptr @write_vmem._entry_ptr, ptr @tc, ptr @bs, ptr @fbtft_driver_spi_driver, ptr @fbtft_driver_platform_driver, ptr @.str, ptr @dt_ids, ptr @display, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_vmem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
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
  %5 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %txbuf, align 4
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.inc15.for.cond2.preheader_crit_edge, %entry
  %x.044 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15.for.cond2.preheader_crit_edge ]
  %buf.043 = phi ptr [ %6, %entry ], [ %incdec.ptr, %for.inc15.for.cond2.preheader_crit_edge ]
  br label %for.body4

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.cond2.preheader
  %y.042 = phi i32 [ 0, %for.cond2.preheader ], [ %inc13, %for.body4.for.body4_crit_edge ]
  %buf.141 = phi ptr [ %buf.043, %for.cond2.preheader ], [ %incdec.ptr, %for.body4.for.body4_crit_edge ]
  %7 = ptrtoint ptr %buf.141 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %buf.141, align 1
  %mul = shl i32 %y.042, 3
  %mul8 = mul i32 %y.042, 672
  %add9 = add nuw nsw i32 %mul8, %x.044
  %arrayidx = getelementptr i16, ptr %4, i32 %add9
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp ne i16 %9, 0
  %10 = zext i1 %tobool.not to i8
  %11 = ptrtoint ptr %buf.141 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %buf.141, align 1
  %add.1 = or i32 %mul, 1
  %mul8.1 = mul nuw nsw i32 %add.1, 84
  %add9.1 = add nuw nsw i32 %mul8.1, %x.044
  %arrayidx.1 = getelementptr i16, ptr %4, i32 %add9.1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.1.not = icmp eq i16 %13, 0
  %14 = select i1 %tobool.not.1.not, i8 0, i8 2
  %conv11.1 = or i8 %14, %10
  %15 = ptrtoint ptr %buf.141 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv11.1, ptr %buf.141, align 1
  %add.2 = or i32 %mul, 2
  %mul8.2 = mul nuw nsw i32 %add.2, 84
  %add9.2 = add nuw nsw i32 %mul8.2, %x.044
  %arrayidx.2 = getelementptr i16, ptr %4, i32 %add9.2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.2.not = icmp eq i16 %17, 0
  %18 = select i1 %tobool.not.2.not, i8 0, i8 4
  %conv11.2 = or i8 %conv11.1, %18
  %19 = ptrtoint ptr %buf.141 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv11.2, ptr %buf.141, align 1
  %add.3 = or i32 %mul, 3
  %mul8.3 = mul nuw nsw i32 %add.3, 84
  %add9.3 = add nuw nsw i32 %mul8.3, %x.044
  %arrayidx.3 = getelementptr i16, ptr %4, i32 %add9.3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.3.not = icmp eq i16 %21, 0
  %22 = select i1 %tobool.not.3.not, i8 0, i8 8
  %conv11.3 = or i8 %conv11.2, %22
  %23 = ptrtoint ptr %buf.141 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv11.3, ptr %buf.141, align 1
  %add.4 = or i32 %mul, 4
  %mul8.4 = mul nuw nsw i32 %add.4, 84
  %add9.4 = add nuw nsw i32 %mul8.4, %x.044
  %arrayidx.4 = getelementptr i16, ptr %4, i32 %add9.4
  %24 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not.4.not = icmp eq i16 %25, 0
  %26 = select i1 %tobool.not.4.not, i8 0, i8 16
  %conv11.4 = or i8 %conv11.3, %26
  %27 = ptrtoint ptr %buf.141 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv11.4, ptr %buf.141, align 1
  %add.5 = or i32 %mul, 5
  %mul8.5 = mul nuw nsw i32 %add.5, 84
  %add9.5 = add nuw nsw i32 %mul8.5, %x.044
  %arrayidx.5 = getelementptr i16, ptr %4, i32 %add9.5
  %28 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not.5.not = icmp eq i16 %29, 0
  %30 = select i1 %tobool.not.5.not, i8 0, i8 32
  %conv11.5 = or i8 %conv11.4, %30
  %31 = ptrtoint ptr %buf.141 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv11.5, ptr %buf.141, align 1
  %add.6 = or i32 %mul, 6
  %mul8.6 = mul nuw nsw i32 %add.6, 84
  %add9.6 = add nuw nsw i32 %mul8.6, %x.044
  %arrayidx.6 = getelementptr i16, ptr %4, i32 %add9.6
  %32 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool.not.6.not = icmp eq i16 %33, 0
  %34 = select i1 %tobool.not.6.not, i8 0, i8 64
  %conv11.6 = or i8 %conv11.5, %34
  %35 = ptrtoint ptr %buf.141 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv11.6, ptr %buf.141, align 1
  %add.7 = or i32 %mul, 7
  %mul8.7 = mul nuw nsw i32 %add.7, 84
  %add9.7 = add nuw nsw i32 %mul8.7, %x.044
  %arrayidx.7 = getelementptr i16, ptr %4, i32 %add9.7
  %36 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not.7.not = icmp eq i16 %37, 0
  %38 = select i1 %tobool.not.7.not, i8 0, i8 -128
  %conv11.7 = or i8 %conv11.6, %38
  %39 = ptrtoint ptr %buf.141 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv11.7, ptr %buf.141, align 1
  %incdec.ptr = getelementptr i8, ptr %buf.141, i32 1
  %inc13 = add nuw nsw i32 %y.042, 1
  %exitcond.not = icmp eq i32 %inc13, 6
  br i1 %exitcond.not, label %for.inc15, label %for.body4.for.body4_crit_edge

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body4

for.inc15:                                        ; preds = %for.body4
  %inc16 = add nuw nsw i32 %x.044, 1
  %exitcond45.not = icmp eq i32 %inc16, 84
  br i1 %exitcond45.not, label %for.end17, label %for.inc15.for.cond2.preheader_crit_edge

for.inc15.for.cond2.preheader_crit_edge:          ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond2.preheader

for.end17:                                        ; preds = %for.inc15
  %dc = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 1
  %40 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dc, align 4
  tail call void @gpiod_set_value(ptr noundef %41, i32 noundef 1) #4
  %fbtftops = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9
  %42 = ptrtoint ptr %fbtftops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fbtftops, align 4
  %44 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %txbuf, align 4
  %call = tail call i32 %43(ptr noundef %par, ptr noundef %45, i32 noundef 504) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp20 = icmp slt i32 %call, 0
  br i1 %cmp20, label %do.end, label %for.end17.if.end_crit_edge

for.end17.if.end_crit_edge:                       ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %47, i32 0, i32 21
  %48 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.2, i32 noundef %call) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %for.end17.if.end_crit_edge
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
  tail call void (ptr, i32, ...) %1(ptr noundef %par, i32 noundef 1, i32 noundef 128) #4
  %2 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %3(ptr noundef %par, i32 noundef 1, i32 noundef 64) #4
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
  tail call void (ptr, i32, ...) %3(ptr noundef %par, i32 noundef 1, i32 noundef 33) #4
  %4 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_register, align 4
  %6 = load i32, ptr @tc, align 4
  %and = and i32 %6, 3
  %or = or i32 %and, 4
  tail call void (ptr, i32, ...) %5(ptr noundef %par, i32 noundef 1, i32 noundef %or) #4
  %7 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_register, align 4
  %9 = load i32, ptr @bs, align 4
  %and6 = and i32 %9, 7
  %or7 = or i32 %and6, 16
  tail call void (ptr, i32, ...) %8(ptr noundef %par, i32 noundef 1, i32 noundef %or7) #4
  %10 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %11(ptr noundef %par, i32 noundef 1, i32 noundef 34) #4
  %12 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %13(ptr noundef %par, i32 noundef 1, i32 noundef 12) #4
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
  %and = and i32 %1, 127
  store i32 %and, ptr %curves, align 4
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %3(ptr noundef %par, i32 noundef 1, i32 noundef 35) #4
  %4 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_register, align 4
  %6 = ptrtoint ptr %curves to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %curves, align 4
  %or = or i32 %7, 128
  tail call void (ptr, i32, ...) %5(ptr noundef %par, i32 noundef 1, i32 noundef %or) #4
  %8 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %9(ptr noundef %par, i32 noundef 1, i32 noundef 34) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !38, !39, !40, !41, !42, !43, !44, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__param_tc, !1, !"__param_tc", i1 false, i1 false}
!1 = !{!"../drivers/staging/fbtft/fb_pcd8544.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_tctype303, !1, !"__UNIQUE_ID_tctype303", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_tc304, !4, !"__UNIQUE_ID_tc304", i1 false, i1 false}
!4 = !{!"../drivers/staging/fbtft/fb_pcd8544.c", i32 28, i32 1}
!5 = !{ptr @__param_bs, !6, !"__param_bs", i1 false, i1 false}
!6 = !{!"../drivers/staging/fbtft/fb_pcd8544.c", i32 31, i32 1}
!7 = !{ptr @__UNIQUE_ID_bstype305, !6, !"__UNIQUE_ID_bstype305", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_bs306, !9, !"__UNIQUE_ID_bs306", i1 false, i1 false}
!9 = !{!"../drivers/staging/fbtft/fb_pcd8544.c", i32 32, i32 1}
!10 = !{ptr @__initcall__kmod_fb_pcd8544__307_160_fbtft_driver_module_init6, !11, !"__initcall__kmod_fb_pcd8544__307_160_fbtft_driver_module_init6", i1 false, i1 false}
!11 = !{!"../drivers/staging/fbtft/fb_pcd8544.c", i32 160, i32 1}
!12 = !{ptr @__exitcall_fbtft_driver_module_exit, !11, !"__exitcall_fbtft_driver_module_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_alias308, !14, !"__UNIQUE_ID_alias308", i1 false, i1 false}
!14 = !{!"../drivers/staging/fbtft/fb_pcd8544.c", i32 162, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias309, !16, !"__UNIQUE_ID_alias309", i1 false, i1 false}
!16 = !{!"../drivers/staging/fbtft/fb_pcd8544.c", i32 163, i32 1}
!17 = !{ptr @__UNIQUE_ID_description310, !18, !"__UNIQUE_ID_description310", i1 false, i1 false}
!18 = !{!"../drivers/staging/fbtft/fb_pcd8544.c", i32 165, i32 1}
!19 = !{ptr @__UNIQUE_ID_author311, !20, !"__UNIQUE_ID_author311", i1 false, i1 false}
!20 = !{!"../drivers/staging/fbtft/fb_pcd8544.c", i32 166, i32 1}
!21 = !{ptr @__UNIQUE_ID_file312, !22, !"__UNIQUE_ID_file312", i1 false, i1 false}
!22 = !{!"../drivers/staging/fbtft/fb_pcd8544.c", i32 167, i32 1}
!23 = !{ptr @__UNIQUE_ID_license313, !22, !"__UNIQUE_ID_license313", i1 false, i1 false}
!24 = !{ptr @tc, !25, !"tc", i1 false, i1 false}
!25 = !{!"../drivers/staging/fbtft/fb_pcd8544.c", i32 26, i32 21}
!26 = !{ptr @__param_str_tc, !1, !"__param_str_tc", i1 false, i1 false}
!27 = !{ptr @__param_str_bs, !6, !"__param_str_bs", i1 false, i1 false}
!28 = !{ptr @bs, !29, !"bs", i1 false, i1 false}
!29 = !{!"../drivers/staging/fbtft/fb_pcd8544.c", i32 30, i32 21}
!30 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @fbtft_driver_spi_driver, !11, !"fbtft_driver_spi_driver", i1 false, i1 false}
!32 = !{ptr @.str.1, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/fbtft/fb_pcd8544.c", i32 150, i32 11}
!34 = !{ptr @display, !35, !"display", i1 false, i1 false}
!35 = !{!"../drivers/staging/fbtft/fb_pcd8544.c", i32 143, i32 29}
!36 = !{ptr @.str.2, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/fbtft/fb_pcd8544.c", i32 125, i32 3}
!38 = !{ptr @.str.3, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @write_vmem._entry, !37, !"_entry", i1 false, i1 false}
!43 = !{ptr @write_vmem._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @dt_ids, !11, !"dt_ids", i1 false, i1 false}
!45 = !{ptr @fbtft_driver_platform_driver, !11, !"fbtft_driver_platform_driver", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
