; ModuleID = '/llk/IR_all_yes/drivers/usb/dwc3/dwc3-imx8mp.c_pt.bc'
source_filename = "../drivers/usb/dwc3/dwc3-imx8mp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.dwc3_imx8mp = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.dwc3 = type { %struct.work_struct, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dwc3_request, %struct.completion, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, [2 x %struct.resource], ptr, [32 x ptr], ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, ptr, i8, ptr, i32, i32, i32, i32, ptr, %struct.notifier_block, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, %struct.dwc3_hwparams, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, [6 x i8], i16, i32, i32, i32 }
%struct.dwc3_request = type { %struct.usb_request, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, i8, ptr, i32, i32, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dwc3_hwparams = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_dwc3_imx8mp__299_359_dwc3_imx8mp_driver_init6 = internal global ptr @dwc3_imx8mp_driver_init, section ".initcall6.init", align 4
@dwc3_imx8mp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dwc3_imx8mp_probe, ptr @dwc3_imx8mp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dwc3_imx8mp_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwc3_imx8mp_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dwc3_imx8mp_driver_exit = internal global ptr @dwc3_imx8mp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias300 = internal constant [39 x i8] c"dwc3_imx8mp.alias=platform:imx8mp-dwc3\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [34 x i8] c"dwc3_imx8mp.author=jun.li@nxp.com\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [46 x i8] c"dwc3_imx8mp.file=drivers/usb/dwc3/dwc3-imx8mp\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [27 x i8] c"dwc3_imx8mp.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [58 x i8] c"dwc3_imx8mp.description=DesignWare USB3 imx8mp Glue Layer\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"imx8mp-dwc3\00", [20 x i8] zeroinitializer }, align 32
@dwc3_imx8mp_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mp-dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@dwc3_imx8mp_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @dwc3_imx8mp_pm_suspend, ptr @dwc3_imx8mp_pm_resume, ptr @dwc3_imx8mp_pm_suspend, ptr @dwc3_imx8mp_pm_resume, ptr @dwc3_imx8mp_pm_suspend, ptr @dwc3_imx8mp_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwc3_imx8mp_runtime_suspend, ptr @dwc3_imx8mp_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@dwc3_imx8mp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 106, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"device node not found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dwc3_imx8mp_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/usb/dwc3/dwc3-imx8mp.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dwc3_imx8mp_probe._entry_ptr = internal global ptr @dwc3_imx8mp_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hsio\00", [27 x i8] zeroinitializer }, align 32
@dwc3_imx8mp_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 125, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get hsio clk, err=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@dwc3_imx8mp_probe._entry_ptr.9 = internal global ptr @dwc3_imx8mp_probe._entry.7, section ".printk_index", align 4
@dwc3_imx8mp_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 131, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to enable hsio clk, err=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@dwc3_imx8mp_probe._entry_ptr.12 = internal global ptr @dwc3_imx8mp_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"suspend\00", [24 x i8] zeroinitializer }, align 32
@dwc3_imx8mp_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 138, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get suspend clk, err=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@dwc3_imx8mp_probe._entry_ptr.16 = internal global ptr @dwc3_imx8mp_probe._entry.14, section ".printk_index", align 4
@dwc3_imx8mp_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 144, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to enable suspend clk, err=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@dwc3_imx8mp_probe._entry_ptr.19 = internal global ptr @dwc3_imx8mp_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snps,dwc3\00", [22 x i8] zeroinitializer }, align 32
@dwc3_imx8mp_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 164, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to find dwc3 core child\0A\00", [32 x i8] zeroinitializer }, align 32
@dwc3_imx8mp_probe._entry_ptr.23 = internal global ptr @dwc3_imx8mp_probe._entry.21, section ".printk_index", align 4
@dwc3_imx8mp_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 170, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to create dwc3 core\0A\00", [36 x i8] zeroinitializer }, align 32
@dwc3_imx8mp_probe._entry_ptr.26 = internal global ptr @dwc3_imx8mp_probe._entry.24, section ".printk_index", align 4
@dwc3_imx8mp_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 176, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to get dwc3 platform device\0A\00", [60 x i8] zeroinitializer }, align 32
@dwc3_imx8mp_probe._entry_ptr.29 = internal global ptr @dwc3_imx8mp_probe._entry.27, section ".printk_index", align 4
@dwc3_imx8mp_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 185, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to request IRQ #%d --> %d\0A\00", [62 x i8] zeroinitializer }, align 32
@dwc3_imx8mp_probe._entry_ptr.32 = internal global ptr @dwc3_imx8mp_probe._entry.30, section ".printk_index", align 4
@dwc3_imx8mp_pm_suspend.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dwc3_imx8mp\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dwc3_imx8mp_pm_suspend\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dwc3 imx8mp pm suspend.\0A\00", [39 x i8] zeroinitializer }, align 32
@dwc3_imx8mp_pm_resume.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 0, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dwc3_imx8mp_pm_resume\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dwc3 imx8mp pm resume.\0A\00", [40 x i8] zeroinitializer }, align 32
@dwc3_imx8mp_runtime_suspend.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 0, i8 80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dwc3_imx8mp_runtime_suspend\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dwc3 imx8mp runtime suspend.\0A\00", [34 x i8] zeroinitializer }, align 32
@dwc3_imx8mp_runtime_resume.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 0, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dwc3_imx8mp_runtime_resume\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dwc3 imx8mp runtime resume.\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"dwc3_imx8mp_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 349, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 353, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"dwc3_imx8mp_of_match\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 343, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant [23 x i8] c"dwc3_imx8mp_dev_pm_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 337, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 106, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 122, i32 41 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 125, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 131, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 135, i32 44 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 138, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 144, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 161, i32 42 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 164, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 170, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 176, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 185, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 286, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 314, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 323, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private constant [34 x i8] c"../drivers/usb/dwc3/dwc3-imx8mp.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 332, i32 2 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_alias300, ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_dwc3_imx8mp_driver_exit, ptr @__initcall__kmod_dwc3_imx8mp__299_359_dwc3_imx8mp_driver_init6, ptr @dwc3_imx8mp_driver_exit, ptr @dwc3_imx8mp_probe._entry, ptr @dwc3_imx8mp_probe._entry.10, ptr @dwc3_imx8mp_probe._entry.14, ptr @dwc3_imx8mp_probe._entry.17, ptr @dwc3_imx8mp_probe._entry.21, ptr @dwc3_imx8mp_probe._entry.24, ptr @dwc3_imx8mp_probe._entry.27, ptr @dwc3_imx8mp_probe._entry.30, ptr @dwc3_imx8mp_probe._entry.7, ptr @dwc3_imx8mp_probe._entry_ptr, ptr @dwc3_imx8mp_probe._entry_ptr.12, ptr @dwc3_imx8mp_probe._entry_ptr.16, ptr @dwc3_imx8mp_probe._entry_ptr.19, ptr @dwc3_imx8mp_probe._entry_ptr.23, ptr @dwc3_imx8mp_probe._entry_ptr.26, ptr @dwc3_imx8mp_probe._entry_ptr.29, ptr @dwc3_imx8mp_probe._entry_ptr.32, ptr @dwc3_imx8mp_probe._entry_ptr.9, ptr @dwc3_imx8mp_driver, ptr @.str, ptr @dwc3_imx8mp_of_match, ptr @dwc3_imx8mp_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_imx8mp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_imx8mp_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_imx8mp_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_imx8mp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_imx8mp_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_imx8mp_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_imx8mp_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_imx8mp_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_imx8mp_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_imx8mp_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_imx8mp_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_imx8mp_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_imx8mp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dwc3_imx8mp_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dwc3_imx8mp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @dwc3_imx8mp_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_imx8mp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #6
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %call.i, align 4
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %glue_base = getelementptr inbounds %struct.dwc3_imx8mp, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %glue_base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %glue_base, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %call13 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.6) #6
  %hsio_clk = getelementptr inbounds %struct.dwc3_imx8mp, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %hsio_clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %hsio_clk, align 4
  %cmp.i164 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i164, label %if.then16, label %if.end22

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call13 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %7) #9
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  %call.i165 = tail call i32 @clk_prepare(ptr noundef %call13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %tobool.not.i = icmp eq i32 %call.i165, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end22.do.end29_crit_edge

if.end22.do.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end29

if.end.i:                                         ; preds = %if.end22
  %call1.i = tail call i32 @clk_enable(ptr noundef %call13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end30, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call13) #6
  br label %do.end29

do.end29:                                         ; preds = %if.then3.i, %if.end22.do.end29_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i165, %if.end22.do.end29_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end30:                                         ; preds = %if.end.i
  %call31 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.13) #6
  %suspend_clk = getelementptr inbounds %struct.dwc3_imx8mp, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %suspend_clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call31, ptr %suspend_clk, align 4
  %cmp.i166 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166, label %if.then34, label %if.end40

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call31 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %9) #9
  br label %disable_hsio_clk

if.end40:                                         ; preds = %if.end30
  %call.i167 = tail call i32 @clk_prepare(ptr noundef %call31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i167)
  %tobool.not.i168 = icmp eq i32 %call.i167, 0
  br i1 %tobool.not.i168, label %if.end.i171, label %if.end40.do.end47_crit_edge

if.end40.do.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end47

if.end.i171:                                      ; preds = %if.end40
  %call1.i169 = tail call i32 @clk_enable(ptr noundef %call31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i169)
  %tobool2.not.i170 = icmp eq i32 %call1.i169, 0
  br i1 %tobool2.not.i170, label %if.end48, label %if.then3.i172

if.then3.i172:                                    ; preds = %if.end.i171
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call31) #6
  br label %do.end47

do.end47:                                         ; preds = %if.then3.i172, %if.end40.do.end47_crit_edge
  %retval.0.i173.ph = phi i32 [ %call1.i169, %if.then3.i172 ], [ %call.i167, %if.end40.do.end47_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i173.ph) #9
  br label %disable_hsio_clk

if.end48:                                         ; preds = %if.end.i171
  %call49 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp = icmp slt i32 %call49, 0
  br i1 %cmp, label %if.end48.disable_clks_crit_edge, label %if.end51

if.end48.disable_clks_crit_edge:                  ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_clks

if.end51:                                         ; preds = %if.end48
  %irq52 = getelementptr inbounds %struct.dwc3_imx8mp, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %irq52 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call49, ptr %irq52, align 4
  %call.i175 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #6
  tail call void @pm_runtime_enable(ptr noundef %dev1) #6
  %call.i176 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176)
  %cmp55 = icmp slt i32 %call.i176, 0
  br i1 %cmp55, label %if.end51.disable_rpm_crit_edge, label %if.end57

if.end51.disable_rpm_crit_edge:                   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_rpm

if.end57:                                         ; preds = %if.end51
  %call58 = tail call ptr @of_get_compatible_child(ptr noundef nonnull %1, ptr noundef nonnull @.str.20) #6
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %if.then60, label %if.end64

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #9
  br label %disable_rpm

if.end64:                                         ; preds = %if.end57
  %call65 = tail call i32 @of_platform_populate(ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef %dev1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end72, label %do.end70

do.end70:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #9
  br label %err_node_put

if.end72:                                         ; preds = %if.end64
  %call73 = tail call ptr @of_find_device_by_node(ptr noundef nonnull %call58) #6
  %dwc3 = getelementptr inbounds %struct.dwc3_imx8mp, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %dwc3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call73, ptr %dwc3, align 4
  %tobool75.not = icmp eq ptr %call73, null
  br i1 %tobool75.not, label %do.end79, label %if.end80

do.end79:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28) #9
  br label %depopulate

if.end80:                                         ; preds = %if.end72
  tail call void @of_node_put(ptr noundef nonnull %call58) #6
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i177 = icmp eq ptr %13, null
  br i1 %tobool.not.i177, label %if.end.i178, label %if.end80.dev_name.exit_crit_edge

if.end80.dev_name.exit_crit_edge:                 ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i178:                                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i178, %if.end80.dev_name.exit_crit_edge
  %retval.0.i179 = phi ptr [ %15, %if.end.i178 ], [ %13, %if.end80.dev_name.exit_crit_edge ]
  %call82 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call49, ptr noundef null, ptr noundef nonnull @dwc3_imx8mp_interrupt, i32 noundef 8192, ptr noundef %retval.0.i179, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end88, label %do.end87

do.end87:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef %call49, i32 noundef %call82) #9
  br label %depopulate

if.end88:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @device_set_wakeup_capable(ptr noundef %dev1, i1 noundef zeroext true) #6
  %call.i180 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #6
  br label %cleanup

depopulate:                                       ; preds = %do.end87, %do.end79
  %err.0 = phi i32 [ %call82, %do.end87 ], [ -19, %do.end79 ]
  tail call void @of_platform_depopulate(ptr noundef %dev1) #6
  br label %err_node_put

err_node_put:                                     ; preds = %depopulate, %do.end70
  %err.1 = phi i32 [ %call65, %do.end70 ], [ %err.0, %depopulate ]
  tail call void @of_node_put(ptr noundef nonnull %call58) #6
  br label %disable_rpm

disable_rpm:                                      ; preds = %err_node_put, %if.then60, %if.end51.disable_rpm_crit_edge
  %err.2 = phi i32 [ %call.i176, %if.end51.disable_rpm_crit_edge ], [ %err.1, %err_node_put ], [ -19, %if.then60 ]
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #6
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #6
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #6, !srcloc !93
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %disable_rpm.disable_clks_crit_edge, label %do.end11.i.i.i.i

disable_rpm.disable_clks_crit_edge:               ; preds = %disable_rpm
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_clks

do.end11.i.i.i.i:                                 ; preds = %disable_rpm
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !94
  br label %disable_clks

disable_clks:                                     ; preds = %do.end11.i.i.i.i, %disable_rpm.disable_clks_crit_edge, %if.end48.disable_clks_crit_edge
  %err.3 = phi i32 [ %call49, %if.end48.disable_clks_crit_edge ], [ %err.2, %disable_rpm.disable_clks_crit_edge ], [ %err.2, %do.end11.i.i.i.i ]
  %17 = ptrtoint ptr %suspend_clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %suspend_clk, align 4
  tail call void @clk_disable(ptr noundef %18) #6
  tail call void @clk_unprepare(ptr noundef %18) #6
  br label %disable_hsio_clk

disable_hsio_clk:                                 ; preds = %disable_clks, %do.end47, %if.then34
  %err.4 = phi i32 [ %9, %if.then34 ], [ %retval.0.i173.ph, %do.end47 ], [ %err.3, %disable_clks ]
  %19 = ptrtoint ptr %hsio_clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hsio_clk, align 4
  tail call void @clk_disable(ptr noundef %20) #6
  tail call void @clk_unprepare(ptr noundef %20) #6
  br label %cleanup

cleanup:                                          ; preds = %disable_hsio_clk, %if.end88, %do.end29, %if.then16, %if.then9, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %5, %if.then9 ], [ %7, %if.then16 ], [ %retval.0.i.ph, %do.end29 ], [ %err.4, %disable_hsio_clk ], [ 0, %if.end88 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_imx8mp_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #6
  tail call void @of_platform_depopulate(ptr noundef %dev1) #6
  %suspend_clk = getelementptr inbounds %struct.dwc3_imx8mp, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %suspend_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %suspend_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %hsio_clk = getelementptr inbounds %struct.dwc3_imx8mp, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %hsio_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hsio_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #6
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #6
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #6, !srcloc !93
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !94
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %driver_data.i.i, align 4
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_compatible_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_imx8mp_interrupt(i32 noundef %irq, ptr nocapture noundef %_dwc3_imx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dwc3 = getelementptr inbounds %struct.dwc3_imx8mp, ptr %_dwc3_imx, i32 0, i32 1
  %0 = ptrtoint ptr %dwc3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dwc3, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pm_suspended = getelementptr inbounds %struct.dwc3_imx8mp, ptr %_dwc3_imx, i32 0, i32 6
  %4 = ptrtoint ptr %pm_suspended to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pm_suspended, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq1 = getelementptr inbounds %struct.dwc3_imx8mp, ptr %_dwc3_imx, i32 0, i32 5
  %6 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq1, align 4
  tail call void @disable_irq_nosync(i32 noundef %7) #6
  %wakeup_pending = getelementptr inbounds %struct.dwc3_imx8mp, ptr %_dwc3_imx, i32 0, i32 7
  %8 = ptrtoint ptr %wakeup_pending to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %wakeup_pending, align 1
  %current_dr_role = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 33
  %9 = ptrtoint ptr %current_dr_role to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %current_dr_role, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.end.cleanup_crit_edge [
    i32 1, label %land.lhs.true
    i32 2, label %if.then8
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %xhci = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 14
  %12 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xhci, align 4
  %tobool2.not = icmp eq ptr %13, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then3

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 0) #6
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev9 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 12
  %14 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev9, align 4
  %call.i21 = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.then3, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_imx8mp_pm_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pm_suspended.i = getelementptr inbounds %struct.dwc3_imx8mp, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pm_suspended.i, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.dwc3_imx8mp_suspend.exit_crit_edge

entry.dwc3_imx8mp_suspend.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dwc3_imx8mp_suspend.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %can_wakeup.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %can_wakeup.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i.i = load i16, ptr %can_wakeup.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i16 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end.i.if.end2.i_crit_edge, label %device_may_wakeup.exit.i

if.end.i.if.end2.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i

device_may_wakeup.exit.i:                         ; preds = %if.end.i
  %wakeup.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 6
  %7 = ptrtoint ptr %wakeup.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wakeup.i.i, align 8
  %tobool2.i.not.i = icmp eq ptr %8, null
  br i1 %tobool2.i.not.i, label %device_may_wakeup.exit.i.if.end2.i_crit_edge, label %if.then1.i

device_may_wakeup.exit.i.if.end2.i_crit_edge:     ; preds = %device_may_wakeup.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i

if.then1.i:                                       ; preds = %device_may_wakeup.exit.i
  %dwc31.i.i = getelementptr inbounds %struct.dwc3_imx8mp, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %dwc31.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dwc31.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %12, null
  br i1 %tobool.not.i1.i, label %if.then1.i.if.end2.i_crit_edge, label %if.end.i.i

if.then1.i.if.end2.i_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i

if.end.i.i:                                       ; preds = %if.then1.i
  %glue_base.i.i = getelementptr inbounds %struct.dwc3_imx8mp, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %glue_base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %glue_base.i.i, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #6, !srcloc !96
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %current_dr_role.i.i = getelementptr inbounds %struct.dwc3, ptr %12, i32 0, i32 33
  %17 = ptrtoint ptr %current_dr_role.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %current_dr_role.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i.i = icmp eq i32 %18, 1
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i.i.if.else.i.i_crit_edge

if.end.i.i.if.else.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %xhci.i.i = getelementptr inbounds %struct.dwc3, ptr %12, i32 0, i32 14
  %19 = ptrtoint ptr %xhci.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xhci.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %20, null
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %if.then5.i.i

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %or.i.i = or i32 %16, -2147483607
  br label %do.body.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.end.i.i.if.else.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp7.i.i = icmp eq i32 %18, 2
  %or9.i.i = or i32 %16, -2147483630
  %spec.select.i.i = select i1 %cmp7.i.i, i32 %or9.i.i, i32 %16
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.else.i.i, %if.then5.i.i
  %val.0.i.i = phi i32 [ %or.i.i, %if.then5.i.i ], [ %spec.select.i.i, %if.else.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %21 = tail call i32 @llvm.bswap.i32(i32 %val.0.i.i) #6
  %22 = ptrtoint ptr %glue_base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %glue_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #6, !srcloc !99
  br label %if.end2.i

if.end2.i:                                        ; preds = %do.body.i.i, %if.then1.i.if.end2.i_crit_edge, %device_may_wakeup.exit.i.if.end2.i_crit_edge, %if.end.i.if.end2.i_crit_edge
  %24 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %pm_suspended.i, align 4
  br label %dwc3_imx8mp_suspend.exit

dwc3_imx8mp_suspend.exit:                         ; preds = %if.end2.i, %entry.dwc3_imx8mp_suspend.exit_crit_edge
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 12, i32 1
  %27 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i15 = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i15, label %dwc3_imx8mp_suspend.exit.if.else_crit_edge, label %device_may_wakeup.exit

dwc3_imx8mp_suspend.exit.if.else_crit_edge:       ; preds = %dwc3_imx8mp_suspend.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

device_may_wakeup.exit:                           ; preds = %dwc3_imx8mp_suspend.exit
  %wakeup.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 12, i32 6
  %28 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %29, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.dwc3_imx8mp, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %31, i32 noundef 1) #6
  br label %if.end

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %dwc3_imx8mp_suspend.exit.if.else_crit_edge
  %suspend_clk = getelementptr inbounds %struct.dwc3_imx8mp, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %suspend_clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %suspend_clk, align 4
  tail call void @clk_disable(ptr noundef %33) #6
  tail call void @clk_unprepare(ptr noundef %33) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %hsio_clk = getelementptr inbounds %struct.dwc3_imx8mp, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %hsio_clk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hsio_clk, align 4
  tail call void @clk_disable(ptr noundef %35) #6
  tail call void @clk_unprepare(ptr noundef %35) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc3_imx8mp_pm_suspend.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwc3_imx8mp_pm_suspend, %if.then8)) #6
          to label %do.end [label %if.then8], !srcloc !100

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc3_imx8mp_pm_suspend.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.35) #6
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_imx8mp_pm_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.dwc3_imx8mp, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 0) #6
  br label %if.end6

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %suspend_clk = getelementptr inbounds %struct.dwc3_imx8mp, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %suspend_clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %suspend_clk, align 4
  %call.i32 = tail call i32 @clk_prepare(ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool.not.i33 = icmp eq i32 %call.i32, 0
  br i1 %tobool.not.i33, label %if.end.i, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %call1.i = tail call i32 @clk_enable(ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end6_crit_edge, label %if.then3.i

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %10) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end.i.if.end6_crit_edge, %if.then
  %hsio_clk = getelementptr inbounds %struct.dwc3_imx8mp, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %hsio_clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hsio_clk, align 4
  %call.i35 = tail call i32 @clk_prepare(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool.not.i36 = icmp eq i32 %call.i35, 0
  br i1 %tobool.not.i36, label %if.end.i39, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i39:                                       ; preds = %if.end6
  %call1.i37 = tail call i32 @clk_enable(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37)
  %tobool2.not.i38 = icmp eq i32 %call1.i37, 0
  br i1 %tobool2.not.i38, label %if.end10, label %if.then3.i40

if.then3.i40:                                     ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %12) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @dwc3_imx8mp_resume(ptr noundef %1)
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  %call.i43 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #6
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc3_imx8mp_pm_resume.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwc3_imx8mp_pm_resume, %if.then17)) #6
          to label %cleanup [label %if.then17], !srcloc !100

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc3_imx8mp_pm_resume.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.37) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end10, %if.then3.i40, %if.end6.cleanup_crit_edge, %if.then3.i, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then17 ], [ 0, %if.end10 ], [ %call1.i, %if.then3.i ], [ %call.i32, %if.else.cleanup_crit_edge ], [ %call1.i37, %if.then3.i40 ], [ %call.i35, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_imx8mp_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc3_imx8mp_runtime_suspend.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwc3_imx8mp_runtime_suspend, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !100

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc3_imx8mp_runtime_suspend.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.39) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pm_suspended.i = getelementptr inbounds %struct.dwc3_imx8mp, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pm_suspended.i, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dwc3_imx8mp_suspend.exit_crit_edge

do.end.dwc3_imx8mp_suspend.exit_crit_edge:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dwc3_imx8mp_suspend.exit

if.end.i:                                         ; preds = %do.end
  %dwc31.i.i = getelementptr inbounds %struct.dwc3_imx8mp, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dwc31.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dwc31.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %7, null
  br i1 %tobool.not.i1.i, label %if.end.i.if.end2.i_crit_edge, label %if.end.i.i

if.end.i.if.end2.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i

if.end.i.i:                                       ; preds = %if.end.i
  %glue_base.i.i = getelementptr inbounds %struct.dwc3_imx8mp, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %glue_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %glue_base.i.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !96
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %current_dr_role.i.i = getelementptr inbounds %struct.dwc3, ptr %7, i32 0, i32 33
  %12 = ptrtoint ptr %current_dr_role.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %current_dr_role.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i.i = icmp eq i32 %13, 1
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i.i.if.else.i.i_crit_edge

if.end.i.i.if.else.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %xhci.i.i = getelementptr inbounds %struct.dwc3, ptr %7, i32 0, i32 14
  %14 = ptrtoint ptr %xhci.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xhci.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %15, null
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %if.then5.i.i

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %or.i.i = or i32 %11, -2147483607
  br label %do.body.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.end.i.i.if.else.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp7.i.i = icmp eq i32 %13, 2
  %or9.i.i = or i32 %11, -2147483630
  %spec.select.i.i = select i1 %cmp7.i.i, i32 %or9.i.i, i32 %11
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.else.i.i, %if.then5.i.i
  %val.0.i.i = phi i32 [ %or.i.i, %if.then5.i.i ], [ %spec.select.i.i, %if.else.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %val.0.i.i) #6
  %17 = ptrtoint ptr %glue_base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %glue_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #6, !srcloc !99
  br label %if.end2.i

if.end2.i:                                        ; preds = %do.body.i.i, %if.end.i.if.end2.i_crit_edge
  %19 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %pm_suspended.i, align 4
  br label %dwc3_imx8mp_suspend.exit

dwc3_imx8mp_suspend.exit:                         ; preds = %if.end2.i, %do.end.dwc3_imx8mp_suspend.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_imx8mp_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc3_imx8mp_runtime_resume.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwc3_imx8mp_runtime_resume, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !100

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc3_imx8mp_runtime_resume.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.41) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @dwc3_imx8mp_resume(ptr noundef %1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc3_imx8mp_resume(ptr nocapture noundef %dwc3_imx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dwc3 = getelementptr inbounds %struct.dwc3_imx8mp, ptr %dwc3_imx, i32 0, i32 1
  %0 = ptrtoint ptr %dwc3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dwc3, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pm_suspended = getelementptr inbounds %struct.dwc3_imx8mp, ptr %dwc3_imx, i32 0, i32 6
  %4 = ptrtoint ptr %pm_suspended to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pm_suspended, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %glue_base.i = getelementptr inbounds %struct.dwc3_imx8mp, ptr %dwc3_imx, i32 0, i32 2
  %6 = ptrtoint ptr %glue_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %glue_base.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %9 = and i32 %8, -1056964737
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %glue_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %glue_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #6, !srcloc !99
  %12 = ptrtoint ptr %pm_suspended to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %pm_suspended, align 4
  %wakeup_pending = getelementptr inbounds %struct.dwc3_imx8mp, ptr %dwc3_imx, i32 0, i32 7
  %13 = ptrtoint ptr %wakeup_pending to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %wakeup_pending, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool2.not = icmp eq i8 %14, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %15 = ptrtoint ptr %wakeup_pending to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %wakeup_pending, align 1
  %current_dr_role = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 33
  %16 = ptrtoint ptr %current_dr_role to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %current_dr_role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp = icmp eq i32 %17, 2
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 12
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 12, i32 22
  %20 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %call.i1 = tail call i32 @__pm_runtime_suspend(ptr noundef %22, i32 noundef 13) #6
  br label %if.end8

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 9000, i32 noundef 10000, i32 noundef 2) #6
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %irq = getelementptr inbounds %struct.dwc3_imx8mp, ptr %dwc3_imx, i32 0, i32 5
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %24) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_dwc3_imx8mp__299_359_dwc3_imx8mp_driver_init6, !1, !"__initcall__kmod_dwc3_imx8mp__299_359_dwc3_imx8mp_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/dwc3/dwc3-imx8mp.c", i32 359, i32 1}
!2 = !{ptr @__exitcall_dwc3_imx8mp_driver_exit, !1, !"__exitcall_dwc3_imx8mp_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias300, !4, !"__UNIQUE_ID_alias300", i1 false, i1 false}
!4 = !{!"../drivers/usb/dwc3/dwc3-imx8mp.c", i32 361, i32 1}
!5 = !{ptr @__UNIQUE_ID_author301, !6, !"__UNIQUE_ID_author301", i1 false, i1 false}
!6 = !{!"../drivers/usb/dwc3/dwc3-imx8mp.c", i32 362, i32 1}
!7 = !{ptr @__UNIQUE_ID_file302, !8, !"__UNIQUE_ID_file302", i1 false, i1 false}
!8 = !{!"../drivers/usb/dwc3/dwc3-imx8mp.c", i32 363, i32 1}
!9 = !{ptr @__UNIQUE_ID_license303, !8, !"__UNIQUE_ID_license303", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_description304, !11, !"__UNIQUE_ID_description304", i1 false, i1 false}
!11 = !{!"../drivers/usb/dwc3/dwc3-imx8mp.c", i32 364, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/dwc3/dwc3-imx8mp.c", i32 353, i32 11}
!14 = !{ptr @dwc3_imx8mp_driver, !15, !"dwc3_imx8mp_driver", i1 false, i1 false}
!15 = !{!"../drivers/usb/dwc3/dwc3-imx8mp.c", i32 349, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/dwc3/dwc3-imx8mp.c", i32 106, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @dwc3_imx8mp_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @dwc3_imx8mp_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/dwc3/dwc3-imx8mp.c", i32 122, i32 41}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/dwc3/dwc3-imx8mp.c", i32 125, i32 3}
!28 = !{ptr @dwc3_imx8mp_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @dwc3_imx8mp_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/dwc3/dwc3-imx8mp.c", i32 131, i32 3}
!32 = !{ptr @dwc3_imx8mp_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @dwc3_imx8mp_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/dwc3/dwc3-imx8mp.c", i32 135, i32 44}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/dwc3/dwc3-imx8mp.c", i32 138, i32 3}
!38 = !{ptr @dwc3_imx8mp_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @dwc3_imx8mp_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/dwc3/dwc3-imx8mp.c", i32 144, i32 3}
!42 = !{ptr @dwc3_imx8mp_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @dwc3_imx8mp_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/dwc3/dwc3-imx8mp.c", i32 161, i32 42}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/dwc3/dwc3-imx8mp.c", i32 164, i32 3}
!48 = !{ptr @dwc3_imx8mp_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @dwc3_imx8mp_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/dwc3/dwc3-imx8mp.c", i32 170, i32 3}
!52 = !{ptr @dwc3_imx8mp_probe._entry.24, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @dwc3_imx8mp_probe._entry_ptr.26, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/dwc3/dwc3-imx8mp.c", i32 176, i32 3}
!56 = !{ptr @dwc3_imx8mp_probe._entry.27, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @dwc3_imx8mp_probe._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/dwc3/dwc3-imx8mp.c", i32 185, i32 3}
!60 = !{ptr @dwc3_imx8mp_probe._entry.30, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @dwc3_imx8mp_probe._entry_ptr.32, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @dwc3_imx8mp_of_match, !63, !"dwc3_imx8mp_of_match", i1 false, i1 false}
!63 = !{!"../drivers/usb/dwc3/dwc3-imx8mp.c", i32 343, i32 34}
!64 = !{ptr @dwc3_imx8mp_dev_pm_ops, !65, !"dwc3_imx8mp_dev_pm_ops", i1 false, i1 false}
!65 = !{!"../drivers/usb/dwc3/dwc3-imx8mp.c", i32 337, i32 32}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/dwc3/dwc3-imx8mp.c", i32 286, i32 2}
!68 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @dwc3_imx8mp_pm_suspend.__UNIQUE_ID_ddebug295, !67, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/dwc3/dwc3-imx8mp.c", i32 314, i32 2}
!73 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @dwc3_imx8mp_pm_resume.__UNIQUE_ID_ddebug296, !72, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/dwc3/dwc3-imx8mp.c", i32 323, i32 2}
!77 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @dwc3_imx8mp_runtime_suspend.__UNIQUE_ID_ddebug297, !76, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/dwc3/dwc3-imx8mp.c", i32 332, i32 2}
!81 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @dwc3_imx8mp_runtime_resume.__UNIQUE_ID_ddebug298, !80, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i64 2148246473}
!93 = !{i64 731296, i64 731321, i64 731343, i64 731359, i64 731371, i64 731391, i64 731415, i64 731431, i64 731443}
!94 = !{i64 2148246661}
!95 = !{i8 0, i8 2}
!96 = !{i64 4237000}
!97 = !{i64 2155499723}
!98 = !{i64 2155500533}
!99 = !{i64 4236582}
!100 = !{i64 2148728869, i64 2148728874, i64 2148728887, i64 2148728931, i64 2148728965, i64 2148728986}
!101 = !{i64 2155501244}
!102 = !{i64 2155502230}
