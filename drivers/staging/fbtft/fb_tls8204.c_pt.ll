; ModuleID = '/llk/IR_all_yes/drivers/staging/fbtft/fb_tls8204.c_pt.bc'
source_filename = "../drivers/staging/fbtft/fb_tls8204.c"
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

@__param_str_bs = internal constant [14 x i8] c"fb_tls8204.bs\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@bs = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_bs = internal constant %struct.kernel_param { ptr @__param_str_bs, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @bs } }, section "__param", align 4
@__UNIQUE_ID_bstype303 = internal constant [28 x i8] c"fb_tls8204.parmtype=bs:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_bs304 = internal constant [64 x i8] c"fb_tls8204.parm=bs:BS[2:0] Bias voltage level: 0-7 (default: 4)\00", section ".modinfo", align 1
@fbtft_driver_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @fbtft_driver_probe_spi, ptr @fbtft_driver_remove_spi, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@fbtft_driver_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fbtft_driver_probe_pdev, ptr @fbtft_driver_remove_pdev, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_fb_tls8204__305_153_fbtft_driver_module_init6 = internal global ptr @fbtft_driver_module_init, section ".initcall6.init", align 4
@__exitcall_fbtft_driver_module_exit = internal global ptr @fbtft_driver_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias306 = internal constant [32 x i8] c"fb_tls8204.alias=spi:fb_tls8204\00", section ".modinfo", align 1
@__UNIQUE_ID_alias307 = internal constant [29 x i8] c"fb_tls8204.alias=spi:tls8204\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [64 x i8] c"fb_tls8204.description=FB driver for the TLS8204 LCD Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author309 = internal constant [31 x i8] c"fb_tls8204.author=Michael Hope\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [49 x i8] c"fb_tls8204.file=drivers/staging/fbtft/fb_tls8204\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [23 x i8] c"fb_tls8204.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fb_tls8204\00", [21 x i8] zeroinitializer }, align 32
@dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"teralane,tls8204\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@display = internal global { %struct.fbtft_display, [40 x i8] } { %struct.fbtft_display { i32 84, i32 48, i32 8, i32 0, i32 1, %struct.fbtft_ops { ptr null, ptr null, ptr @write_vmem, ptr null, ptr @set_addr_win, ptr null, ptr null, ptr null, ptr @init_display, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @set_gamma }, i32 0, i32 0, i32 84, ptr null, ptr @.str.1, i32 1, i32 1, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"40\00", [29 x i8] zeroinitializer }, align 32
@write_vmem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 116, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"write failed and returned: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"write_vmem\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/staging/fbtft/fb_tls8204.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@write_vmem._entry_ptr = internal global ptr @write_vmem._entry, section ".printk_index", align 4
@___asan_gen_.7 = private unnamed_addr constant [3 x i8] c"bs\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 29, i32 21 }
@___asan_gen_.10 = private unnamed_addr constant [24 x i8] c"fbtft_driver_spi_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [29 x i8] c"fbtft_driver_platform_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c"dt_ids\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 153, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 136, i32 29 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 143, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [38 x i8] c"../drivers/staging/fbtft/fb_tls8204.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 115, i32 4 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_alias306, ptr @__UNIQUE_ID_alias307, ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_bs304, ptr @__UNIQUE_ID_bstype303, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_fbtft_driver_module_exit, ptr @__initcall__kmod_fb_tls8204__305_153_fbtft_driver_module_init6, ptr @__param_bs, ptr @fbtft_driver_module_exit, ptr @write_vmem._entry, ptr @write_vmem._entry_ptr, ptr @bs, ptr @fbtft_driver_spi_driver, ptr @fbtft_driver_platform_driver, ptr @.str, ptr @dt_ids, ptr @display, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_vmem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
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
  %dc = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 1
  %fbtftops = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  br label %for.body

for.cond:                                         ; preds = %for.end18
  %inc30 = add nuw nsw i32 %y.066, 1
  %exitcond69.not = icmp eq i32 %inc30, 6
  br i1 %exitcond69.not, label %for.cond.for.end31_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.cond.for.end31_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end31

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %y.066 = phi i32 [ 0, %entry ], [ %inc30, %for.cond.for.body_crit_edge ]
  %5 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %txbuf, align 4
  %7 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dc, align 4
  tail call void @gpiod_set_value(ptr noundef %8, i32 noundef 0) #4
  %9 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %10(ptr noundef %par, i32 noundef 1, i32 noundef 128) #4
  %11 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_register, align 4
  %or = or i32 %y.066, 64
  tail call void (ptr, i32, ...) %12(ptr noundef %par, i32 noundef 1, i32 noundef %or) #4
  %mul11 = mul nuw nsw i32 %y.066, 672
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.cond7.preheader.for.cond7.preheader_crit_edge, %for.body
  %buf.065 = phi ptr [ %6, %for.body ], [ %incdec.ptr, %for.cond7.preheader.for.cond7.preheader_crit_edge ]
  %x.064 = phi i32 [ 0, %for.body ], [ %inc, %for.cond7.preheader.for.cond7.preheader_crit_edge ]
  %add = add nuw nsw i32 %x.064, %mul11
  %arrayidx = getelementptr i16, ptr %4, i32 %add
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not = icmp ne i16 %14, 0
  %spec.select = zext i1 %tobool.not to i8
  %add12.1 = add nuw nsw i32 %add, 84
  %arrayidx.1 = getelementptr i16, ptr %4, i32 %add12.1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not.1 = icmp eq i16 %16, 0
  %add12.2 = add nuw nsw i32 %add, 168
  %arrayidx.2 = getelementptr i16, ptr %4, i32 %add12.2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.2 = icmp eq i16 %18, 0
  %add12.3 = add nuw nsw i32 %add, 252
  %arrayidx.3 = getelementptr i16, ptr %4, i32 %add12.3
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.3 = icmp eq i16 %20, 0
  %add12.4 = add nuw nsw i32 %add, 336
  %arrayidx.4 = getelementptr i16, ptr %4, i32 %add12.4
  %21 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not.4 = icmp eq i16 %22, 0
  %add12.5 = add nuw nsw i32 %add, 420
  %arrayidx.5 = getelementptr i16, ptr %4, i32 %add12.5
  %23 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.not.5 = icmp eq i16 %24, 0
  %add12.6 = add nuw nsw i32 %add, 504
  %arrayidx.6 = getelementptr i16, ptr %4, i32 %add12.6
  %25 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx.6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.not.6 = icmp eq i16 %26, 0
  %27 = or i8 %spec.select, 2
  %28 = select i1 %tobool.not.1, i8 %spec.select, i8 %27
  %29 = or i8 %28, 4
  %30 = select i1 %tobool.not.2, i8 %28, i8 %29
  %31 = or i8 %30, 8
  %32 = select i1 %tobool.not.3, i8 %30, i8 %31
  %33 = or i8 %32, 16
  %34 = select i1 %tobool.not.4, i8 %32, i8 %33
  %35 = or i8 %34, 32
  %36 = select i1 %tobool.not.5, i8 %34, i8 %35
  %37 = or i8 %36, 64
  %38 = select i1 %tobool.not.6, i8 %36, i8 %37
  %add12.7 = add nuw nsw i32 %add, 588
  %arrayidx.7 = getelementptr i16, ptr %4, i32 %add12.7
  %39 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx.7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool.not.7 = icmp eq i16 %40, 0
  %41 = or i8 %38, -128
  %spec.select.7 = select i1 %tobool.not.7, i8 %38, i8 %41
  %incdec.ptr = getelementptr i8, ptr %buf.065, i32 1
  %42 = ptrtoint ptr %buf.065 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %spec.select.7, ptr %buf.065, align 1
  %inc = add nuw nsw i32 %x.064, 1
  %exitcond.not = icmp eq i32 %inc, 84
  br i1 %exitcond.not, label %for.end18, label %for.cond7.preheader.for.cond7.preheader_crit_edge

for.cond7.preheader.for.cond7.preheader_crit_edge: ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond7.preheader

for.end18:                                        ; preds = %for.cond7.preheader
  %43 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dc, align 4
  tail call void @gpiod_set_value(ptr noundef %44, i32 noundef 1) #4
  %45 = ptrtoint ptr %fbtftops to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fbtftops, align 4
  %47 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %txbuf, align 4
  %call = tail call i32 %46(ptr noundef %par, ptr noundef %48, i32 noundef 84) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp24 = icmp slt i32 %call, 0
  br i1 %cmp24, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.end18
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %50, i32 0, i32 21
  %51 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.2, i32 noundef %call) #7
  br label %for.end31

for.end31:                                        ; preds = %cleanup, %for.cond.for.end31_crit_edge
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
  %6 = load i32, ptr @bs, align 4
  %and = and i32 %6, 7
  %or = or i32 %and, 16
  tail call void (ptr, i32, ...) %5(ptr noundef %par, i32 noundef 1, i32 noundef %or) #4
  %7 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %8(ptr noundef %par, i32 noundef 1, i32 noundef 5) #4
  %9 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %10(ptr noundef %par, i32 noundef 1, i32 noundef 64) #4
  %11 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %12(ptr noundef %par, i32 noundef 1, i32 noundef 32) #4
  %13 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %14(ptr noundef %par, i32 noundef 1, i32 noundef 12) #4
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
  tail call void (ptr, i32, ...) %3(ptr noundef %par, i32 noundef 1, i32 noundef 33) #4
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
  tail call void (ptr, i32, ...) %9(ptr noundef %par, i32 noundef 1, i32 noundef 32) #4
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !22, !23, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__param_bs, !1, !"__param_bs", i1 false, i1 false}
!1 = !{!"../drivers/staging/fbtft/fb_tls8204.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_bstype303, !1, !"__UNIQUE_ID_bstype303", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_bs304, !4, !"__UNIQUE_ID_bs304", i1 false, i1 false}
!4 = !{!"../drivers/staging/fbtft/fb_tls8204.c", i32 31, i32 1}
!5 = !{ptr @__initcall__kmod_fb_tls8204__305_153_fbtft_driver_module_init6, !6, !"__initcall__kmod_fb_tls8204__305_153_fbtft_driver_module_init6", i1 false, i1 false}
!6 = !{!"../drivers/staging/fbtft/fb_tls8204.c", i32 153, i32 1}
!7 = !{ptr @__exitcall_fbtft_driver_module_exit, !6, !"__exitcall_fbtft_driver_module_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias306, !9, !"__UNIQUE_ID_alias306", i1 false, i1 false}
!9 = !{!"../drivers/staging/fbtft/fb_tls8204.c", i32 155, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias307, !11, !"__UNIQUE_ID_alias307", i1 false, i1 false}
!11 = !{!"../drivers/staging/fbtft/fb_tls8204.c", i32 156, i32 1}
!12 = !{ptr @__UNIQUE_ID_description308, !13, !"__UNIQUE_ID_description308", i1 false, i1 false}
!13 = !{!"../drivers/staging/fbtft/fb_tls8204.c", i32 158, i32 1}
!14 = !{ptr @__UNIQUE_ID_author309, !15, !"__UNIQUE_ID_author309", i1 false, i1 false}
!15 = !{!"../drivers/staging/fbtft/fb_tls8204.c", i32 159, i32 1}
!16 = !{ptr @__UNIQUE_ID_file310, !17, !"__UNIQUE_ID_file310", i1 false, i1 false}
!17 = !{!"../drivers/staging/fbtft/fb_tls8204.c", i32 160, i32 1}
!18 = !{ptr @__UNIQUE_ID_license311, !17, !"__UNIQUE_ID_license311", i1 false, i1 false}
!19 = !{ptr @__param_str_bs, !1, !"__param_str_bs", i1 false, i1 false}
!20 = !{ptr @bs, !21, !"bs", i1 false, i1 false}
!21 = !{!"../drivers/staging/fbtft/fb_tls8204.c", i32 29, i32 21}
!22 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @fbtft_driver_spi_driver, !6, !"fbtft_driver_spi_driver", i1 false, i1 false}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/fbtft/fb_tls8204.c", i32 143, i32 11}
!26 = !{ptr @display, !27, !"display", i1 false, i1 false}
!27 = !{!"../drivers/staging/fbtft/fb_tls8204.c", i32 136, i32 29}
!28 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/fbtft/fb_tls8204.c", i32 115, i32 4}
!30 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @write_vmem._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @write_vmem._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @dt_ids, !6, !"dt_ids", i1 false, i1 false}
!37 = !{ptr @fbtft_driver_platform_driver, !6, !"fbtft_driver_platform_driver", i1 false, i1 false}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
