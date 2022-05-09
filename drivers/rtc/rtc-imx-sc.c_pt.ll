; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-imx-sc.c_pt.bc'
source_filename = "../drivers/rtc/rtc-imx-sc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.imx_sc_msg_timer_get_rtc_time = type { %struct.imx_sc_rpc_msg, i32 }
%struct.imx_sc_rpc_msg = type { i8, i8, i8, i8 }
%struct.arm_smccc_res = type { i32, i32, i32, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.imx_sc_msg_timer_rtc_set_alarm = type { %struct.imx_sc_rpc_msg, i16, i8, i8, i8, i8, i8 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_imx_sc__227_180_imx_sc_rtc_driver_init6 = internal global ptr @imx_sc_rtc_driver_init, section ".initcall6.init", align 4
@imx_sc_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_sc_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_sc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx_sc_rtc_driver_exit = internal global ptr @imx_sc_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [52 x i8] c"rtc_imx_sc.author=Anson Huang <Anson.Huang@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [61 x i8] c"rtc_imx_sc.description=NXP i.MX System Controller RTC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [39 x i8] c"rtc_imx_sc.file=drivers/rtc/rtc-imx-sc\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [23 x i8] c"rtc_imx_sc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imx-sc-rtc\00", [21 x i8] zeroinitializer }, align 32
@imx_sc_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qxp-sc-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rtc_ipc_handle = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@imx_sc_rtc = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@imx_sc_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @imx_sc_rtc_read_time, ptr @imx_sc_rtc_set_time, ptr null, ptr @imx_sc_rtc_set_alarm, ptr null, ptr @imx_sc_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@imx_sc_rtc_alarm_sc_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @imx_sc_rtc_alarm_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@imx_sc_rtc_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 55, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"read rtc time failed, ret %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imx_sc_rtc_read_time\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-imx-sc.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_sc_rtc_read_time._entry_ptr = internal global ptr @imx_sc_rtc_read_time._entry, section ".printk_index", align 4
@imx_sc_rtc_set_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 104, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"set rtc alarm failed, ret %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imx_sc_rtc_set_alarm\00", [43 x i8] zeroinitializer }, align 32
@imx_sc_rtc_set_alarm._entry_ptr = internal global ptr @imx_sc_rtc_set_alarm._entry, section ".printk_index", align 4
@imx_sc_rtc_set_alarm._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 110, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"enable rtc alarm failed, ret %d\0A\00", [63 x i8] zeroinitializer }, align 32
@imx_sc_rtc_set_alarm._entry_ptr.10 = internal global ptr @imx_sc_rtc_set_alarm._entry.8, section ".printk_index", align 4
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"imx_sc_rtc_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 173, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 175, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"imx_sc_dt_ids\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 167, i32 34 }
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"rtc_ipc_handle\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 24, i32 27 }
@___asan_gen_.23 = private unnamed_addr constant [11 x i8] c"imx_sc_rtc\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 25, i32 27 }
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"imx_sc_rtc_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 117, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant [29 x i8] c"imx_sc_rtc_alarm_sc_notifier\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 136, i32 30 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 55, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 104, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [28 x i8] c"../drivers/rtc/rtc-imx-sc.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 110, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_imx_sc_rtc_driver_exit, ptr @__initcall__kmod_rtc_imx_sc__227_180_imx_sc_rtc_driver_init6, ptr @imx_sc_rtc_driver_exit, ptr @imx_sc_rtc_read_time._entry, ptr @imx_sc_rtc_read_time._entry_ptr, ptr @imx_sc_rtc_set_alarm._entry, ptr @imx_sc_rtc_set_alarm._entry.8, ptr @imx_sc_rtc_set_alarm._entry_ptr, ptr @imx_sc_rtc_set_alarm._entry_ptr.10, ptr @imx_sc_rtc_driver, ptr @.str, ptr @imx_sc_dt_ids, ptr @rtc_ipc_handle, ptr @imx_sc_rtc, ptr @imx_sc_rtc_ops, ptr @imx_sc_rtc_alarm_sc_notifier, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_sc_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_sc_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_ipc_handle to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_sc_rtc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_sc_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_sc_rtc_alarm_sc_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_sc_rtc_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_sc_rtc_set_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_sc_rtc_set_alarm._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_sc_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_sc_rtc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx_sc_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_sc_rtc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_sc_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @imx_scu_get_handle(ptr noundef nonnull @rtc_ipc_handle) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #5
  %call3 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #5
  store ptr %call3, ptr @imx_sc_rtc, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call3, i32 0, i32 3
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @imx_sc_rtc_ops, ptr %ops, align 8
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %call3, i32 0, i32 22
  %2 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %range_min, align 8
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %call3, i32 0, i32 23
  %3 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 4294967295, ptr %range_max, align 8
  %call8 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %call3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call i32 @imx_scu_irq_register_notifier(ptr noundef nonnull @imx_sc_rtc_alarm_sc_notifier) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end7.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then5 ], [ 0, %if.end11 ], [ %call, %entry.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_scu_get_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_scu_irq_register_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_sc_rtc_read_time(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  %msg = alloca %struct.imx_sc_msg_timer_get_rtc_time, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg) #5
  %0 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 3
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 -1, ptr %3, align 1
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %msg, align 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 5, ptr %1, align 1
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 9, ptr %2, align 1
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %0, align 1
  %9 = load ptr, ptr @rtc_ipc_handle, align 4
  %call = call i32 @imx_scu_call_rpc(ptr noundef %9, ptr noundef nonnull %msg, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = getelementptr inbounds %struct.imx_sc_msg_timer_get_rtc_time, ptr %msg, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %10, align 1
  %conv = zext i32 %12 to i64
  call void @rtc_time64_to_tm(i64 noundef %conv, ptr noundef %tm) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_sc_rtc_set_time(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %res = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #5
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %0 = call ptr @memset(ptr %res, i32 255, i32 16)
  %1 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tm_year, align 4
  %add = shl i32 %2, 16
  %shl = add i32 %add, 124518400
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %3 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tm_mon, align 4
  %add1 = add i32 %4, 1
  %or = or i32 %shl, %add1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %5 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tm_mday, align 4
  %shl2 = shl i32 %6, 16
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %7 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tm_hour, align 4
  %or3 = or i32 %shl2, %8
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %9 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tm_min, align 4
  %shl4 = shl i32 %10, 16
  %11 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm, align 4
  %or5 = or i32 %shl4, %12
  call void @__arm_smccc_smc(i32 noundef -1040187390, i32 noundef 0, i32 noundef %or, i32 noundef %or3, i32 noundef %or5, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res, ptr noundef null) #5
  %13 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %res, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #5
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_sc_rtc_set_alarm(ptr noundef %dev, ptr nocapture noundef readonly %alrm) #2 align 64 {
entry:
  %msg = alloca %struct.imx_sc_msg_timer_rtc_set_alarm, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #5
  %0 = getelementptr inbounds i8, ptr %msg, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %msg, align 4
  %svc = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 2
  %3 = ptrtoint ptr %svc to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 5, ptr %svc, align 2
  %func = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 3
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 8, ptr %func, align 1
  %size = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %size, align 1
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %6 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tm_year, align 4
  %8 = trunc i32 %7 to i16
  %conv = add i16 %8, 1900
  %year = getelementptr inbounds %struct.imx_sc_msg_timer_rtc_set_alarm, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %year to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %year, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_mon, align 4
  %12 = trunc i32 %11 to i8
  %conv3 = add i8 %12, 1
  %mon = getelementptr inbounds %struct.imx_sc_msg_timer_rtc_set_alarm, ptr %msg, i32 0, i32 2
  %13 = ptrtoint ptr %mon to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv3, ptr %mon, align 2
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_mday, align 4
  %conv4 = trunc i32 %15 to i8
  %day = getelementptr inbounds %struct.imx_sc_msg_timer_rtc_set_alarm, ptr %msg, i32 0, i32 3
  %16 = ptrtoint ptr %day to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv4, ptr %day, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_hour, align 4
  %conv5 = trunc i32 %18 to i8
  %hour = getelementptr inbounds %struct.imx_sc_msg_timer_rtc_set_alarm, ptr %msg, i32 0, i32 4
  %19 = ptrtoint ptr %hour to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv5, ptr %hour, align 4
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_min, align 4
  %conv6 = trunc i32 %21 to i8
  %min = getelementptr inbounds %struct.imx_sc_msg_timer_rtc_set_alarm, ptr %msg, i32 0, i32 5
  %22 = ptrtoint ptr %min to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv6, ptr %min, align 1
  %23 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %time, align 4
  %conv7 = trunc i32 %24 to i8
  %sec = getelementptr inbounds %struct.imx_sc_msg_timer_rtc_set_alarm, ptr %msg, i32 0, i32 6
  %25 = ptrtoint ptr %sec to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv7, ptr %sec, align 2
  %26 = load ptr, ptr @rtc_ipc_handle, align 4
  %call = call i32 @imx_scu_call_rpc(ptr noundef %26, ptr noundef nonnull %msg, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %27 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %alrm, align 4
  %call.i = call i32 @imx_scu_irq_group_enable(i8 noundef zeroext 2, i32 noundef 1, i8 noundef zeroext %28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %do.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call.i, %do.end14 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_sc_rtc_alarm_irq_enable(ptr nocapture noundef readnone %dev, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %enable to i8
  %call = tail call i32 @imx_scu_irq_group_enable(i8 noundef zeroext 2, i32 noundef 1, i8 noundef zeroext %conv) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_scu_call_rpc(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_scu_irq_group_enable(i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_sc_rtc_alarm_notify(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr nocapture noundef readonly %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %group to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %group, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  br i1 %cmp, label %if.end, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %2 = load ptr, ptr @imx_sc_rtc, align 4
  tail call void @rtc_update_irq(ptr noundef %2, i32 noundef 1, i32 noundef 160) #5
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_rtc_imx_sc__227_180_imx_sc_rtc_driver_init6, !1, !"__initcall__kmod_rtc_imx_sc__227_180_imx_sc_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-imx-sc.c", i32 180, i32 1}
!2 = !{ptr @__exitcall_imx_sc_rtc_driver_exit, !1, !"__exitcall_imx_sc_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author228, !4, !"__UNIQUE_ID_author228", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-imx-sc.c", i32 182, i32 1}
!5 = !{ptr @__UNIQUE_ID_description229, !6, !"__UNIQUE_ID_description229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-imx-sc.c", i32 183, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-imx-sc.c", i32 184, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-imx-sc.c", i32 175, i32 11}
!12 = !{ptr @imx_sc_rtc_driver, !13, !"imx_sc_rtc_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-imx-sc.c", i32 173, i32 31}
!14 = !{ptr @rtc_ipc_handle, !15, !"rtc_ipc_handle", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-imx-sc.c", i32 24, i32 27}
!16 = !{ptr @imx_sc_rtc, !17, !"imx_sc_rtc", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-imx-sc.c", i32 25, i32 27}
!18 = !{ptr @imx_sc_rtc_ops, !19, !"imx_sc_rtc_ops", i1 false, i1 false}
!19 = !{!"../drivers/rtc/rtc-imx-sc.c", i32 117, i32 35}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/rtc/rtc-imx-sc.c", i32 55, i32 3}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @imx_sc_rtc_read_time._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @imx_sc_rtc_read_time._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-imx-sc.c", i32 104, i32 3}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @imx_sc_rtc_set_alarm._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @imx_sc_rtc_set_alarm._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/rtc/rtc-imx-sc.c", i32 110, i32 3}
!35 = !{ptr @imx_sc_rtc_set_alarm._entry.8, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @imx_sc_rtc_set_alarm._entry_ptr.10, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @imx_sc_rtc_alarm_sc_notifier, !38, !"imx_sc_rtc_alarm_sc_notifier", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-imx-sc.c", i32 136, i32 30}
!39 = !{ptr @imx_sc_dt_ids, !40, !"imx_sc_dt_ids", i1 false, i1 false}
!40 = !{!"../drivers/rtc/rtc-imx-sc.c", i32 167, i32 34}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
