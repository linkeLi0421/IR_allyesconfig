; ModuleID = '/llk/IR_all_yes/drivers/usb/host/ehci-st.c_pt.bc'
source_filename = "../drivers/usb/host/ehci-st.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ehci_driver_overrides = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_ehci_pdata = type { i32, i8, ptr, ptr, ptr, ptr }
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
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_ehci_st__295_354_ehci_platform_init6 = internal global ptr @ehci_platform_init, section ".initcall6.init", align 4
@ehci_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @st_ehci_platform_probe, ptr @st_ehci_platform_remove, ptr @usb_hcd_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st_ehci_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st_ehci_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ehci_platform_cleanup = internal global ptr @ehci_platform_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description296 = internal constant [51 x i8] c"ehci_st.description=EHCI STMicroelectronics driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [56 x i8] c"ehci_st.author=Peter Griffin <peter.griffin@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [38 x i8] c"ehci_st.file=drivers/usb/host/ehci-st\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [20 x i8] c"ehci_st.license=GPL\00", section ".modinfo", align 1
@ehci_platform_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: EHCI STMicroelectronics driver\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ehci_platform_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/usb/host/ehci-st.c\00", [37 x i8] zeroinitializer }, align 32
@ehci_platform_init._entry_ptr = internal global ptr @ehci_platform_init._entry, section ".printk_index", align 4
@hcd_name = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ehci-st\00", [24 x i8] zeroinitializer }, align 32
@ehci_platform_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@platform_overrides = internal constant %struct.ehci_driver_overrides { i32 28, ptr @st_ehci_platform_reset, ptr null }, section ".init.rodata", align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"st-ehci\00", [24 x i8] zeroinitializer }, align 32
@st_ehci_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,st-ehci-300x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@st_ehci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @st_ehci_suspend, ptr @st_ehci_resume, ptr @st_ehci_suspend, ptr @st_ehci_resume, ptr @st_ehci_suspend, ptr @st_ehci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ehci_platform_defaults = internal global { %struct.usb_ehci_pdata, [40 x i8] } { %struct.usb_ehci_pdata { i32 0, i8 0, ptr @st_ehci_platform_power_on, ptr @st_ehci_platform_power_off, ptr @st_ehci_platform_power_off, ptr null }, [40 x i8] zeroinitializer }, align 32
@st_ehci_platform_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 165, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no memory resource provided\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"st_ehci_platform_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st_ehci_platform_probe._entry_ptr = internal global ptr @st_ehci_platform_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clk48\00", [26 x i8] zeroinitializer }, align 32
@st_ehci_platform_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.2, i32 199, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"48MHz clk not found\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@st_ehci_platform_probe._entry_ptr.13 = internal global ptr @st_ehci_platform_probe._entry.10, section ".printk_index", align 4
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"softreset\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [21 x i8] c"ehci_platform_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 331, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 349, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [9 x i8] c"hcd_name\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 45, i32 19 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 336, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [12 x i8] c"st_ehci_ids\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 325, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"st_ehci_pm_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 321, i32 8 }
@___asan_gen_.43 = private unnamed_addr constant [23 x i8] c"ehci_platform_defaults\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 143, i32 30 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 165, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 178, i32 38 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 197, i32 40 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 199, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 204, i32 53 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [30 x i8] c"../drivers/usb/host/ehci-st.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 213, i32 53 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_ehci_platform_cleanup, ptr @__initcall__kmod_ehci_st__295_354_ehci_platform_init6, ptr @ehci_platform_cleanup, ptr @ehci_platform_init._entry, ptr @ehci_platform_init._entry_ptr, ptr @st_ehci_platform_probe._entry, ptr @st_ehci_platform_probe._entry.10, ptr @st_ehci_platform_probe._entry_ptr, ptr @st_ehci_platform_probe._entry_ptr.13, ptr @ehci_platform_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @hcd_name, ptr @.str.3, ptr @st_ehci_ids, ptr @st_ehci_pm_ops, ptr @ehci_platform_defaults, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_platform_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcd_name to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_ehci_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_ehci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_platform_defaults to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_ehci_platform_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_ehci_platform_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_platform_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_disabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @hcd_name) #7
  tail call void @ehci_init_driver(ptr noundef nonnull @ehci_platform_hc_driver, ptr noundef nonnull @platform_overrides) #4
  %call2 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ehci_platform_driver, ptr noundef null) #4
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ehci_platform_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @ehci_platform_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ehci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_ehci_platform_reset(ptr noundef %hcd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 16
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 -2147450880) #4, !srcloc !63
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 %9
  %caps = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 18
  %10 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4, ptr %caps, align 4
  %call5 = tail call i32 @ehci_setup(ptr noundef %hcd) #4
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_ehci_platform_probe(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_disabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @platform_get_irq(ptr noundef %dev, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @platform_get_resource(ptr noundef %dev, i32 noundef 512, i32 noundef 0) #4
  %tobool5.not = icmp eq ptr %call4, null
  %dev7 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.4) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.dev_name.exit_crit_edge

if.end8.dev_name.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev7, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end8.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %if.end8.dev_name.exit_crit_edge ]
  %call12 = tail call ptr @usb_create_hcd(ptr noundef nonnull @ehci_platform_hc_driver, ptr noundef %dev7, ptr noundef %retval.0.i) #4
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %dev_name.exit.cleanup_crit_edge, label %if.end15

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %dev_name.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call12, ptr %driver_data.i.i, align 4
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %5 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ehci_platform_defaults, ptr %platform_data, align 8
  %priv18 = getelementptr inbounds %struct.usb_hcd, ptr %call12, i32 2, i32 0, i32 9, i32 3
  %call20 = tail call ptr @devm_phy_get(ptr noundef %dev7, ptr noundef nonnull @.str.8) #4
  %phy = getelementptr inbounds %struct.usb_hcd, ptr %call12, i32 2, i32 0, i32 9, i32 5, i32 2
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call20, ptr %phy, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end15
  %of_node = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call29 = tail call ptr @of_clk_get(ptr noundef %8, i32 noundef 0) #4
  %9 = ptrtoint ptr %priv18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call29, ptr %priv18, align 4
  %cmp.i181 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i181, label %for.cond.preheader.if.then33_crit_edge, label %for.inc

for.cond.preheader.if.then33_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then33

if.then23:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %call20 to i32
  br label %if.then104

if.then33:                                        ; preds = %for.inc.1.if.then33_crit_edge, %for.inc.if.then33_crit_edge, %for.cond.preheader.if.then33_crit_edge
  %clk.0192.lcssa = phi i32 [ 0, %for.cond.preheader.if.then33_crit_edge ], [ 1, %for.inc.if.then33_crit_edge ], [ 2, %for.inc.1.if.then33_crit_edge ]
  %call29.lcssa = phi ptr [ %call29, %for.cond.preheader.if.then33_crit_edge ], [ %call29.1, %for.inc.if.then33_crit_edge ], [ %call29.2, %for.inc.1.if.then33_crit_edge ]
  %cmp37 = icmp eq ptr %call29.lcssa, inttoptr (i32 -517 to ptr)
  br i1 %cmp37, label %if.then33.err_put_clks_crit_edge, label %if.end39

if.then33.err_put_clks_crit_edge:                 ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_put_clks

if.end39:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.le = getelementptr [3 x ptr], ptr %priv18, i32 0, i32 %clk.0192.lcssa
  %11 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.le, align 4
  br label %for.end

for.inc:                                          ; preds = %for.cond.preheader
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call29.1 = tail call ptr @of_clk_get(ptr noundef %13, i32 noundef 1) #4
  %arrayidx.1 = getelementptr %struct.usb_hcd, ptr %call12, i32 2, i32 0, i32 9, i32 3, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call29.1, ptr %arrayidx.1, align 4
  %cmp.i181.1 = icmp ugt ptr %call29.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i181.1, label %for.inc.if.then33_crit_edge, label %for.inc.1

for.inc.if.then33_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then33

for.inc.1:                                        ; preds = %for.inc
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %call29.2 = tail call ptr @of_clk_get(ptr noundef %16, i32 noundef 2) #4
  %arrayidx.2 = getelementptr %struct.usb_hcd, ptr %call12, i32 2, i32 0, i32 9, i32 4
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call29.2, ptr %arrayidx.2, align 4
  %cmp.i181.2 = icmp ugt ptr %call29.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i181.2, label %for.inc.1.if.then33_crit_edge, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.1.if.then33_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then33

for.end:                                          ; preds = %for.inc.1.for.end_crit_edge, %if.end39
  %clk.0189 = phi i32 [ %clk.0192.lcssa, %if.end39 ], [ 3, %for.inc.1.for.end_crit_edge ]
  %call44 = tail call ptr @devm_clk_get(ptr noundef %dev7, ptr noundef nonnull @.str.9) #4
  %clk48 = getelementptr inbounds %struct.usb_hcd, ptr %call12, i32 2, i32 0, i32 9, i32 5
  %18 = ptrtoint ptr %clk48 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call44, ptr %clk48, align 4
  %cmp.i182 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i182, label %do.end50, label %for.end.if.end53_crit_edge

for.end.if.end53_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

do.end50:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7, ptr noundef nonnull @.str.11) #7
  %19 = ptrtoint ptr %clk48 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %clk48, align 4
  br label %if.end53

if.end53:                                         ; preds = %do.end50, %for.end.if.end53_crit_edge
  %call.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev7, ptr noundef nonnull @.str.14, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #4
  %pwr = getelementptr inbounds %struct.usb_hcd, ptr %call12, i32 2, i32 0, i32 9, i32 5, i32 1, i32 1
  %20 = ptrtoint ptr %pwr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %pwr, align 4
  %cmp.i183 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i183, label %if.then58, label %if.end53.if.end65_crit_edge

if.end53.if.end65_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65

if.then58:                                        ; preds = %if.end53
  %cmp61 = icmp eq ptr %call.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp61, label %if.then58.err_put_clks_crit_edge, label %if.end63

if.then58.err_put_clks_crit_edge:                 ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_put_clks

if.end63:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %pwr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %pwr, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.end63, %if.end53.if.end65_crit_edge
  %call.i184 = tail call ptr @__devm_reset_control_get(ptr noundef %dev7, ptr noundef nonnull @.str.15, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #4
  %rst = getelementptr inbounds %struct.usb_hcd, ptr %call12, i32 2, i32 0, i32 9, i32 5, i32 1
  %22 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i184, ptr %rst, align 4
  %cmp.i185 = icmp ugt ptr %call.i184, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185, label %if.then70, label %if.end65.if.end77_crit_edge

if.end65.if.end77_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end77

if.then70:                                        ; preds = %if.end65
  %cmp73 = icmp eq ptr %call.i184, inttoptr (i32 -517 to ptr)
  br i1 %cmp73, label %if.then70.err_put_clks_crit_edge, label %if.end75

if.then70.err_put_clks_crit_edge:                 ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_put_clks

if.end75:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %rst, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.end75, %if.end65.if.end77_crit_edge
  %24 = load ptr, ptr getelementptr inbounds (%struct.usb_ehci_pdata, ptr @ehci_platform_defaults, i32 0, i32 2), align 4
  %tobool78.not = icmp eq ptr %24, null
  br i1 %tobool78.not, label %if.end77.if.end85_crit_edge, label %if.then79

if.end77.if.end85_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end85

if.then79:                                        ; preds = %if.end77
  %call81 = tail call i32 %24(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.then79.err_put_clks_crit_edge, label %if.then79.if.end85_crit_edge

if.then79.if.end85_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end85

if.then79.err_put_clks_crit_edge:                 ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_put_clks

if.end85:                                         ; preds = %if.then79.if.end85_crit_edge, %if.end77.if.end85_crit_edge
  %25 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call4, align 4
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %call12, i32 0, i32 17
  %27 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %rsrc_start, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %call4, i32 0, i32 1
  %28 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end.i, align 4
  %30 = load i32, ptr %call4, align 4
  %sub.i = add i32 %29, 1
  %add.i = sub i32 %sub.i, %30
  %rsrc_len = getelementptr inbounds %struct.usb_hcd, ptr %call12, i32 0, i32 18
  %31 = ptrtoint ptr %rsrc_len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.i, ptr %rsrc_len, align 4
  %call88 = tail call ptr @devm_ioremap_resource(ptr noundef %dev7, ptr noundef nonnull %call4) #4
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %call12, i32 0, i32 16
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call88, ptr %regs, align 4
  %cmp.i186 = icmp ugt ptr %call88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i186, label %if.then91, label %if.end94

if.then91:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %call88 to i32
  br label %err_put_clks

if.end94:                                         ; preds = %if.end85
  %call95 = tail call i32 @usb_add_hcd(ptr noundef nonnull %call12, i32 noundef %call1, i32 noundef 128) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.end94.err_put_clks_crit_edge

if.end94.err_put_clks_crit_edge:                  ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_put_clks

if.end98:                                         ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call12, align 8
  %call99 = tail call i32 @device_wakeup_enable(ptr noundef %35) #4
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call12, ptr %driver_data.i.i, align 4
  br label %cleanup

err_put_clks:                                     ; preds = %if.end94.err_put_clks_crit_edge, %if.then91, %if.then79.err_put_clks_crit_edge, %if.then70.err_put_clks_crit_edge, %if.then58.err_put_clks_crit_edge, %if.then33.err_put_clks_crit_edge
  %clk.0190 = phi i32 [ %clk.0192.lcssa, %if.then33.err_put_clks_crit_edge ], [ %clk.0189, %if.then58.err_put_clks_crit_edge ], [ %clk.0189, %if.then70.err_put_clks_crit_edge ], [ %clk.0189, %if.then79.err_put_clks_crit_edge ], [ %clk.0189, %if.then91 ], [ %clk.0189, %if.end94.err_put_clks_crit_edge ]
  %err.0 = phi i32 [ -517, %if.then33.err_put_clks_crit_edge ], [ -517, %if.then58.err_put_clks_crit_edge ], [ -517, %if.then70.err_put_clks_crit_edge ], [ %call81, %if.then79.err_put_clks_crit_edge ], [ %33, %if.then91 ], [ %call95, %if.end94.err_put_clks_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk.0190)
  %cmp100194 = icmp sgt i32 %clk.0190, 0
  br i1 %cmp100194, label %while.body, label %err_put_clks.if.then104_crit_edge

err_put_clks.if.then104_crit_edge:                ; preds = %err_put_clks
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then104

while.body:                                       ; preds = %err_put_clks
  %dec195 = add nsw i32 %clk.0190, -1
  %arrayidx102 = getelementptr [3 x ptr], ptr %priv18, i32 0, i32 %dec195
  %37 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx102, align 4
  tail call void @clk_put(ptr noundef %38) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec195)
  %cmp100.not = icmp eq i32 %dec195, 0
  br i1 %cmp100.not, label %while.body.if.then104_crit_edge, label %while.body.1

while.body.if.then104_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then104

while.body.1:                                     ; preds = %while.body
  %dec195.1 = add nsw i32 %clk.0190, -2
  %arrayidx102.1 = getelementptr [3 x ptr], ptr %priv18, i32 0, i32 %dec195.1
  %39 = ptrtoint ptr %arrayidx102.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx102.1, align 4
  tail call void @clk_put(ptr noundef %40) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec195.1)
  %cmp100.not.1 = icmp eq i32 %dec195.1, 0
  br i1 %cmp100.not.1, label %while.body.1.if.then104_crit_edge, label %while.body.2

while.body.1.if.then104_crit_edge:                ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then104

while.body.2:                                     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #6
  %dec195.2 = add nsw i32 %clk.0190, -3
  %arrayidx102.2 = getelementptr [3 x ptr], ptr %priv18, i32 0, i32 %dec195.2
  %41 = ptrtoint ptr %arrayidx102.2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx102.2, align 4
  tail call void @clk_put(ptr noundef %42) #4
  br label %if.then104

if.then104:                                       ; preds = %while.body.2, %while.body.1.if.then104_crit_edge, %while.body.if.then104_crit_edge, %err_put_clks.if.then104_crit_edge, %if.then23
  %err.1 = phi i32 [ %10, %if.then23 ], [ %err.0, %err_put_clks.if.then104_crit_edge ], [ %err.0, %while.body.2 ], [ %err.0, %while.body.1.if.then104_crit_edge ], [ %err.0, %while.body.if.then104_crit_edge ]
  %43 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %platform_data, align 8
  tail call void @usb_put_hcd(ptr noundef nonnull %call12) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then104, %if.end98, %dev_name.exit.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %if.then104 ], [ 0, %if.end98 ], [ -6, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -12, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_ehci_platform_remove(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %priv4 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 3
  tail call void @usb_remove_hcd(ptr noundef %1) #4
  %power_off = getelementptr inbounds %struct.usb_ehci_pdata, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %power_off to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %power_off, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %5(ptr noundef %dev) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv4, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end.for.end_crit_edge, label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %if.end
  tail call void @clk_put(ptr noundef nonnull %7) #4
  %arrayidx.1 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %tobool6.not.1 = icmp eq ptr %9, null
  br i1 %tobool6.not.1, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.1:                                       ; preds = %for.body
  tail call void @clk_put(ptr noundef nonnull %9) #4
  %arrayidx.2 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 4
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.2, align 4
  %tobool6.not.2 = icmp eq ptr %11, null
  br i1 %tobool6.not.2, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_put(ptr noundef nonnull %11) #4
  br label %for.end

for.end:                                          ; preds = %for.body.2, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @usb_put_hcd(ptr noundef %1) #4
  %cmp9 = icmp eq ptr %3, @ehci_platform_defaults
  br i1 %cmp9, label %if.then10, label %for.end.if.end12_crit_edge

for.end.if.end12_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then10:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %platform_data.i, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.end.if.end12_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_platform_shutdown(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_ehci_platform_power_on(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv2 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 3
  %pwr = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 5, i32 1, i32 1
  %2 = ptrtoint ptr %pwr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwr, align 4
  %call3 = tail call i32 @reset_control_deassert(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %rst = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 5, i32 1
  %4 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst, align 4
  %call4 = tail call i32 @reset_control_deassert(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.err_assert_power_crit_edge

if.end.err_assert_power_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_assert_power

if.end7:                                          ; preds = %if.end
  %clk48 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 5
  %6 = ptrtoint ptr %clk48 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk48, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.end7.if.end15_crit_edge, label %if.then9

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then9:                                         ; preds = %if.end7
  %call11 = tail call i32 @clk_set_rate(ptr noundef nonnull %7, i32 noundef 48000000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then9.if.end15_crit_edge, label %if.then9.err_assert_reset_crit_edge

if.then9.err_assert_reset_crit_edge:              ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_assert_reset

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.end15:                                         ; preds = %if.then9.if.end15_crit_edge, %if.end7.if.end15_crit_edge
  %8 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv2, align 4
  %tobool16.not = icmp eq ptr %9, null
  br i1 %tobool16.not, label %if.end15.for.end_crit_edge, label %for.body

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %if.end15
  %call.i = tail call i32 @clk_prepare(ptr noundef nonnull %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.err_assert_reset_crit_edge

for.body.err_assert_reset_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_assert_reset

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.inc, label %if.end.i.if.then3.i_crit_edge

if.end.i.if.then3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i.2.if.then3.i_crit_edge, %if.end.i.1.if.then3.i_crit_edge, %if.end.i.if.then3.i_crit_edge
  %clk.075.lcssa83 = phi i32 [ 0, %if.end.i.if.then3.i_crit_edge ], [ 1, %if.end.i.1.if.then3.i_crit_edge ], [ 2, %if.end.i.2.if.then3.i_crit_edge ]
  %.lcssa81 = phi ptr [ %9, %if.end.i.if.then3.i_crit_edge ], [ %11, %if.end.i.1.if.then3.i_crit_edge ], [ %13, %if.end.i.2.if.then3.i_crit_edge ]
  %call1.i.lcssa = phi i32 [ %call1.i, %if.end.i.if.then3.i_crit_edge ], [ %call1.i.1, %if.end.i.1.if.then3.i_crit_edge ], [ %call1.i.2, %if.end.i.2.if.then3.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef nonnull %.lcssa81) #4
  br label %err_disable_clks

for.inc:                                          ; preds = %if.end.i
  %arrayidx.1 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 3, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %tobool16.not.1 = icmp eq ptr %11, null
  br i1 %tobool16.not.1, label %for.inc.for.end_crit_edge, label %for.body.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.1:                                       ; preds = %for.inc
  %call.i.1 = tail call i32 @clk_prepare(ptr noundef nonnull %11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %for.body.1.while.body_crit_edge

for.body.1.while.body_crit_edge:                  ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end.i.1:                                       ; preds = %for.body.1
  %call1.i.1 = tail call i32 @clk_enable(ptr noundef nonnull %11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %tobool2.not.i.1 = icmp eq i32 %call1.i.1, 0
  br i1 %tobool2.not.i.1, label %for.inc.1, label %if.end.i.1.if.then3.i_crit_edge

if.end.i.1.if.then3.i_crit_edge:                  ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3.i

for.inc.1:                                        ; preds = %if.end.i.1
  %arrayidx.2 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 4
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2, align 4
  %tobool16.not.2 = icmp eq ptr %13, null
  br i1 %tobool16.not.2, label %for.inc.1.for.end_crit_edge, label %for.body.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.2:                                       ; preds = %for.inc.1
  %call.i.2 = tail call i32 @clk_prepare(ptr noundef nonnull %13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.i.2, label %if.end.i.2, label %for.body.2.while.body_crit_edge

for.body.2.while.body_crit_edge:                  ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end.i.2:                                       ; preds = %for.body.2
  %call1.i.2 = tail call i32 @clk_enable(ptr noundef nonnull %13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2)
  %tobool2.not.i.2 = icmp eq i32 %call1.i.2, 0
  br i1 %tobool2.not.i.2, label %if.end.i.2.for.end_crit_edge, label %if.end.i.2.if.then3.i_crit_edge

if.end.i.2.if.then3.i_crit_edge:                  ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3.i

if.end.i.2.for.end_crit_edge:                     ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %if.end.i.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.end15.for.end_crit_edge
  %clk.0.lcssa = phi i32 [ 0, %if.end15.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %if.end.i.2.for.end_crit_edge ]
  %phy = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 5, i32 2
  %14 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy, align 4
  %call23 = tail call i32 @phy_init(ptr noundef %15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %for.end.err_disable_clks_crit_edge

for.end.err_disable_clks_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_disable_clks

if.end26:                                         ; preds = %for.end
  %16 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy, align 4
  %call28 = tail call i32 @phy_power_on(ptr noundef %17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end26.cleanup_crit_edge, label %err_exit_phy

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

err_exit_phy:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy, align 4
  %call33 = tail call i32 @phy_exit(ptr noundef %19) #4
  br label %err_disable_clks

err_disable_clks:                                 ; preds = %err_exit_phy, %for.end.err_disable_clks_crit_edge, %if.then3.i
  %clk.072 = phi i32 [ %clk.0.lcssa, %for.end.err_disable_clks_crit_edge ], [ %clk.0.lcssa, %err_exit_phy ], [ %clk.075.lcssa83, %if.then3.i ]
  %ret.0 = phi i32 [ %call23, %for.end.err_disable_clks_crit_edge ], [ %call28, %err_exit_phy ], [ %call1.i.lcssa, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk.072)
  %cmp3477.not = icmp eq i32 %clk.072, 0
  br i1 %cmp3477.not, label %err_disable_clks.err_assert_reset_crit_edge, label %err_disable_clks.while.body_crit_edge

err_disable_clks.while.body_crit_edge:            ; preds = %err_disable_clks
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

err_disable_clks.err_assert_reset_crit_edge:      ; preds = %err_disable_clks
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_assert_reset

while.body:                                       ; preds = %err_disable_clks.while.body_crit_edge, %for.body.2.while.body_crit_edge, %for.body.1.while.body_crit_edge
  %ret.088 = phi i32 [ %ret.0, %err_disable_clks.while.body_crit_edge ], [ %call.i.2, %for.body.2.while.body_crit_edge ], [ %call.i.1, %for.body.1.while.body_crit_edge ]
  %clk.07287 = phi i32 [ %clk.072, %err_disable_clks.while.body_crit_edge ], [ 2, %for.body.2.while.body_crit_edge ], [ 1, %for.body.1.while.body_crit_edge ]
  %dec78 = add nsw i32 %clk.07287, -1
  %arrayidx36 = getelementptr [3 x ptr], ptr %priv2, i32 0, i32 %dec78
  %20 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx36, align 4
  tail call void @clk_disable(ptr noundef %21) #4
  tail call void @clk_unprepare(ptr noundef %21) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %clk.07287)
  %cmp34 = icmp ugt i32 %clk.07287, 1
  br i1 %cmp34, label %while.body.1, label %while.body.err_assert_reset_crit_edge

while.body.err_assert_reset_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_assert_reset

while.body.1:                                     ; preds = %while.body
  %dec78.1 = add nsw i32 %clk.07287, -2
  %arrayidx36.1 = getelementptr [3 x ptr], ptr %priv2, i32 0, i32 %dec78.1
  %22 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx36.1, align 4
  tail call void @clk_disable(ptr noundef %23) #4
  tail call void @clk_unprepare(ptr noundef %23) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec78)
  %cmp34.1 = icmp ugt i32 %dec78, 1
  br i1 %cmp34.1, label %while.body.2, label %while.body.1.err_assert_reset_crit_edge

while.body.1.err_assert_reset_crit_edge:          ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_assert_reset

while.body.2:                                     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #6
  %dec78.2 = add nsw i32 %clk.07287, -3
  %arrayidx36.2 = getelementptr [3 x ptr], ptr %priv2, i32 0, i32 %dec78.2
  %24 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx36.2, align 4
  tail call void @clk_disable(ptr noundef %25) #4
  tail call void @clk_unprepare(ptr noundef %25) #4
  br label %err_assert_reset

err_assert_reset:                                 ; preds = %while.body.2, %while.body.1.err_assert_reset_crit_edge, %while.body.err_assert_reset_crit_edge, %err_disable_clks.err_assert_reset_crit_edge, %for.body.err_assert_reset_crit_edge, %if.then9.err_assert_reset_crit_edge
  %ret.1 = phi i32 [ %call11, %if.then9.err_assert_reset_crit_edge ], [ %ret.0, %err_disable_clks.err_assert_reset_crit_edge ], [ %call.i, %for.body.err_assert_reset_crit_edge ], [ %ret.088, %while.body.2 ], [ %ret.088, %while.body.1.err_assert_reset_crit_edge ], [ %ret.088, %while.body.err_assert_reset_crit_edge ]
  %26 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rst, align 4
  %call38 = tail call i32 @reset_control_assert(ptr noundef %27) #4
  br label %err_assert_power

err_assert_power:                                 ; preds = %err_assert_reset, %if.end.err_assert_power_crit_edge
  %ret.2 = phi i32 [ %call4, %if.end.err_assert_power_crit_edge ], [ %ret.1, %err_assert_reset ]
  %28 = ptrtoint ptr %pwr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pwr, align 4
  %call40 = tail call i32 @reset_control_assert(ptr noundef %29) #4
  br label %cleanup

cleanup:                                          ; preds = %err_assert_power, %if.end26.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_assert_power ], [ %call3, %entry.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st_ehci_platform_power_off(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv2 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 3
  %pwr = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 5, i32 1, i32 1
  %2 = ptrtoint ptr %pwr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwr, align 4
  %call3 = tail call i32 @reset_control_assert(ptr noundef %3) #4
  %rst = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 5, i32 1
  %4 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst, align 4
  %call4 = tail call i32 @reset_control_assert(ptr noundef %5) #4
  %phy = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 5, i32 2
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %call5 = tail call i32 @phy_power_off(ptr noundef %7) #4
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy, align 4
  %call7 = tail call i32 @phy_exit(ptr noundef %9) #4
  %arrayidx = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_disable(ptr noundef nonnull %11) #4
  tail call void @clk_unprepare(ptr noundef nonnull %11) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 3, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %13, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_disable(ptr noundef nonnull %13) #4
  tail call void @clk_unprepare(ptr noundef nonnull %13) #4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %14 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv2, align 4
  %tobool.not.2 = icmp eq ptr %15, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_disable(ptr noundef nonnull %15) #4
  tail call void @clk_unprepare(ptr noundef nonnull %15) #4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_ehci_suspend(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.device_may_wakeup.exit_crit_edge, label %land.rhs.i

entry.device_may_wakeup.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %device_may_wakeup.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %6, null
  br label %device_may_wakeup.exit

device_may_wakeup.exit:                           ; preds = %land.rhs.i, %entry.device_may_wakeup.exit_crit_edge
  %7 = phi i1 [ false, %entry.device_may_wakeup.exit_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  %call3 = tail call i32 @ehci_suspend(ptr noundef %1, i1 noundef zeroext %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %device_may_wakeup.exit.cleanup_crit_edge

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %device_may_wakeup.exit
  %power_suspend = getelementptr inbounds %struct.usb_ehci_pdata, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %power_suspend to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %power_suspend, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %9(ptr noundef %add.ptr) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %call9 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %device_may_wakeup.exit.cleanup_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_ehci_resume(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %call2 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #4
  %power_on = getelementptr inbounds %struct.usb_ehci_pdata, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %power_on to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %power_on, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %call4 = tail call i32 %5(ptr noundef %add.ptr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %call7 = tail call i32 @ehci_resume(ptr noundef %1, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call4, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !36, !38, !40, !41, !42, !43, !45, !47, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_ehci_st__295_354_ehci_platform_init6, !1, !"__initcall__kmod_ehci_st__295_354_ehci_platform_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/ehci-st.c", i32 354, i32 1}
!2 = !{ptr @__exitcall_ehci_platform_cleanup, !3, !"__exitcall_ehci_platform_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/ehci-st.c", i32 360, i32 1}
!4 = !{ptr @__UNIQUE_ID_description296, !5, !"__UNIQUE_ID_description296", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/ehci-st.c", i32 362, i32 1}
!6 = !{ptr @__UNIQUE_ID_author297, !7, !"__UNIQUE_ID_author297", i1 false, i1 false}
!7 = !{!"../drivers/usb/host/ehci-st.c", i32 363, i32 1}
!8 = !{ptr @__UNIQUE_ID_file298, !9, !"__UNIQUE_ID_file298", i1 false, i1 false}
!9 = !{!"../drivers/usb/host/ehci-st.c", i32 364, i32 1}
!10 = !{ptr @__UNIQUE_ID_license299, !9, !"__UNIQUE_ID_license299", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/usb/host/ehci-st.c", i32 349, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ehci_platform_init._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @ehci_platform_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @hcd_name, !18, !"hcd_name", i1 false, i1 false}
!18 = !{!"../drivers/usb/host/ehci-st.c", i32 45, i32 19}
!19 = !{ptr @ehci_platform_hc_driver, !20, !"ehci_platform_hc_driver", i1 false, i1 false}
!20 = !{!"../drivers/usb/host/ehci-st.c", i32 136, i32 39}
!21 = !{ptr @platform_overrides, !22, !"platform_overrides", i1 false, i1 false}
!22 = !{!"../drivers/usb/host/ehci-st.c", i32 138, i32 43}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/host/ehci-st.c", i32 336, i32 11}
!25 = !{ptr @ehci_platform_driver, !26, !"ehci_platform_driver", i1 false, i1 false}
!26 = !{!"../drivers/usb/host/ehci-st.c", i32 331, i32 31}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/host/ehci-st.c", i32 165, i32 3}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @st_ehci_platform_probe._entry, !28, !"_entry", i1 false, i1 false}
!33 = !{ptr @st_ehci_platform_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/host/ehci-st.c", i32 178, i32 38}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/host/ehci-st.c", i32 197, i32 40}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/host/ehci-st.c", i32 199, i32 3}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @st_ehci_platform_probe._entry.10, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @st_ehci_platform_probe._entry_ptr.13, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/host/ehci-st.c", i32 204, i32 53}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/host/ehci-st.c", i32 213, i32 53}
!47 = !{ptr @ehci_platform_defaults, !48, !"ehci_platform_defaults", i1 false, i1 false}
!48 = !{!"../drivers/usb/host/ehci-st.c", i32 143, i32 30}
!49 = !{ptr @st_ehci_ids, !50, !"st_ehci_ids", i1 false, i1 false}
!50 = !{!"../drivers/usb/host/ehci-st.c", i32 325, i32 34}
!51 = !{ptr @st_ehci_pm_ops, !52, !"st_ehci_pm_ops", i1 false, i1 false}
!52 = !{!"../drivers/usb/host/ehci-st.c", i32 321, i32 8}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 2155406232}
!63 = !{i64 6254675}
