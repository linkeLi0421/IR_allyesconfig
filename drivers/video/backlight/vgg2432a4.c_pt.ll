; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/vgg2432a4.c_pt.bc'
source_filename = "../drivers/video/backlight/vgg2432a4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ili9320_client = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ili9320_reg = type { i16, i16 }
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
%struct.ili9320_platdata = type { i16, i16, i32, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.ili9320 = type { %union.anon.84, ptr, ptr, ptr, ptr, i32, i32, i16, i16, ptr }
%union.anon.84 = type { %struct.ili9320_spi }
%struct.ili9320_spi = type { ptr, %struct.spi_message, [2 x %struct.spi_transfer], i8, [4 x i8], [4 x i8] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_vgg2432a4__303_260_vgg2432a4_driver_init6 = internal global ptr @vgg2432a4_driver_init, section ".initcall6.init", align 4
@vgg2432a4_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @vgg2432a4_probe, ptr @vgg2432a4_remove, ptr @vgg2432a4_shutdown, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vgg2432a4_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_vgg2432a4_driver_exit = internal global ptr @vgg2432a4_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author304 = internal constant [49 x i8] c"vgg2432a4.author=Ben Dooks <ben-linux@fluff.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [43 x i8] c"vgg2432a4.description=VGG2432A4 LCD Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [49 x i8] c"vgg2432a4.file=drivers/video/backlight/vgg2432a4\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [25 x i8] c"vgg2432a4.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias308 = internal constant [30 x i8] c"vgg2432a4.alias=spi:VGG2432A4\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VGG2432A4\00", [22 x i8] zeroinitializer }, align 32
@vgg2432a4_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @vgg2432a4_suspend, ptr @vgg2432a4_resume, ptr @vgg2432a4_suspend, ptr @vgg2432a4_resume, ptr @vgg2432a4_suspend, ptr @vgg2432a4_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@vgg2432a4_client = internal global { %struct.ili9320_client, [24 x i8] } { %struct.ili9320_client { ptr @.str, ptr @vgg2432a4_lcd_init }, [24 x i8] zeroinitializer }, align 32
@vgg2432a4_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 229, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to initialise ili9320\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vgg2432a4_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/video/backlight/vgg2432a4.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vgg2432a4_probe._entry_ptr = internal global ptr @vgg2432a4_probe._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@vgg_init0 = internal constant { [4 x %struct.ili9320_reg], [16 x i8] } { [4 x %struct.ili9320_reg] [%struct.ili9320_reg { i16 1, i16 256 }, %struct.ili9320_reg { i16 2, i16 1792 }, %struct.ili9320_reg { i16 3, i16 4144 }, %struct.ili9320_reg { i16 4, i16 0 }], [16 x i8] zeroinitializer }, align 32
@vgg_init1 = internal constant { [4 x %struct.ili9320_reg], [16 x i8] } { [4 x %struct.ili9320_reg] [%struct.ili9320_reg { i16 16, i16 0 }, %struct.ili9320_reg { i16 17, i16 7 }, %struct.ili9320_reg { i16 18, i16 0 }, %struct.ili9320_reg { i16 19, i16 0 }], [16 x i8] zeroinitializer }, align 32
@vgg_init2 = internal constant { [2 x %struct.ili9320_reg], [24 x i8] } { [2 x %struct.ili9320_reg] [%struct.ili9320_reg { i16 16, i16 6064 }, %struct.ili9320_reg { i16 17, i16 55 }], [24 x i8] zeroinitializer }, align 32
@vgg_gamma = internal constant { [10 x %struct.ili9320_reg], [56 x i8] } { [10 x %struct.ili9320_reg] [%struct.ili9320_reg { i16 48, i16 0 }, %struct.ili9320_reg { i16 49, i16 1285 }, %struct.ili9320_reg { i16 50, i16 4 }, %struct.ili9320_reg { i16 53, i16 6 }, %struct.ili9320_reg { i16 54, i16 1799 }, %struct.ili9320_reg { i16 55, i16 261 }, %struct.ili9320_reg { i16 56, i16 2 }, %struct.ili9320_reg { i16 57, i16 1799 }, %struct.ili9320_reg { i16 60, i16 1796 }, %struct.ili9320_reg { i16 61, i16 2055 }], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"vgg2432a4_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 250, i32 26 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 252, i32 12 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"vgg2432a4_pm_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 248, i32 8 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"vgg2432a4_client\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 216, i32 30 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 229, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [10 x i8] c"vgg_init0\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 89, i32 33 }
@___asan_gen_.39 = private unnamed_addr constant [10 x i8] c"vgg_init1\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 26, i32 33 }
@___asan_gen_.42 = private unnamed_addr constant [10 x i8] c"vgg_init2\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 43, i32 33 }
@___asan_gen_.45 = private unnamed_addr constant [10 x i8] c"vgg_gamma\00", align 1
@___asan_gen_.46 = private constant [39 x i8] c"../drivers/video/backlight/vgg2432a4.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 54, i32 33 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_alias308, ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_vgg2432a4_driver_exit, ptr @__initcall__kmod_vgg2432a4__303_260_vgg2432a4_driver_init6, ptr @vgg2432a4_driver_exit, ptr @vgg2432a4_probe._entry, ptr @vgg2432a4_probe._entry_ptr, ptr @vgg2432a4_driver, ptr @.str, ptr @vgg2432a4_pm_ops, ptr @vgg2432a4_client, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @vgg_init0, ptr @vgg_init1, ptr @vgg_init2, ptr @vgg_gamma], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgg2432a4_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgg2432a4_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgg2432a4_client to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgg2432a4_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgg_init0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgg_init1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgg_init2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgg_gamma to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vgg2432a4_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @vgg2432a4_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vgg2432a4_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @vgg2432a4_driver, i32 0, i32 4)) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vgg2432a4_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ili9320_probe_spi(ptr noundef %spi, ptr noundef nonnull @vgg2432a4_client) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vgg2432a4_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @ili9320_remove(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vgg2432a4_shutdown(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @ili9320_shutdown(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ili9320_probe_spi(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vgg2432a4_lcd_init(ptr noundef %lcd, ptr nocapture noundef readonly %cfg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 229, i32 noundef 32768) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 0, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %while.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.preheader:                             ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #4
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #4
  %call6 = tail call i32 @ili9320_write_regs(ptr noundef %lcd, ptr noundef nonnull @vgg_init0, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %if.end8, label %while.body.preheader.cleanup_crit_edge

while.body.preheader.cleanup_crit_edge:           ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %while.body.preheader
  %display2 = getelementptr inbounds %struct.ili9320_platdata, ptr %cfg, i32 0, i32 5
  %15 = ptrtoint ptr %display2 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %display2, align 2
  %conv = zext i16 %16 to i32
  %call9 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 8, i32 noundef %conv) #4
  %display3 = getelementptr inbounds %struct.ili9320_platdata, ptr %cfg, i32 0, i32 6
  %17 = ptrtoint ptr %display3 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %display3, align 4
  %conv10 = zext i16 %18 to i32
  %call11 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 9, i32 noundef %conv10) #4
  %display4 = getelementptr inbounds %struct.ili9320_platdata, ptr %cfg, i32 0, i32 7
  %19 = ptrtoint ptr %display4 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %display4, align 2
  %conv12 = zext i16 %20 to i32
  %call13 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 10, i32 noundef %conv12) #4
  %rgb_if1 = getelementptr inbounds %struct.ili9320_platdata, ptr %cfg, i32 0, i32 8
  %21 = ptrtoint ptr %rgb_if1 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %rgb_if1, align 4
  %conv14 = zext i16 %22 to i32
  %call15 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 12, i32 noundef %conv14) #4
  %call16 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 13, i32 noundef 0) #4
  %rgb_if2 = getelementptr inbounds %struct.ili9320_platdata, ptr %cfg, i32 0, i32 9
  %23 = ptrtoint ptr %rgb_if2 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %rgb_if2, align 2
  %conv17 = zext i16 %24 to i32
  %call18 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 15, i32 noundef %conv17) #4
  %call19 = tail call i32 @ili9320_write_regs(ptr noundef %lcd, ptr noundef nonnull @vgg_init1, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20.not = icmp eq i32 %call19, 0
  br i1 %cmp20.not, label %if.end8.while.body28_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8.while.body28_crit_edge:                   ; preds = %if.end8
  br label %while.body28

while.body28:                                     ; preds = %while.body28.while.body28_crit_edge, %if.end8.while.body28_crit_edge
  %__ms24.0148 = phi i32 [ %dec26, %while.body28.while.body28_crit_edge ], [ 300, %if.end8.while.body28_crit_edge ]
  %dec26 = add nsw i32 %__ms24.0148, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #4
  %tobool27.not = icmp eq i32 %dec26, 0
  br i1 %tobool27.not, label %while.end29, label %while.body28.while.body28_crit_edge

while.body28.while.body28_crit_edge:              ; preds = %while.body28
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body28

while.end29:                                      ; preds = %while.body28
  %call30 = tail call i32 @ili9320_write_regs(ptr noundef %lcd, ptr noundef nonnull @vgg_init2, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31.not = icmp eq i32 %call30, 0
  br i1 %cmp31.not, label %while.end29.while.body39_crit_edge, label %while.end29.cleanup_crit_edge

while.end29.cleanup_crit_edge:                    ; preds = %while.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.end29.while.body39_crit_edge:               ; preds = %while.end29
  br label %while.body39

while.body39:                                     ; preds = %while.body39.while.body39_crit_edge, %while.end29.while.body39_crit_edge
  %__ms35.0149 = phi i32 [ %dec37, %while.body39.while.body39_crit_edge ], [ 100, %while.end29.while.body39_crit_edge ]
  %dec37 = add nsw i32 %__ms35.0149, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #4
  %tobool38.not = icmp eq i32 %dec37, 0
  br i1 %tobool38.not, label %while.end40, label %while.body39.while.body39_crit_edge

while.body39.while.body39_crit_edge:              ; preds = %while.body39
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body39

while.end40:                                      ; preds = %while.body39
  %call41 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 18, i32 noundef 316) #4
  br label %while.body46

while.body46:                                     ; preds = %while.body46.while.body46_crit_edge, %while.end40
  %__ms42.0150 = phi i32 [ 100, %while.end40 ], [ %dec44, %while.body46.while.body46_crit_edge ]
  %dec44 = add nsw i32 %__ms42.0150, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #4
  %tobool45.not = icmp eq i32 %dec44, 0
  br i1 %tobool45.not, label %while.end47, label %while.body46.while.body46_crit_edge

while.body46.while.body46_crit_edge:              ; preds = %while.body46
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body46

while.end47:                                      ; preds = %while.body46
  %call48 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 19, i32 noundef 7168) #4
  %call49 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 41, i32 noundef 14) #4
  br label %while.body54

while.body54:                                     ; preds = %while.body54.while.body54_crit_edge, %while.end47
  %__ms50.0151 = phi i32 [ 100, %while.end47 ], [ %dec52, %while.body54.while.body54_crit_edge ]
  %dec52 = add nsw i32 %__ms50.0151, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #4
  %tobool53.not = icmp eq i32 %dec52, 0
  br i1 %tobool53.not, label %while.end55, label %while.body54.while.body54_crit_edge

while.body54.while.body54_crit_edge:              ; preds = %while.body54
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body54

while.end55:                                      ; preds = %while.body54
  %call56 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 32, i32 noundef 0) #4
  %call57 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 33, i32 noundef 0) #4
  %call58 = tail call i32 @ili9320_write_regs(ptr noundef %lcd, ptr noundef nonnull @vgg_gamma, i32 noundef 10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59.not = icmp eq i32 %call58, 0
  br i1 %cmp59.not, label %if.end62, label %while.end55.cleanup_crit_edge

while.end55.cleanup_crit_edge:                    ; preds = %while.end55
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end62:                                         ; preds = %while.end55
  call void @__sanitizer_cov_trace_pc() #6
  %call63 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 80, i32 noundef 0) #4
  %29 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %cfg, align 4
  %conv64 = zext i16 %30 to i32
  %sub = add nsw i32 %conv64, -1
  %call65 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 81, i32 noundef %sub) #4
  %call66 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 82, i32 noundef 0) #4
  %vsize = getelementptr inbounds %struct.ili9320_platdata, ptr %cfg, i32 0, i32 1
  %31 = ptrtoint ptr %vsize to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vsize, align 2
  %conv67 = zext i16 %32 to i32
  %sub68 = add nsw i32 %conv67, -1
  %call69 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 83, i32 noundef %sub68) #4
  %33 = ptrtoint ptr %vsize to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vsize, align 2
  %conv71 = zext i16 %34 to i32
  %sub72 = add nsw i32 %conv71, -240
  %div = sdiv i32 %sub72, 8
  %add = shl nsw i32 %div, 8
  %shl = add nsw i32 %add, 7424
  %call73 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 96, i32 noundef %shl) #4
  %call74 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 97, i32 noundef 1) #4
  %call75 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 106, i32 noundef 0) #4
  %call78 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 128, i32 noundef 0) #4
  %call78.1 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 129, i32 noundef 0) #4
  %call78.2 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 130, i32 noundef 0) #4
  %call78.3 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 131, i32 noundef 0) #4
  %call78.4 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 132, i32 noundef 0) #4
  %call78.5 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 133, i32 noundef 0) #4
  %call79 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 144, i32 noundef 16) #4
  %interface2 = getelementptr inbounds %struct.ili9320_platdata, ptr %cfg, i32 0, i32 10
  %35 = ptrtoint ptr %interface2 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %interface2, align 4
  %conv80 = zext i16 %36 to i32
  %call81 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 146, i32 noundef %conv80) #4
  %interface3 = getelementptr inbounds %struct.ili9320_platdata, ptr %cfg, i32 0, i32 11
  %37 = ptrtoint ptr %interface3 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %interface3, align 2
  %conv82 = zext i16 %38 to i32
  %call83 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 147, i32 noundef %conv82) #4
  %interface4 = getelementptr inbounds %struct.ili9320_platdata, ptr %cfg, i32 0, i32 12
  %39 = ptrtoint ptr %interface4 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %interface4, align 4
  %conv84 = zext i16 %40 to i32
  %call85 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 149, i32 noundef %conv84) #4
  %interface5 = getelementptr inbounds %struct.ili9320_platdata, ptr %cfg, i32 0, i32 13
  %41 = ptrtoint ptr %interface5 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %interface5, align 2
  %conv86 = zext i16 %42 to i32
  %call87 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 151, i32 noundef %conv86) #4
  %interface6 = getelementptr inbounds %struct.ili9320_platdata, ptr %cfg, i32 0, i32 14
  %43 = ptrtoint ptr %interface6 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %interface6, align 4
  %conv88 = zext i16 %44 to i32
  %call89 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 152, i32 noundef %conv88) #4
  %display1 = getelementptr inbounds %struct.ili9320, ptr %lcd, i32 0, i32 7
  %45 = ptrtoint ptr %display1 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 371, ptr %display1, align 4
  %call92 = tail call i32 @ili9320_write(ptr noundef %lcd, i32 noundef 7, i32 noundef 371) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %while.end55.cleanup_crit_edge, %while.end29.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %while.body.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end62 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call6, %while.body.preheader.cleanup_crit_edge ], [ %call19, %if.end8.cleanup_crit_edge ], [ %call30, %while.end29.cleanup_crit_edge ], [ %call58, %while.end55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ili9320_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ili9320_write_regs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ili9320_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ili9320_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vgg2432a4_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @ili9320_suspend(ptr noundef %1) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vgg2432a4_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @ili9320_resume(ptr noundef %1) #4
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ili9320_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ili9320_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__initcall__kmod_vgg2432a4__303_260_vgg2432a4_driver_init6, !1, !"__initcall__kmod_vgg2432a4__303_260_vgg2432a4_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/vgg2432a4.c", i32 260, i32 1}
!2 = !{ptr @__exitcall_vgg2432a4_driver_exit, !1, !"__exitcall_vgg2432a4_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author304, !4, !"__UNIQUE_ID_author304", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/vgg2432a4.c", i32 262, i32 1}
!5 = !{ptr @__UNIQUE_ID_description305, !6, !"__UNIQUE_ID_description305", i1 false, i1 false}
!6 = !{!"../drivers/video/backlight/vgg2432a4.c", i32 263, i32 1}
!7 = !{ptr @__UNIQUE_ID_file306, !8, !"__UNIQUE_ID_file306", i1 false, i1 false}
!8 = !{!"../drivers/video/backlight/vgg2432a4.c", i32 264, i32 1}
!9 = !{ptr @__UNIQUE_ID_license307, !8, !"__UNIQUE_ID_license307", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias308, !11, !"__UNIQUE_ID_alias308", i1 false, i1 false}
!11 = !{!"../drivers/video/backlight/vgg2432a4.c", i32 265, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/vgg2432a4.c", i32 252, i32 12}
!14 = !{ptr @vgg2432a4_driver, !15, !"vgg2432a4_driver", i1 false, i1 false}
!15 = !{!"../drivers/video/backlight/vgg2432a4.c", i32 250, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/video/backlight/vgg2432a4.c", i32 229, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @vgg2432a4_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @vgg2432a4_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @vgg2432a4_client, !25, !"vgg2432a4_client", i1 false, i1 false}
!25 = !{!"../drivers/video/backlight/vgg2432a4.c", i32 216, i32 30}
!26 = !{ptr @vgg_init0, !27, !"vgg_init0", i1 false, i1 false}
!27 = !{!"../drivers/video/backlight/vgg2432a4.c", i32 89, i32 33}
!28 = !{ptr @vgg_init1, !29, !"vgg_init1", i1 false, i1 false}
!29 = !{!"../drivers/video/backlight/vgg2432a4.c", i32 26, i32 33}
!30 = !{ptr @vgg_init2, !31, !"vgg_init2", i1 false, i1 false}
!31 = !{!"../drivers/video/backlight/vgg2432a4.c", i32 43, i32 33}
!32 = !{ptr @vgg_gamma, !33, !"vgg_gamma", i1 false, i1 false}
!33 = !{!"../drivers/video/backlight/vgg2432a4.c", i32 54, i32 33}
!34 = !{ptr @vgg2432a4_pm_ops, !35, !"vgg2432a4_pm_ops", i1 false, i1 false}
!35 = !{!"../drivers/video/backlight/vgg2432a4.c", i32 248, i32 8}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
