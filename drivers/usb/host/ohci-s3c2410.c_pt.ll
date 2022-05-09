; ModuleID = '/llk/IR_all_yes/drivers/usb/host/ohci-s3c2410.c_pt.bc'
source_filename = "../drivers/usb/host/ohci-s3c2410.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.s3c2410_hcd_info = type { ptr, [2 x %struct.s3c2410_hcd_port], ptr, ptr, ptr }
%struct.s3c2410_hcd_port = type { i8, i8, i8, i8 }
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.70 }>
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { [4 x i8], [4 x i8] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_ohci_s3c2410__243_494_ohci_s3c2410_init6 = internal global ptr @ohci_s3c2410_init, section ".initcall6.init", align 4
@ohci_hcd_s3c2410_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ohci_hcd_s3c2410_probe, ptr @ohci_hcd_s3c2410_remove, ptr @usb_hcd_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.15, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ohci_hcd_s3c2410_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ohci_hcd_s3c2410_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ohci_s3c2410_cleanup = internal global ptr @ohci_s3c2410_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description244 = internal constant [45 x i8] c"ohci_s3c2410.description=OHCI S3C2410 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [48 x i8] c"ohci_s3c2410.file=drivers/usb/host/ohci-s3c2410\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [25 x i8] c"ohci_s3c2410.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias247 = internal constant [41 x i8] c"ohci_s3c2410.alias=platform:s3c2410-ohci\00", section ".modinfo", align 1
@ohci_s3c2410_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: OHCI S3C2410 driver\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ohci_s3c2410_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/usb/host/ohci-s3c2410.c\00", [32 x i8] zeroinitializer }, align 32
@ohci_s3c2410_init._entry_ptr = internal global ptr @ohci_s3c2410_init._entry, section ".printk_index", align 4
@hcd_name = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ohci-s3c2410\00", [19 x i8] zeroinitializer }, align 32
@ohci_s3c2410_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@ohci_s3c2410_hub_status_data.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ohci_s3c2410\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ohci_s3c2410_hub_status_data\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"oc change on port %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ohci_s3c2410_hub_control\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"s3c2410_hub_control(%p,0x%04x,0x%04x,0x%04x,%p,%04x)\0A\00", [42 x i8] zeroinitializer }, align 32
@ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SetPortFeat: POWER\0A\00", [44 x i8] zeroinitializer }, align 32
@ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.6, ptr @.str.2, ptr @.str.9, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ClearPortFeature: C_OVER_CURRENT\0A\00", [62 x i8] zeroinitializer }, align 32
@ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.6, ptr @.str.2, ptr @.str.10, i8 0, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ClearPortFeature: OVER_CURRENT\0A\00", [32 x i8] zeroinitializer }, align 32
@ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.6, ptr @.str.2, ptr @.str.11, i8 0, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ClearPortFeature: POWER\0A\00", [39 x i8] zeroinitializer }, align 32
@ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.6, ptr @.str.2, ptr @.str.12, i8 0, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wHubCharacteristics 0x%04x\0A\00", [36 x i8] zeroinitializer }, align 32
@ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.6, ptr @.str.2, ptr @.str.13, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wHubCharacteristics after 0x%04x\0A\00", [62 x i8] zeroinitializer }, align 32
@ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.6, ptr @.str.2, ptr @.str.14, i8 0, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GetPortStatus(%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s3c2410-ohci\00", [19 x i8] zeroinitializer }, align 32
@ohci_hcd_s3c2410_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2410-ohci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ohci_hcd_s3c2410_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ohci_hcd_s3c2410_drv_suspend, ptr @ohci_hcd_s3c2410_drv_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s3c24xx\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb-host\00", [23 x i8] zeroinitializer }, align 32
@clk = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ohci_hcd_s3c2410_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 379, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot get usb-host clock\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ohci_hcd_s3c2410_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ohci_hcd_s3c2410_probe._entry_ptr = internal global ptr @ohci_hcd_s3c2410_probe._entry, section ".printk_index", align 4
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb-bus-host\00", [19 x i8] zeroinitializer }, align 32
@usb_clk = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ohci_hcd_s3c2410_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 386, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot get usb-bus-host clock\0A\00", [33 x i8] zeroinitializer }, align 32
@ohci_hcd_s3c2410_probe._entry_ptr.25 = internal global ptr @ohci_hcd_s3c2410_probe._entry.23, section ".printk_index", align 4
@s3c2410_start_hc.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s3c2410_start_hc\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s3c2410_start_hc:\0A\00", [45 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@s3c2410_stop_hc.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s3c2410_stop_hc\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s3c2410_stop_hc:\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 8961, i64 8963]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 16, i64 3, i64 8, i64 19]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 16, i64 40966, i64 41728]
@___asan_gen_.32 = private unnamed_addr constant [24 x i8] c"ohci_hcd_s3c2410_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 461, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 477, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [9 x i8] c"hcd_name\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 42, i32 19 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 124, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 175, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 193, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 202, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 213, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 222, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 247, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 265, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 273, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 466, i32 11 }
@___asan_gen_.89 = private unnamed_addr constant [24 x i8] c"ohci_hcd_s3c2410_dt_ids\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 454, i32 34 }
@___asan_gen_.92 = private unnamed_addr constant [24 x i8] c"ohci_hcd_s3c2410_pm_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 449, i32 32 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 364, i32 59 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 377, i32 32 }
@___asan_gen_.101 = private unnamed_addr constant [4 x i8] c"clk\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 44, i32 20 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 379, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 384, i32 36 }
@___asan_gen_.122 = private unnamed_addr constant [8 x i8] c"usb_clk\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 45, i32 20 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 386, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 64, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private constant [35 x i8] c"../drivers/usb/host/ohci-s3c2410.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 84, i32 2 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_alias247, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_ohci_s3c2410_cleanup, ptr @__initcall__kmod_ohci_s3c2410__243_494_ohci_s3c2410_init6, ptr @ohci_hcd_s3c2410_probe._entry, ptr @ohci_hcd_s3c2410_probe._entry.23, ptr @ohci_hcd_s3c2410_probe._entry_ptr, ptr @ohci_hcd_s3c2410_probe._entry_ptr.25, ptr @ohci_s3c2410_cleanup, ptr @ohci_s3c2410_init._entry, ptr @ohci_s3c2410_init._entry_ptr, ptr @ohci_hcd_s3c2410_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @hcd_name, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @ohci_hcd_s3c2410_dt_ids, ptr @ohci_hcd_s3c2410_pm_ops, ptr @.str.16, ptr @.str.17, ptr @clk, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @usb_clk, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_hcd_s3c2410_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_s3c2410_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcd_name to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_hcd_s3c2410_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_hcd_s3c2410_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_hcd_s3c2410_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_clk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_hcd_s3c2410_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_s3c2410_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_disabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @hcd_name) #8
  tail call void @ohci_init_driver(ptr noundef nonnull @ohci_s3c2410_hc_driver, ptr noundef null) #5
  store ptr @ohci_s3c2410_hub_status_data, ptr getelementptr inbounds (%struct.hc_driver, ptr @ohci_s3c2410_hc_driver, i32 0, i32 18), align 4
  store ptr @ohci_s3c2410_hub_control, ptr getelementptr inbounds (%struct.hc_driver, ptr @ohci_s3c2410_hc_driver, i32 0, i32 19), align 4
  %call2 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ohci_hcd_s3c2410_driver, ptr noundef null) #5
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ohci_s3c2410_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @ohci_hcd_s3c2410_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ohci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_s3c2410_hub_status_data(ptr noundef %hcd, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %platform_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i.i, align 8
  %call1 = tail call i32 @ohci_hub_status_data(ptr noundef %hcd, ptr noundef %buf) #5
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %port2 = getelementptr inbounds %struct.s3c2410_hcd_info, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %cmp3 = phi i1 [ true, %if.end ], [ false, %for.inc.for.body_crit_edge ]
  %portno.040 = phi i32 [ 0, %if.end ], [ 1, %for.inc.for.body_crit_edge ]
  %orig.039 = phi i32 [ %call1, %if.end ], [ %orig.1, %for.inc.for.body_crit_edge ]
  %port.037 = phi ptr [ %port2, %if.end ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %oc_changed = getelementptr inbounds %struct.s3c2410_hcd_port, ptr %port.037, i32 0, i32 3
  %4 = ptrtoint ptr %oc_changed to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %oc_changed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp4 = icmp eq i8 %5, 1
  br i1 %cmp4, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %6 = ptrtoint ptr %port.037 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port.037, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %land.lhs.true.for.inc_crit_edge, label %do.body

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ohci_s3c2410_hub_status_data.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ohci_s3c2410_hub_status_data, %if.then12)) #5
          to label %do.end [label %if.then12], !srcloc !97

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ohci_s3c2410_hub_status_data.__UNIQUE_ID_ddebug234, ptr noundef %10, ptr noundef nonnull @.str.5, i32 noundef %portno.040) #5
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %11 = tail call i32 @llvm.smax.i32(i32 %orig.039, i32 1)
  %shl = shl nuw nsw i32 2, %portno.040
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %buf, align 1
  %14 = trunc i32 %shl to i8
  %conv20 = or i8 %13, %14
  store i8 %conv20, ptr %buf, align 1
  br label %for.inc

for.inc:                                          ; preds = %do.end, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %orig.1 = phi i32 [ %11, %do.end ], [ %orig.039, %land.lhs.true.for.inc_crit_edge ], [ %orig.039, %for.body.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.s3c2410_hcd_port, ptr %port.037, i32 1
  br i1 %cmp3, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %orig.1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_s3c2410_hub_control(ptr noundef %hcd, i16 noundef zeroext %typeReq, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr noundef %buf, i16 noundef zeroext %wLength) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %platform_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ohci_s3c2410_hub_control, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !97

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hcd, align 8
  %conv = zext i16 %typeReq to i32
  %conv4 = zext i16 %wValue to i32
  %conv5 = zext i16 %wIndex to i32
  %conv6 = zext i16 %wLength to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug235, ptr noundef %5, ptr noundef nonnull @.str.7, ptr noundef %hcd, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv5, ptr noundef %buf, i32 noundef %conv6) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then8, label %if.end10

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 @ohci_hub_control(ptr noundef %hcd, i16 noundef zeroext %typeReq, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr noundef %buf, i16 noundef zeroext %wLength) #5
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %6 = zext i16 %typeReq to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %typeReq, label %if.end10.sw.epilog132_crit_edge [
    i16 8963, label %sw.bb
    i16 8961, label %sw.bb36
  ]

if.end10.sw.epilog132_crit_edge:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog132

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %wValue)
  %cmp13 = icmp eq i16 %wValue, 8
  br i1 %cmp13, label %do.body16, label %sw.bb.sw.epilog132_crit_edge

sw.bb.sw.epilog132_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog132

do.body16:                                        ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ohci_s3c2410_hub_control, %if.then28)) #5
          to label %if.end.i [label %if.then28], !srcloc !97

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug236, ptr noundef %8, ptr noundef nonnull @.str.8) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then28, %do.body16
  %power_control.i = getelementptr inbounds %struct.s3c2410_hcd_info, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %power_control.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %power_control.i, align 4
  %cmp1.not.i = icmp eq ptr %10, null
  br i1 %cmp1.not.i, label %if.end.i.cleanup_crit_edge, label %if.then2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv34 = zext i16 %wIndex to i32
  %sub.i = add nsw i32 %conv34, -1
  %power.i = getelementptr %struct.s3c2410_hcd_info, ptr %3, i32 0, i32 1, i32 %sub.i, i32 1
  %11 = ptrtoint ptr %power.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %power.i, align 1
  %12 = ptrtoint ptr %power_control.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %power_control.i, align 4
  tail call void %13(i32 noundef %sub.i, i32 noundef 1) #5
  br label %cleanup

sw.bb36:                                          ; preds = %if.end10
  %14 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.30)
  switch i16 %wValue, label %sw.bb36.sw.epilog132_crit_edge [
    i16 19, label %do.body39
    i16 3, label %do.body71
    i16 8, label %do.body104
  ]

sw.bb36.sw.epilog132_crit_edge:                   ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog132

do.body39:                                        ; preds = %sw.bb36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ohci_s3c2410_hub_control, %if.then51)) #5
          to label %do.end56 [label %if.then51], !srcloc !97

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug237, ptr noundef %16, ptr noundef nonnull @.str.9) #5
  br label %do.end56

do.end56:                                         ; preds = %if.then51, %do.body39
  %wIndex.off = add i16 %wIndex, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %wIndex.off)
  %switch = icmp ult i16 %wIndex.off, 2
  br i1 %switch, label %if.then63, label %do.end56.cleanup_crit_edge

do.end56.cleanup_crit_edge:                       ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then63:                                        ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #7
  %conv57 = zext i16 %wIndex to i32
  %sub = add nsw i32 %conv57, -1
  %oc_changed = getelementptr %struct.s3c2410_hcd_info, ptr %3, i32 0, i32 1, i32 %sub, i32 3
  %17 = ptrtoint ptr %oc_changed to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %oc_changed, align 1
  %oc_status = getelementptr %struct.s3c2410_hcd_info, ptr %3, i32 0, i32 1, i32 %sub, i32 2
  %18 = ptrtoint ptr %oc_status to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %oc_status, align 2
  br label %cleanup

do.body71:                                        ; preds = %sw.bb36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ohci_s3c2410_hub_control, %if.then83)) #5
          to label %do.end88 [label %if.then83], !srcloc !97

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug238, ptr noundef %20, ptr noundef nonnull @.str.10) #5
  br label %do.end88

do.end88:                                         ; preds = %if.then83, %do.body71
  %wIndex.off311 = add i16 %wIndex, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %wIndex.off311)
  %switch312 = icmp ult i16 %wIndex.off311, 2
  br i1 %switch312, label %if.then96, label %do.end88.cleanup_crit_edge

do.end88.cleanup_crit_edge:                       ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then96:                                        ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #7
  %conv89 = zext i16 %wIndex to i32
  %sub99 = add nsw i32 %conv89, -1
  %oc_status101 = getelementptr %struct.s3c2410_hcd_info, ptr %3, i32 0, i32 1, i32 %sub99, i32 2
  %21 = ptrtoint ptr %oc_status101 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %oc_status101, align 2
  br label %cleanup

do.body104:                                       ; preds = %sw.bb36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ohci_s3c2410_hub_control, %if.then116)) #5
          to label %do.end121 [label %if.then116], !srcloc !97

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug239, ptr noundef %23, ptr noundef nonnull @.str.11) #5
  br label %do.end121

do.end121:                                        ; preds = %if.then116, %do.body104
  %conv122 = zext i16 %wIndex to i32
  %wIndex.off313 = add i16 %wIndex, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %wIndex.off313)
  %switch314 = icmp ult i16 %wIndex.off313, 2
  br i1 %switch314, label %if.end.i341, label %do.end121.sw.epilog132_crit_edge

do.end121.sw.epilog132_crit_edge:                 ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog132

if.end.i341:                                      ; preds = %do.end121
  %power_control.i339 = getelementptr inbounds %struct.s3c2410_hcd_info, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %power_control.i339 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %power_control.i339, align 4
  %cmp1.not.i340 = icmp eq ptr %25, null
  br i1 %cmp1.not.i340, label %if.end.i341.cleanup_crit_edge, label %if.then2.i344

if.end.i341.cleanup_crit_edge:                    ; preds = %if.end.i341
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2.i344:                                    ; preds = %if.end.i341
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i342 = add nsw i32 %conv122, -1
  %power.i343 = getelementptr %struct.s3c2410_hcd_info, ptr %3, i32 0, i32 1, i32 %sub.i342, i32 1
  %26 = ptrtoint ptr %power.i343 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %power.i343, align 1
  %27 = ptrtoint ptr %power_control.i339 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %power_control.i339, align 4
  tail call void %28(i32 noundef %sub.i342, i32 noundef 0) #5
  br label %cleanup

sw.epilog132:                                     ; preds = %do.end121.sw.epilog132_crit_edge, %sw.bb36.sw.epilog132_crit_edge, %sw.bb.sw.epilog132_crit_edge, %if.end10.sw.epilog132_crit_edge
  %call133 = tail call i32 @ohci_hub_control(ptr noundef %hcd, i16 noundef zeroext %typeReq, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr noundef %buf, i16 noundef zeroext %wLength) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end136, label %sw.epilog132.cleanup_crit_edge

sw.epilog132.cleanup_crit_edge:                   ; preds = %sw.epilog132
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end136:                                        ; preds = %sw.epilog132
  %29 = zext i16 %typeReq to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %typeReq, label %if.end136.cleanup_crit_edge [
    i16 -24570, label %sw.bb138
    i16 -23808, label %do.body200
  ]

if.end136.cleanup_crit_edge:                      ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb138:                                         ; preds = %if.end136
  %power_control = getelementptr inbounds %struct.s3c2410_hcd_info, ptr %3, i32 0, i32 2
  %30 = ptrtoint ptr %power_control to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %power_control, align 4
  %cmp139 = icmp eq ptr %31, null
  br i1 %cmp139, label %sw.bb138.cleanup_crit_edge, label %do.body143

sw.bb138.cleanup_crit_edge:                       ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body143:                                       ; preds = %sw.bb138
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ohci_s3c2410_hub_control, %if.then155)) #5
          to label %do.end161 [label %if.then155], !srcloc !97

if.then155:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hcd, align 8
  %wHubCharacteristics = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 3
  %34 = ptrtoint ptr %wHubCharacteristics to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %wHubCharacteristics, align 1
  %conv158 = zext i16 %35 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug240, ptr noundef %33, ptr noundef nonnull @.str.12, i32 noundef %conv158) #5
  br label %do.end161

do.end161:                                        ; preds = %if.then155, %do.body143
  %wHubCharacteristics162 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 3
  %36 = ptrtoint ptr %wHubCharacteristics162 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %wHubCharacteristics162, align 1
  %38 = and i16 %37, -769
  %39 = or i16 %38, 256
  store i16 %39, ptr %wHubCharacteristics162, align 1
  %enable_oc = getelementptr inbounds %struct.s3c2410_hcd_info, ptr %3, i32 0, i32 3
  %40 = ptrtoint ptr %enable_oc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %enable_oc, align 4
  %tobool168.not = icmp eq ptr %41, null
  br i1 %tobool168.not, label %do.end161.do.body179_crit_edge, label %if.then169

do.end161.do.body179_crit_edge:                   ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body179

if.then169:                                       ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #7
  %42 = and i16 %39, -6657
  %43 = or i16 %42, 2048
  %44 = ptrtoint ptr %wHubCharacteristics162 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %43, ptr %wHubCharacteristics162, align 1
  br label %do.body179

do.body179:                                       ; preds = %if.then169, %do.end161.do.body179_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ohci_s3c2410_hub_control, %if.then191)) #5
          to label %cleanup [label %if.then191], !srcloc !97

if.then191:                                       ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hcd, align 8
  %47 = ptrtoint ptr %wHubCharacteristics162 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %wHubCharacteristics162, align 1
  %conv195 = zext i16 %48 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug241, ptr noundef %46, ptr noundef nonnull @.str.13, i32 noundef %conv195) #5
  br label %cleanup

do.body200:                                       ; preds = %if.end136
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ohci_s3c2410_hub_control, %if.then212)) #5
          to label %do.end218 [label %if.then212], !srcloc !97

if.then212:                                       ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hcd, align 8
  %conv215 = zext i16 %wIndex to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug242, ptr noundef %50, ptr noundef nonnull @.str.14, i32 noundef %conv215) #5
  br label %do.end218

do.end218:                                        ; preds = %if.then212, %do.body200
  %wIndex.off315 = add i16 %wIndex, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %wIndex.off315)
  %switch316 = icmp ult i16 %wIndex.off315, 2
  br i1 %switch316, label %if.then226, label %do.end218.cleanup_crit_edge

do.end218.cleanup_crit_edge:                      ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then226:                                       ; preds = %do.end218
  %conv219 = zext i16 %wIndex to i32
  %sub229 = add nsw i32 %conv219, -1
  %oc_changed231 = getelementptr %struct.s3c2410_hcd_info, ptr %3, i32 0, i32 1, i32 %sub229, i32 3
  %51 = ptrtoint ptr %oc_changed231 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %oc_changed231, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool232.not = icmp eq i8 %52, 0
  br i1 %tobool232.not, label %if.then226.if.end235_crit_edge, label %if.then233

if.then226.if.end235_crit_edge:                   ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end235

if.then233:                                       ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %buf, align 4
  %or234 = or i32 %54, 2048
  store i32 %or234, ptr %buf, align 4
  br label %if.end235

if.end235:                                        ; preds = %if.then233, %if.then226.if.end235_crit_edge
  %oc_status240 = getelementptr %struct.s3c2410_hcd_info, ptr %3, i32 0, i32 1, i32 %sub229, i32 2
  %55 = ptrtoint ptr %oc_status240 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %oc_status240, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool241.not = icmp eq i8 %56, 0
  br i1 %tobool241.not, label %if.end235.cleanup_crit_edge, label %if.then242

if.end235.cleanup_crit_edge:                      ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then242:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %buf, align 4
  %or243 = or i32 %58, 134217728
  store i32 %or243, ptr %buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then242, %if.end235.cleanup_crit_edge, %do.end218.cleanup_crit_edge, %if.then191, %do.body179, %sw.bb138.cleanup_crit_edge, %if.end136.cleanup_crit_edge, %sw.epilog132.cleanup_crit_edge, %if.then2.i344, %if.end.i341.cleanup_crit_edge, %if.then96, %do.end88.cleanup_crit_edge, %if.then63, %do.end56.cleanup_crit_edge, %if.then2.i, %if.end.i.cleanup_crit_edge, %if.then8
  %retval.0 = phi i32 [ 0, %sw.bb138.cleanup_crit_edge ], [ 0, %if.then191 ], [ %call9, %if.then8 ], [ %call133, %sw.epilog132.cleanup_crit_edge ], [ 0, %if.end136.cleanup_crit_edge ], [ 0, %if.then242 ], [ 0, %if.end235.cleanup_crit_edge ], [ -22, %if.then96 ], [ -22, %if.then63 ], [ -22, %do.end56.cleanup_crit_edge ], [ -22, %do.end88.cleanup_crit_edge ], [ 0, %do.end218.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.then2.i ], [ 0, %if.end.i341.cleanup_crit_edge ], [ 0, %if.then2.i344 ], [ 0, %do.body179 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ohci_hub_status_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ohci_hub_control(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_hcd_s3c2410_probe(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.s3c2410_usb_set_power.exit78_crit_edge, label %if.end.i

entry.s3c2410_usb_set_power.exit78_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %s3c2410_usb_set_power.exit78

if.end.i:                                         ; preds = %entry
  %power_control.i = getelementptr inbounds %struct.s3c2410_hcd_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %power_control.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %power_control.i, align 4
  %cmp1.not.i = icmp eq ptr %3, null
  br i1 %cmp1.not.i, label %if.end.i.s3c2410_usb_set_power.exit78_crit_edge, label %if.end.i75

if.end.i.s3c2410_usb_set_power.exit78_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %s3c2410_usb_set_power.exit78

if.end.i75:                                       ; preds = %if.end.i
  %power.i = getelementptr %struct.s3c2410_hcd_info, ptr %1, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %power.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %power.i, align 1
  tail call void %3(i32 noundef 0, i32 noundef 1) #5
  %5 = ptrtoint ptr %power_control.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %power_control.i, align 4
  %cmp1.not.i74 = icmp eq ptr %.pr, null
  br i1 %cmp1.not.i74, label %if.end.i75.s3c2410_usb_set_power.exit78_crit_edge, label %if.then2.i77

if.end.i75.s3c2410_usb_set_power.exit78_crit_edge: ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #7
  br label %s3c2410_usb_set_power.exit78

if.then2.i77:                                     ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #7
  %power.i76 = getelementptr %struct.s3c2410_hcd_info, ptr %1, i32 0, i32 1, i32 1, i32 1
  %6 = ptrtoint ptr %power.i76 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %power.i76, align 1
  tail call void %.pr(i32 noundef 1, i32 noundef 1) #5
  br label %s3c2410_usb_set_power.exit78

s3c2410_usb_set_power.exit78:                     ; preds = %if.then2.i77, %if.end.i75.s3c2410_usb_set_power.exit78_crit_edge, %if.end.i.s3c2410_usb_set_power.exit78_crit_edge, %entry.s3c2410_usb_set_power.exit78_crit_edge
  %call4 = tail call ptr @usb_create_hcd(ptr noundef nonnull @ohci_s3c2410_hc_driver, ptr noundef %dev1, ptr noundef nonnull @.str.16) #5
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %s3c2410_usb_set_power.exit78.cleanup_crit_edge, label %if.end

s3c2410_usb_set_power.exit78.cleanup_crit_edge:   ; preds = %s3c2410_usb_set_power.exit78
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %s3c2410_usb_set_power.exit78
  %resource = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 7
  %7 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resource, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %call4, i32 0, i32 17
  %11 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %rsrc_start, align 8
  %12 = load ptr, ptr %resource, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  %sub.i = add i32 %14, 1
  %add.i = sub i32 %sub.i, %16
  %rsrc_len = getelementptr inbounds %struct.usb_hcd, ptr %call4, i32 0, i32 18
  %17 = ptrtoint ptr %rsrc_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add.i, ptr %rsrc_len, align 4
  %18 = load ptr, ptr %resource, align 8
  %call11 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %18) #5
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %call4, i32 0, i32 16
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call11, ptr %regs, align 4
  %cmp.i79 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %call11 to i32
  br label %err_put

if.end17:                                         ; preds = %if.end
  %call19 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.17) #5
  store ptr %call19, ptr @clk, align 4
  %cmp.i80 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i80, label %do.end, label %if.end24

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #8
  %21 = load ptr, ptr @clk, align 4
  %22 = ptrtoint ptr %21 to i32
  br label %err_put

if.end24:                                         ; preds = %if.end17
  %call26 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.22) #5
  store ptr %call26, ptr @usb_clk, align 4
  %cmp.i81 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i81, label %do.end31, label %if.end34

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #8
  %23 = load ptr, ptr @usb_clk, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %err_put

if.end34:                                         ; preds = %if.end24
  %call35 = tail call i32 @platform_get_irq(ptr noundef %dev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end34.err_put_crit_edge, label %if.end38

if.end34.err_put_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_put

if.end38:                                         ; preds = %if.end34
  tail call fastcc void @s3c2410_start_hc(ptr noundef %dev, ptr noundef nonnull %call4)
  %call39 = tail call i32 @usb_add_hcd(ptr noundef nonnull %call4, i32 noundef %call35, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40.not = icmp eq i32 %call39, 0
  br i1 %cmp40.not, label %if.end42, label %err_ioremap

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call4, align 8
  %call43 = tail call i32 @device_wakeup_enable(ptr noundef %26) #5
  br label %cleanup

err_ioremap:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @s3c2410_stop_hc(ptr noundef %dev)
  br label %err_put

err_put:                                          ; preds = %err_ioremap, %if.end34.err_put_crit_edge, %do.end31, %do.end, %if.then14
  %retval2.0 = phi i32 [ %20, %if.then14 ], [ %22, %do.end ], [ %24, %do.end31 ], [ %call39, %err_ioremap ], [ %call35, %if.end34.err_put_crit_edge ]
  tail call void @usb_put_hcd(ptr noundef nonnull %call4) #5
  br label %cleanup

cleanup:                                          ; preds = %err_put, %if.end42, %s3c2410_usb_set_power.exit78.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval2.0, %err_put ], [ 0, %if.end42 ], [ -12, %s3c2410_usb_set_power.exit78.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_hcd_s3c2410_remove(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @usb_remove_hcd(ptr noundef %1) #5
  tail call fastcc void @s3c2410_stop_hc(ptr noundef %dev)
  tail call void @usb_put_hcd(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_platform_shutdown(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c2410_start_hc(ptr noundef %dev, ptr noundef %hcd) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c2410_start_hc.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c2410_start_hc, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !97

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c2410_start_hc.__UNIQUE_ID_ddebug232, ptr noundef %dev1, ptr noundef nonnull @.str.27) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr @usb_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.clk_prepare_enable.exit_crit_edge

do.end.clk_prepare_enable.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %do.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %2) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %do.end.clk_prepare_enable.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 429496000) #5
  %4 = load ptr, ptr @clk, align 4
  %call.i21 = tail call i32 @clk_prepare(ptr noundef %4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool.not.i22 = icmp eq i32 %call.i21, 0
  br i1 %tobool.not.i22, label %if.end.i25, label %clk_prepare_enable.exit.clk_prepare_enable.exit27_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit27_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit27

if.end.i25:                                       ; preds = %clk_prepare_enable.exit
  %call1.i23 = tail call i32 @clk_enable(ptr noundef %4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %tobool2.not.i24 = icmp eq i32 %call1.i23, 0
  br i1 %tobool2.not.i24, label %if.end.i25.clk_prepare_enable.exit27_crit_edge, label %if.then3.i26

if.end.i25.clk_prepare_enable.exit27_crit_edge:   ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit27

if.then3.i26:                                     ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %4) #5
  br label %clk_prepare_enable.exit27

clk_prepare_enable.exit27:                        ; preds = %if.then3.i26, %if.end.i25.clk_prepare_enable.exit27_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit27_crit_edge
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %clk_prepare_enable.exit27.if.end14_crit_edge, label %if.then8

clk_prepare_enable.exit27.if.end14_crit_edge:     ; preds = %clk_prepare_enable.exit27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then8:                                         ; preds = %clk_prepare_enable.exit27
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %hcd, ptr %1, align 4
  %report_oc = getelementptr inbounds %struct.s3c2410_hcd_info, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %report_oc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @s3c2410_hcd_oc, ptr %report_oc, align 4
  %enable_oc = getelementptr inbounds %struct.s3c2410_hcd_info, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %enable_oc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %enable_oc, align 4
  %cmp10.not = icmp eq ptr %8, null
  br i1 %cmp10.not, label %if.then8.if.end14_crit_edge, label %if.then11

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %8(ptr noundef nonnull %1, i32 noundef 1) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then8.if.end14_crit_edge, %clk_prepare_enable.exit27.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c2410_stop_hc(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c2410_stop_hc.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c2410_stop_hc, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !97

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c2410_stop_hc.__UNIQUE_ID_ddebug233, ptr noundef %dev1, ptr noundef nonnull @.str.29) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %do.end.if.end11_crit_edge, label %if.then6

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then6:                                         ; preds = %do.end
  %report_oc = getelementptr inbounds %struct.s3c2410_hcd_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %report_oc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %report_oc, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %1, align 4
  %enable_oc = getelementptr inbounds %struct.s3c2410_hcd_info, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %enable_oc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable_oc, align 4
  %cmp7.not = icmp eq ptr %5, null
  br i1 %cmp7.not, label %if.then6.if.end11_crit_edge, label %if.then8

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %5(ptr noundef nonnull %1, i32 noundef 0) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.then6.if.end11_crit_edge, %do.end.if.end11_crit_edge
  %6 = load ptr, ptr @clk, align 4
  tail call void @clk_disable(ptr noundef %6) #5
  tail call void @clk_unprepare(ptr noundef %6) #5
  %7 = load ptr, ptr @usb_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c2410_hcd_oc(ptr noundef %info, i32 noundef %port_oc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %info, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %port1 = getelementptr inbounds %struct.s3c2410_hcd_info, ptr %info, i32 0, i32 1
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !98
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then11, label %if.end.do.end14_crit_edge

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @trace_hardirqs_off() #5
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %if.end.do.end14_crit_edge
  %power_control.i = getelementptr inbounds %struct.s3c2410_hcd_info, ptr %info, i32 0, i32 2
  %and = and i32 %port_oc, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %do.end14.for.inc_crit_edge, label %land.lhs.true

do.end14.for.inc_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %do.end14
  %1 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %port1, align 1
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool21.not = icmp eq i8 %3, 0
  br i1 %tobool21.not, label %land.lhs.true.for.inc_crit_edge, label %if.end.i

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end.i:                                         ; preds = %land.lhs.true
  %oc_status = getelementptr inbounds %struct.s3c2410_hcd_info, ptr %info, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %oc_status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %oc_status, align 1
  %oc_changed = getelementptr inbounds %struct.s3c2410_hcd_info, ptr %info, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %oc_changed to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %oc_changed, align 1
  %6 = ptrtoint ptr %power_control.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %power_control.i, align 4
  %cmp1.not.i = icmp eq ptr %7, null
  br i1 %cmp1.not.i, label %if.end.i.for.inc_crit_edge, label %if.then2.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %power.i = getelementptr %struct.s3c2410_hcd_info, ptr %info, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %power.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %power.i, align 1
  %9 = ptrtoint ptr %power_control.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %power_control.i, align 4
  tail call void %10(i32 noundef 0, i32 noundef 0) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then2.i, %if.end.i.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %do.end14.for.inc_crit_edge
  %and.1 = and i32 %port_oc, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool17.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool17.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %incdec.ptr = getelementptr %struct.s3c2410_hcd_info, ptr %info, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %incdec.ptr, align 1
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool21.not.1 = icmp eq i8 %13, 0
  br i1 %tobool21.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %if.end.i.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.end.i.1:                                       ; preds = %land.lhs.true.1
  %oc_status.1 = getelementptr %struct.s3c2410_hcd_info, ptr %info, i32 0, i32 1, i32 1, i32 2
  %14 = ptrtoint ptr %oc_status.1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %oc_status.1, align 1
  %oc_changed.1 = getelementptr %struct.s3c2410_hcd_info, ptr %info, i32 0, i32 1, i32 1, i32 3
  %15 = ptrtoint ptr %oc_changed.1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %oc_changed.1, align 1
  %16 = ptrtoint ptr %power_control.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %power_control.i, align 4
  %cmp1.not.i.1 = icmp eq ptr %17, null
  br i1 %cmp1.not.i.1, label %if.end.i.1.for.inc.1_crit_edge, label %if.then2.i.1

if.end.i.1.for.inc.1_crit_edge:                   ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then2.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #7
  %power.i.1 = getelementptr %struct.s3c2410_hcd_info, ptr %info, i32 0, i32 1, i32 1, i32 1
  %18 = ptrtoint ptr %power.i.1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %power.i.1, align 1
  %19 = ptrtoint ptr %power_control.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %power_control.i, align 4
  tail call void %20(i32 noundef 1, i32 noundef 0) #5
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then2.i.1, %if.end.i.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  br i1 %tobool.not, label %if.then34, label %for.inc.1.do.body36_crit_edge

for.inc.1.do.body36_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body36

if.then34:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @trace_hardirqs_on() #5
  br label %do.body36

do.body36:                                        ; preds = %if.then34, %for.inc.1.do.body36_crit_edge
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !99
  %and.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool44.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool44.not, label %if.then48, label %do.body36.do.end51_crit_edge, !prof !100

do.body36.do.end51_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end51

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @warn_bogus_irq_restore() #5
  br label %do.end51

do.end51:                                         ; preds = %if.then48, %do.body36.do.end51_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #5, !srcloc !101
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_hcd_s3c2410_drv_suspend(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.device_may_wakeup.exit_crit_edge, label %land.rhs.i

entry.device_may_wakeup.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %device_may_wakeup.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %4, null
  br label %device_may_wakeup.exit

device_may_wakeup.exit:                           ; preds = %land.rhs.i, %entry.device_may_wakeup.exit_crit_edge
  %5 = phi i1 [ false, %entry.device_may_wakeup.exit_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  %call2 = tail call i32 @ohci_suspend(ptr noundef %1, i1 noundef zeroext %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %device_may_wakeup.exit.cleanup_crit_edge

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  tail call fastcc void @s3c2410_stop_hc(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %device_may_wakeup.exit.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_hcd_s3c2410_drv_resume(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  tail call fastcc void @s3c2410_start_hc(ptr noundef %add.ptr, ptr noundef %1)
  %call1 = tail call i32 @ohci_resume(ptr noundef %1, i1 noundef zeroext false) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ohci_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ohci_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !16, !17, !19, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !55, !57, !59, !61, !62, !63, !64, !65, !66, !68, !70, !71, !72, !74, !76, !78, !79, !80, !82, !83, !84, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__initcall__kmod_ohci_s3c2410__243_494_ohci_s3c2410_init6, !1, !"__initcall__kmod_ohci_s3c2410__243_494_ohci_s3c2410_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 494, i32 1}
!2 = !{ptr @__exitcall_ohci_s3c2410_cleanup, !3, !"__exitcall_ohci_s3c2410_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 500, i32 1}
!4 = !{ptr @__UNIQUE_ID_description244, !5, !"__UNIQUE_ID_description244", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 502, i32 1}
!6 = !{ptr @__UNIQUE_ID_file245, !7, !"__UNIQUE_ID_file245", i1 false, i1 false}
!7 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 503, i32 1}
!8 = !{ptr @__UNIQUE_ID_license246, !7, !"__UNIQUE_ID_license246", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_alias247, !10, !"__UNIQUE_ID_alias247", i1 false, i1 false}
!10 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 504, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 477, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ohci_s3c2410_init._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @ohci_s3c2410_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @hcd_name, !18, !"hcd_name", i1 false, i1 false}
!18 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 42, i32 19}
!19 = !{ptr @ohci_s3c2410_hc_driver, !20, !"ohci_s3c2410_hc_driver", i1 false, i1 false}
!20 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 47, i32 39}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 124, i32 4}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ohci_s3c2410_hub_status_data.__UNIQUE_ID_ddebug234, !22, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 175, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug235, !27, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 193, i32 4}
!32 = !{ptr @ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug236, !31, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 202, i32 4}
!35 = !{ptr @ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug237, !34, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 213, i32 4}
!38 = !{ptr @ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug238, !37, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 222, i32 4}
!41 = !{ptr @ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug239, !40, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 247, i32 3}
!44 = !{ptr @ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug240, !43, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 265, i32 3}
!47 = !{ptr @ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug241, !46, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 273, i32 3}
!50 = !{ptr @ohci_s3c2410_hub_control.__UNIQUE_ID_ddebug242, !49, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 466, i32 11}
!53 = !{ptr @ohci_hcd_s3c2410_driver, !54, !"ohci_hcd_s3c2410_driver", i1 false, i1 false}
!54 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 461, i32 31}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 364, i32 59}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 377, i32 32}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 379, i32 3}
!61 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ohci_hcd_s3c2410_probe._entry, !60, !"_entry", i1 false, i1 false}
!65 = !{ptr @ohci_hcd_s3c2410_probe._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 384, i32 36}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 386, i32 3}
!70 = !{ptr @ohci_hcd_s3c2410_probe._entry.23, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ohci_hcd_s3c2410_probe._entry_ptr.25, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @clk, !73, !"clk", i1 false, i1 false}
!73 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 44, i32 20}
!74 = !{ptr @usb_clk, !75, !"usb_clk", i1 false, i1 false}
!75 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 45, i32 20}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 64, i32 2}
!78 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @s3c2410_start_hc.__UNIQUE_ID_ddebug232, !77, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 84, i32 2}
!82 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @s3c2410_stop_hc.__UNIQUE_ID_ddebug233, !81, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!84 = !{ptr @ohci_hcd_s3c2410_dt_ids, !85, !"ohci_hcd_s3c2410_dt_ids", i1 false, i1 false}
!85 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 454, i32 34}
!86 = !{ptr @ohci_hcd_s3c2410_pm_ops, !87, !"ohci_hcd_s3c2410_pm_ops", i1 false, i1 false}
!87 = !{!"../drivers/usb/host/ohci-s3c2410.c", i32 449, i32 32}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{i64 2148731583, i64 2148731588, i64 2148731601, i64 2148731645, i64 2148731679, i64 2148731700}
!98 = !{i64 642249, i64 642310}
!99 = !{i64 644981}
!100 = !{!"branch_weights", i32 1, i32 2000}
!101 = !{i64 645266}
