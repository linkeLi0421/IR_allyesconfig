; ModuleID = '/llk/IR_all_yes/drivers/usb/dwc3/dwc3-st.c_pt.bc'
source_filename = "../drivers/usb/dwc3/dwc3-st.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.st_dwc3 = type { ptr, ptr, ptr, i32, i32, ptr, ptr }

@__initcall__kmod_dwc3_st__326_375_st_dwc3_driver_init6 = internal global ptr @st_dwc3_driver_init, section ".initcall6.init", align 4
@st_dwc3_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @st_dwc3_probe, ptr @st_dwc3_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st_dwc3_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st_dwc3_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_st_dwc3_driver_exit = internal global ptr @st_dwc3_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author327 = internal constant [59 x i8] c"dwc3_st.author=Giuseppe Cavallaro <peppe.cavallaro@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description328 = internal constant [51 x i8] c"dwc3_st.description=DesignWare USB3 STi Glue Layer\00", section ".modinfo", align 1
@__UNIQUE_ID_file329 = internal constant [38 x i8] c"dwc3_st.file=drivers/usb/dwc3/dwc3-st\00", section ".modinfo", align 1
@__UNIQUE_ID_license330 = internal constant [23 x i8] c"dwc3_st.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb-st-dwc3\00", [20 x i8] zeroinitializer }, align 32
@st_dwc3_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@st_dwc3_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @st_dwc3_suspend, ptr @st_dwc3_resume, ptr @st_dwc3_suspend, ptr @st_dwc3_resume, ptr @st_dwc3_suspend, ptr @st_dwc3_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reg-glue\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"st,syscfg\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syscfg-reg\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@st_dwc3_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 235, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not get power controller\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st_dwc3_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/usb/dwc3/dwc3-st.c\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st_dwc3_probe._entry_ptr = internal global ptr @st_dwc3_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"softreset\00", [22 x i8] zeroinitializer }, align 32
@st_dwc3_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 246, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not get reset controller\0A\00", [32 x i8] zeroinitializer }, align 32
@st_dwc3_probe._entry_ptr.13 = internal global ptr @st_dwc3_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dwc3\00", [27 x i8] zeroinitializer }, align 32
@st_dwc3_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.6, ptr @.str.7, i32 256, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to find dwc3 core node\0A\00", [33 x i8] zeroinitializer }, align 32
@st_dwc3_probe._entry_ptr.17 = internal global ptr @st_dwc3_probe._entry.15, section ".printk_index", align 4
@st_dwc3_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.6, ptr @.str.7, i32 264, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to add dwc3 core\0A\00", [39 x i8] zeroinitializer }, align 32
@st_dwc3_probe._entry_ptr.20 = internal global ptr @st_dwc3_probe._entry.18, section ".printk_index", align 4
@st_dwc3_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.6, ptr @.str.7, i32 270, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to find dwc3 core device\0A\00", [63 x i8] zeroinitializer }, align 32
@st_dwc3_probe._entry_ptr.23 = internal global ptr @st_dwc3_probe._entry.21, section ".printk_index", align 4
@st_dwc3_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.6, ptr @.str.7, i32 287, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drd initialisation failed\0A\00", [37 x i8] zeroinitializer }, align 32
@st_dwc3_probe._entry_ptr.26 = internal global ptr @st_dwc3_probe._entry.24, section ".printk_index", align 4
@st_dwc3_drd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.7, i32 162, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unsupported mode of operation %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"st_dwc3_drd_init\00", [47 x i8] zeroinitializer }, align 32
@st_dwc3_drd_init._entry_ptr = internal global ptr @st_dwc3_drd_init._entry, section ".printk_index", align 4
@st_dwc3_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.29, ptr @.str.7, i32 345, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"st_dwc3_resume\00", [17 x i8] zeroinitializer }, align 32
@st_dwc3_resume._entry_ptr = internal global ptr @st_dwc3_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"st_dwc3_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 365, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 369, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"st_dwc3_match\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 358, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c"st_dwc3_dev_pm_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 356, i32 8 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 210, i32 47 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 214, i32 49 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 221, i32 59 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 233, i32 41 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 235, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 244, i32 38 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 246, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 254, i32 37 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 256, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 264, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 270, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 287, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 161, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private constant [30 x i8] c"../drivers/usb/dwc3/dwc3-st.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 345, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author327, ptr @__UNIQUE_ID_description328, ptr @__UNIQUE_ID_file329, ptr @__UNIQUE_ID_license330, ptr @__exitcall_st_dwc3_driver_exit, ptr @__initcall__kmod_dwc3_st__326_375_st_dwc3_driver_init6, ptr @st_dwc3_drd_init._entry, ptr @st_dwc3_drd_init._entry_ptr, ptr @st_dwc3_driver_exit, ptr @st_dwc3_probe._entry, ptr @st_dwc3_probe._entry.11, ptr @st_dwc3_probe._entry.15, ptr @st_dwc3_probe._entry.18, ptr @st_dwc3_probe._entry.21, ptr @st_dwc3_probe._entry.24, ptr @st_dwc3_probe._entry_ptr, ptr @st_dwc3_probe._entry_ptr.13, ptr @st_dwc3_probe._entry_ptr.17, ptr @st_dwc3_probe._entry_ptr.20, ptr @st_dwc3_probe._entry_ptr.23, ptr @st_dwc3_probe._entry_ptr.26, ptr @st_dwc3_resume._entry, ptr @st_dwc3_resume._entry_ptr, ptr @st_dwc3_driver, ptr @.str, ptr @st_dwc3_match, ptr @st_dwc3_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_dwc3_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_dwc3_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_dwc3_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_dwc3_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_dwc3_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_dwc3_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_dwc3_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_dwc3_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_dwc3_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_dwc3_drd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_dwc3_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @st_dwc3_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @st_dwc3_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @st_dwc3_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @st_dwc3_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_dwc3_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #5
  %glue_base = getelementptr inbounds %struct.st_dwc3, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %glue_base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %glue_base, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.2) #5
  %cmp.i132 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev1, ptr %call.i, align 4
  %regmap15 = getelementptr inbounds %struct.st_dwc3, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %regmap15 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9, ptr %regmap15, align 4
  %call16 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.3) #5
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end13.undo_platform_dev_alloc_crit_edge, label %if.end19

if.end13.undo_platform_dev_alloc_crit_edge:       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %undo_platform_dev_alloc

if.end19:                                         ; preds = %if.end13
  %7 = ptrtoint ptr %call16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call16, align 4
  %syscfg_reg_off = getelementptr inbounds %struct.st_dwc3, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %syscfg_reg_off to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %syscfg_reg_off, align 4
  %call.i133 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %rstc_pwrdn = getelementptr inbounds %struct.st_dwc3, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %rstc_pwrdn to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i133, ptr %rstc_pwrdn, align 4
  %cmp.i134 = icmp ugt ptr %call.i133, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134, label %do.end, label %if.end27

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #8
  %11 = ptrtoint ptr %rstc_pwrdn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rstc_pwrdn, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %undo_platform_dev_alloc

if.end27:                                         ; preds = %if.end19
  %call29 = tail call i32 @reset_control_deassert(ptr noundef %call.i133) #5
  %call.i135 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %rstc_rst = getelementptr inbounds %struct.st_dwc3, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %rstc_rst to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i135, ptr %rstc_rst, align 4
  %cmp.i136 = icmp ugt ptr %call.i135, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i136, label %do.end36, label %if.end40

do.end36:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #8
  %15 = ptrtoint ptr %rstc_rst to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rstc_rst, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %undo_powerdown

if.end40:                                         ; preds = %if.end27
  %call42 = tail call i32 @reset_control_deassert(ptr noundef %call.i135) #5
  %call43 = tail call ptr @of_get_child_by_name(ptr noundef %1, ptr noundef nonnull @.str.14) #5
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %if.end40.err_node_put_crit_edge, label %if.end50

if.end40.err_node_put_crit_edge:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_node_put

if.end50:                                         ; preds = %if.end40
  %call51 = tail call i32 @of_platform_populate(ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef %dev1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end57, label %if.end50.err_node_put_crit_edge

if.end50.err_node_put_crit_edge:                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_node_put

if.end57:                                         ; preds = %if.end50
  %call58 = tail call ptr @of_find_device_by_node(ptr noundef nonnull %call43) #5
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %if.end57.err_node_put_crit_edge, label %if.end64

if.end57.err_node_put_crit_edge:                  ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_node_put

if.end64:                                         ; preds = %if.end57
  %dev65 = getelementptr inbounds %struct.platform_device, ptr %call58, i32 0, i32 3
  %call66 = tail call i32 @usb_get_dr_mode(ptr noundef %dev65) #5
  %dr_mode = getelementptr inbounds %struct.st_dwc3, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %dr_mode to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call66, ptr %dr_mode, align 4
  tail call void @of_node_put(ptr noundef nonnull %call43) #5
  tail call void @platform_device_put(ptr noundef nonnull %call58) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %val.i, align 4, !annotation !76
  %20 = ptrtoint ptr %regmap15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap15, align 4
  %22 = ptrtoint ptr %syscfg_reg_off to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %syscfg_reg_off, align 4
  %call.i137 = call i32 @regmap_read(ptr noundef %21, i32 noundef %23, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool.not.i = icmp eq i32 %call.i137, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end64.st_dwc3_drd_init.exit.thread_crit_edge

if.end64.st_dwc3_drd_init.exit.thread_crit_edge:  ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %st_dwc3_drd_init.exit.thread

if.end.i:                                         ; preds = %if.end64
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.i, align 4
  %and.i = and i32 %25, 3959
  store i32 %and.i, ptr %val.i, align 4
  %26 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dr_mode, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %27, label %do.end.i [
    i32 2, label %if.end.i.st_dwc3_drd_init.exit_crit_edge
    i32 1, label %sw.bb2.i
  ]

if.end.i.st_dwc3_drd_init.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %st_dwc3_drd_init.exit

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %st_dwc3_drd_init.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.27, i32 noundef %27) #8
  br label %st_dwc3_drd_init.exit.thread

st_dwc3_drd_init.exit.thread:                     ; preds = %do.end.i, %if.end64.st_dwc3_drd_init.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i137, %if.end64.st_dwc3_drd_init.exit.thread_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br label %do.end72

st_dwc3_drd_init.exit:                            ; preds = %sw.bb2.i, %if.end.i.st_dwc3_drd_init.exit_crit_edge
  %storemerge.i = phi i32 [ 4, %sw.bb2.i ], [ 3, %if.end.i.st_dwc3_drd_init.exit_crit_edge ]
  %31 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %storemerge.i, ptr %val.i, align 4
  %32 = ptrtoint ptr %regmap15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap15, align 4
  %34 = ptrtoint ptr %syscfg_reg_off to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %syscfg_reg_off, align 4
  %call8.i = call i32 @regmap_write(ptr noundef %33, i32 noundef %35, i32 noundef %storemerge.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool68.not = icmp eq i32 %call8.i, 0
  br i1 %tobool68.not, label %if.end73, label %st_dwc3_drd_init.exit.do.end72_crit_edge

st_dwc3_drd_init.exit.do.end72_crit_edge:         ; preds = %st_dwc3_drd_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end72

do.end72:                                         ; preds = %st_dwc3_drd_init.exit.do.end72_crit_edge, %st_dwc3_drd_init.exit.thread
  %retval.0.i140 = phi i32 [ %retval.0.i.ph, %st_dwc3_drd_init.exit.thread ], [ %call8.i, %st_dwc3_drd_init.exit.do.end72_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #8
  br label %undo_softreset

if.end73:                                         ; preds = %st_dwc3_drd_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %glue_base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %glue_base, align 4
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #5, !srcloc !77
  %39 = and i32 %38, -286326785
  %40 = or i32 %39, 17891328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %40) #5, !srcloc !78
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 44
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !77
  %42 = or i32 %41, 285278208
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %42) #5, !srcloc !78
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #5, !srcloc !77
  %44 = or i32 %43, 268435456
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %44) #5, !srcloc !78
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %45 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_node_put:                                     ; preds = %if.end57.err_node_put_crit_edge, %if.end50.err_node_put_crit_edge, %if.end40.err_node_put_crit_edge
  %.str.22.sink = phi ptr [ @.str.16, %if.end40.err_node_put_crit_edge ], [ @.str.19, %if.end50.err_node_put_crit_edge ], [ @.str.22, %if.end57.err_node_put_crit_edge ]
  %ret.0 = phi i32 [ -19, %if.end40.err_node_put_crit_edge ], [ %call51, %if.end50.err_node_put_crit_edge ], [ -19, %if.end57.err_node_put_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.22.sink) #8
  tail call void @of_node_put(ptr noundef %call43) #5
  br label %undo_softreset

undo_softreset:                                   ; preds = %err_node_put, %do.end72
  %ret.1 = phi i32 [ %ret.0, %err_node_put ], [ %retval.0.i140, %do.end72 ]
  %46 = ptrtoint ptr %rstc_rst to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rstc_rst, align 4
  %call75 = call i32 @reset_control_assert(ptr noundef %47) #5
  br label %undo_powerdown

undo_powerdown:                                   ; preds = %undo_softreset, %do.end36
  %ret.2 = phi i32 [ %17, %do.end36 ], [ %ret.1, %undo_softreset ]
  %48 = ptrtoint ptr %rstc_pwrdn to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rstc_pwrdn, align 4
  %call77 = call i32 @reset_control_assert(ptr noundef %49) #5
  br label %undo_platform_dev_alloc

undo_platform_dev_alloc:                          ; preds = %undo_powerdown, %do.end, %if.end13.undo_platform_dev_alloc_crit_edge
  %ret.3 = phi i32 [ %13, %do.end ], [ %ret.2, %undo_powerdown ], [ -6, %if.end13.undo_platform_dev_alloc_crit_edge ]
  call void @platform_device_put(ptr noundef %pdev) #5
  br label %cleanup

cleanup:                                          ; preds = %undo_platform_dev_alloc, %if.end73, %if.then11, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then5 ], [ %4, %if.then11 ], [ %ret.3, %undo_platform_dev_alloc ], [ 0, %if.end73 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_dwc3_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @of_platform_depopulate(ptr noundef %dev) #5
  %rstc_pwrdn = getelementptr inbounds %struct.st_dwc3, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %rstc_pwrdn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rstc_pwrdn, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #5
  %rstc_rst = getelementptr inbounds %struct.st_dwc3, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %rstc_rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rstc_rst, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_dr_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_dwc3_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rstc_pwrdn = getelementptr inbounds %struct.st_dwc3, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %rstc_pwrdn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rstc_pwrdn, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #5
  %rstc_rst = getelementptr inbounds %struct.st_dwc3, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %rstc_rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rstc_rst, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %5) #5
  %call3 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_dwc3_resume(ptr noundef %dev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #5
  %rstc_pwrdn = getelementptr inbounds %struct.st_dwc3, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %rstc_pwrdn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rstc_pwrdn, align 4
  %call2 = tail call i32 @reset_control_deassert(ptr noundef %3) #5
  %rstc_rst = getelementptr inbounds %struct.st_dwc3, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %rstc_rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rstc_rst, align 4
  %call3 = tail call i32 @reset_control_deassert(ptr noundef %5) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i, align 4, !annotation !76
  %regmap.i = getelementptr inbounds %struct.st_dwc3, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %syscfg_reg_off.i = getelementptr inbounds %struct.st_dwc3, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %syscfg_reg_off.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %syscfg_reg_off.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.st_dwc3_drd_init.exit.thread_crit_edge

entry.st_dwc3_drd_init.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %st_dwc3_drd_init.exit.thread

if.end.i:                                         ; preds = %entry
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i, align 4
  %and.i = and i32 %12, 3959
  store i32 %and.i, ptr %val.i, align 4
  %dr_mode.i = getelementptr inbounds %struct.st_dwc3, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %dr_mode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dr_mode.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %14, label %do.end.i [
    i32 2, label %if.end.i.st_dwc3_drd_init.exit_crit_edge
    i32 1, label %sw.bb2.i
  ]

if.end.i.st_dwc3_drd_init.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %st_dwc3_drd_init.exit

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %st_dwc3_drd_init.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.27, i32 noundef %14) #8
  br label %st_dwc3_drd_init.exit.thread

st_dwc3_drd_init.exit.thread:                     ; preds = %do.end.i, %entry.st_dwc3_drd_init.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %entry.st_dwc3_drd_init.exit.thread_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br label %do.end

st_dwc3_drd_init.exit:                            ; preds = %sw.bb2.i, %if.end.i.st_dwc3_drd_init.exit_crit_edge
  %storemerge.i = phi i32 [ 4, %sw.bb2.i ], [ 3, %if.end.i.st_dwc3_drd_init.exit_crit_edge ]
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge.i, ptr %val.i, align 4
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 4
  %21 = ptrtoint ptr %syscfg_reg_off.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %syscfg_reg_off.i, align 4
  %call8.i = call i32 @regmap_write(ptr noundef %20, i32 noundef %22, i32 noundef %storemerge.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not = icmp eq i32 %call8.i, 0
  br i1 %tobool.not, label %if.end, label %st_dwc3_drd_init.exit.do.end_crit_edge

st_dwc3_drd_init.exit.do.end_crit_edge:           ; preds = %st_dwc3_drd_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %st_dwc3_drd_init.exit.do.end_crit_edge, %st_dwc3_drd_init.exit.thread
  %retval.0.i14 = phi i32 [ %retval.0.i.ph, %st_dwc3_drd_init.exit.thread ], [ %call8.i, %st_dwc3_drd_init.exit.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #8
  br label %cleanup

if.end:                                           ; preds = %st_dwc3_drd_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %glue_base.i = getelementptr inbounds %struct.st_dwc3, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %glue_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %glue_base.i, align 4
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #5, !srcloc !77
  %26 = and i32 %25, -286326785
  %27 = or i32 %26, 17891328
  %28 = ptrtoint ptr %glue_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %glue_base.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #5, !srcloc !78
  %30 = ptrtoint ptr %glue_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %glue_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 44
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !77
  %33 = or i32 %32, 285278208
  %34 = ptrtoint ptr %glue_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %glue_base.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %35, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %33) #5, !srcloc !78
  %36 = ptrtoint ptr %glue_base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %glue_base.i, align 4
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #5, !srcloc !77
  %39 = or i32 %38, 268435456
  %40 = ptrtoint ptr %glue_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %glue_base.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #5, !srcloc !78
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %retval.0.i14, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !63, !65, !66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_dwc3_st__326_375_st_dwc3_driver_init6, !1, !"__initcall__kmod_dwc3_st__326_375_st_dwc3_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/dwc3/dwc3-st.c", i32 375, i32 1}
!2 = !{ptr @__exitcall_st_dwc3_driver_exit, !1, !"__exitcall_st_dwc3_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author327, !4, !"__UNIQUE_ID_author327", i1 false, i1 false}
!4 = !{!"../drivers/usb/dwc3/dwc3-st.c", i32 377, i32 1}
!5 = !{ptr @__UNIQUE_ID_description328, !6, !"__UNIQUE_ID_description328", i1 false, i1 false}
!6 = !{!"../drivers/usb/dwc3/dwc3-st.c", i32 378, i32 1}
!7 = !{ptr @__UNIQUE_ID_file329, !8, !"__UNIQUE_ID_file329", i1 false, i1 false}
!8 = !{!"../drivers/usb/dwc3/dwc3-st.c", i32 379, i32 1}
!9 = !{ptr @__UNIQUE_ID_license330, !8, !"__UNIQUE_ID_license330", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/dwc3/dwc3-st.c", i32 369, i32 11}
!12 = !{ptr @st_dwc3_driver, !13, !"st_dwc3_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/dwc3/dwc3-st.c", i32 365, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/dwc3/dwc3-st.c", i32 210, i32 47}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/dwc3/dwc3-st.c", i32 214, i32 49}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/dwc3/dwc3-st.c", i32 221, i32 59}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/dwc3/dwc3-st.c", i32 233, i32 41}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/dwc3/dwc3-st.c", i32 235, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @st_dwc3_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @st_dwc3_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/dwc3/dwc3-st.c", i32 244, i32 38}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/dwc3/dwc3-st.c", i32 246, i32 3}
!34 = !{ptr @st_dwc3_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @st_dwc3_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/dwc3/dwc3-st.c", i32 254, i32 37}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/dwc3/dwc3-st.c", i32 256, i32 3}
!40 = !{ptr @st_dwc3_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @st_dwc3_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/dwc3/dwc3-st.c", i32 264, i32 3}
!44 = !{ptr @st_dwc3_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @st_dwc3_probe._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/dwc3/dwc3-st.c", i32 270, i32 3}
!48 = !{ptr @st_dwc3_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @st_dwc3_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/dwc3/dwc3-st.c", i32 287, i32 3}
!52 = !{ptr @st_dwc3_probe._entry.24, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @st_dwc3_probe._entry_ptr.26, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/dwc3/dwc3-st.c", i32 161, i32 3}
!56 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @st_dwc3_drd_init._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @st_dwc3_drd_init._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @st_dwc3_match, !60, !"st_dwc3_match", i1 false, i1 false}
!60 = !{!"../drivers/usb/dwc3/dwc3-st.c", i32 358, i32 34}
!61 = !{ptr @st_dwc3_dev_pm_ops, !62, !"st_dwc3_dev_pm_ops", i1 false, i1 false}
!62 = !{!"../drivers/usb/dwc3/dwc3-st.c", i32 356, i32 8}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/dwc3/dwc3-st.c", i32 345, i32 3}
!65 = !{ptr @st_dwc3_resume._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @st_dwc3_resume._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"auto-init"}
!77 = !{i64 4214330}
!78 = !{i64 4213912}
