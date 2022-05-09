; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-mxc.c_pt.bc'
source_filename = "../drivers/rtc/rtc-mxc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.rtc_plat_data = type { ptr, ptr, i32, ptr, ptr, %struct.rtc_time, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_mxc__227_423_mxc_rtc_driver_init6 = internal global ptr @mxc_rtc_driver_init, section ".initcall6.init", align 4
@mxc_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mxc_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_rtc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mxc_rtc_driver_exit = internal global ptr @mxc_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [45 x i8] c"rtc_mxc.author=Daniel Mack <daniel@caiaq.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [49 x i8] c"rtc_mxc.description=RTC driver for Freescale MXC\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [33 x i8] c"rtc_mxc.file=drivers/rtc/rtc-mxc\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [20 x i8] c"rtc_mxc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mxc_rtc\00", [24 x i8] zeroinitializer }, align 32
@imx_rtc_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx1-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx21-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@mxc_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @mxc_rtc_read_time, ptr @mxc_rtc_set_time, ptr @mxc_rtc_read_alarm, ptr @mxc_rtc_set_alarm, ptr null, ptr @mxc_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@mxc_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 346, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to get ipg clock!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mxc_rtc_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/rtc/rtc-mxc.c\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxc_rtc_probe._entry_ptr = internal global ptr @mxc_rtc_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@mxc_rtc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 357, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to get ref clock!\0A\00", [38 x i8] zeroinitializer }, align 32
@mxc_rtc_probe._entry_ptr.10 = internal global ptr @mxc_rtc_probe._entry.8, section ".printk_index", align 4
@mxc_rtc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 380, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rtc clock is not valid (%lu)\0A\00", [34 x i8] zeroinitializer }, align 32
@mxc_rtc_probe._entry_ptr.13 = internal global ptr @mxc_rtc_probe._entry.11, section ".printk_index", align 4
@mxc_rtc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 387, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"hardware module can't be enabled!\0A\00", [61 x i8] zeroinitializer }, align 32
@mxc_rtc_probe._entry_ptr.16 = internal global ptr @mxc_rtc_probe._entry.14, section ".printk_index", align 4
@mxc_rtc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 399, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"interrupt not available.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mxc_rtc_probe._entry_ptr.20 = internal global ptr @mxc_rtc_probe._entry.17, section ".printk_index", align 4
@mxc_rtc_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 407, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable irq wake\0A\00", [37 x i8] zeroinitializer }, align 32
@mxc_rtc_probe._entry_ptr.23 = internal global ptr @mxc_rtc_probe._entry.21, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 32000, i64 32768, i64 38400]
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"mxc_rtc_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 415, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 417, i32 14 }
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"imx_rtc_dt_ids\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 73, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [12 x i8] c"mxc_rtc_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 286, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 344, i32 44 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 346, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 354, i32 44 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 357, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 380, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 387, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 399, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [25 x i8] c"../drivers/rtc/rtc-mxc.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 407, i32 4 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_mxc_rtc_driver_exit, ptr @__initcall__kmod_rtc_mxc__227_423_mxc_rtc_driver_init6, ptr @mxc_rtc_driver_exit, ptr @mxc_rtc_probe._entry, ptr @mxc_rtc_probe._entry.11, ptr @mxc_rtc_probe._entry.14, ptr @mxc_rtc_probe._entry.17, ptr @mxc_rtc_probe._entry.21, ptr @mxc_rtc_probe._entry.8, ptr @mxc_rtc_probe._entry_ptr, ptr @mxc_rtc_probe._entry_ptr.10, ptr @mxc_rtc_probe._entry_ptr.13, ptr @mxc_rtc_probe._entry_ptr.16, ptr @mxc_rtc_probe._entry_ptr.20, ptr @mxc_rtc_probe._entry_ptr.23, ptr @mxc_rtc_driver, ptr @.str, ptr @imx_rtc_dt_ids, ptr @mxc_rtc_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.22], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rtc_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_rtc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_rtc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_rtc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_rtc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_rtc_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mxc_rtc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mxc_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mxc_rtc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %tm = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 60, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %0 = ptrtoint ptr %call2 to i32
  %devtype = getelementptr inbounds %struct.rtc_plat_data, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %devtype to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %devtype, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %ioaddr = getelementptr inbounds %struct.rtc_plat_data, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %ioaddr, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #7
  %cmp.i199 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i199, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call11, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call11, i32 0, i32 3
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mxc_rtc_ops, ptr %ops, align 8
  %7 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i200.not = icmp eq i32 %8, 0
  br i1 %cmp.i200.not, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm) #7
  %9 = call ptr @memset(ptr %tm, i32 255, i32 36)
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %call11, i32 0, i32 23
  %10 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 44236799, ptr %range_max, align 8
  %call20 = tail call i64 @ktime_get_real_seconds() #7
  call void @rtc_time64_to_tm(i64 noundef %call20, ptr noundef nonnull %tm) #7
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %11 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_year, align 4
  %call21 = call i64 @mktime64(i32 noundef %12, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %start_secs = getelementptr inbounds %struct.rtc_device, ptr %call11, i32 0, i32 24
  %13 = ptrtoint ptr %start_secs to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %call21, ptr %start_secs, align 8
  %set_start_time = getelementptr inbounds %struct.rtc_device, ptr %call11, i32 0, i32 26
  %14 = ptrtoint ptr %set_start_time to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %set_start_time, align 8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm) #7
  br label %if.end23

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %range_max22 = getelementptr inbounds %struct.rtc_device, ptr %call11, i32 0, i32 23
  %15 = ptrtoint ptr %range_max22 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 5662310399, ptr %range_max22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then19
  %call25 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  %clk_ipg = getelementptr inbounds %struct.rtc_plat_data, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call25, ptr %clk_ipg, align 4
  %cmp.i201 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i201, label %do.end, label %if.end32

do.end:                                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  %17 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk_ipg, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end23
  %call.i202 = call i32 @clk_prepare(ptr noundef %call25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i202)
  %tobool.not.i = icmp eq i32 %call.i202, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end32
  %call1.i = call i32 @clk_enable(ptr noundef %call25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end37, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %call25) #7
  br label %cleanup

if.end37:                                         ; preds = %if.end.i
  %call39 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #7
  %clk_ref = getelementptr inbounds %struct.rtc_plat_data, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %clk_ref to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call39, ptr %clk_ref, align 4
  %cmp.i203 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i203, label %if.then42, label %if.end50

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk_ipg, align 4
  call void @clk_disable(ptr noundef %22) #7
  call void @clk_unprepare(ptr noundef %22) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  %23 = ptrtoint ptr %clk_ref to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk_ref, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %cleanup

if.end50:                                         ; preds = %if.end37
  %call.i204 = call i32 @clk_prepare(ptr noundef %call39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i204)
  %tobool.not.i205 = icmp eq i32 %call.i204, 0
  br i1 %tobool.not.i205, label %if.end.i208, label %if.end50.if.then54_crit_edge

if.end50.if.then54_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then54

if.end.i208:                                      ; preds = %if.end50
  %call1.i206 = call i32 @clk_enable(ptr noundef %call39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i206)
  %tobool2.not.i207 = icmp eq i32 %call1.i206, 0
  br i1 %tobool2.not.i207, label %if.end56, label %if.then3.i209

if.then3.i209:                                    ; preds = %if.end.i208
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %call39) #7
  br label %if.then54

if.then54:                                        ; preds = %if.then3.i209, %if.end50.if.then54_crit_edge
  %retval.0.i210.ph = phi i32 [ %call1.i206, %if.then3.i209 ], [ %call.i204, %if.end50.if.then54_crit_edge ]
  %26 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk_ipg, align 4
  call void @clk_disable(ptr noundef %27) #7
  call void @clk_unprepare(ptr noundef %27) #7
  br label %cleanup

if.end56:                                         ; preds = %if.end.i208
  %call58 = call fastcc i32 @devm_add_action_or_reset(ptr noundef %dev, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end61:                                         ; preds = %if.end56
  %28 = ptrtoint ptr %clk_ref to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk_ref, align 4
  %call63 = call i32 @clk_get_rate(ptr noundef %29) #7
  %30 = zext i32 %call63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call63, label %do.end74 [
    i32 32768, label %if.end61.if.end78_crit_edge
    i32 32000, label %if.then67
    i32 38400, label %if.then70
  ]

if.end61.if.end78_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then67:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then70:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

do.end74:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call63) #10
  br label %cleanup

if.end78:                                         ; preds = %if.then70, %if.then67, %if.end61.if.end78_crit_edge
  %reg.0 = phi i16 [ -24576, %if.then67 ], [ -16384, %if.then70 ], [ -32768, %if.end61.if.end78_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %32, i32 16
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %reg.0) #7, !srcloc !61
  %33 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ioaddr, align 4
  %add.ptr84 = getelementptr i8, ptr %34, i32 16
  %35 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr84) #7, !srcloc !62
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %35)
  %cmp88 = icmp sgt i16 %35, -1
  br i1 %cmp88, label %do.end93, label %if.end95

do.end93:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end95:                                         ; preds = %if.end78
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call96 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.rtc_plat_data, ptr %call.i, i32 0, i32 2
  %37 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call96, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call96)
  %cmp98 = icmp sgt i32 %call96, -1
  br i1 %cmp98, label %land.lhs.true, label %if.end95.if.end128_crit_edge

if.end95.if.end128_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

land.lhs.true:                                    ; preds = %if.end95
  %38 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev, align 8
  %call.i212 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call96, ptr noundef nonnull @mxc_rtc_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %39, ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i212)
  %cmp103 = icmp slt i32 %call.i212, 0
  br i1 %cmp103, label %do.end108, label %if.end111

do.end108:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.18) #10
  %40 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %irq, align 4
  br label %if.end128

if.end111:                                        ; preds = %land.lhs.true
  %41 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp113 = icmp sgt i32 %.pr, -1
  br i1 %cmp113, label %if.then115, label %if.end111.if.end128_crit_edge

if.end111.if.end128_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

if.then115:                                       ; preds = %if.end111
  %call117 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #7
  %42 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq, align 4
  %call120 = call i32 @dev_pm_set_wake_irq(ptr noundef %dev, i32 noundef %43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.then115.if.end128_crit_edge, label %do.end125

if.then115.if.end128_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

do.end125:                                        ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #10
  br label %if.end128

if.end128:                                        ; preds = %do.end125, %if.then115.if.end128_crit_edge, %if.end111.if.end128_crit_edge, %do.end108, %if.end95.if.end128_crit_edge
  %call129 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %call11) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end128, %do.end93, %do.end74, %if.end56.cleanup_crit_edge, %if.then54, %if.then42, %if.then3.i, %if.end32.cleanup_crit_edge, %do.end, %if.then13, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ %4, %if.then13 ], [ %19, %do.end ], [ %25, %if.then42 ], [ %retval.0.i210.ph, %if.then54 ], [ -5, %do.end93 ], [ %call129, %if.end128 ], [ -22, %do.end74 ], [ -12, %entry.cleanup_crit_edge ], [ %call58, %if.end56.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i202, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mktime64(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @devm_add_action_or_reset(ptr noundef %dev, ptr noundef %data) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @mxc_rtc_action, ptr noundef %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %clk_ref.i = getelementptr inbounds %struct.rtc_plat_data, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %clk_ref.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_ref.i, align 4
  tail call void @clk_disable(ptr noundef %1) #7
  tail call void @clk_unprepare(ptr noundef %1) #7
  %clk_ipg.i = getelementptr inbounds %struct.rtc_plat_data, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %clk_ipg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_ipg.i, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxc_rtc_action(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_ref = getelementptr inbounds %struct.rtc_plat_data, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %clk_ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_ref, align 4
  tail call void @clk_disable(ptr noundef %1) #7
  tail call void @clk_unprepare(ptr noundef %1) #7
  %clk_ipg = getelementptr inbounds %struct.rtc_plat_data, ptr %p, i32 0, i32 4
  %2 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_ipg, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_rtc_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev_id, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ioaddr1 = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %irq_lock = getelementptr inbounds %struct.rtc_device, ptr %5, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %irq_lock) #7
  %add.ptr = getelementptr i8, ptr %3, i32 20
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %add.ptr6 = getelementptr i8, ptr %3, i32 24
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr6) #7, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  %8 = and i16 %7, %6
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %and = zext i16 %9 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %8) #7, !srcloc !61
  %and13 = and i32 %and, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool.not = icmp eq i32 %and13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %ioaddr1.i = getelementptr inbounds %struct.rtc_plat_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr1.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %irq_lock.i = getelementptr inbounds %struct.rtc_device, ptr %15, i32 0, i32 8
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #7
  %add.ptr.i = getelementptr i8, ptr %13, i32 24
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #7, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  %17 = and i16 %16, -1025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %17) #7, !srcloc !61
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 4
  %irq_lock17.i = getelementptr inbounds %struct.rtc_device, ptr %19, i32 0, i32 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock17.i, i32 noundef %call4.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %events.0 = phi i32 [ 160, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %and14 = and i32 %and, 65408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %or17 = or i32 %events.0, 192
  %spec.select = select i1 %tobool15.not, i32 %events.0, i32 %or17
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  tail call void @rtc_update_irq(ptr noundef %21, i32 noundef 1, i32 noundef %spec.select) #7
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %irq_lock21 = getelementptr inbounds %struct.rtc_device, ptr %23, i32 0, i32 8
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock21) #7
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_rtc_read_time(ptr nocapture noundef readonly %dev, ptr noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ioaddr1.i = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 32
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #7, !srcloc !62
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #7, !srcloc !62
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  %add.ptr13.i = getelementptr i8, ptr %3, i32 4
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr13.i) #7, !srcloc !62
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  %hr_min.0.i = zext i16 %7 to i32
  %shr.i = lshr i32 %hr_min.0.i, 8
  %and40.i = and i32 %hr_min.0.i, 255
  %conv41.i = zext i16 %5 to i64
  %mul.i = mul nuw nsw i64 %conv41.i, 24
  %conv42.i = zext i32 %shr.i to i64
  %add.i = add nuw nsw i64 %mul.i, %conv42.i
  %mul43.i = mul nuw nsw i64 %add.i, 60
  %conv44.i = zext i32 %and40.i to i64
  %add45.i = add nuw nsw i64 %mul43.i, %conv44.i
  %mul46.i = mul nuw nsw i64 %add45.i, 60
  %conv47.i = zext i16 %9 to i64
  %add48.i = add nuw nsw i64 %mul46.i, %conv47.i
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %ioaddr1.i5 = getelementptr inbounds %struct.rtc_plat_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ioaddr1.i5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr1.i5, align 4
  %add.ptr.i6 = getelementptr i8, ptr %13, i32 32
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i6) #7, !srcloc !62
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %13) #7, !srcloc !62
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  %add.ptr13.i7 = getelementptr i8, ptr %13, i32 4
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr13.i7) #7, !srcloc !62
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  %hr_min.0.i8 = zext i16 %17 to i32
  %shr.i9 = lshr i32 %hr_min.0.i8, 8
  %and40.i10 = and i32 %hr_min.0.i8, 255
  %conv41.i11 = zext i16 %15 to i64
  %mul.i12 = mul nuw nsw i64 %conv41.i11, 24
  %conv42.i13 = zext i32 %shr.i9 to i64
  %add.i14 = add nuw nsw i64 %mul.i12, %conv42.i13
  %mul43.i15 = mul nuw nsw i64 %add.i14, 60
  %conv44.i16 = zext i32 %and40.i10 to i64
  %add45.i17 = add nuw nsw i64 %mul43.i15, %conv44.i16
  %mul46.i18 = mul nuw nsw i64 %add45.i17, 60
  %conv47.i19 = zext i16 %19 to i64
  %add48.i20 = add nuw nsw i64 %mul46.i18, %conv47.i19
  %cmp.not = icmp eq i64 %add48.i, %add48.i20
  br i1 %cmp.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtc_time64_to_tm(i64 noundef %add48.i, ptr noundef %tm) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_rtc_set_time(ptr nocapture noundef readonly %dev, ptr noundef %tm) #2 align 64 {
entry:
  %tod.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @rtc_tm_to_time64(ptr noundef %tm) #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tod.i) #7
  %0 = ptrtoint ptr %tod.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tod.i, align 4, !annotation !72
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %ioaddr1.i = getelementptr inbounds %struct.rtc_plat_data, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioaddr1.i, align 4
  %call2.i = call i64 @div_s64_rem(i64 noundef %call, i32 noundef 86400, ptr noundef nonnull %tod.i) #7
  %5 = ptrtoint ptr %tod.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tod.i, align 4
  %div.i = udiv i32 %6, 3600
  %mul.neg.i = mul i32 %div.i, -3600
  %sub.i = add i32 %mul.neg.i, %6
  store i32 %sub.i, ptr %tod.i, align 4
  %div3.i = udiv i32 %sub.i, 60
  %mul4.neg.i = mul i32 %div3.i, 65476
  %sub5.i = add i32 %mul4.neg.i, %sub.i
  %shl.i = shl nuw nsw i32 %div.i, 8
  %add.i = add nuw nsw i32 %div3.i, %shl.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  call void @arm_heavy_mb() #7
  %conv6.i = trunc i64 %call2.i to i16
  %7 = call i16 @llvm.bswap.i16(i16 %conv6.i) #7
  %add.ptr.i = getelementptr i8, ptr %4, i32 32
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %7) #7, !srcloc !61
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  call void @arm_heavy_mb() #7
  %conv10.i = trunc i32 %sub5.i to i16
  %8 = call i16 @llvm.bswap.i16(i16 %conv10.i) #7
  %add.ptr11.i = getelementptr i8, ptr %4, i32 4
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i, i16 %8) #7, !srcloc !61
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  call void @arm_heavy_mb() #7
  %conv15.i = trunc i32 %add.i to i16
  %9 = call i16 @llvm.bswap.i16(i16 %conv15.i) #7
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %4, i16 %9) #7, !srcloc !61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tod.i) #7
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %ioaddr1.i5 = getelementptr inbounds %struct.rtc_plat_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ioaddr1.i5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr1.i5, align 4
  %add.ptr.i6 = getelementptr i8, ptr %13, i32 32
  %14 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i6) #7, !srcloc !62
  %15 = call i16 @llvm.bswap.i16(i16 %14) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %16 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %13) #7, !srcloc !62
  %17 = call i16 @llvm.bswap.i16(i16 %16) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  %add.ptr13.i = getelementptr i8, ptr %13, i32 4
  %18 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr13.i) #7, !srcloc !62
  %19 = call i16 @llvm.bswap.i16(i16 %18) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  %hr_min.0.i = zext i16 %17 to i32
  %shr.i = lshr i32 %hr_min.0.i, 8
  %and40.i = and i32 %hr_min.0.i, 255
  %conv41.i = zext i16 %15 to i64
  %mul.i = mul nuw nsw i64 %conv41.i, 24
  %conv42.i = zext i32 %shr.i to i64
  %add.i7 = add nuw nsw i64 %mul.i, %conv42.i
  %mul43.i = mul nuw nsw i64 %add.i7, 60
  %conv44.i = zext i32 %and40.i to i64
  %add45.i = add nuw nsw i64 %mul43.i, %conv44.i
  %mul46.i = mul nuw nsw i64 %add45.i, 60
  %conv47.i = zext i16 %19 to i64
  %add48.i = add nuw nsw i64 %mul46.i, %conv47.i
  %cmp.not = icmp eq i64 %call, %add48.i
  br i1 %cmp.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr noundef %alrm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ioaddr1 = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr1, align 4
  %add.ptr21.i = getelementptr i8, ptr %3, i32 36
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr21.i) #7, !srcloc !62
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  %add.ptr28.i = getelementptr i8, ptr %3, i32 8
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr28.i) #7, !srcloc !62
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  %add.ptr35.i = getelementptr i8, ptr %3, i32 12
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr35.i) #7, !srcloc !62
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %hr_min.0.i = zext i16 %7 to i32
  %shr.i = lshr i32 %hr_min.0.i, 8
  %and40.i = and i32 %hr_min.0.i, 255
  %conv41.i = zext i16 %5 to i64
  %mul.i = mul nuw nsw i64 %conv41.i, 24
  %conv42.i = zext i32 %shr.i to i64
  %add.i = add nuw nsw i64 %mul.i, %conv42.i
  %mul43.i = mul nuw nsw i64 %add.i, 60
  %conv44.i = zext i32 %and40.i to i64
  %add45.i = add nuw nsw i64 %mul43.i, %conv44.i
  %mul46.i = mul nuw nsw i64 %add45.i, 60
  %conv47.i = zext i16 %9 to i64
  %add48.i = add nuw nsw i64 %mul46.i, %conv47.i
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  tail call void @rtc_time64_to_tm(i64 noundef %add48.i, ptr noundef %time) #7
  %add.ptr = getelementptr i8, ptr %3, i32 20
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %11 = lshr i16 %10, 10
  %12 = trunc i16 %11 to i8
  %13 = and i8 %12, 1
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 1
  %14 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %pending, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr noundef %alrm) #2 align 64 {
entry:
  %tod.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %ioaddr1.i = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr1.i, align 4
  %call2.i = tail call i64 @rtc_tm_to_time64(ptr noundef %time) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #7, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %4) #7, !srcloc !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tod.i.i) #7
  %5 = ptrtoint ptr %tod.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %tod.i.i, align 4, !annotation !72
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %ioaddr1.i.i = getelementptr inbounds %struct.rtc_plat_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ioaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr1.i.i, align 4
  %call2.i.i = call i64 @div_s64_rem(i64 noundef %call2.i, i32 noundef 86400, ptr noundef nonnull %tod.i.i) #7
  %10 = ptrtoint ptr %tod.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tod.i.i, align 4
  %div.i.i = udiv i32 %11, 3600
  %mul.neg.i.i = mul i32 %div.i.i, -3600
  %sub.i.i = add i32 %mul.neg.i.i, %11
  store i32 %sub.i.i, ptr %tod.i.i, align 4
  %div3.i.i = udiv i32 %sub.i.i, 60
  %mul4.neg.i.i = mul i32 %div3.i.i, 65476
  %sub5.i.i = add i32 %mul4.neg.i.i, %sub.i.i
  %shl.i.i = shl nuw nsw i32 %div.i.i, 8
  %add.i.i = add nuw nsw i32 %div3.i.i, %shl.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  call void @arm_heavy_mb() #7
  %conv21.i.i = trunc i64 %call2.i.i to i16
  %12 = call i16 @llvm.bswap.i16(i16 %conv21.i.i) #7
  %add.ptr22.i.i = getelementptr i8, ptr %9, i32 36
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr22.i.i, i16 %12) #7, !srcloc !61
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  call void @arm_heavy_mb() #7
  %conv26.i.i = trunc i32 %sub5.i.i to i16
  %13 = call i16 @llvm.bswap.i16(i16 %conv26.i.i) #7
  %add.ptr27.i.i = getelementptr i8, ptr %9, i32 12
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr27.i.i, i16 %13) #7, !srcloc !61
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  call void @arm_heavy_mb() #7
  %conv31.i.i = trunc i32 %add.i.i to i16
  %14 = call i16 @llvm.bswap.i16(i16 %conv31.i.i) #7
  %add.ptr32.i.i = getelementptr i8, ptr %9, i32 8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr32.i.i, i16 %14) #7, !srcloc !61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tod.i.i) #7
  %g_rtc_alarm = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 5
  %15 = call ptr @memcpy(ptr %g_rtc_alarm, ptr %time, i32 36)
  %16 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %alrm, align 4
  %18 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i, align 4
  %ioaddr1.i7 = getelementptr inbounds %struct.rtc_plat_data, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %ioaddr1.i7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr1.i7, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %irq_lock.i = getelementptr inbounds %struct.rtc_device, ptr %23, i32 0, i32 8
  %call4.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #7
  %add.ptr.i8 = getelementptr i8, ptr %21, i32 24
  %24 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i8) #7, !srcloc !62
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  %25 = and i16 %24, -1025
  %26 = call i16 @llvm.bswap.i16(i16 %25) #7
  %masksel.i = select i1 %tobool.not.i, i16 0, i16 4
  %reg.0.i = or i16 %26, %masksel.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  call void @arm_heavy_mb() #7
  %27 = call i16 @llvm.bswap.i16(i16 %reg.0.i) #7
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i8, i16 %27) #7, !srcloc !61
  %28 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %19, align 4
  %irq_lock17.i = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock17.i, i32 noundef %call4.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ioaddr1.i = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr1.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %irq_lock.i = getelementptr inbounds %struct.rtc_device, ptr %5, i32 0, i32 8
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #7
  %add.ptr.i = getelementptr i8, ptr %3, i32 24
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #7, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not.i = icmp eq i32 %enabled, 0
  %7 = and i16 %6, -1025
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #7
  %masksel.i = select i1 %tobool.not.i, i16 0, i16 4
  %reg.0.i = or i16 %8, %masksel.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  tail call void @arm_heavy_mb() #7
  %9 = tail call i16 @llvm.bswap.i16(i16 %reg.0.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %9) #7, !srcloc !61
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %irq_lock17.i = getelementptr inbounds %struct.rtc_device, ptr %11, i32 0, i32 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock17.i, i32 noundef %call4.i) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__initcall__kmod_rtc_mxc__227_423_mxc_rtc_driver_init6, !1, !"__initcall__kmod_rtc_mxc__227_423_mxc_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-mxc.c", i32 423, i32 1}
!2 = !{ptr @__exitcall_mxc_rtc_driver_exit, !1, !"__exitcall_mxc_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author228, !4, !"__UNIQUE_ID_author228", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-mxc.c", i32 425, i32 1}
!5 = !{ptr @__UNIQUE_ID_description229, !6, !"__UNIQUE_ID_description229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-mxc.c", i32 426, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-mxc.c", i32 427, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-mxc.c", i32 417, i32 14}
!12 = !{ptr @mxc_rtc_driver, !13, !"mxc_rtc_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-mxc.c", i32 415, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-mxc.c", i32 344, i32 44}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-mxc.c", i32 346, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mxc_rtc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mxc_rtc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-mxc.c", i32 354, i32 44}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-mxc.c", i32 357, i32 3}
!28 = !{ptr @mxc_rtc_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mxc_rtc_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/rtc/rtc-mxc.c", i32 380, i32 3}
!32 = !{ptr @mxc_rtc_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mxc_rtc_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-mxc.c", i32 387, i32 3}
!36 = !{ptr @mxc_rtc_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mxc_rtc_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/rtc/rtc-mxc.c", i32 399, i32 3}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mxc_rtc_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @mxc_rtc_probe._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/rtc/rtc-mxc.c", i32 407, i32 4}
!45 = !{ptr @mxc_rtc_probe._entry.21, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mxc_rtc_probe._entry_ptr.23, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @mxc_rtc_ops, !48, !"mxc_rtc_ops", i1 false, i1 false}
!48 = !{!"../drivers/rtc/rtc-mxc.c", i32 286, i32 35}
!49 = !{ptr @imx_rtc_dt_ids, !50, !"imx_rtc_dt_ids", i1 false, i1 false}
!50 = !{!"../drivers/rtc/rtc-mxc.c", i32 73, i32 34}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 2153999709}
!61 = !{i64 693682}
!62 = !{i64 693882}
!63 = !{i64 2154000393}
!64 = !{i64 2153992717}
!65 = !{i64 2153993192}
!66 = !{i64 2153993410}
!67 = !{i64 2153991856}
!68 = !{i64 2153992071}
!69 = !{i64 2153984479}
!70 = !{i64 2153984954}
!71 = !{i64 2153985429}
!72 = !{!"auto-init"}
!73 = !{i64 2153987073}
!74 = !{i64 2153987459}
!75 = !{i64 2153987846}
!76 = !{i64 2153985906}
!77 = !{i64 2153986381}
!78 = !{i64 2153986856}
!79 = !{i64 2153994355}
!80 = !{i64 2153990114}
!81 = !{i64 2153990993}
!82 = !{i64 2153988237}
!83 = !{i64 2153988623}
!84 = !{i64 2153989010}
