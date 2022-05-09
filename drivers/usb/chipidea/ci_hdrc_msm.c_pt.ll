; ModuleID = '/llk/IR_all_yes/drivers/usb/chipidea/ci_hdrc_msm.c_pt.bc'
source_filename = "../drivers/usb/chipidea/ci_hdrc_msm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.ci_hdrc_msm = type { ptr, ptr, ptr, ptr, %struct.ci_hdrc_platform_data, %struct.reset_controller_dev, i8, i8, ptr }
%struct.ci_hdrc_platform_data = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, %struct.usb_otg_caps, i8, i32, i32, i32, i32, %struct.ci_hdrc_cable, %struct.ci_hdrc_cable, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.ci_hdrc_cable = type { i8, i8, i8, ptr, ptr, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.ci_hdrc = type { ptr, %struct.spinlock, %struct.hw_bank, i32, [2 x ptr], i32, i8, %struct.usb_otg, %struct.otg_fsm, %struct.hrtimer, [12 x i64], i32, i32, ptr, %struct.work_struct, ptr, ptr, ptr, %struct.usb_gadget, ptr, i32, i32, [32 x %struct.ci_hw_ep], i32, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, ptr, %struct.ulpi_ops, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i32 }
%struct.hw_bank = type { i32, i32, ptr, ptr, ptr, i32, [38 x ptr] }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.otg_fsm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.mutex, ptr, %struct.delayed_work, i8, i8 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.ci_hw_ep = type { %struct.usb_ep, i8, i8, i8, [16 x i8], %struct.anon.84, i32, ptr, ptr, ptr, ptr }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.anon.84 = type { %struct.list_head, ptr, i32 }
%struct.ulpi_ops = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_ci_hdrc_msm__297_304_ci_hdrc_msm_driver_init6 = internal global ptr @ci_hdrc_msm_driver_init, section ".initcall6.init", align 4
@ci_hdrc_msm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ci_hdrc_msm_probe, ptr @ci_hdrc_msm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @msm_ci_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ci_hdrc_msm_driver_exit = internal global ptr @ci_hdrc_msm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias298 = internal constant [37 x i8] c"ci_hdrc_msm.alias=platform:msm_hsusb\00", section ".modinfo", align 1
@__UNIQUE_ID_alias299 = internal constant [39 x i8] c"ci_hdrc_msm.alias=platform:ci13xxx_msm\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [50 x i8] c"ci_hdrc_msm.file=drivers/usb/chipidea/ci_hdrc_msm\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [27 x i8] c"ci_hdrc_msm.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"msm_hsusb\00", [22 x i8] zeroinitializer }, align 32
@msm_ci_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ci-hdrc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ci_hdrc_msm_probe.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ci_hdrc_msm\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ci_hdrc_msm_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/usb/chipidea/ci_hdrc_msm.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ci_hdrc_msm_probe\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fs\00", [29 x i8] zeroinitializer }, align 32
@ci_hdrc_msm_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr @ci_hdrc_msm_por_reset, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ulpi\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom,usb-hsic-phy\00", [46 x i8] zeroinitializer }, align 32
@ci_hdrc_msm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 258, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ci_hdrc_add_device failed!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ci_hdrc_msm_probe._entry_ptr = internal global ptr @ci_hdrc_msm_probe._entry, section ".printk_index", align 4
@ci_hdrc_msm_notify_event.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.3, ptr @.str.14, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ci_hdrc_msm_notify_event\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"CI_HDRC_CONTROLLER_RESET_EVENT received\0A\00", [55 x i8] zeroinitializer }, align 32
@ci_hdrc_msm_notify_event.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.3, ptr @.str.15, i8 0, i8 31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"CI_HDRC_CONTROLLER_STOPPED_EVENT received\0A\00", [53 x i8] zeroinitializer }, align 32
@ci_hdrc_msm_notify_event.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.3, ptr @.str.16, i8 0, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unknown ci_hdrc event\0A\00", [41 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-select\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.18 = private unnamed_addr constant [19 x i8] c"ci_hdrc_msm_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 295, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 299, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"msm_ci_dt_match\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 289, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 181, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 195, i32 45 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 203, i32 49 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 207, i32 55 }
@___asan_gen_.48 = private unnamed_addr constant [22 x i8] c"ci_hdrc_msm_reset_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 75, i32 39 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 245, i32 54 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 248, i32 48 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 258, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 87, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 127, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 132, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [38 x i8] c"../drivers/usb/chipidea/ci_hdrc_msm.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 148, i32 55 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_alias298, ptr @__UNIQUE_ID_alias299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_ci_hdrc_msm_driver_exit, ptr @__initcall__kmod_ci_hdrc_msm__297_304_ci_hdrc_msm_driver_init6, ptr @ci_hdrc_msm_driver_exit, ptr @ci_hdrc_msm_probe._entry, ptr @ci_hdrc_msm_probe._entry_ptr, ptr @ci_hdrc_msm_driver, ptr @.str, ptr @msm_ci_dt_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ci_hdrc_msm_reset_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_msm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_ci_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_msm_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_msm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_hdrc_msm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ci_hdrc_msm_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ci_hdrc_msm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @ci_hdrc_msm_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_hdrc_msm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ci_hdrc_msm_probe.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ci_hdrc_msm_probe, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !61

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ci_hdrc_msm_probe.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.4) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev3, i32 noundef 208, i32 noundef 3520) #7
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %pdata = getelementptr inbounds %struct.ci_hdrc_msm, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.1, ptr %pdata, align 4
  %capoffset = getelementptr inbounds %struct.ci_hdrc_msm, ptr %call.i, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %capoffset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 256, ptr %capoffset, align 4
  %flags = getelementptr inbounds %struct.ci_hdrc_msm, ptr %call.i, i32 0, i32 4, i32 6
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4619, ptr %flags, align 4
  %notify_event = getelementptr inbounds %struct.ci_hdrc_msm, ptr %call.i, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %notify_event to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ci_hdrc_msm_notify_event, ptr %notify_event, align 4
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev3, ptr noundef nonnull @.str.5, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %call18 = tail call ptr @devm_clk_get(ptr noundef %dev3, ptr noundef nonnull @.str.5) #7
  %core_clk = getelementptr inbounds %struct.ci_hdrc_msm, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %core_clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call18, ptr %core_clk, align 4
  %cmp.i177 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %call24 = tail call ptr @devm_clk_get(ptr noundef %dev3, ptr noundef nonnull @.str.6) #7
  %iface_clk = getelementptr inbounds %struct.ci_hdrc_msm, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %iface_clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call24, ptr %iface_clk, align 4
  %cmp.i178 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i178, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %call30 = tail call ptr @devm_clk_get_optional(ptr noundef %dev3, ptr noundef nonnull @.str.7) #7
  %fs_clk = getelementptr inbounds %struct.ci_hdrc_msm, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %fs_clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call30, ptr %fs_clk, align 4
  %cmp.i179 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i179, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call30 to i32
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %call35 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #7
  %base = getelementptr inbounds %struct.ci_hdrc_msm, ptr %call.i, i32 0, i32 8
  %12 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call35, ptr %base, align 4
  %cmp.i180 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i180, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call35 to i32
  br label %cleanup

if.end41:                                         ; preds = %if.end34
  %rcdev = getelementptr inbounds %struct.ci_hdrc_msm, ptr %call.i, i32 0, i32 5
  %owner = getelementptr inbounds %struct.ci_hdrc_msm, ptr %call.i, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %owner, align 4
  %15 = ptrtoint ptr %rcdev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ci_hdrc_msm_reset_ops, ptr %rcdev, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %of_node45 = getelementptr inbounds %struct.ci_hdrc_msm, ptr %call.i, i32 0, i32 5, i32 5
  %18 = ptrtoint ptr %of_node45 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %of_node45, align 4
  %nr_resets = getelementptr inbounds %struct.ci_hdrc_msm, ptr %call.i, i32 0, i32 5, i32 8
  %19 = ptrtoint ptr %nr_resets to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %nr_resets, align 4
  %call49 = tail call i32 @devm_reset_controller_register(ptr noundef %dev3, ptr noundef %rcdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end52:                                         ; preds = %if.end41
  %20 = ptrtoint ptr %fs_clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fs_clk, align 4
  %call54 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end57:                                         ; preds = %if.end52
  %call58 = tail call i32 @reset_control_assert(ptr noundef %call.i.i) #7
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #7
  %call59 = tail call i32 @reset_control_deassert(ptr noundef %call.i.i) #7
  %22 = ptrtoint ptr %fs_clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fs_clk, align 4
  tail call void @clk_disable(ptr noundef %23) #7
  tail call void @clk_unprepare(ptr noundef %23) #7
  %24 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %core_clk, align 4
  %call62 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end65:                                         ; preds = %if.end57
  %26 = ptrtoint ptr %iface_clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iface_clk, align 4
  %call67 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end65.err_iface_crit_edge

if.end65.err_iface_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_iface

if.end70:                                         ; preds = %if.end65
  %call71 = tail call fastcc i32 @ci_hdrc_msm_mux_phy(ptr noundef nonnull %call.i, ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.end70.err_mux_crit_edge

if.end70.err_mux_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mux

if.end74:                                         ; preds = %if.end70
  %28 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %of_node, align 8
  %call77 = tail call ptr @of_get_child_by_name(ptr noundef %29, ptr noundef nonnull @.str.8) #7
  %tobool78.not = icmp eq ptr %call77, null
  br i1 %tobool78.not, label %if.end74.if.end84_crit_edge, label %if.then79

if.end74.if.end84_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then79:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %call80 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %call77, ptr noundef null) #7
  %call81 = tail call i32 @of_device_is_compatible(ptr noundef %call80, ptr noundef nonnull @.str.9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82 = icmp ne i32 %call81, 0
  %hsic = getelementptr inbounds %struct.ci_hdrc_msm, ptr %call.i, i32 0, i32 7
  %frombool83 = zext i1 %tobool82 to i8
  %30 = ptrtoint ptr %hsic to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool83, ptr %hsic, align 1
  tail call void @of_node_put(ptr noundef %call80) #7
  br label %if.end84

if.end84:                                         ; preds = %if.then79, %if.end74.if.end84_crit_edge
  tail call void @of_node_put(ptr noundef %call77) #7
  %resource = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 7
  %31 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %resource, align 8
  %num_resources = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 6
  %33 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_resources, align 4
  %call87 = tail call ptr @ci_hdrc_add_device(ptr noundef %dev3, ptr noundef %32, i32 noundef %34, ptr noundef %pdata) #7
  %cmp.i181 = icmp ugt ptr %call87, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i181, label %if.then89, label %if.end97

if.then89:                                        ; preds = %if.end84
  %cmp.not = icmp eq ptr %call87, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then89.err_mux_crit_edge, label %do.end94

if.then89.err_mux_crit_edge:                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mux

do.end94:                                         ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %call87 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.10) #10
  br label %err_mux

if.end97:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call87, ptr %call.i, align 4
  %call.i182 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev3, i32 noundef 0) #7
  tail call void @pm_runtime_no_callbacks(ptr noundef %dev3) #7
  tail call void @pm_runtime_enable(ptr noundef %dev3) #7
  br label %cleanup

err_mux:                                          ; preds = %do.end94, %if.then89.err_mux_crit_edge, %if.end70.err_mux_crit_edge
  %ret.0 = phi i32 [ %call71, %if.end70.err_mux_crit_edge ], [ %35, %do.end94 ], [ -517, %if.then89.err_mux_crit_edge ]
  %37 = ptrtoint ptr %iface_clk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iface_clk, align 4
  tail call void @clk_disable(ptr noundef %38) #7
  tail call void @clk_unprepare(ptr noundef %38) #7
  br label %err_iface

err_iface:                                        ; preds = %err_mux, %if.end65.err_iface_crit_edge
  %ret.1 = phi i32 [ %call67, %if.end65.err_iface_crit_edge ], [ %ret.0, %err_mux ]
  %39 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %40) #7
  tail call void @clk_unprepare(ptr noundef %40) #7
  br label %cleanup

cleanup:                                          ; preds = %err_iface, %if.end97, %if.end57.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.then38, %if.then32, %if.then26, %if.then20, %if.then14, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then14 ], [ %7, %if.then20 ], [ %9, %if.then26 ], [ %11, %if.then32 ], [ %13, %if.then38 ], [ %ret.1, %err_iface ], [ 0, %if.end97 ], [ -12, %do.end.cleanup_crit_edge ], [ %call49, %if.end41.cleanup_crit_edge ], [ %call54, %if.end52.cleanup_crit_edge ], [ %call62, %if.end57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_hdrc_msm_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @ci_hdrc_remove_device(ptr noundef %3) #7
  %iface_clk = getelementptr inbounds %struct.ci_hdrc_msm, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %iface_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iface_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  %core_clk = getelementptr inbounds %struct.ci_hdrc_msm, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_hdrc_msm_notify_event(ptr noundef %ci, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci, align 8
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %do.body51 [
    i32 0, label %do.body
    i32 1, label %do.body31
  ]

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ci_hdrc_msm_notify_event.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ci_hdrc_msm_notify_event, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !61

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ci_hdrc_msm_notify_event.__UNIQUE_ID_ddebug293, ptr noundef %3, ptr noundef nonnull @.str.14) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  tail call void @hw_phymode_configure(ptr noundef %ci) #7
  %secondary_phy = getelementptr inbounds %struct.ci_hdrc_msm, ptr %5, i32 0, i32 6
  %7 = ptrtoint ptr %secondary_phy to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %secondary_phy, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %do.end.if.end11_crit_edge, label %if.then6

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr inbounds %struct.ci_hdrc_msm, ptr %5, i32 0, i32 8
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 120
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !63
  %12 = or i32 %11, 256
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %14, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %12) #7, !srcloc !64
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %do.end.if.end11_crit_edge
  %phy = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 36
  %15 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy, align 8
  %call12 = tail call i32 @phy_init(ptr noundef %16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %17 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy, align 8
  %call17 = tail call i32 @phy_power_on(ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end22, label %if.then19

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy, align 8
  %call21 = tail call i32 @phy_exit(ptr noundef %20) #7
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %abs4.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %abs4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %abs4.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %22, i32 152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 134217728) #7, !srcloc !64
  %23 = ptrtoint ptr %abs4.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %abs4.i, align 8
  %add.ptr.i = getelementptr i8, ptr %24, i32 156
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  %26 = and i32 %25, -268435457
  %27 = ptrtoint ptr %abs4.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %abs4.i, align 8
  %add.ptr5.i99 = getelementptr i8, ptr %28, i32 156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i99, i32 %26) #7, !srcloc !64
  %hsic = getelementptr inbounds %struct.ci_hdrc_msm, ptr %5, i32 0, i32 7
  %29 = ptrtoint ptr %hsic to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %hsic, align 1, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool23.not = icmp eq i8 %30, 0
  br i1 %tobool23.not, label %if.then24, label %if.end22.if.end25_crit_edge

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @hw_write_id_reg(ptr noundef %ci, i32 noundef 160, i32 noundef 524288, i32 noundef 0)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22.if.end25_crit_edge
  %platdata = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 32
  %31 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %platdata, align 4
  %edev = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %32, i32 0, i32 16, i32 3
  %33 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %edev, align 4
  %cmp.i = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %lor.lhs.false, label %if.end25.if.then28_crit_edge

if.end25.if.then28_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

lor.lhs.false:                                    ; preds = %if.end25
  %role_switch = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 13
  %35 = ptrtoint ptr %role_switch to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %role_switch, align 8
  %tobool27.not = icmp eq ptr %36, null
  br i1 %tobool27.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then28_crit_edge

lor.lhs.false.if.then28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then28:                                        ; preds = %lor.lhs.false.if.then28_crit_edge, %if.end25.if.then28_crit_edge
  %37 = ptrtoint ptr %abs4.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %abs4.i, align 8
  %add.ptr.i101 = getelementptr i8, ptr %38, i32 160
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  %40 = or i32 %39, -2147483648
  %41 = ptrtoint ptr %abs4.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %abs4.i, align 8
  %add.ptr5.i104 = getelementptr i8, ptr %42, i32 160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i104, i32 %40) #7, !srcloc !64
  %arrayidx.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 4
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  %imx28_write_fix.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 41
  %46 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %imx28_write_fix.i.i, align 2, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i.i = icmp eq i8 %47, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.i.i:                                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i, align 4
  %50 = or i32 %45, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %50) #7, !srcloc !64
  br label %cleanup

do.body31:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ci_hdrc_msm_notify_event.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ci_hdrc_msm_notify_event, %if.then43)) #7
          to label %do.end46 [label %if.then43], !srcloc !61

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ci_hdrc_msm_notify_event.__UNIQUE_ID_ddebug294, ptr noundef %3, ptr noundef nonnull @.str.15) #7
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %do.body31
  %phy47 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 36
  %51 = ptrtoint ptr %phy47 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %phy47, align 8
  %call48 = tail call i32 @phy_power_off(ptr noundef %52) #7
  %53 = ptrtoint ptr %phy47 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %phy47, align 8
  %call50 = tail call i32 @phy_exit(ptr noundef %54) #7
  br label %cleanup

do.body51:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ci_hdrc_msm_notify_event.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ci_hdrc_msm_notify_event, %if.then63)) #7
          to label %cleanup [label %if.then63], !srcloc !61

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ci_hdrc_msm_notify_event.__UNIQUE_ID_ddebug295, ptr noundef %3, ptr noundef nonnull @.str.16) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %do.body51, %do.end46, %if.else.i.i, %if.then28.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then19, %if.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.then19 ], [ %call12, %if.end11.cleanup_crit_edge ], [ 0, %if.then63 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %do.end46 ], [ 0, %if.then28.cleanup_crit_edge ], [ 0, %if.else.i.i ], [ 0, %do.body51 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ci_hdrc_msm_mux_phy(ptr nocapture noundef %ci, ptr nocapture noundef readonly %pdev) unnamed_addr #2 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #7
  %0 = call ptr @memset(ptr %args, i32 255, i32 72)
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %2, ptr noundef nonnull @.str.17, ptr noundef null, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %args) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args, align 4
  %call2 = call ptr @syscon_node_to_regmap(ptr noundef %4) #7
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %args, align 4
  call void @of_node_put(ptr noundef %6) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %args8 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %8 = ptrtoint ptr %args8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %args8, align 4
  %arrayidx10 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx10, align 4
  %call11 = call i32 @regmap_write(ptr noundef %call2, i32 noundef %9, i32 noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool17 = icmp ne i32 %13, 0
  %secondary_phy = getelementptr inbounds %struct.ci_hdrc_msm, ptr %ci, i32 0, i32 6
  %frombool = zext i1 %tobool17 to i8
  %14 = ptrtoint ptr %secondary_phy to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool, ptr %secondary_phy, align 4
  br i1 %tobool17, label %if.then21, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then21:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr inbounds %struct.ci_hdrc_msm, ptr %ci, i32 0, i32 8
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 120
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !63
  %18 = or i32 %17, 256
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr24 = getelementptr i8, ptr %20, i32 120
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %18) #7, !srcloc !64
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end14.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then5 ], [ 0, %entry.cleanup_crit_edge ], [ %call11, %if.end7.cleanup_crit_edge ], [ 0, %if.then21 ], [ 0, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ci_hdrc_add_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_no_callbacks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_phymode_configure(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hw_write_id_reg(ptr nocapture noundef readonly %ci, i32 noundef %offset, i32 noundef %mask, i32 noundef %data) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mask)
  %tobool.not = icmp eq i32 %mask, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %mask, -1
  %abs = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %abs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %abs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !63
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  %and = and i32 %3, %neg
  %and2 = and i32 %data, %mask
  %or = or i32 %and, %and2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data.addr.0 = phi i32 [ %or, %if.then ], [ %data, %entry.if.end_crit_edge ]
  %abs4 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %abs4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %abs4, align 8
  %add.ptr5 = getelementptr i8, ptr %5, i32 %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %data.addr.0) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %6) #7, !srcloc !64
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_hdrc_msm_por_reset(ptr nocapture noundef readonly %r, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %r, i32 48
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %tobool.not = icmp eq i32 %id, 0
  %addr.0.v = select i1 %tobool.not, i32 64, i32 120
  %addr.0 = getelementptr i8, ptr %1, i32 %addr.0.v
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr.0) #7, !srcloc !63
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr.0, i32 %3) #7, !srcloc !64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2576976) #7
  %5 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr.0, i32 %5) #7, !srcloc !64
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_hdrc_remove_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_ci_hdrc_msm__297_304_ci_hdrc_msm_driver_init6, !1, !"__initcall__kmod_ci_hdrc_msm__297_304_ci_hdrc_msm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/chipidea/ci_hdrc_msm.c", i32 304, i32 1}
!2 = !{ptr @__exitcall_ci_hdrc_msm_driver_exit, !1, !"__exitcall_ci_hdrc_msm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias298, !4, !"__UNIQUE_ID_alias298", i1 false, i1 false}
!4 = !{!"../drivers/usb/chipidea/ci_hdrc_msm.c", i32 306, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias299, !6, !"__UNIQUE_ID_alias299", i1 false, i1 false}
!6 = !{!"../drivers/usb/chipidea/ci_hdrc_msm.c", i32 307, i32 1}
!7 = !{ptr @__UNIQUE_ID_file300, !8, !"__UNIQUE_ID_file300", i1 false, i1 false}
!8 = !{!"../drivers/usb/chipidea/ci_hdrc_msm.c", i32 308, i32 1}
!9 = !{ptr @__UNIQUE_ID_license301, !8, !"__UNIQUE_ID_license301", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/chipidea/ci_hdrc_msm.c", i32 299, i32 11}
!12 = !{ptr @ci_hdrc_msm_driver, !13, !"ci_hdrc_msm_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/chipidea/ci_hdrc_msm.c", i32 295, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/chipidea/ci_hdrc_msm.c", i32 181, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ci_hdrc_msm_probe.__UNIQUE_ID_ddebug296, !15, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/chipidea/ci_hdrc_msm.c", i32 195, i32 45}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/chipidea/ci_hdrc_msm.c", i32 203, i32 49}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/chipidea/ci_hdrc_msm.c", i32 207, i32 55}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/chipidea/ci_hdrc_msm.c", i32 245, i32 54}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/chipidea/ci_hdrc_msm.c", i32 248, i32 48}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/chipidea/ci_hdrc_msm.c", i32 258, i32 4}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ci_hdrc_msm_probe._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @ci_hdrc_msm_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/chipidea/ci_hdrc_msm.c", i32 87, i32 3}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ci_hdrc_msm_notify_event.__UNIQUE_ID_ddebug293, !37, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/chipidea/ci_hdrc_msm.c", i32 127, i32 3}
!42 = !{ptr @ci_hdrc_msm_notify_event.__UNIQUE_ID_ddebug294, !41, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/chipidea/ci_hdrc_msm.c", i32 132, i32 3}
!45 = !{ptr @ci_hdrc_msm_notify_event.__UNIQUE_ID_ddebug295, !44, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!46 = !{ptr @ci_hdrc_msm_reset_ops, !47, !"ci_hdrc_msm_reset_ops", i1 false, i1 false}
!47 = !{!"../drivers/usb/chipidea/ci_hdrc_msm.c", i32 75, i32 39}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/chipidea/ci_hdrc_msm.c", i32 148, i32 55}
!50 = !{ptr @msm_ci_dt_match, !51, !"msm_ci_dt_match", i1 false, i1 false}
!51 = !{!"../drivers/usb/chipidea/ci_hdrc_msm.c", i32 289, i32 34}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i64 2148958838, i64 2148958843, i64 2148958856, i64 2148958900, i64 2148958934, i64 2148958955}
!62 = !{i8 0, i8 2}
!63 = !{i64 5965525}
!64 = !{i64 5965107}
!65 = !{i64 2153499739}
!66 = !{i64 2153498384}
!67 = !{i64 2155456500}
!68 = !{i64 2155457487}
