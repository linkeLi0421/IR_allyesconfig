; ModuleID = '/llk/IR_all_yes/drivers/usb/host/fsl-mph-dr-of.c_pt.bc'
source_filename = "../drivers/usb/host/fsl-mph-dr-of.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fsl_usb2_dev_data = type { ptr, [3 x ptr], i32 }
%struct.fsl_usb2_platform_data = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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

@__initcall__kmod_fsl_mph_dr_of__229_369_fsl_usb2_mph_dr_driver_init6 = internal global ptr @fsl_usb2_mph_dr_driver_init, section ".initcall6.init", align 4
@fsl_usb2_mph_dr_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fsl_usb2_mph_dr_of_probe, ptr @fsl_usb2_mph_dr_of_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_usb2_mph_dr_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fsl_usb2_mph_dr_driver_exit = internal global ptr @fsl_usb2_mph_dr_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description230 = internal constant [55 x i8] c"fsl_mph_dr_of.description=FSL MPH DR OF devices driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [56 x i8] c"fsl_mph_dr_of.author=Anatolij Gustschin <agust@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [50 x i8] c"fsl_mph_dr_of.file=drivers/usb/host/fsl-mph-dr-of\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [26 x i8] c"fsl_mph_dr_of.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl-usb2-mph-dr\00", [16 x i8] zeroinitializer }, align 32
@fsl_usb2_mph_dr_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl-usb2-mph\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_usb2_mpc8xxx_pd }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl-usb2-dr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_usb2_mpc8xxx_pd }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@fsl_usb2_mph_dr_of_probe.idx = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl-usb2-mph\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"port0\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"port1\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl,invert-drvvbus\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,invert-pwr-fault\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"phy_type\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fsl,usb-erratum-a007792\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fsl,usb-erratum-a005275\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fsl,usb_erratum-a005697\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fsl,usb_erratum-a006918\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl,usb_erratum-14\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"phy-clk-valid\00", [18 x i8] zeroinitializer }, align 32
@fsl_usb2_mph_dr_of_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 244, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Could not get controller version\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fsl_usb2_mph_dr_of_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/usb/host/fsl-mph-dr-of.c\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsl_usb2_mph_dr_of_probe._entry_ptr = internal global ptr @fsl_usb2_mph_dr_of_probe._entry, section ".printk_index", align 4
@fsl_usb2_mph_dr_of_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.15, i32 255, ptr @.str.20, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't register usb device\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@fsl_usb2_mph_dr_of_probe._entry_ptr.21 = internal global ptr @fsl_usb2_mph_dr_of_probe._entry.18, section ".printk_index", align 4
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dr_mode\00", [24 x i8] zeroinitializer }, align 32
@dr_mode_data = internal constant { [3 x %struct.fsl_usb2_dev_data], [36 x i8] } { [3 x %struct.fsl_usb2_dev_data] [%struct.fsl_usb2_dev_data { ptr @.str.25, [3 x ptr] [ptr @.str.26, ptr null, ptr null], i32 1 }, %struct.fsl_usb2_dev_data { ptr @.str.27, [3 x ptr] [ptr @.str.28, ptr @.str.26, ptr @.str.29], i32 3 }, %struct.fsl_usb2_dev_data { ptr @.str.30, [3 x ptr] [ptr @.str.29, ptr null, ptr null], i32 2 }], [36 x i8] zeroinitializer }, align 32
@get_dr_mode_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.15, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014%pOF: Invalid 'dr_mode' property, fallback to host mode\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"get_dr_mode_data\00", [47 x i8] zeroinitializer }, align 32
@get_dr_mode_data._entry_ptr = internal global ptr @get_dr_mode_data._entry, section ".printk_index", align 4
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fsl-ehci\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"otg\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl-usb2-otg\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl-usb2-udc\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"peripheral\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ulpi\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"utmi\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"utmi_wide\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"utmi_dual\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsl-usb2-dr\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl-usb2-dr-v1.6\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl-usb2-dr-v2.2\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl-usb2-dr-v2.4\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl-usb2-dr-v2.5\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fsl,mpc5121-usb2-dr\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl-usb2-mph-v1.6\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl-usb2-mph-v2.2\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl-usb2-mph-v2.4\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl-usb2-mph-v2.5\00", [46 x i8] zeroinitializer }, align 32
@fsl_usb2_mpc8xxx_pd = internal global { { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }, [44 x i8] } { { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } { i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i32 0, i8 8, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.47 = private unnamed_addr constant [23 x i8] c"fsl_usb2_mph_dr_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 360, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 362, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [25 x i8] c"fsl_usb2_mph_dr_of_match\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 350, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant [4 x i8] c"idx\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 182, i32 22 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 200, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 201, i32 27 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 204, i32 27 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 209, i32 27 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 212, i32 27 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 219, i32 29 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 225, i32 29 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 227, i32 29 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 229, i32 29 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 231, i32 29 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 233, i32 29 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 240, i32 29 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 244, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 255, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 47, i32 29 }
@___asan_gen_.125 = private unnamed_addr constant [13 x i8] c"dr_mode_data\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 24, i32 33 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 54, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 26, i32 14 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 27, i32 16 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 31, i32 14 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 32, i32 16 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 32, i32 44 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 36, i32 14 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 63, i32 28 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 65, i32 28 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 67, i32 28 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 69, i32 28 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 71, i32 28 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 139, i32 34 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 140, i32 35 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 142, i32 40 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 144, i32 40 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 146, i32 40 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 155, i32 34 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 159, i32 35 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 161, i32 40 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 163, i32 40 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 165, i32 40 }
@___asan_gen_.200 = private unnamed_addr constant [20 x i8] c"fsl_usb2_mpc8xxx_pd\00", align 1
@___asan_gen_.201 = private constant [36 x i8] c"../drivers/usb/host/fsl-mph-dr-of.c\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 346, i32 38 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_fsl_usb2_mph_dr_driver_exit, ptr @__initcall__kmod_fsl_mph_dr_of__229_369_fsl_usb2_mph_dr_driver_init6, ptr @fsl_usb2_mph_dr_driver_exit, ptr @fsl_usb2_mph_dr_of_probe._entry, ptr @fsl_usb2_mph_dr_of_probe._entry.18, ptr @fsl_usb2_mph_dr_of_probe._entry_ptr, ptr @fsl_usb2_mph_dr_of_probe._entry_ptr.21, ptr @get_dr_mode_data._entry, ptr @get_dr_mode_data._entry_ptr, ptr @fsl_usb2_mph_dr_driver, ptr @.str, ptr @fsl_usb2_mph_dr_of_match, ptr @fsl_usb2_mph_dr_of_probe.idx, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @dr_mode_data, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @fsl_usb2_mpc8xxx_pd], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_usb2_mph_dr_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_usb2_mph_dr_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_usb2_mph_dr_of_probe.idx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_usb2_mph_dr_of_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_usb2_mph_dr_of_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_mode_data to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_dr_mode_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_usb2_mpc8xxx_pd to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_usb2_mph_dr_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_usb2_mph_dr_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsl_usb2_mph_dr_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_usb2_mph_dr_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_usb2_mph_dr_of_probe(ptr noundef %ofdev) #2 align 64 {
entry:
  %data = alloca %struct.fsl_usb2_platform_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %data) #7
  %call = tail call zeroext i1 @of_device_is_available(ptr noundef %1) #7
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_match_device(ptr noundef nonnull @fsl_usb2_mph_dr_of_match, ptr noundef %dev) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %data5 = getelementptr inbounds %struct.of_device_id, ptr %call2, i32 0, i32 3
  %2 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data5, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %4 = call ptr @memcpy(ptr %data, ptr %3, i32 84)
  br label %if.end9

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %5 = call ptr @memset(ptr %data, i32 0, i32 84)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  %call.i = tail call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef null) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end9.do.end.i_crit_edge, label %for.body.preheader.i

if.end9.do.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.body.preheader.i:                             ; preds = %if.end9
  %call1.i = tail call i32 @strcmp(ptr noundef nonnull %call.i, ptr noundef nonnull dereferenceable(5) @.str.25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.body.preheader.i.get_dr_mode_data.exit_crit_edge, label %for.cond.i

for.body.preheader.i.get_dr_mode_data.exit_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_dr_mode_data.exit

for.cond.i:                                       ; preds = %for.body.preheader.i
  %call1.1.i = tail call i32 @strcmp(ptr noundef nonnull %call.i, ptr noundef nonnull dereferenceable(4) @.str.27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %tobool2.not.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %tobool2.not.1.i, label %for.cond.i.get_dr_mode_data.exit_crit_edge, label %for.cond.1.i

for.cond.i.get_dr_mode_data.exit_crit_edge:       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_dr_mode_data.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = tail call i32 @strcmp(ptr noundef nonnull %call.i, ptr noundef nonnull dereferenceable(11) @.str.30) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %tobool2.not.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %tobool2.not.2.i, label %for.cond.1.i.get_dr_mode_data.exit_crit_edge, label %for.cond.1.i.do.end.i_crit_edge

for.cond.1.i.do.end.i_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.cond.1.i.get_dr_mode_data.exit_crit_edge:     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_dr_mode_data.exit

do.end.i:                                         ; preds = %for.cond.1.i.do.end.i_crit_edge, %if.end9.do.end.i_crit_edge
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1) #11
  br label %get_dr_mode_data.exit

get_dr_mode_data.exit:                            ; preds = %do.end.i, %for.cond.1.i.get_dr_mode_data.exit_crit_edge, %for.cond.i.get_dr_mode_data.exit_crit_edge, %for.body.preheader.i.get_dr_mode_data.exit_crit_edge
  %retval.0.i = phi ptr [ @dr_mode_data, %do.end.i ], [ @dr_mode_data, %for.body.preheader.i.get_dr_mode_data.exit_crit_edge ], [ getelementptr inbounds ([3 x %struct.fsl_usb2_dev_data], ptr @dr_mode_data, i32 0, i32 1), %for.cond.i.get_dr_mode_data.exit_crit_edge ], [ getelementptr inbounds ([3 x %struct.fsl_usb2_dev_data], ptr @dr_mode_data, i32 0, i32 2), %for.cond.1.i.get_dr_mode_data.exit_crit_edge ]
  %call11 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.else24, label %if.then13

if.then13:                                        ; preds = %get_dr_mode_data.exit
  %call14 = tail call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef null) #7
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then13.if.end17_crit_edge, label %if.then16

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %port_enables = getelementptr inbounds %struct.fsl_usb2_platform_data, ptr %data, i32 0, i32 3
  %6 = ptrtoint ptr %port_enables to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_enables, align 4
  %or = or i32 %7, 1
  store i32 %or, ptr %port_enables, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then13.if.end17_crit_edge
  %call18 = tail call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef null) #7
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end17.if.end37_crit_edge, label %if.then20

if.end17.if.end37_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %port_enables21 = getelementptr inbounds %struct.fsl_usb2_platform_data, ptr %data, i32 0, i32 3
  %8 = ptrtoint ptr %port_enables21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_enables21, align 4
  %or22 = or i32 %9, 2
  store i32 %or22, ptr %port_enables21, align 4
  br label %if.end37

if.else24:                                        ; preds = %get_dr_mode_data.exit
  %call25 = tail call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef null) #7
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.else24.if.end28_crit_edge, label %if.then27

if.else24.if.end28_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then27:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  %invert_drvvbus = getelementptr inbounds %struct.fsl_usb2_platform_data, ptr %data, i32 0, i32 10
  %10 = ptrtoint ptr %invert_drvvbus to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %invert_drvvbus, align 4
  %bf.set = or i16 %bf.load, 1024
  store i16 %bf.set, ptr %invert_drvvbus, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.else24.if.end28_crit_edge
  %call29 = tail call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef null) #7
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end28.if.end35_crit_edge, label %if.then31

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %invert_pwr_fault = getelementptr inbounds %struct.fsl_usb2_platform_data, ptr %data, i32 0, i32 10
  %11 = ptrtoint ptr %invert_pwr_fault to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load32 = load i16, ptr %invert_pwr_fault, align 4
  %bf.set34 = or i16 %bf.load32, 512
  store i16 %bf.set34, ptr %invert_pwr_fault, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.end28.if.end35_crit_edge
  %op_mode = getelementptr inbounds %struct.fsl_usb2_dev_data, ptr %retval.0.i, i32 0, i32 2
  %12 = ptrtoint ptr %op_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %op_mode, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end35, %if.then20, %if.end17.if.end37_crit_edge
  %.sink = phi i32 [ %13, %if.end35 ], [ 0, %if.then20 ], [ 0, %if.end17.if.end37_crit_edge ]
  %operating_mode36 = getelementptr inbounds %struct.fsl_usb2_platform_data, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %operating_mode36 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %operating_mode36, align 4
  %call38 = tail call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef null) #7
  %tobool.not.i164 = icmp eq ptr %call38, null
  br i1 %tobool.not.i164, label %if.end37.determine_usb_phy.exit_crit_edge, label %if.end.i

if.end37.determine_usb_phy.exit_crit_edge:        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %determine_usb_phy.exit

if.end.i:                                         ; preds = %if.end37
  %call.i165 = tail call i32 @strcasecmp(ptr noundef nonnull %call38, ptr noundef nonnull @.str.31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %tobool1.not.i = icmp eq i32 %call.i165, 0
  br i1 %tobool1.not.i, label %if.end.i.determine_usb_phy.exit_crit_edge, label %if.end3.i

if.end.i.determine_usb_phy.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %determine_usb_phy.exit

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call i32 @strcasecmp(ptr noundef nonnull %call38, ptr noundef nonnull @.str.32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end3.i.determine_usb_phy.exit_crit_edge, label %if.end7.i

if.end3.i.determine_usb_phy.exit_crit_edge:       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %determine_usb_phy.exit

if.end7.i:                                        ; preds = %if.end3.i
  %call8.i = tail call i32 @strcasecmp(ptr noundef nonnull %call38, ptr noundef nonnull @.str.33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end7.i.determine_usb_phy.exit_crit_edge, label %if.end11.i

if.end7.i.determine_usb_phy.exit_crit_edge:       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %determine_usb_phy.exit

if.end11.i:                                       ; preds = %if.end7.i
  %call12.i = tail call i32 @strcasecmp(ptr noundef nonnull %call38, ptr noundef nonnull @.str.34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.determine_usb_phy.exit_crit_edge, label %if.end15.i

if.end11.i.determine_usb_phy.exit_crit_edge:      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %determine_usb_phy.exit

if.end15.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %call16.i = tail call i32 @strcasecmp(ptr noundef nonnull %call38, ptr noundef nonnull @.str.35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  %..i = select i1 %tobool17.not.i, i32 4, i32 0
  br label %determine_usb_phy.exit

determine_usb_phy.exit:                           ; preds = %if.end15.i, %if.end11.i.determine_usb_phy.exit_crit_edge, %if.end7.i.determine_usb_phy.exit_crit_edge, %if.end3.i.determine_usb_phy.exit_crit_edge, %if.end.i.determine_usb_phy.exit_crit_edge, %if.end37.determine_usb_phy.exit_crit_edge
  %retval.0.i166 = phi i32 [ 0, %if.end37.determine_usb_phy.exit_crit_edge ], [ 1, %if.end.i.determine_usb_phy.exit_crit_edge ], [ 2, %if.end3.i.determine_usb_phy.exit_crit_edge ], [ 3, %if.end7.i.determine_usb_phy.exit_crit_edge ], [ 5, %if.end11.i.determine_usb_phy.exit_crit_edge ], [ %..i, %if.end15.i ]
  %phy_mode = getelementptr inbounds %struct.fsl_usb2_platform_data, ptr %data, i32 0, i32 2
  %15 = ptrtoint ptr %phy_mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i166, ptr %phy_mode, align 4
  %call.i167 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i167)
  %tobool.not.i168 = icmp eq i32 %call.i167, 0
  br i1 %tobool.not.i168, label %if.end21.i, label %if.then.i

if.then.i:                                        ; preds = %determine_usb_phy.exit
  %call1.i169 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i169)
  %tobool2.not.i170 = icmp eq i32 %call1.i169, 0
  br i1 %tobool2.not.i170, label %if.else.i, label %if.then.i.usb_get_ver_info.exit_crit_edge

if.then.i.usb_get_ver_info.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_get_ver_info.exit

if.else.i:                                        ; preds = %if.then.i
  %call4.i171 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i171)
  %tobool5.not.i172 = icmp eq i32 %call4.i171, 0
  br i1 %tobool5.not.i172, label %if.else7.i, label %if.else.i.usb_get_ver_info.exit_crit_edge

if.else.i.usb_get_ver_info.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_get_ver_info.exit

if.else7.i:                                       ; preds = %if.else.i
  %call8.i173 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i173)
  %tobool9.not.i174 = icmp eq i32 %call8.i173, 0
  br i1 %tobool9.not.i174, label %if.else7.i.cleanup.sink.split.i_crit_edge, label %if.else7.i.usb_get_ver_info.exit_crit_edge

if.else7.i.usb_get_ver_info.exit_crit_edge:       ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_get_ver_info.exit

if.else7.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end21.i:                                       ; preds = %determine_usb_phy.exit
  %call22.i = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end21.i.usb_get_ver_info.exit_crit_edge

if.end21.i.usb_get_ver_info.exit_crit_edge:       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_get_ver_info.exit

if.end25.i:                                       ; preds = %if.end21.i
  %call26.i = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end25.i.usb_get_ver_info.exit_crit_edge, label %if.then28.i

if.end25.i.usb_get_ver_info.exit_crit_edge:       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_get_ver_info.exit

if.then28.i:                                      ; preds = %if.end25.i
  %call29.i = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.else32.i, label %if.then28.i.usb_get_ver_info.exit_crit_edge

if.then28.i.usb_get_ver_info.exit_crit_edge:      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_get_ver_info.exit

if.else32.i:                                      ; preds = %if.then28.i
  %call33.i = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.else36.i, label %if.else32.i.usb_get_ver_info.exit_crit_edge

if.else32.i.usb_get_ver_info.exit_crit_edge:      ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_get_ver_info.exit

if.else36.i:                                      ; preds = %if.else32.i
  %call37.i = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.else36.i.cleanup.sink.split.i_crit_edge, label %if.else36.i.usb_get_ver_info.exit_crit_edge

if.else36.i.usb_get_ver_info.exit_crit_edge:      ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_get_ver_info.exit

if.else36.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else36.i.cleanup.sink.split.i_crit_edge, %if.else7.i.cleanup.sink.split.i_crit_edge
  %.str.45.sink.i = phi ptr [ @.str.40, %if.else7.i.cleanup.sink.split.i_crit_edge ], [ @.str.45, %if.else36.i.cleanup.sink.split.i_crit_edge ]
  %call41.i = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull %.str.45.sink.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  %.62.i = select i1 %tobool42.not.i, i32 0, i32 4
  br label %usb_get_ver_info.exit

usb_get_ver_info.exit:                            ; preds = %cleanup.sink.split.i, %if.else36.i.usb_get_ver_info.exit_crit_edge, %if.else32.i.usb_get_ver_info.exit_crit_edge, %if.then28.i.usb_get_ver_info.exit_crit_edge, %if.end25.i.usb_get_ver_info.exit_crit_edge, %if.end21.i.usb_get_ver_info.exit_crit_edge, %if.else7.i.usb_get_ver_info.exit_crit_edge, %if.else.i.usb_get_ver_info.exit_crit_edge, %if.then.i.usb_get_ver_info.exit_crit_edge
  %retval.0.i175 = phi i32 [ 1, %if.then.i.usb_get_ver_info.exit_crit_edge ], [ 2, %if.else.i.usb_get_ver_info.exit_crit_edge ], [ 3, %if.else7.i.usb_get_ver_info.exit_crit_edge ], [ 0, %if.end21.i.usb_get_ver_info.exit_crit_edge ], [ -1, %if.end25.i.usb_get_ver_info.exit_crit_edge ], [ 1, %if.then28.i.usb_get_ver_info.exit_crit_edge ], [ 2, %if.else32.i.usb_get_ver_info.exit_crit_edge ], [ 3, %if.else36.i.usb_get_ver_info.exit_crit_edge ], [ %.62.i, %cleanup.sink.split.i ]
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval.0.i175, ptr %data, align 4
  %call.i176 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i176, null
  %has_fsl_erratum_a007792 = getelementptr inbounds %struct.fsl_usb2_platform_data, ptr %data, i32 0, i32 10
  %17 = ptrtoint ptr %has_fsl_erratum_a007792 to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load42 = load i16, ptr %has_fsl_erratum_a007792, align 4
  %bf.shl = select i1 %tobool.i.not, i16 0, i16 64
  %bf.clear43 = and i16 %bf.load42, -127
  %bf.set44 = or i16 %bf.clear43, %bf.shl
  %call.i177 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef null) #7
  %tobool.i178.not = icmp eq ptr %call.i177, null
  %bf.shl49 = select i1 %tobool.i178.not, i16 0, i16 16
  %bf.set51 = or i16 %bf.set44, %bf.shl49
  %call.i179 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef null) #7
  %tobool.i180.not = icmp eq ptr %call.i179, null
  %bf.shl57 = select i1 %tobool.i180.not, i16 0, i16 8
  %bf.set59 = or i16 %bf.set51, %bf.shl57
  %call.i181 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef null) #7
  %tobool.i182.not = icmp eq ptr %call.i181, null
  %bf.shl65 = select i1 %tobool.i182.not, i16 0, i16 4
  %bf.set67 = or i16 %bf.set59, %bf.shl65
  %call.i183 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef null) #7
  %tobool.i184.not = icmp eq ptr %call.i183, null
  %bf.shl73 = select i1 %tobool.i184.not, i16 0, i16 32
  %call.i185 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef null) #7
  %tobool.i186.not = icmp eq ptr %call.i185, null
  %bf.shl81 = select i1 %tobool.i186.not, i16 0, i16 2
  %bf.clear82 = or i16 %bf.set67, %bf.shl73
  %bf.set83 = or i16 %bf.clear82, %bf.shl81
  %18 = ptrtoint ptr %has_fsl_erratum_a007792 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %bf.set83, ptr %has_fsl_erratum_a007792, align 4
  %19 = and i16 %bf.load42, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool87.not = icmp eq i16 %19, 0
  br i1 %tobool87.not, label %usb_get_ver_info.exit.if.end94_crit_edge, label %if.then88

usb_get_ver_info.exit.if.end94_crit_edge:         ; preds = %usb_get_ver_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

if.then88:                                        ; preds = %usb_get_ver_info.exit
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp = icmp eq i32 %21, -1
  br i1 %cmp, label %do.end, label %if.then88.if.end94_crit_edge

if.then88.if.end94_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

do.end:                                           ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end94:                                         ; preds = %if.then88.if.end94_crit_edge, %usb_get_ver_info.exit.if.end94_crit_edge
  %resource.i = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 7
  %num_resources.i = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 6
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end94
  %i.0193 = phi i32 [ 0, %if.end94 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fsl_usb2_dev_data, ptr %retval.0.i, i32 0, i32 1, i32 %i.0193
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %tobool97.not = icmp eq ptr %23, null
  br i1 %tobool97.not, label %for.body.for.inc_crit_edge, label %if.end99

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end99:                                         ; preds = %for.body
  %24 = load i32, ptr @fsl_usb2_mph_dr_of_probe.idx, align 4
  %25 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resource.i, align 8
  %27 = ptrtoint ptr %num_resources.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_resources.i, align 4
  %call.i187 = call ptr @platform_device_alloc(ptr noundef nonnull %23, i32 noundef %24) #7
  %tobool.not.i188 = icmp eq ptr %call.i187, null
  br i1 %tobool.not.i188, label %if.end99.error.i_crit_edge, label %if.end.i189

if.end99.error.i_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %error.i

if.end.i189:                                      ; preds = %if.end99
  %parent.i = getelementptr inbounds %struct.platform_device, ptr %call.i187, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev, ptr %parent.i, align 8
  %30 = ptrtoint ptr %coherent_dma_mask.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %coherent_dma_mask.i, align 8
  %coherent_dma_mask5.i = getelementptr inbounds %struct.platform_device, ptr %call.i187, i32 0, i32 3, i32 19
  %32 = ptrtoint ptr %coherent_dma_mask5.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %coherent_dma_mask5.i, align 8
  %dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %call.i187, i32 0, i32 3, i32 18
  %33 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dma_mask.i, align 8
  %tobool7.not.i = icmp eq ptr %34, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.else.i190

if.then8.i:                                       ; preds = %if.end.i189
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  br label %if.end18.i

if.else.i190:                                     ; preds = %if.end.i189
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %call.i187, i32 0, i32 3
  %call14.i = call i32 @dma_set_mask(ptr noundef %dev2.i, i64 noundef 4294967295) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.else.i190.if.end18.i_crit_edge, label %if.else.i190.error.i_crit_edge

if.else.i190.error.i_crit_edge:                   ; preds = %if.else.i190
  call void @__sanitizer_cov_trace_pc() #9
  br label %error.i

if.else.i190.if.end18.i_crit_edge:                ; preds = %if.else.i190
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i190.if.end18.i_crit_edge, %if.then8.i
  %call19.i = call i32 @platform_device_add_data(ptr noundef nonnull %call.i187, ptr noundef nonnull %data, i32 noundef 84) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end18.i.error.i_crit_edge

if.end18.i.error.i_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error.i

if.end22.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool23.not.i191 = icmp eq i32 %28, 0
  br i1 %tobool23.not.i191, label %if.end22.i.if.end29.i_crit_edge, label %if.then24.i

if.end22.i.if.end29.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.then24.i:                                      ; preds = %if.end22.i
  %call25.i = call i32 @platform_device_add_resources(ptr noundef nonnull %call.i187, ptr noundef %26, i32 noundef %28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.then24.i.if.end29.i_crit_edge, label %if.then24.i.error.i_crit_edge

if.then24.i.error.i_crit_edge:                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error.i

if.then24.i.if.end29.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then24.i.if.end29.i_crit_edge, %if.end22.i.if.end29.i_crit_edge
  %call30.i = call i32 @platform_device_add(ptr noundef nonnull %call.i187) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end29.i.fsl_usb2_device_register.exit_crit_edge, label %if.end29.i.error.i_crit_edge

if.end29.i.error.i_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error.i

if.end29.i.fsl_usb2_device_register.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsl_usb2_device_register.exit

error.i:                                          ; preds = %if.end29.i.error.i_crit_edge, %if.then24.i.error.i_crit_edge, %if.end18.i.error.i_crit_edge, %if.else.i190.error.i_crit_edge, %if.end99.error.i_crit_edge
  %retval1.0.i = phi i32 [ %call14.i, %if.else.i190.error.i_crit_edge ], [ %call19.i, %if.end18.i.error.i_crit_edge ], [ %call25.i, %if.then24.i.error.i_crit_edge ], [ %call30.i, %if.end29.i.error.i_crit_edge ], [ -12, %if.end99.error.i_crit_edge ]
  call void @platform_device_put(ptr noundef %call.i187) #7
  %36 = inttoptr i32 %retval1.0.i to ptr
  br label %fsl_usb2_device_register.exit

fsl_usb2_device_register.exit:                    ; preds = %error.i, %if.end29.i.fsl_usb2_device_register.exit_crit_edge
  %retval.0.i192 = phi ptr [ %36, %error.i ], [ %call.i187, %if.end29.i.fsl_usb2_device_register.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i192, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end107, label %fsl_usb2_device_register.exit.for.inc_crit_edge

fsl_usb2_device_register.exit.for.inc_crit_edge:  ; preds = %fsl_usb2_device_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end107:                                        ; preds = %fsl_usb2_device_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #11
  %37 = ptrtoint ptr %retval.0.i192 to i32
  br label %cleanup

for.inc:                                          ; preds = %fsl_usb2_device_register.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0193, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %38 = load i32, ptr @fsl_usb2_mph_dr_of_probe.idx, align 4
  %inc111 = add i32 %38, 1
  store i32 %inc111, ptr @fsl_usb2_mph_dr_of_probe.idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end107, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %37, %do.end107 ], [ 0, %for.end ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_usb2_mph_dr_of_remove(ptr noundef %ofdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3
  %call = tail call i32 @device_for_each_child(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @__unregister_subdev) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__unregister_subdev(ptr noundef %dev, ptr nocapture noundef readnone %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  tail call void @platform_device_unregister(ptr noundef %add.ptr) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !46, !47, !48, !50, !51, !52, !53, !55, !57, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @__initcall__kmod_fsl_mph_dr_of__229_369_fsl_usb2_mph_dr_driver_init6, !1, !"__initcall__kmod_fsl_mph_dr_of__229_369_fsl_usb2_mph_dr_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 369, i32 1}
!2 = !{ptr @__exitcall_fsl_usb2_mph_dr_driver_exit, !1, !"__exitcall_fsl_usb2_mph_dr_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description230, !4, !"__UNIQUE_ID_description230", i1 false, i1 false}
!4 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 371, i32 1}
!5 = !{ptr @__UNIQUE_ID_author231, !6, !"__UNIQUE_ID_author231", i1 false, i1 false}
!6 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 372, i32 1}
!7 = !{ptr @__UNIQUE_ID_file232, !8, !"__UNIQUE_ID_file232", i1 false, i1 false}
!8 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 373, i32 1}
!9 = !{ptr @__UNIQUE_ID_license233, !8, !"__UNIQUE_ID_license233", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 362, i32 11}
!12 = !{ptr @fsl_usb2_mph_dr_driver, !13, !"fsl_usb2_mph_dr_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 360, i32 31}
!14 = !{ptr @fsl_usb2_mph_dr_of_probe.idx, !15, !"idx", i1 false, i1 false}
!15 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 182, i32 22}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 200, i32 34}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 201, i32 27}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 204, i32 27}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 209, i32 27}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 212, i32 27}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 219, i32 29}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 225, i32 29}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 227, i32 29}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 229, i32 29}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 231, i32 29}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 233, i32 29}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 240, i32 29}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 244, i32 4}
!42 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @fsl_usb2_mph_dr_of_probe._entry, !41, !"_entry", i1 false, i1 false}
!47 = !{ptr @fsl_usb2_mph_dr_of_probe._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 255, i32 4}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @fsl_usb2_mph_dr_of_probe._entry.18, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @fsl_usb2_mph_dr_of_probe._entry_ptr.21, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 47, i32 29}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 54, i32 2}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @get_dr_mode_data._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @get_dr_mode_data._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 26, i32 14}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 27, i32 16}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 31, i32 14}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 32, i32 16}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 32, i32 44}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 36, i32 14}
!72 = !{ptr @dr_mode_data, !73, !"dr_mode_data", i1 false, i1 false}
!73 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 24, i32 33}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 63, i32 28}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 65, i32 28}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 67, i32 28}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 69, i32 28}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 71, i32 28}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 139, i32 34}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 140, i32 35}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 142, i32 40}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 144, i32 40}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 146, i32 40}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 155, i32 34}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 159, i32 35}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 161, i32 40}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 163, i32 40}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 165, i32 40}
!104 = !{ptr @fsl_usb2_mph_dr_of_match, !105, !"fsl_usb2_mph_dr_of_match", i1 false, i1 false}
!105 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 350, i32 34}
!106 = !{ptr @fsl_usb2_mpc8xxx_pd, !107, !"fsl_usb2_mpc8xxx_pd", i1 false, i1 false}
!107 = !{!"../drivers/usb/host/fsl-mph-dr-of.c", i32 346, i32 38}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
