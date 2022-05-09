; ModuleID = '/llk/IR_all_yes/drivers/staging/fbtft/fb_uc1701.c_pt.bc'
source_filename = "../drivers/staging/fbtft/fb_uc1701.c"
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
@__initcall__kmod_fb_uc1701__303_163_fbtft_driver_module_init6 = internal global ptr @fbtft_driver_module_init, section ".initcall6.init", align 4
@__exitcall_fbtft_driver_module_exit = internal global ptr @fbtft_driver_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias304 = internal constant [30 x i8] c"fb_uc1701.alias=spi:fb_uc1701\00", section ".modinfo", align 1
@__UNIQUE_ID_alias305 = internal constant [27 x i8] c"fb_uc1701.alias=spi:uc1701\00", section ".modinfo", align 1
@__UNIQUE_ID_description306 = internal constant [62 x i8] c"fb_uc1701.description=FB driver for the UC1701 LCD Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author307 = internal constant [34 x i8] c"fb_uc1701.author=Juergen Holzmann\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [47 x i8] c"fb_uc1701.file=drivers/staging/fbtft/fb_uc1701\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [22 x i8] c"fb_uc1701.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fb_uc1701\00", [22 x i8] zeroinitializer }, align 32
@dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"UltraChip,uc1701\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@display = internal global { %struct.fbtft_display, [40 x i8] } { %struct.fbtft_display { i32 102, i32 64, i32 8, i32 0, i32 1, %struct.fbtft_ops { ptr null, ptr null, ptr @write_vmem, ptr null, ptr @set_addr_win, ptr null, ptr null, ptr null, ptr @init_display, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@write_vmem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 146, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"write failed and returned: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"write_vmem\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/staging/fbtft/fb_uc1701.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@write_vmem._entry_ptr = internal global ptr @write_vmem._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.6 = private unnamed_addr constant [24 x i8] c"fbtft_driver_spi_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [29 x i8] c"fbtft_driver_platform_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"dt_ids\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 163, i32 1 }
@___asan_gen_.18 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 151, i32 29 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [37 x i8] c"../drivers/staging/fbtft/fb_uc1701.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 145, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_alias304, ptr @__UNIQUE_ID_alias305, ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @__exitcall_fbtft_driver_module_exit, ptr @__initcall__kmod_fb_uc1701__303_163_fbtft_driver_module_init6, ptr @fbtft_driver_module_exit, ptr @write_vmem._entry, ptr @write_vmem._entry_ptr, ptr @fbtft_driver_spi_driver, ptr @fbtft_driver_platform_driver, ptr @.str, ptr @dt_ids, ptr @display, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_vmem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
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
  %fbtftops = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %dc = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 1
  br label %for.body

for.body:                                         ; preds = %for.end15.for.body_crit_edge, %entry
  %y.062 = phi i32 [ 0, %entry ], [ %inc29, %for.end15.for.body_crit_edge ]
  %5 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %txbuf, align 4
  %mul8 = mul nuw nsw i32 %y.062, 816
  br label %for.body4

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.body
  %x.061 = phi i32 [ 0, %for.body ], [ %inc14, %for.body4.for.body4_crit_edge ]
  %buf.060 = phi ptr [ %6, %for.body ], [ %incdec.ptr, %for.body4.for.body4_crit_edge ]
  %7 = ptrtoint ptr %buf.060 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %buf.060, align 1
  %add = add nuw nsw i32 %x.061, %mul8
  %arrayidx = getelementptr i16, ptr %4, i32 %add
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp ne i16 %9, 0
  %10 = zext i1 %tobool.not to i8
  %11 = ptrtoint ptr %buf.060 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %buf.060, align 1
  %add10.1 = add nuw nsw i32 %add, 102
  %arrayidx.1 = getelementptr i16, ptr %4, i32 %add10.1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.1.not = icmp eq i16 %13, 0
  %14 = select i1 %tobool.not.1.not, i8 0, i8 2
  %conv12.1 = or i8 %14, %10
  %15 = ptrtoint ptr %buf.060 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv12.1, ptr %buf.060, align 1
  %add10.2 = add nuw nsw i32 %add, 204
  %arrayidx.2 = getelementptr i16, ptr %4, i32 %add10.2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.2.not = icmp eq i16 %17, 0
  %18 = select i1 %tobool.not.2.not, i8 0, i8 4
  %conv12.2 = or i8 %conv12.1, %18
  %19 = ptrtoint ptr %buf.060 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv12.2, ptr %buf.060, align 1
  %add10.3 = add nuw nsw i32 %add, 306
  %arrayidx.3 = getelementptr i16, ptr %4, i32 %add10.3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.3.not = icmp eq i16 %21, 0
  %22 = select i1 %tobool.not.3.not, i8 0, i8 8
  %conv12.3 = or i8 %conv12.2, %22
  %23 = ptrtoint ptr %buf.060 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv12.3, ptr %buf.060, align 1
  %add10.4 = add nuw nsw i32 %add, 408
  %arrayidx.4 = getelementptr i16, ptr %4, i32 %add10.4
  %24 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not.4.not = icmp eq i16 %25, 0
  %26 = select i1 %tobool.not.4.not, i8 0, i8 16
  %conv12.4 = or i8 %conv12.3, %26
  %27 = ptrtoint ptr %buf.060 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv12.4, ptr %buf.060, align 1
  %add10.5 = add nuw nsw i32 %add, 510
  %arrayidx.5 = getelementptr i16, ptr %4, i32 %add10.5
  %28 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not.5.not = icmp eq i16 %29, 0
  %30 = select i1 %tobool.not.5.not, i8 0, i8 32
  %conv12.5 = or i8 %conv12.4, %30
  %31 = ptrtoint ptr %buf.060 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv12.5, ptr %buf.060, align 1
  %add10.6 = add nuw nsw i32 %add, 612
  %arrayidx.6 = getelementptr i16, ptr %4, i32 %add10.6
  %32 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool.not.6.not = icmp eq i16 %33, 0
  %34 = select i1 %tobool.not.6.not, i8 0, i8 64
  %conv12.6 = or i8 %conv12.5, %34
  %35 = ptrtoint ptr %buf.060 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv12.6, ptr %buf.060, align 1
  %add10.7 = add nuw nsw i32 %add, 714
  %arrayidx.7 = getelementptr i16, ptr %4, i32 %add10.7
  %36 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not.7.not = icmp eq i16 %37, 0
  %38 = select i1 %tobool.not.7.not, i8 0, i8 -128
  %conv12.7 = or i8 %conv12.6, %38
  %39 = ptrtoint ptr %buf.060 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv12.7, ptr %buf.060, align 1
  %incdec.ptr = getelementptr i8, ptr %buf.060, i32 1
  %inc14 = add nuw nsw i32 %x.061, 1
  %exitcond.not = icmp eq i32 %inc14, 102
  br i1 %exitcond.not, label %for.end15, label %for.body4.for.body4_crit_edge

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body4

for.end15:                                        ; preds = %for.body4
  %40 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_register, align 4
  %conv17 = and i32 %y.062, 79
  %or18 = or i32 %conv17, 176
  tail call void (ptr, i32, ...) %41(ptr noundef %par, i32 noundef 1, i32 noundef %or18) #4
  %42 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %43(ptr noundef %par, i32 noundef 1, i32 noundef 0) #4
  %44 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %45(ptr noundef %par, i32 noundef 1, i32 noundef 16) #4
  %46 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dc, align 4
  tail call void @gpiod_set_value(ptr noundef %47, i32 noundef 1) #4
  %48 = ptrtoint ptr %fbtftops to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fbtftops, align 4
  %50 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %txbuf, align 4
  %call = tail call i32 %49(ptr noundef %par, ptr noundef %51, i32 noundef 102) #4
  %52 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dc, align 4
  tail call void @gpiod_set_value(ptr noundef %53, i32 noundef 0) #4
  %inc29 = add nuw nsw i32 %y.062, 1
  %exitcond63.not = icmp eq i32 %inc29, 8
  br i1 %exitcond63.not, label %for.end30, label %for.end15.for.body_crit_edge

for.end15.for.body_crit_edge:                     ; preds = %for.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end30:                                        ; preds = %for.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp31 = icmp slt i32 %call, 0
  br i1 %cmp31, label %do.end, label %for.end30.if.end_crit_edge

for.end30.if.end_crit_edge:                       ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #6
  %54 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %55, i32 0, i32 21
  %56 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.1, i32 noundef %call) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %for.end30.if.end_crit_edge
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
  tail call void (ptr, i32, ...) %1(ptr noundef %par, i32 noundef 1, i32 noundef 176) #4
  %2 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %3(ptr noundef %par, i32 noundef 1, i32 noundef 0) #4
  %4 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %5(ptr noundef %par, i32 noundef 1, i32 noundef 16) #4
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
  tail call void (ptr, i32, ...) %3(ptr noundef %par, i32 noundef 1, i32 noundef 226) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #4
  %14 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %15(ptr noundef %par, i32 noundef 1, i32 noundef 64) #4
  %16 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %17(ptr noundef %par, i32 noundef 1, i32 noundef 161) #4
  %18 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %19(ptr noundef %par, i32 noundef 1, i32 noundef 192) #4
  %20 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %21(ptr noundef %par, i32 noundef 1, i32 noundef 164) #4
  %22 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %23(ptr noundef %par, i32 noundef 1, i32 noundef 166) #4
  %24 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %25(ptr noundef %par, i32 noundef 1, i32 noundef 162) #4
  %26 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %27(ptr noundef %par, i32 noundef 1, i32 noundef 47) #4
  %28 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %29(ptr noundef %par, i32 noundef 1, i32 noundef 39) #4
  %30 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %31(ptr noundef %par, i32 noundef 1, i32 noundef 129) #4
  %32 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %33(ptr noundef %par, i32 noundef 1, i32 noundef 9) #4
  %34 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %35(ptr noundef %par, i32 noundef 1, i32 noundef 227) #4
  %36 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %37(ptr noundef %par, i32 noundef 1, i32 noundef 250) #4
  %38 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %39(ptr noundef %par, i32 noundef 1, i32 noundef 144) #4
  %40 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %41(ptr noundef %par, i32 noundef 1, i32 noundef 175) #4
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !18, !20, !21, !22, !23, !24, !25, !26, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_fb_uc1701__303_163_fbtft_driver_module_init6, !1, !"__initcall__kmod_fb_uc1701__303_163_fbtft_driver_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/fbtft/fb_uc1701.c", i32 163, i32 1}
!2 = !{ptr @__exitcall_fbtft_driver_module_exit, !1, !"__exitcall_fbtft_driver_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias304, !4, !"__UNIQUE_ID_alias304", i1 false, i1 false}
!4 = !{!"../drivers/staging/fbtft/fb_uc1701.c", i32 165, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias305, !6, !"__UNIQUE_ID_alias305", i1 false, i1 false}
!6 = !{!"../drivers/staging/fbtft/fb_uc1701.c", i32 166, i32 1}
!7 = !{ptr @__UNIQUE_ID_description306, !8, !"__UNIQUE_ID_description306", i1 false, i1 false}
!8 = !{!"../drivers/staging/fbtft/fb_uc1701.c", i32 168, i32 1}
!9 = !{ptr @__UNIQUE_ID_author307, !10, !"__UNIQUE_ID_author307", i1 false, i1 false}
!10 = !{!"../drivers/staging/fbtft/fb_uc1701.c", i32 169, i32 1}
!11 = !{ptr @__UNIQUE_ID_file308, !12, !"__UNIQUE_ID_file308", i1 false, i1 false}
!12 = !{!"../drivers/staging/fbtft/fb_uc1701.c", i32 170, i32 1}
!13 = !{ptr @__UNIQUE_ID_license309, !12, !"__UNIQUE_ID_license309", i1 false, i1 false}
!14 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @fbtft_driver_spi_driver, !1, !"fbtft_driver_spi_driver", i1 false, i1 false}
!16 = !{ptr @display, !17, !"display", i1 false, i1 false}
!17 = !{!"../drivers/staging/fbtft/fb_uc1701.c", i32 151, i32 29}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/fbtft/fb_uc1701.c", i32 145, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @write_vmem._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @write_vmem._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
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
