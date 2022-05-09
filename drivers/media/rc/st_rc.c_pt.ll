; ModuleID = '/llk/IR_all_yes/drivers/media/rc/st_rc.c_pt.bc'
source_filename = "../drivers/media/rc/st_rc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ir_raw_event = type { %union.anon.72, i8, i8 }
%union.anon.72 = type { i32 }
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
%struct.st_rc_device = type { ptr, i32, i32, ptr, ptr, ptr, ptr, i8, i32, i32, i8, ptr }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }

@__initcall__kmod_st_rc__232_414_st_rc_driver_init6 = internal global ptr @st_rc_driver_init, section ".initcall6.init", align 4
@st_rc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @st_rc_probe, ptr @st_rc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st_rc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st_rc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_st_rc_driver_exit = internal global ptr @st_rc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description233 = internal constant [73 x i8] c"st_rc.description=RC Transceiver driver for STMicroelectronics platforms\00", section ".modinfo", align 1
@__UNIQUE_ID_author234 = internal constant [42 x i8] c"st_rc.author=STMicroelectronics (R&D) Ltd\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [34 x i8] c"st_rc.file=drivers/media/rc/st_rc\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [18 x i8] c"st_rc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"st-rc\00", [26 x i8] zeroinitializer }, align 32
@st_rc_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,comms-irb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@st_rc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @st_rc_suspend, ptr @st_rc_resume, ptr @st_rc_suspend, ptr @st_rc_resume, ptr @st_rc_suspend, ptr @st_rc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rx-mode\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"uhf\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"infrared\00", [23 x i8] zeroinitializer }, align 32
@st_rc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 255, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported rx mode [%s]\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"st_rc_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/media/rc/st_rc.c\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st_rc_probe._entry_ptr = internal global ptr @st_rc_probe._entry, section ".printk_index", align 4
@st_rc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 265, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"System clock not found\0A\00", [40 x i8] zeroinitializer }, align 32
@st_rc_probe._entry_ptr.11 = internal global ptr @st_rc_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rc-empty\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ST Remote Control Receiver\00", [37 x i8] zeroinitializer }, align 32
@st_rc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 317, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IRQ %d register failed\0A\00", [40 x i8] zeroinitializer }, align 32
@st_rc_probe._entry_ptr.16 = internal global ptr @st_rc_probe._entry.14, section ".printk_index", align 4
@st_rc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.5, ptr @.str.6, i32 332, ptr @.str.19, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"setup in %s mode\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@st_rc_probe._entry_ptr.20 = internal global ptr @st_rc_probe._entry.17, section ".printk_index", align 4
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UHF\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IR\00", [29 x i8] zeroinitializer }, align 32
@st_rc_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.5, ptr @.str.6, i32 342, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to register device (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@st_rc_probe._entry_ptr.25 = internal global ptr @st_rc_probe._entry.23, section ".printk_index", align 4
@st_rc_hardware_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.6, i32 172, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to prepare/enable system clock\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"st_rc_hardware_init\00", [44 x i8] zeroinitializer }, align 32
@st_rc_hardware_init._entry_ptr = internal global ptr @st_rc_hardware_init._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@st_rc_rx_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.6, i32 115, ptr @.str.19, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IR RX overrun\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"st_rc_rx_interrupt\00", [45 x i8] zeroinitializer }, align 32
@st_rc_rx_interrupt._entry_ptr = internal global ptr @st_rc_rx_interrupt._entry, section ".printk_index", align 4
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"st_rc_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 404, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 406, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"st_rc_match\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 396, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [13 x i8] c"st_rc_pm_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 393, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 248, i32 41 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 250, i32 24 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 252, i32 31 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 255, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 265, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 307, i32 19 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 308, i32 22 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 317, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 332, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 342, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 172, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private constant [28 x i8] c"../drivers/media/rc/st_rc.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 115, i32 4 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_st_rc_driver_exit, ptr @__initcall__kmod_st_rc__232_414_st_rc_driver_init6, ptr @st_rc_driver_exit, ptr @st_rc_hardware_init._entry, ptr @st_rc_hardware_init._entry_ptr, ptr @st_rc_probe._entry, ptr @st_rc_probe._entry.14, ptr @st_rc_probe._entry.17, ptr @st_rc_probe._entry.23, ptr @st_rc_probe._entry.9, ptr @st_rc_probe._entry_ptr, ptr @st_rc_probe._entry_ptr.11, ptr @st_rc_probe._entry_ptr.16, ptr @st_rc_probe._entry_ptr.20, ptr @st_rc_probe._entry_ptr.25, ptr @st_rc_rx_interrupt._entry, ptr @st_rc_rx_interrupt._entry_ptr, ptr @st_rc_driver, ptr @.str, ptr @st_rc_match, ptr @st_rc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rc_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rc_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rc_hardware_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rc_rx_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @st_rc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @st_rc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @st_rc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @st_rc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_rc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %ev.i = alloca %struct.ir_raw_event, align 8
  %rx_mode = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_mode) #8
  %2 = ptrtoint ptr %rx_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %rx_mode, align 4, !annotation !74
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 48, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @rc_allocate_device(i32 noundef 1) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %if.end6.err_crit_edge, label %land.lhs.true

if.end6.err_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

land.lhs.true:                                    ; preds = %if.end6
  %call8 = call i32 @of_property_read_string(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %rx_mode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true.err_crit_edge

land.lhs.true.err_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.then10:                                        ; preds = %land.lhs.true
  %3 = ptrtoint ptr %rx_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_mode, align 4
  %call11 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(4) @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end22_crit_edge, label %if.else

if.then10.if.end22_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.else:                                          ; preds = %if.then10
  %call14 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(9) @.str.3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.else.if.end22_crit_edge, label %do.end

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef %4) #12
  br label %err

if.end22:                                         ; preds = %if.else.if.end22_crit_edge, %if.then10.if.end22_crit_edge
  %.sink = phi i8 [ 1, %if.then10.if.end22_crit_edge ], [ 0, %if.else.if.end22_crit_edge ]
  %rxuhfmode = getelementptr inbounds %struct.st_rc_device, ptr %call.i, i32 0, i32 10
  %5 = ptrtoint ptr %rxuhfmode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink, ptr %rxuhfmode, align 4
  %call23 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #8
  %sys_clock = getelementptr inbounds %struct.st_rc_device, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %sys_clock to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call23, ptr %sys_clock, align 4
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end29, label %if.end32

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #12
  %7 = ptrtoint ptr %sys_clock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sys_clock, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %err

if.end32:                                         ; preds = %if.end22
  %call33 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.st_rc_device, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call33, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp = icmp slt i32 %call33, 0
  br i1 %cmp, label %if.end32.err_crit_edge, label %if.end37

if.end32.err_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end37:                                         ; preds = %if.end32
  %call38 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %base = getelementptr inbounds %struct.st_rc_device, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call38, ptr %base, align 4
  %cmp.i160 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i160, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call38 to i32
  br label %err

if.end44:                                         ; preds = %if.end37
  %rxuhfmode45 = getelementptr inbounds %struct.st_rc_device, ptr %call.i, i32 0, i32 10
  %13 = ptrtoint ptr %rxuhfmode45 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rxuhfmode45, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool46.not = icmp eq i8 %14, 0
  %spec.select.idx = select i1 %tobool46.not, i32 0, i32 64
  %spec.select = getelementptr i8, ptr %call38, i32 %spec.select.idx
  %15 = getelementptr inbounds %struct.st_rc_device, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %spec.select, ptr %15, align 4
  %call.i161 = call ptr @__reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #8
  %rstc = getelementptr inbounds %struct.st_rc_device, ptr %call.i, i32 0, i32 11
  %17 = ptrtoint ptr %rstc to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i161, ptr %rstc, align 4
  %cmp.i162 = icmp ugt ptr %call.i161, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i162, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %call.i161 to i32
  br label %err

if.end59:                                         ; preds = %if.end44
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call61 = call fastcc i32 @st_rc_hardware_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end59.err_crit_edge

if.end59.err_crit_edge:                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end64:                                         ; preds = %if.end59
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, ptr %call3, i32 0, i32 16
  %21 = ptrtoint ptr %allowed_protocols to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 130023420, ptr %allowed_protocols, align 8
  %rx_resolution = getelementptr inbounds %struct.rc_dev, ptr %call3, i32 0, i32 37
  %22 = ptrtoint ptr %rx_resolution to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 100, ptr %rx_resolution, align 8
  %timeout = getelementptr inbounds %struct.rc_dev, ptr %call3, i32 0, i32 34
  %23 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 20480, ptr %timeout, align 4
  %priv = getelementptr inbounds %struct.rc_dev, ptr %call3, i32 0, i32 24
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %priv, align 4
  %open = getelementptr inbounds %struct.rc_dev, ptr %call3, i32 0, i32 48
  %25 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @st_rc_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.rc_dev, ptr %call3, i32 0, i32 49
  %26 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @st_rc_close, ptr %close, align 4
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %call3, i32 0, i32 6
  %27 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str, ptr %driver_name, align 8
  %map_name = getelementptr inbounds %struct.rc_dev, ptr %call3, i32 0, i32 7
  %28 = ptrtoint ptr %map_name to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.12, ptr %map_name, align 4
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %call3, i32 0, i32 3
  %29 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.13, ptr %device_name, align 8
  %call65 = call i32 @rc_register_device(ptr noundef nonnull %call3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %if.end64.clkerr_crit_edge, label %if.end68

if.end64.clkerr_crit_edge:                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %clkerr

if.end68:                                         ; preds = %if.end64
  %rdev69 = getelementptr inbounds %struct.st_rc_device, ptr %call.i, i32 0, i32 6
  %30 = ptrtoint ptr %rdev69 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call3, ptr %rdev69, align 4
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  %call.i163 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %32, ptr noundef nonnull @st_rc_rx_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163)
  %cmp72 = icmp slt i32 %call.i163, 0
  br i1 %cmp72, label %do.end76, label %if.end78

do.end76:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %34) #12
  call void @rc_unregister_device(ptr noundef nonnull %call3) #8
  br label %clkerr

if.end78:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %call79 = call i32 @device_init_wakeup(ptr noundef %dev1, i1 noundef zeroext true) #8
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq, align 4
  %call81 = call i32 @dev_pm_set_wake_irq(ptr noundef %dev1, i32 noundef %36) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ev.i) #8
  %37 = ptrtoint ptr %ev.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 -4291821569, ptr %ev.i, align 8, !annotation !74
  %38 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %timeout, align 4
  store i32 %39, ptr %ev.i, align 8
  %call.i164 = call i32 @ir_raw_event_store(ptr noundef nonnull %call3, ptr noundef nonnull %ev.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ev.i) #8
  %40 = ptrtoint ptr %rxuhfmode45 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %rxuhfmode45, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool86.not = icmp eq i8 %41, 0
  %cond = select i1 %tobool86.not, ptr @.str.22, ptr @.str.21
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond) #12
  br label %cleanup

clkerr:                                           ; preds = %do.end76, %if.end64.clkerr_crit_edge
  %ret.0 = phi i32 [ %call65, %if.end64.clkerr_crit_edge ], [ -22, %do.end76 ]
  %rdev.0 = phi ptr [ %call3, %if.end64.clkerr_crit_edge ], [ null, %do.end76 ]
  %42 = ptrtoint ptr %sys_clock to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sys_clock, align 4
  call void @clk_disable(ptr noundef %43) #8
  call void @clk_unprepare(ptr noundef %43) #8
  br label %err

err:                                              ; preds = %clkerr, %if.end59.err_crit_edge, %if.then56, %if.then41, %if.end32.err_crit_edge, %do.end29, %do.end, %land.lhs.true.err_crit_edge, %if.end6.err_crit_edge
  %ret.1 = phi i32 [ -22, %land.lhs.true.err_crit_edge ], [ -22, %do.end ], [ %9, %do.end29 ], [ %12, %if.then41 ], [ %18, %if.then56 ], [ %call61, %if.end59.err_crit_edge ], [ %ret.0, %clkerr ], [ -22, %if.end6.err_crit_edge ], [ %call33, %if.end32.err_crit_edge ]
  %rdev.1 = phi ptr [ %call3, %land.lhs.true.err_crit_edge ], [ %call3, %do.end ], [ %call3, %do.end29 ], [ %call3, %if.then41 ], [ %call3, %if.then56 ], [ %call3, %if.end59.err_crit_edge ], [ %rdev.0, %clkerr ], [ %call3, %if.end6.err_crit_edge ], [ %call3, %if.end32.err_crit_edge ]
  call void @rc_free_device(ptr noundef %rdev.1) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %ret.1) #12
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end78, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err ], [ %call65, %if.end78 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_mode) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_rc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @dev_pm_clear_wake_irq(ptr noundef %dev) #8
  %call2 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #8
  %sys_clock = getelementptr inbounds %struct.st_rc_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sys_clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sys_clock, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %rdev = getelementptr inbounds %struct.st_rc_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 4
  tail call void @rc_unregister_device(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @st_rc_hardware_init(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rstc = getelementptr inbounds %struct.st_rc_device, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rstc, align 4
  %call = tail call i32 @reset_control_deassert(ptr noundef %1) #8
  %sys_clock = getelementptr inbounds %struct.st_rc_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %sys_clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sys_clock, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.26) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %6 = ptrtoint ptr %sys_clock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sys_clock, align 4
  %call4 = tail call i32 @clk_get_rate(ptr noundef %7) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %rx_base = getelementptr inbounds %struct.st_rc_device, ptr %dev, i32 0, i32 5
  %8 = ptrtoint ptr %rx_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_base, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #8, !srcloc !77
  %div = sdiv i32 %call4, 10000000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %div)
  %base = getelementptr inbounds %struct.st_rc_device, ptr %dev, i32 0, i32 4
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr11 = getelementptr i8, ptr %12, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %10) #8, !srcloc !77
  %mul.neg = mul nsw i32 %div, -10000000
  %sub = sub i32 0, %call4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.neg, i32 %sub)
  %tobool12.not = icmp eq i32 %mul.neg, %sub
  br i1 %tobool12.not, label %if.end.do.body20_crit_edge, label %if.then13

if.end.do.body20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %overclocking = getelementptr inbounds %struct.st_rc_device, ptr %dev, i32 0, i32 7
  %13 = ptrtoint ptr %overclocking to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %overclocking, align 4
  %sample_mult = getelementptr inbounds %struct.st_rc_device, ptr %dev, i32 0, i32 8
  %14 = ptrtoint ptr %sample_mult to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1000, ptr %sample_mult, align 4
  %mul14 = mul nsw i32 %div, 10000
  %div15 = udiv i32 %call4, %mul14
  %sample_div = getelementptr inbounds %struct.st_rc_device, ptr %dev, i32 0, i32 9
  %15 = ptrtoint ptr %sample_div to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div15, ptr %sample_div, align 4
  %div18 = udiv i32 20480000, %div15
  br label %do.body20

do.body20:                                        ; preds = %if.then13, %if.end.do.body20_crit_edge
  %rx_max_symbol_per.0 = phi i32 [ %div18, %if.then13 ], [ 20480, %if.end.do.body20_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %rx_max_symbol_per.0)
  %17 = ptrtoint ptr %rx_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_base, align 4
  %add.ptr24 = getelementptr i8, ptr %18, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %16) #8, !srcloc !77
  br label %cleanup

cleanup:                                          ; preds = %do.body20, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %do.body20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_rc_open(ptr nocapture noundef readonly %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rdev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !80
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.body12_crit_edge

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  br label %do.body12

do.body12:                                        ; preds = %if.then, %entry.do.body12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %rx_base = getelementptr inbounds %struct.st_rc_device, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %rx_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 251658240) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %rx_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_base, align 4
  %add.ptr19 = getelementptr i8, ptr %6, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 16777216) #8, !srcloc !77
  br i1 %tobool.not, label %if.then29, label %do.body12.do.body31_crit_edge

do.body12.do.body31_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body31

if.then29:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_on() #8
  br label %do.body31

do.body31:                                        ; preds = %if.then29, %do.body12.do.body31_crit_edge
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !83
  %and.i.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool39.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool39.not, label %if.then43, label %do.body31.do.end46_crit_edge, !prof !84

do.body31.do.end46_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end46

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %do.body31.do.end46_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #8, !srcloc !85
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st_rc_close(ptr nocapture noundef readonly %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rdev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  tail call void @arm_heavy_mb() #8
  %rx_base = getelementptr inbounds %struct.st_rc_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %rx_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %rx_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_base, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #8, !srcloc !77
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_rc_rx_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %ev.i = alloca %struct.ir_raw_event, align 8
  %ev = alloca %struct.ir_raw_event, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ev) #8
  %0 = ptrtoint ptr %ev to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %ev, align 8
  %irq_wake = getelementptr inbounds %struct.st_rc_device, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %irq_wake to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq_wake, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void @pm_wakeup_dev_event(ptr noundef %4, i32 noundef 0, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %add.neg = xor i32 %5, -1
  %rx_base = getelementptr inbounds %struct.st_rc_device, ptr %data, i32 0, i32 5
  %rdev = getelementptr inbounds %struct.st_rc_device, ptr %data, i32 0, i32 6
  %overclocking = getelementptr inbounds %struct.st_rc_device, ptr %data, i32 0, i32 7
  %sample_mult = getelementptr inbounds %struct.st_rc_device, ptr %data, i32 0, i32 8
  %sample_div = getelementptr inbounds %struct.st_rc_device, ptr %data, i32 0, i32 9
  %pulse = getelementptr inbounds %struct.ir_raw_event, ptr %ev, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.cond66.do.body_crit_edge, %if.end
  %6 = ptrtoint ptr %rx_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 108
  %8 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !88
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %9 = and i32 %8, 83820544
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %do.body.do.body70_crit_edge, label %if.end6

do.body.do.body70_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body70

if.end6:                                          ; preds = %do.body
  %10 = ptrtoint ptr %rx_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_base, align 4
  %add.ptr10 = getelementptr i8, ptr %11, i32 76
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #8, !srcloc !88
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  %13 = and i32 %12, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool15.not = icmp eq i32 %13, 0
  br i1 %tobool15.not, label %if.end26, label %if.then18, !prof !91

if.then18:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rdev, align 4
  call fastcc void @ir_raw_event_reset(ptr noundef %15)
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.28) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %rx_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_base, align 4
  %add.ptr25 = getelementptr i8, ptr %19, i32 88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 67108864) #8, !srcloc !77
  br label %do.cond66

if.end26:                                         ; preds = %if.end6
  %20 = ptrtoint ptr %rx_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_base, align 4
  %add.ptr30 = getelementptr i8, ptr %21, i32 68
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #8, !srcloc !88
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  %24 = ptrtoint ptr %rx_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_base, align 4
  %add.ptr37 = getelementptr i8, ptr %25, i32 64
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #8, !srcloc !88
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %22)
  %cmp = icmp eq i32 %22, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp43 = icmp ugt i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp44 = icmp ugt i32 %23, 1
  %or.cond = select i1 %cmp43, i1 %cmp44, i1 false
  br i1 %or.cond, label %if.then45, label %if.end26.do.cond66_crit_edge

if.end26.do.cond66_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond66

if.then45:                                        ; preds = %if.end26
  %sub = sub i32 %23, %27
  %28 = ptrtoint ptr %overclocking to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %overclocking, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool46.not = icmp eq i8 %29, 0
  br i1 %tobool46.not, label %if.then45.if.end52_crit_edge, label %if.then47

if.then45.if.end52_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then47:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %sample_mult to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sample_mult, align 4
  %mul = mul i32 %31, %sub
  %32 = ptrtoint ptr %sample_div to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sample_div, align 4
  %div = udiv i32 %mul, %33
  %mul49 = mul i32 %31, %27
  %div51 = udiv i32 %mul49, %33
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %if.then45.if.end52_crit_edge
  %mark.0 = phi i32 [ %div51, %if.then47 ], [ %27, %if.then45.if.end52_crit_edge ]
  %symbol.0 = phi i32 [ %div, %if.then47 ], [ %sub, %if.then45.if.end52_crit_edge ]
  %34 = ptrtoint ptr %ev to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mark.0, ptr %ev, align 8
  %35 = ptrtoint ptr %pulse to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load = load i8, ptr %pulse, align 1
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %pulse, align 1
  %36 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rdev, align 4
  %call54 = call i32 @ir_raw_event_store(ptr noundef %37, ptr noundef nonnull %ev) #8
  br i1 %cmp, label %if.else, label %if.then56

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %ev to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %symbol.0, ptr %ev, align 8
  %39 = ptrtoint ptr %pulse to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load58 = load i8, ptr %pulse, align 1
  %bf.clear59 = and i8 %bf.load58, 127
  store i8 %bf.clear59, ptr %pulse, align 1
  %40 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rdev, align 4
  %call62 = call i32 @ir_raw_event_store(ptr noundef %41, ptr noundef nonnull %ev) #8
  br label %do.cond66

if.else:                                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rdev, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ev.i) #8
  %44 = ptrtoint ptr %ev.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 -4291821569, ptr %ev.i, align 8, !annotation !74
  %timeout.i = getelementptr inbounds %struct.rc_dev, ptr %43, i32 0, i32 34
  %45 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %timeout.i, align 4
  store i32 %46, ptr %ev.i, align 8
  %call.i = call i32 @ir_raw_event_store(ptr noundef %43, ptr noundef nonnull %ev.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ev.i) #8
  br label %do.cond66

do.cond66:                                        ; preds = %if.else, %if.then56, %if.end26.do.cond66_crit_edge, %if.then18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %sub67 = add i32 %47, %add.neg
  %cmp68 = icmp slt i32 %sub67, 0
  br i1 %cmp68, label %do.cond66.do.body_crit_edge, label %do.cond66.do.body70_crit_edge

do.cond66.do.body70_crit_edge:                    ; preds = %do.cond66
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body70

do.cond66.do.body_crit_edge:                      ; preds = %do.cond66
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body70:                                        ; preds = %do.cond66.do.body70_crit_edge, %do.body.do.body70_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  call void @arm_heavy_mb() #8
  %48 = ptrtoint ptr %rx_base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rx_base, align 4
  %add.ptr74 = getelementptr i8, ptr %49, i32 88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 251658240) #8, !srcloc !77
  %50 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rdev, align 4
  call void @ir_raw_event_handle(ptr noundef %51) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ev) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

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
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ir_raw_event_reset(ptr noundef %dev) unnamed_addr #7 align 64 {
entry:
  %.compoundliteral = alloca %struct.ir_raw_event, align 4
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %.compoundliteral, align 4
  %duty_cycle = getelementptr inbounds %struct.ir_raw_event, ptr %.compoundliteral, i32 0, i32 1
  %1 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %duty_cycle, align 4
  %pulse = getelementptr inbounds %struct.ir_raw_event, ptr %.compoundliteral, i32 0, i32 2
  %2 = ptrtoint ptr %pulse to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 64, ptr %pulse, align 1
  %call = call i32 @ir_raw_event_store(ptr noundef %dev, ptr noundef nonnull %.compoundliteral) #8
  %idle = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 14
  %3 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %idle, align 8
  call void @ir_raw_event_handle(ptr noundef %dev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_event_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_clear_wake_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_rc_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %tobool.not.i, label %entry.if.else4_crit_edge, label %device_may_wakeup.exit

entry.if.else4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else4

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else4_crit_edge, label %if.then

device_may_wakeup.exit.if.else4_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else4

if.then:                                          ; preds = %device_may_wakeup.exit
  %irq = getelementptr inbounds %struct.st_rc_device, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then3, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %irq_wake = getelementptr inbounds %struct.st_rc_device, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %irq_wake to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %irq_wake, align 4
  br label %cleanup

if.else4:                                         ; preds = %device_may_wakeup.exit.if.else4_crit_edge, %entry.if.else4_crit_edge
  %call5 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void @arm_heavy_mb() #8
  %rx_base = getelementptr inbounds %struct.st_rc_device, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %rx_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_base, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %rx_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_base, align 4
  %add.ptr10 = getelementptr i8, ptr %11, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #8, !srcloc !77
  %sys_clock = getelementptr inbounds %struct.st_rc_device, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %sys_clock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sys_clock, align 4
  tail call void @clk_disable(ptr noundef %13) #8
  tail call void @clk_unprepare(ptr noundef %13) #8
  %rstc = getelementptr inbounds %struct.st_rc_device, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rstc, align 4
  %call11 = tail call i32 @reset_control_assert(ptr noundef %15) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else4, %if.then3, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ 0, %if.else4 ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_rc_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rdev1 = getelementptr inbounds %struct.st_rc_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %rdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev1, align 4
  %irq_wake = getelementptr inbounds %struct.st_rc_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %irq_wake to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_wake, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %irq = getelementptr inbounds %struct.st_rc_device, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %7, i32 noundef 0) #8
  %8 = ptrtoint ptr %irq_wake to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %irq_wake, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %call4 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #8
  %call5 = tail call fastcc i32 @st_rc_hardware_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.else
  %users = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 23
  %9 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %users, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  tail call void @arm_heavy_mb() #8
  %rx_base = getelementptr inbounds %struct.st_rc_device, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %rx_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_base, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 251658240) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %rx_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_base, align 4
  %add.ptr14 = getelementptr i8, ptr %14, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 16777216) #8, !srcloc !77
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call5, %if.else.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %do.body ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !38, !39, !40, !42, !43, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_st_rc__232_414_st_rc_driver_init6, !1, !"__initcall__kmod_st_rc__232_414_st_rc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/st_rc.c", i32 414, i32 1}
!2 = !{ptr @__exitcall_st_rc_driver_exit, !1, !"__exitcall_st_rc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description233, !4, !"__UNIQUE_ID_description233", i1 false, i1 false}
!4 = !{!"../drivers/media/rc/st_rc.c", i32 416, i32 1}
!5 = !{ptr @__UNIQUE_ID_author234, !6, !"__UNIQUE_ID_author234", i1 false, i1 false}
!6 = !{!"../drivers/media/rc/st_rc.c", i32 417, i32 1}
!7 = !{ptr @__UNIQUE_ID_file235, !8, !"__UNIQUE_ID_file235", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/st_rc.c", i32 418, i32 1}
!9 = !{ptr @__UNIQUE_ID_license236, !8, !"__UNIQUE_ID_license236", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/rc/st_rc.c", i32 406, i32 11}
!12 = !{ptr @st_rc_driver, !13, !"st_rc_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/rc/st_rc.c", i32 404, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/rc/st_rc.c", i32 248, i32 41}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/rc/st_rc.c", i32 250, i32 24}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/rc/st_rc.c", i32 252, i32 31}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/rc/st_rc.c", i32 255, i32 4}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @st_rc_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @st_rc_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/rc/st_rc.c", i32 265, i32 3}
!30 = !{ptr @st_rc_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @st_rc_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/rc/st_rc.c", i32 307, i32 19}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/rc/st_rc.c", i32 308, i32 22}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/rc/st_rc.c", i32 317, i32 3}
!38 = !{ptr @st_rc_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @st_rc_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/rc/st_rc.c", i32 332, i32 2}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @st_rc_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @st_rc_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/rc/st_rc.c", i32 342, i32 2}
!49 = !{ptr @st_rc_probe._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @st_rc_probe._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/rc/st_rc.c", i32 172, i32 3}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @st_rc_hardware_init._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @st_rc_hardware_init._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/rc/st_rc.c", i32 115, i32 4}
!58 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @st_rc_rx_interrupt._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @st_rc_rx_interrupt._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @st_rc_match, !62, !"st_rc_match", i1 false, i1 false}
!62 = !{!"../drivers/media/rc/st_rc.c", i32 396, i32 34}
!63 = !{ptr @st_rc_pm_ops, !64, !"st_rc_pm_ops", i1 false, i1 false}
!64 = !{!"../drivers/media/rc/st_rc.c", i32 393, i32 8}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
!75 = !{i8 0, i8 2}
!76 = !{i64 2154430508}
!77 = !{i64 4238891}
!78 = !{i64 2154430923}
!79 = !{i64 2154431392}
!80 = !{i64 611546, i64 611607}
!81 = !{i64 2154432445}
!82 = !{i64 2154432847}
!83 = !{i64 614278}
!84 = !{!"branch_weights", i32 1, i32 2000}
!85 = !{i64 614563}
!86 = !{i64 2154434043}
!87 = !{i64 2154434445}
!88 = !{i64 4239309}
!89 = !{i64 2154424260}
!90 = !{i64 2154424770}
!91 = !{!"branch_weights", i32 2000, i32 1}
!92 = !{i64 2154426557}
!93 = !{i64 2154427236}
!94 = !{i64 2154427735}
!95 = !{i64 2154428379}
!96 = !{i64 2154446840}
!97 = !{i64 2154447248}
!98 = !{i64 2154447661}
!99 = !{i64 2154448069}
