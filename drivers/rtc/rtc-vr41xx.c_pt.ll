; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-vr41xx.c_pt.bc'
source_filename = "../drivers/rtc/rtc-vr41xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author229 = internal constant [54 x i8] c"rtc_vr41xx.author=Yoichi Yuasa <yuasa@linux-mips.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [52 x i8] c"rtc_vr41xx.description=NEC VR4100 series RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [39 x i8] c"rtc_vr41xx.file=drivers/rtc/rtc-vr41xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [26 x i8] c"rtc_vr41xx.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias233 = internal constant [30 x i8] c"rtc_vr41xx.alias=platform:RTC\00", section ".modinfo", align 1
@__initcall__kmod_rtc_vr41xx__234_363_rtc_platform_driver_init6 = internal global ptr @rtc_platform_driver_init, section ".initcall6.init", align 4
@rtc_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @rtc_name, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rtc_platform_driver_exit = internal global ptr @rtc_platform_driver_exit, section ".exitcall.exit", align 4
@rtc_name = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"RTC\00", [28 x i8] zeroinitializer }, align 32
@rtc1_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rtc2_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@vr41xx_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr @vr41xx_rtc_ioctl, ptr @vr41xx_rtc_read_time, ptr @vr41xx_rtc_set_time, ptr @vr41xx_rtc_read_alarm, ptr @vr41xx_rtc_set_alarm, ptr null, ptr @vr41xx_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rtc_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@aie_irq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"elapsed_time\00", [19 x i8] zeroinitializer }, align 32
@pie_irq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rtclong1\00", [23 x i8] zeroinitializer }, align 32
@rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 336, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Real Time Clock of NEC VR4100 series\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtc_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-vr41xx.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtc_probe._entry_ptr = internal global ptr @rtc_probe._entry, section ".printk_index", align 4
@epoch = internal global { i32, [28 x i8] } { i32 1970, [28 x i8] zeroinitializer }, align 32
@alarm_enabled = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rtc_lock\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1074032654, i64 2147774477]
@___asan_gen_.8 = private unnamed_addr constant [20 x i8] c"rtc_platform_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 356, i32 31 }
@___asan_gen_.11 = private unnamed_addr constant [9 x i8] c"rtc_name\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 76, i32 13 }
@___asan_gen_.14 = private unnamed_addr constant [10 x i8] c"rtc1_base\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 61, i32 22 }
@___asan_gen_.17 = private unnamed_addr constant [10 x i8] c"rtc2_base\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 62, i32 22 }
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"vr41xx_rtc_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 249, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant [9 x i8] c"rtc_lock\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [8 x i8] c"aie_irq\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 79, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 316, i32 5 }
@___asan_gen_.32 = private unnamed_addr constant [8 x i8] c"pie_irq\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 80, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 327, i32 5 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 336, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"epoch\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 73, i32 22 }
@___asan_gen_.59 = private unnamed_addr constant [14 x i8] c"alarm_enabled\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 78, i32 21 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [28 x i8] c"../drivers/rtc/rtc-vr41xx.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 75, i32 8 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_alias233, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_rtc_platform_driver_exit, ptr @__initcall__kmod_rtc_vr41xx__234_363_rtc_platform_driver_init6, ptr @rtc_platform_driver_exit, ptr @rtc_probe._entry, ptr @rtc_probe._entry_ptr, ptr @rtc_platform_driver, ptr @rtc_name, ptr @rtc1_base, ptr @rtc2_base, ptr @vr41xx_rtc_ops, ptr @rtc_lock, ptr @aie_irq, ptr @.str, ptr @pie_irq, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @epoch, ptr @alarm_enabled, ptr @.str.7], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc1_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc2_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vr41xx_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aie_irq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pie_irq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epoch to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alarm_enabled to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rtc_platform_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rtc_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @rtc_platform_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_resources = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 6
  %0 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_resources, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %3
  %add.i = add i32 %sub.i, %5
  %call5 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %3, i32 noundef %add.i) #6
  store ptr %call5, ptr @rtc1_base, align 4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %call9 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #6
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.err_rtc1_iounmap_crit_edge, label %if.end12

if.end8.err_rtc1_iounmap_crit_edge:               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_rtc1_iounmap

if.end12:                                         ; preds = %if.end8
  %6 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call9, align 4
  %end.i97 = getelementptr inbounds %struct.resource, ptr %call9, i32 0, i32 1
  %8 = ptrtoint ptr %end.i97 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i97, align 4
  %sub.i98 = sub i32 1, %7
  %add.i99 = add i32 %sub.i98, %9
  %call16 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %7, i32 noundef %add.i99) #6
  store ptr %call16, ptr @rtc2_base, align 4
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end12.err_rtc1_iounmap_crit_edge, label %if.end19

if.end12.err_rtc1_iounmap_crit_edge:              ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_rtc1_iounmap

if.end19:                                         ; preds = %if.end12
  %call21 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #6
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call21 to i32
  br label %err_iounmap_all

if.end25:                                         ; preds = %if.end19
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call21, i32 0, i32 3
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @vr41xx_rtc_ops, ptr %ops, align 8
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %call21, i32 0, i32 23
  %12 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 8589934591, ptr %range_max, align 8
  %max_user_freq = getelementptr inbounds %struct.rtc_device, ptr %call21, i32 0, i32 12
  %13 = ptrtoint ptr %max_user_freq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 6553, ptr %max_user_freq, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @rtc_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %14 = load ptr, ptr @rtc1_base, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #6, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %15 = load ptr, ptr @rtc1_base, align 4
  %add.ptr29 = getelementptr i8, ptr %15, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr29, i16 0) #6, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %16 = load ptr, ptr @rtc1_base, align 4
  %add.ptr33 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr33, i16 0) #6, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %17 = load ptr, ptr @rtc1_base, align 4
  %add.ptr37 = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr37, i16 0) #6, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %18 = load ptr, ptr @rtc1_base, align 4
  %add.ptr41 = getelementptr i8, ptr %18, i32 18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr41, i16 0) #6, !srcloc !58
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @rtc_lock) #6
  %call42 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  store i32 %call42, ptr @aie_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 1
  br i1 %cmp43, label %if.end25.err_iounmap_all_crit_edge, label %if.end45

if.end25.err_iounmap_all_crit_edge:               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_iounmap_all

if.end45:                                         ; preds = %if.end25
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call42, ptr noundef nonnull @elapsedtime_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp48 = icmp slt i32 %call.i, 0
  br i1 %cmp48, label %if.end45.err_iounmap_all_crit_edge, label %if.end50

if.end45.err_iounmap_all_crit_edge:               ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_iounmap_all

if.end50:                                         ; preds = %if.end45
  %call51 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #6
  store i32 %call51, ptr @pie_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 1
  br i1 %cmp52, label %if.end50.err_iounmap_all_crit_edge, label %if.end54

if.end50.err_iounmap_all_crit_edge:               ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_iounmap_all

if.end54:                                         ; preds = %if.end50
  %call.i100 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call51, ptr noundef nonnull @rtclong1_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %cmp57 = icmp slt i32 %call.i100, 0
  br i1 %cmp57, label %if.end54.err_iounmap_all_crit_edge, label %if.end59

if.end54.err_iounmap_all_crit_edge:               ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_iounmap_all

if.end59:                                         ; preds = %if.end54
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call21, ptr %driver_data.i.i, align 4
  %20 = load i32, ptr @aie_irq, align 4
  tail call void @disable_irq(i32 noundef %20) #6
  %21 = load i32, ptr @pie_irq, align 4
  tail call void @disable_irq(i32 noundef %21) #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %call64 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %call21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end59.cleanup_crit_edge, label %if.end59.err_iounmap_all_crit_edge

if.end59.err_iounmap_all_crit_edge:               ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_iounmap_all

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_iounmap_all:                                  ; preds = %if.end59.err_iounmap_all_crit_edge, %if.end54.err_iounmap_all_crit_edge, %if.end50.err_iounmap_all_crit_edge, %if.end45.err_iounmap_all_crit_edge, %if.end25.err_iounmap_all_crit_edge, %if.then23
  %retval1.0 = phi i32 [ %10, %if.then23 ], [ %call.i, %if.end45.err_iounmap_all_crit_edge ], [ %call.i100, %if.end54.err_iounmap_all_crit_edge ], [ %call64, %if.end59.err_iounmap_all_crit_edge ], [ -16, %if.end25.err_iounmap_all_crit_edge ], [ -16, %if.end50.err_iounmap_all_crit_edge ]
  store ptr null, ptr @rtc2_base, align 4
  br label %err_rtc1_iounmap

err_rtc1_iounmap:                                 ; preds = %err_iounmap_all, %if.end12.err_rtc1_iounmap_crit_edge, %if.end8.err_rtc1_iounmap_crit_edge
  %retval1.1 = phi i32 [ %retval1.0, %err_iounmap_all ], [ -16, %if.end8.err_rtc1_iounmap_crit_edge ], [ -16, %if.end12.err_rtc1_iounmap_crit_edge ]
  store ptr null, ptr @rtc1_base, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_rtc1_iounmap, %if.end59.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.1, %err_rtc1_iounmap ], [ -16, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -16, %if.end3.cleanup_crit_edge ], [ 0, %if.end59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elapsedtime_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev_id, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %2 = load ptr, ptr @rtc2_base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 30
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 256) #6, !srcloc !58
  tail call void @rtc_update_irq(ptr noundef %1, i32 noundef 1, i32 noundef 32) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtclong1_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev_id, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %2 = load ptr, ptr @rtc2_base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 30
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 512) #6, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %3 = load ptr, ptr @rtc1_base, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4, i16 0) #6, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %4 = load ptr, ptr @rtc1_base, align 4
  %add.ptr9 = getelementptr i8, ptr %4, i32 18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9, i16 0) #6, !srcloc !58
  tail call void @rtc_update_irq(ptr noundef %1, i32 noundef 1, i32 noundef 64) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vr41xx_rtc_ioctl(ptr nocapture noundef readnone %dev, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.return_crit_edge [
    i32 -2147192819, label %sw.bb
    i32 1074032654, label %sw.bb2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = inttoptr i32 %arg to ptr
  %2 = load i32, ptr @epoch, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 185) #6
  %3 = tail call i32 @llvm.read_register.i32(metadata !47) #6
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !67
  %and.i = and i32 %5, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  %6 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %1, i32 %2, i32 -1226833921) #6, !srcloc !70
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1900, i32 %arg)
  %cmp = icmp ult i32 %arg, 1900
  br i1 %cmp, label %sw.bb2.return_crit_edge, label %if.end

sw.bb2.return_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  store i32 %arg, ptr @epoch, align 4
  br label %return

return:                                           ; preds = %if.end, %sw.bb2.return_crit_edge, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %6, %sw.bb ], [ -22, %sw.bb2.return_crit_edge ], [ -515, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vr41xx_rtc_read_time(ptr nocapture noundef readnone %dev, ptr noundef %time) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @epoch, align 4
  %call = tail call i64 @mktime64(i32 noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %1 = load ptr, ptr @rtc1_base, align 4
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %3 = load ptr, ptr @rtc1_base, align 4
  %add.ptr4.i = getelementptr i8, ptr %3, i32 2
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4.i) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  %5 = load ptr, ptr @rtc1_base, align 4
  %add.ptr11.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11.i) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  %7 = load ptr, ptr @rtc1_base, align 4
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %7) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %9 = load ptr, ptr @rtc1_base, align 4
  %add.ptr25.i = getelementptr i8, ptr %9, i32 2
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr25.i) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  %11 = load ptr, ptr @rtc1_base, align 4
  %add.ptr32.i = getelementptr i8, ptr %11, i32 4
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr32.i) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %8)
  %cmp.not.i = icmp eq i16 %2, %8
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %10)
  %cmp38.not.i = icmp eq i16 %4, %10
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp38.not.i, i1 false
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %12)
  %cmp40.not.i = icmp eq i16 %6, %12
  %or.cond51.i = select i1 %or.cond.i, i1 %cmp40.not.i, i1 false
  br i1 %or.cond51.i, label %read_elapsed_second.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

read_elapsed_second.exit:                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = tail call i16 @llvm.bswap.i16(i16 %6) #6
  %14 = tail call i16 @llvm.bswap.i16(i16 %4) #6
  %conv8.i = zext i16 %14 to i32
  %conv42.i = zext i16 %13 to i64
  %shl.i = shl nuw nsw i64 %conv42.i, 17
  %shl43.i = shl nuw nsw i32 %conv8.i, 1
  %conv44.i = zext i32 %shl43.i to i64
  %15 = lshr i16 %2, 7
  %16 = and i16 %15, 1
  %conv45.i = zext i16 %16 to i64
  %or46.i = add i64 %call, %conv45.i
  %or.i = add i64 %or46.i, %conv44.i
  %add = add i64 %or.i, %shl.i
  tail call void @rtc_time64_to_tm(i64 noundef %add, ptr noundef %time) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vr41xx_rtc_set_time(ptr nocapture noundef readnone %dev, ptr noundef %time) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @epoch, align 4
  %call = tail call i64 @mktime64(i32 noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %call1 = tail call i64 @rtc_tm_to_time64(ptr noundef %time) #6
  %sub = sub i64 %call1, %call
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @rtc_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %sec.tr.i = trunc i64 %sub to i16
  %1 = shl i16 %sec.tr.i, 7
  %2 = and i16 %1, 128
  %3 = load ptr, ptr @rtc1_base, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %3, i16 %2) #6, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %4 = lshr i64 %sub, 1
  %conv3.i = trunc i64 %4 to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #6
  %6 = load ptr, ptr @rtc1_base, align 4
  %add.ptr4.i = getelementptr i8, ptr %6, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i, i16 %5) #6, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %7 = lshr i64 %sub, 17
  %conv8.i = trunc i64 %7 to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #6
  %9 = load ptr, ptr @rtc1_base, align 4
  %add.ptr9.i = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i, i16 %8) #6, !srcloc !58
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @rtc_lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vr41xx_rtc_read_alarm(ptr nocapture noundef readnone %dev, ptr noundef %wkalrm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %time1 = getelementptr inbounds %struct.rtc_wkalrm, ptr %wkalrm, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @rtc_lock) #6
  %0 = load ptr, ptr @rtc1_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 8
  %1 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %2 = load ptr, ptr @rtc1_base, align 4
  %add.ptr5 = getelementptr i8, ptr %2, i32 10
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr5) #6, !srcloc !71
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %conv9 = zext i16 %4 to i32
  %5 = load ptr, ptr @rtc1_base, align 4
  %add.ptr12 = getelementptr i8, ptr %5, i32 12
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr12) #6, !srcloc !71
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %conv16 = zext i16 %7 to i32
  %8 = load i32, ptr @alarm_enabled, align 4
  %conv17 = trunc i32 %8 to i8
  %9 = ptrtoint ptr %wkalrm to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv17, ptr %wkalrm, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @rtc_lock) #6
  %shl = shl i32 %conv16, 17
  %shl18 = shl nuw nsw i32 %conv9, 1
  %or = or i32 %shl, %shl18
  %10 = lshr i16 %1, 7
  %11 = and i16 %10, 1
  %shr = zext i16 %11 to i32
  %or19 = or i32 %or, %shr
  %conv20 = zext i32 %or19 to i64
  tail call void @rtc_time64_to_tm(i64 noundef %conv20, ptr noundef %time1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vr41xx_rtc_set_alarm(ptr nocapture noundef readnone %dev, ptr noundef %wkalrm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %wkalrm, i32 0, i32 2
  %call = tail call i64 @rtc_tm_to_time64(ptr noundef %time) #6
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @rtc_lock) #6
  %0 = load i32, ptr @alarm_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = load i32, ptr @aie_irq, align 4
  tail call void @disable_irq(i32 noundef %1) #6
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %call.tr = trunc i64 %call to i16
  %2 = shl i16 %call.tr, 7
  %3 = and i16 %2, 128
  %4 = load ptr, ptr @rtc1_base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %3) #6, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %5 = lshr i64 %call, 1
  %conv4 = trunc i64 %5 to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv4)
  %7 = load ptr, ptr @rtc1_base, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5, i16 %6) #6, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %8 = lshr i64 %call, 17
  %conv10 = trunc i64 %8 to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv10)
  %10 = load ptr, ptr @rtc1_base, align 4
  %add.ptr11 = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11, i16 %9) #6, !srcloc !58
  %11 = ptrtoint ptr %wkalrm to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %wkalrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool12.not = icmp eq i8 %12, 0
  br i1 %tobool12.not, label %do.body.if.end14_crit_edge, label %if.then13

do.body.if.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %13 = load i32, ptr @aie_irq, align 4
  tail call void @enable_irq(i32 noundef %13) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %do.body.if.end14_crit_edge
  %14 = ptrtoint ptr %wkalrm to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %wkalrm, align 4
  %conv16 = zext i8 %15 to i32
  store i32 %conv16, ptr @alarm_enabled, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @rtc_lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vr41xx_rtc_alarm_irq_enable(ptr nocapture noundef readnone %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @rtc_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %0 = load i32, ptr @alarm_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool3.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool3.not, label %if.then2, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %1 = load i32, ptr @aie_irq, align 4
  tail call void @enable_irq(i32 noundef %1) #6
  br label %if.end6.sink.split

if.else:                                          ; preds = %entry
  br i1 %tobool3.not, label %if.else.if.end6_crit_edge, label %if.then4

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %2 = load i32, ptr @aie_irq, align 4
  tail call void @disable_irq(i32 noundef %2) #6
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %if.then4, %if.then2
  %.sink = phi i32 [ 0, %if.then4 ], [ 1, %if.then2 ]
  store i32 %.sink, ptr @alarm_enabled, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %if.else.if.end6_crit_edge, %if.then.if.end6_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @rtc_lock) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mktime64(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36, !38, !39, !41, !43, !45}
!llvm.named.register.sp = !{!47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__UNIQUE_ID_author229, !1, !"__UNIQUE_ID_author229", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-vr41xx.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_description230, !3, !"__UNIQUE_ID_description230", i1 false, i1 false}
!3 = !{!"../drivers/rtc/rtc-vr41xx.c", i32 25, i32 1}
!4 = !{ptr @__UNIQUE_ID_file231, !5, !"__UNIQUE_ID_file231", i1 false, i1 false}
!5 = !{!"../drivers/rtc/rtc-vr41xx.c", i32 26, i32 1}
!6 = !{ptr @__UNIQUE_ID_license232, !5, !"__UNIQUE_ID_license232", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias233, !8, !"__UNIQUE_ID_alias233", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-vr41xx.c", i32 354, i32 1}
!9 = !{ptr @__initcall__kmod_rtc_vr41xx__234_363_rtc_platform_driver_init6, !10, !"__initcall__kmod_rtc_vr41xx__234_363_rtc_platform_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/rtc/rtc-vr41xx.c", i32 363, i32 1}
!11 = !{ptr @__exitcall_rtc_platform_driver_exit, !10, !"__exitcall_rtc_platform_driver_exit", i1 false, i1 false}
!12 = !{ptr @rtc_platform_driver, !13, !"rtc_platform_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-vr41xx.c", i32 356, i32 31}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-vr41xx.c", i32 316, i32 5}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-vr41xx.c", i32 327, i32 5}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/rtc/rtc-vr41xx.c", i32 336, i32 2}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rtc_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @rtc_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @rtc1_base, !27, !"rtc1_base", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-vr41xx.c", i32 61, i32 22}
!28 = !{ptr @rtc2_base, !29, !"rtc2_base", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-vr41xx.c", i32 62, i32 22}
!30 = !{ptr @vr41xx_rtc_ops, !31, !"vr41xx_rtc_ops", i1 false, i1 false}
!31 = !{!"../drivers/rtc/rtc-vr41xx.c", i32 249, i32 35}
!32 = !{ptr @epoch, !33, !"epoch", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-vr41xx.c", i32 73, i32 22}
!34 = !{ptr @alarm_enabled, !35, !"alarm_enabled", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-vr41xx.c", i32 78, i32 21}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-vr41xx.c", i32 75, i32 8}
!38 = !{ptr @rtc_lock, !37, !"rtc_lock", i1 false, i1 false}
!39 = !{ptr @aie_irq, !40, !"aie_irq", i1 false, i1 false}
!40 = !{!"../drivers/rtc/rtc-vr41xx.c", i32 79, i32 12}
!41 = !{ptr @pie_irq, !42, !"pie_irq", i1 false, i1 false}
!42 = !{!"../drivers/rtc/rtc-vr41xx.c", i32 80, i32 12}
!43 = distinct !{null, !44, !"periodic_count", i1 false, i1 false}
!44 = !{!"../drivers/rtc/rtc-vr41xx.c", i32 77, i32 22}
!45 = !{ptr @rtc_name, !46, !"rtc_name", i1 false, i1 false}
!46 = !{!"../drivers/rtc/rtc-vr41xx.c", i32 76, i32 13}
!47 = !{!"sp"}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2153930849}
!58 = !{i64 5174658}
!59 = !{i64 2153931302}
!60 = !{i64 2153931755}
!61 = !{i64 2153932208}
!62 = !{i64 2153932661}
!63 = !{i64 2153928886}
!64 = !{i64 2153929364}
!65 = !{i64 2153929834}
!66 = !{i64 2153930319}
!67 = !{i64 4765125}
!68 = !{i64 4765322}
!69 = !{i64 2152250555}
!70 = !{i64 2153924896, i64 2153925176, i64 2153925510, i64 2153925844}
!71 = !{i64 5174858}
!72 = !{i64 2153910245}
!73 = !{i64 2153910781}
!74 = !{i64 2153911317}
!75 = !{i64 2153911853}
!76 = !{i64 2153912389}
!77 = !{i64 2153912925}
!78 = !{i64 2153913403}
!79 = !{i64 2153913954}
!80 = !{i64 2153914504}
!81 = !{i64 2153915284}
!82 = !{i64 2153915820}
!83 = !{i64 2153916356}
!84 = !{i64 2153916677}
!85 = !{i64 2153917258}
!86 = !{i64 2153917838}
