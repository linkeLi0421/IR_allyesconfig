; ModuleID = '/llk/IR_all_yes/drivers/fpga/of-fpga-region.c_pt.bc'
source_filename = "../drivers/fpga/of-fpga-region.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.fpga_region = type { %struct.device, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.fpga_image_info = type { i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.of_overlay_notify_data = type { ptr, ptr }

@of_fpga_region_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @of_fpga_region_probe, ptr @of_fpga_region_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fpga_region_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@fpga_region_of_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @of_fpga_region_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_of_fpga_region__187_475_of_fpga_region_init4 = internal global ptr @of_fpga_region_init, section ".initcall4.init", align 4
@__exitcall_of_fpga_region_exit = internal global ptr @of_fpga_region_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description188 = internal constant [39 x i8] c"of_fpga_region.description=FPGA Region\00", section ".modinfo", align 1
@__UNIQUE_ID_author189 = internal constant [51 x i8] c"of_fpga_region.author=Alan Tull <atull@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [48 x i8] c"of_fpga_region.file=drivers/fpga/of-fpga-region\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [30 x i8] c"of_fpga_region.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"of-fpga-region\00", [17 x i8] zeroinitializer }, align 32
@fpga_region_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fpga-region\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@of_fpga_region_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 417, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FPGA Region probed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"of_fpga_region_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/fpga/of-fpga-region.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@of_fpga_region_probe._entry_ptr = internal global ptr @of_fpga_region_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fpga-region\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fpga-mgr\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fpga-bridges\00", [19 x i8] zeroinitializer }, align 32
@of_fpga_region_notify.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"of_fpga_region\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"of_fpga_region_notify\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s OF_OVERLAY_PRE_APPLY\0A\00", [39 x i8] zeroinitializer }, align 32
@of_fpga_region_notify.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.3, ptr @.str.12, i8 0, i8 89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s OF_OVERLAY_POST_APPLY\0A\00", [38 x i8] zeroinitializer }, align 32
@of_fpga_region_notify.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.3, ptr @.str.13, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s OF_OVERLAY_PRE_REMOVE\0A\00", [38 x i8] zeroinitializer }, align 32
@of_fpga_region_notify.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.3, ptr @.str.14, i8 0, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s OF_OVERLAY_POST_REMOVE\0A\00", [37 x i8] zeroinitializer }, align 32
@of_fpga_region_notify_pre_apply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 300, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Region already has overlay applied.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"of_fpga_region_notify_pre_apply\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@of_fpga_region_notify_pre_apply._entry_ptr = internal global ptr @of_fpga_region_notify_pre_apply._entry, section ".printk_index", align 4
@of_fpga_region_parse_ov._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.18, ptr @.str.3, i32 202, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"of_fpga_region_parse_ov\00", [40 x i8] zeroinitializer }, align 32
@of_fpga_region_parse_ov._entry_ptr = internal global ptr @of_fpga_region_parse_ov._entry, section ".printk_index", align 4
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"partial-fpga-config\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"external-fpga-config\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"encrypted-fpga-config\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"firmware-name\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"region-unfreeze-timeout-us\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"region-freeze-timeout-us\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"config-complete-timeout-us\00", [37 x i8] zeroinitializer }, align 32
@of_fpga_region_parse_ov._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.18, ptr @.str.3, i32 259, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"error: specified firmware and external-fpga-config\00", [45 x i8] zeroinitializer }, align 32
@of_fpga_region_parse_ov._entry_ptr.28 = internal global ptr @of_fpga_region_parse_ov._entry.26, section ".printk_index", align 4
@child_regions_with_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013firmware-name not allowed in child FPGA region: %pOF\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"child_regions_with_firmware\00", [36 x i8] zeroinitializer }, align 32
@child_regions_with_firmware._entry_ptr = internal global ptr @child_regions_with_firmware._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"of_fpga_region_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 437, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"fpga_region_of_nb\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 391, i32 30 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 441, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [21 x i8] c"fpga_region_of_match\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 19, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 417, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 55, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 56, i32 36 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 107, i32 39 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 353, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 356, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 359, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 362, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 300, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 202, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 222, i32 37 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 225, i32 37 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 228, i32 37 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 231, i32 40 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 239, i32 32 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 242, i32 32 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 245, i32 32 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 259, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private constant [33 x i8] c"../drivers/fpga/of-fpga-region.c\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 172, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_of_fpga_region_exit, ptr @__initcall__kmod_of_fpga_region__187_475_of_fpga_region_init4, ptr @child_regions_with_firmware._entry, ptr @child_regions_with_firmware._entry_ptr, ptr @of_fpga_region_exit, ptr @of_fpga_region_notify_pre_apply._entry, ptr @of_fpga_region_notify_pre_apply._entry_ptr, ptr @of_fpga_region_parse_ov._entry, ptr @of_fpga_region_parse_ov._entry.26, ptr @of_fpga_region_parse_ov._entry_ptr, ptr @of_fpga_region_parse_ov._entry_ptr.28, ptr @of_fpga_region_probe._entry, ptr @of_fpga_region_probe._entry_ptr, ptr @of_fpga_region_driver, ptr @fpga_region_of_nb, ptr @.str, ptr @fpga_region_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_fpga_region_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_region_of_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_region_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_fpga_region_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_fpga_region_notify_pre_apply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_fpga_region_parse_ov._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_fpga_region_parse_ov._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @child_regions_with_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_fpga_region_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @of_fpga_region_driver) #5
  %call = tail call i32 @of_overlay_notifier_unregister(ptr noundef nonnull @fpga_region_of_nb) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_overlay_notifier_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @of_fpga_region_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_overlay_notifier_register(ptr noundef nonnull @fpga_region_of_nb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @of_fpga_region_driver, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %err_plat

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_plat:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @of_overlay_notifier_unregister(ptr noundef nonnull @fpga_region_of_nb) #5
  br label %cleanup

cleanup:                                          ; preds = %err_plat, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %err_plat ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @of_fpga_region_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_node_get(ptr noundef %1) #5
  %tobool.not22.i = icmp eq ptr %1, null
  br i1 %tobool.not22.i, label %entry.of_fpga_region_get_mgr.exit.thread_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.of_fpga_region_get_mgr.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_fpga_region_get_mgr.exit.thread

while.body.i:                                     ; preds = %if.end7.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %np.addr.023.i = phi ptr [ %call8.i, %if.end7.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %call1.i = call i32 @of_device_is_compatible(ptr noundef nonnull %np.addr.023.i, ptr noundef nonnull @.str.6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %while.body.i.if.end7.i_crit_edge, label %if.then.i

while.body.i.if.end7.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.then.i:                                        ; preds = %while.body.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #5
  %2 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %np.addr.023.i, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #5
  br label %if.end7.i

of_parse_phandle.exit.i:                          ; preds = %if.then.i
  %3 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #5
  %tobool4.not.i = icmp eq ptr %4, null
  br i1 %tobool4.not.i, label %of_parse_phandle.exit.i.if.end7.i_crit_edge, label %of_fpga_region_get_mgr.exit

of_parse_phandle.exit.i.if.end7.i_crit_edge:      ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.end7.i:                                        ; preds = %of_parse_phandle.exit.i.if.end7.i_crit_edge, %of_parse_phandle.exit.thread.i, %while.body.i.if.end7.i_crit_edge
  %call8.i = call ptr @of_get_next_parent(ptr noundef nonnull %np.addr.023.i) #5
  %tobool.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool.not.i, label %if.end7.i.of_fpga_region_get_mgr.exit.thread_crit_edge, label %if.end7.i.while.body.i_crit_edge

if.end7.i.while.body.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end7.i.of_fpga_region_get_mgr.exit.thread_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_fpga_region_get_mgr.exit.thread

of_fpga_region_get_mgr.exit.thread:               ; preds = %if.end7.i.of_fpga_region_get_mgr.exit.thread_crit_edge, %entry.of_fpga_region_get_mgr.exit.thread_crit_edge
  call void @of_node_put(ptr noundef null) #5
  br label %cleanup

of_fpga_region_get_mgr.exit:                      ; preds = %of_parse_phandle.exit.i
  %call6.i = call ptr @of_fpga_mgr_get(ptr noundef nonnull %4) #5
  call void @of_node_put(ptr noundef nonnull %4) #5
  call void @of_node_put(ptr noundef nonnull %np.addr.023.i) #5
  %cmp.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %of_fpga_region_get_mgr.exit.cleanup_crit_edge, label %if.end

of_fpga_region_get_mgr.exit.cleanup_crit_edge:    ; preds = %of_fpga_region_get_mgr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %of_fpga_region_get_mgr.exit
  %call3 = call ptr @fpga_region_register(ptr noundef %dev1, ptr noundef %call6.i, ptr noundef nonnull @of_fpga_region_get_bridges) #5
  %cmp.i23 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i23, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call3 to i32
  call void @fpga_mgr_put(ptr noundef %call6.i) #5
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = call i32 @of_platform_populate(ptr noundef nonnull %1, ptr noundef nonnull @fpga_region_of_match, ptr noundef null, ptr noundef %call3) #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3, ptr %driver_data.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %of_fpga_region_get_mgr.exit.cleanup_crit_edge, %of_fpga_region_get_mgr.exit.thread
  %retval.0 = phi i32 [ %5, %if.then5 ], [ 0, %if.end7 ], [ -517, %of_fpga_region_get_mgr.exit.cleanup_crit_edge ], [ -517, %of_fpga_region_get_mgr.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @of_fpga_region_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mgr1 = getelementptr inbounds %struct.fpga_region, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mgr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr1, align 4
  tail call void @fpga_region_unregister(ptr noundef %1) #5
  tail call void @fpga_mgr_put(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fpga_region_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @of_fpga_region_get_bridges(ptr noundef %region) #2 align 64 {
entry:
  %args.i50 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %region, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %info2 = getelementptr inbounds %struct.fpga_region, ptr %region, i32 0, i32 4
  %2 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info2, align 8
  %parent = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %bridge_list = getelementptr inbounds %struct.fpga_region, ptr %region, i32 0, i32 2
  %call = tail call i32 @of_fpga_bridge_get_to_list(ptr noundef %5, ptr noundef %3, ptr noundef %bridge_list) #5
  %6 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %entry.if.end5_crit_edge [
    i32 -16, label %entry.cleanup_crit_edge
    i32 0, label %if.then3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %entry.if.end5_crit_edge
  %parent_br.0 = phi ptr [ %8, %if.then3 ], [ null, %entry.if.end5_crit_edge ]
  %overlay = getelementptr inbounds %struct.fpga_image_info, ptr %3, i32 0, i32 10
  %9 = ptrtoint ptr %overlay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %overlay, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %11 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %10, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  br label %if.end10

of_parse_phandle.exit:                            ; preds = %if.end5
  %12 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %of_parse_phandle.exit.if.end10_crit_edge, label %if.then8

of_parse_phandle.exit.if.end10_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then8:                                         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @of_node_put(ptr noundef nonnull %13) #5
  %14 = ptrtoint ptr %overlay to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %overlay, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %of_parse_phandle.exit.if.end10_crit_edge, %of_parse_phandle.exit.thread
  %np.0 = phi ptr [ %15, %if.then8 ], [ %1, %of_parse_phandle.exit.if.end10_crit_edge ], [ %1, %of_parse_phandle.exit.thread ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i50) #5
  %16 = call ptr @memset(ptr %args.i50, i32 255, i32 72)
  %call.i5160 = call i32 @__of_parse_phandle_with_args(ptr noundef %np.0, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i50) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5160)
  %tobool.not.i5261 = icmp eq i32 %call.i5160, 0
  br i1 %tobool.not.i5261, label %if.end10.of_parse_phandle.exit55_crit_edge, label %if.end10.of_parse_phandle.exit55.thread_crit_edge

if.end10.of_parse_phandle.exit55.thread_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_parse_phandle.exit55.thread

if.end10.of_parse_phandle.exit55_crit_edge:       ; preds = %if.end10
  br label %of_parse_phandle.exit55

of_parse_phandle.exit55.thread:                   ; preds = %for.inc.of_parse_phandle.exit55.thread_crit_edge, %if.end10.of_parse_phandle.exit55.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i50) #5
  br label %cleanup

of_parse_phandle.exit55:                          ; preds = %for.inc.of_parse_phandle.exit55_crit_edge, %if.end10.of_parse_phandle.exit55_crit_edge
  %i.062 = phi i32 [ %inc, %for.inc.of_parse_phandle.exit55_crit_edge ], [ 0, %if.end10.of_parse_phandle.exit55_crit_edge ]
  %17 = ptrtoint ptr %args.i50 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %args.i50, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i50) #5
  %tobool12.not = icmp eq ptr %18, null
  br i1 %tobool12.not, label %of_parse_phandle.exit55.cleanup_crit_edge, label %if.end14

of_parse_phandle.exit55.cleanup_crit_edge:        ; preds = %of_parse_phandle.exit55
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %of_parse_phandle.exit55
  %cmp15 = icmp eq ptr %18, %parent_br.0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  call void @of_node_put(ptr noundef nonnull %parent_br.0) #5
  br label %for.inc

if.end17:                                         ; preds = %if.end14
  %call19 = call i32 @of_fpga_bridge_get_to_list(ptr noundef nonnull %18, ptr noundef %3, ptr noundef %bridge_list) #5
  call void @of_node_put(ptr noundef nonnull %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call19)
  %cmp20 = icmp eq i32 %call19, -16
  br i1 %cmp20, label %if.then21, label %if.end17.for.inc_crit_edge

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  call void @fpga_bridges_put(ptr noundef %bridge_list) #5
  br label %cleanup

for.inc:                                          ; preds = %if.end17.for.inc_crit_edge, %if.then16
  %inc = add i32 %i.062, 1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i50) #5
  %19 = call ptr @memset(ptr %args.i50, i32 255, i32 72)
  %call.i51 = call i32 @__of_parse_phandle_with_args(ptr noundef %np.0, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 0, i32 noundef %inc, ptr noundef nonnull %args.i50) #5
  %tobool.not.i52 = icmp eq i32 %call.i51, 0
  br i1 %tobool.not.i52, label %for.inc.of_parse_phandle.exit55_crit_edge, label %for.inc.of_parse_phandle.exit55.thread_crit_edge

for.inc.of_parse_phandle.exit55.thread_crit_edge: ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_parse_phandle.exit55.thread

for.inc.of_parse_phandle.exit55_crit_edge:        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_parse_phandle.exit55

cleanup:                                          ; preds = %if.then21, %of_parse_phandle.exit55.cleanup_crit_edge, %of_parse_phandle.exit55.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then21 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %of_parse_phandle.exit55.thread ], [ 0, %of_parse_phandle.exit55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fpga_mgr_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_fpga_mgr_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_fpga_bridge_get_to_list(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fpga_bridges_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fpga_region_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @of_fpga_region_notify(ptr nocapture noundef readnone %nb, i32 noundef %action, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  %child_firmware_name.i.i.i = alloca ptr, align 4
  %firmware_name.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %action, label %entry.cleanup_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body4
    i32 2, label %do.body21
    i32 3, label %do.body38
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @of_fpga_region_notify.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@of_fpga_region_notify, %if.then)) #5
          to label %sw.epilog [label %if.then], !srcloc !89

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @of_fpga_region_notify.__UNIQUE_ID_ddebug183, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #5
  br label %sw.epilog

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @of_fpga_region_notify.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@of_fpga_region_notify, %if.then16)) #5
          to label %cleanup [label %if.then16], !srcloc !89

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @of_fpga_region_notify.__UNIQUE_ID_ddebug184, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10) #5
  br label %cleanup

do.body21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @of_fpga_region_notify.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@of_fpga_region_notify, %if.then33)) #5
          to label %cleanup [label %if.then33], !srcloc !89

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @of_fpga_region_notify.__UNIQUE_ID_ddebug185, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.10) #5
  br label %cleanup

do.body38:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @of_fpga_region_notify.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@of_fpga_region_notify, %if.then50)) #5
          to label %sw.epilog [label %if.then50], !srcloc !89

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @of_fpga_region_notify.__UNIQUE_ID_ddebug186, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then50, %do.body38, %if.then, %do.body
  %target = getelementptr inbounds %struct.of_overlay_notify_data, ptr %arg, i32 0, i32 1
  %1 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %target, align 4
  %call.i = tail call ptr @fpga_region_class_find(ptr noundef null, ptr noundef %2, ptr noundef nonnull @device_match_of_node) #5
  %tobool55.not = icmp eq ptr %call.i, null
  br i1 %tobool55.not, label %sw.epilog.cleanup_crit_edge, label %if.end57

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end57:                                         ; preds = %sw.epilog
  %3 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %action, label %if.end57.sw.epilog61.thread_crit_edge [
    i32 0, label %sw.bb58
    i32 3, label %sw.bb60
  ]

if.end57.sw.epilog61.thread_crit_edge:            ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog61.thread

sw.bb58:                                          ; preds = %if.end57
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %firmware_name.i.i) #5
  %6 = ptrtoint ptr %firmware_name.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %firmware_name.i.i, align 4, !annotation !90
  %info2.i.i = getelementptr inbounds %struct.fpga_region, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %info2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info2.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.15) #8
  br label %sw.epilog61.thread99

if.end.i.i:                                       ; preds = %sw.bb58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %child_firmware_name.i.i.i) #5
  %9 = ptrtoint ptr %child_firmware_name.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %child_firmware_name.i.i.i, align 4, !annotation !90
  %call.i.i.i = tail call ptr @of_node_get(ptr noundef %5) #5
  %call.i.i.i.i = tail call ptr @of_find_matching_node_and_match(ptr noundef %5, ptr noundef nonnull @fpga_region_of_match, ptr noundef null) #5
  %tobool.not19.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not19.i.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.end.i.i.while.body.i.i.i_crit_edge

if.end.i.i.while.body.i.i.i_crit_edge:            ; preds = %if.end.i.i
  br label %while.body.i.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i.i

while.body.i.i.i:                                 ; preds = %if.end.i.i.i.while.body.i.i.i_crit_edge, %if.end.i.i.while.body.i.i.i_crit_edge
  %child_region.020.i.i.i = phi ptr [ %call.i15.i.i.i, %if.end.i.i.i.while.body.i.i.i_crit_edge ], [ %call.i.i.i.i, %if.end.i.i.while.body.i.i.i_crit_edge ]
  %call2.i.i.i = call i32 @of_property_read_string(ptr noundef nonnull %child_region.020.i.i.i, ptr noundef nonnull @.str.22, ptr noundef nonnull %child_firmware_name.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.then5.i.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.i
  %call.i15.i.i.i = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %child_region.020.i.i.i, ptr noundef nonnull @fpga_region_of_match, ptr noundef null) #5
  %tobool.not.i.i.i = icmp eq ptr %call.i15.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.if.end7.i.i_crit_edge, label %if.end.i.i.i.while.body.i.i.i_crit_edge

if.end.i.i.i.while.body.i.i.i_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i.i

if.end.i.i.i.if.end7.i.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i.i

if.then5.i.i:                                     ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @of_node_put(ptr noundef nonnull %child_region.020.i.i.i) #5
  %call7.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull %child_region.020.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %child_firmware_name.i.i.i) #5
  br label %sw.epilog61.thread99

if.end7.i.i:                                      ; preds = %if.end.i.i.i.if.end7.i.i_crit_edge, %if.end.i.i.if.end7.i.i_crit_edge
  call void @of_node_put(ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %child_firmware_name.i.i.i) #5
  %call8.i.i = call ptr @fpga_image_info_alloc(ptr noundef nonnull %call.i) #5
  %tobool9.not.i.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool9.not.i.i, label %if.end7.i.i.sw.epilog61.thread99_crit_edge, label %if.end12.i.i

if.end7.i.i.sw.epilog61.thread99_crit_edge:       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog61.thread99

if.end12.i.i:                                     ; preds = %if.end7.i.i
  %overlay13.i.i = getelementptr inbounds %struct.fpga_image_info, ptr %call8.i.i, i32 0, i32 10
  %10 = ptrtoint ptr %overlay13.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %5, ptr %overlay13.i.i, align 4
  %call.i83.i.i = call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.19, ptr noundef null) #5
  %tobool.i.not.i.i = icmp eq ptr %call.i83.i.i, null
  br i1 %tobool.i.not.i.i, label %if.end12.i.i.if.end16.i.i_crit_edge, label %if.then15.i.i

if.end12.i.i.if.end16.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i.i

if.then15.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call8.i.i, align 4
  %or.i.i = or i32 %12, 1
  store i32 %or.i.i, ptr %call8.i.i, align 4
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then15.i.i, %if.end12.i.i.if.end16.i.i_crit_edge
  %call.i84.i.i = call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef null) #5
  %tobool.i85.not.i.i = icmp eq ptr %call.i84.i.i, null
  br i1 %tobool.i85.not.i.i, label %if.end16.i.i.if.end21.i.i_crit_edge, label %if.then18.i.i

if.end16.i.i.if.end21.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i.i

if.then18.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call8.i.i, align 4
  %or20.i.i = or i32 %14, 2
  store i32 %or20.i.i, ptr %call8.i.i, align 4
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then18.i.i, %if.end16.i.i.if.end21.i.i_crit_edge
  %call.i86.i.i = call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.21, ptr noundef null) #5
  %tobool.i87.not.i.i = icmp eq ptr %call.i86.i.i, null
  br i1 %tobool.i87.not.i.i, label %if.end21.i.i.if.end26.i.i_crit_edge, label %if.then23.i.i

if.end21.i.i.if.end26.i.i_crit_edge:              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i.i

if.then23.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call8.i.i, align 4
  %or25.i.i = or i32 %16, 4
  store i32 %or25.i.i, ptr %call8.i.i, align 4
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.then23.i.i, %if.end21.i.i.if.end26.i.i_crit_edge
  %call27.i.i = call i32 @of_property_read_string(ptr noundef %5, ptr noundef nonnull @.str.22, ptr noundef nonnull %firmware_name.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool28.not.i.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.then29.i.i, label %if.end26.i.i.if.end37.i.i_crit_edge

if.end26.i.i.if.end37.i.i_crit_edge:              ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37.i.i

if.then29.i.i:                                    ; preds = %if.end26.i.i
  %17 = ptrtoint ptr %firmware_name.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %firmware_name.i.i, align 4
  %call30.i.i = call noalias ptr @devm_kstrdup(ptr noundef nonnull %call.i, ptr noundef %18, i32 noundef 3264) #5
  %firmware_name31.i.i = getelementptr inbounds %struct.fpga_image_info, ptr %call8.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %firmware_name31.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call30.i.i, ptr %firmware_name31.i.i, align 4
  %tobool33.not.i.i = icmp eq ptr %call30.i.i, null
  br i1 %tobool33.not.i.i, label %if.then29.i.i.sw.epilog61.thread99_crit_edge, label %if.then29.i.i.if.end37.i.i_crit_edge

if.then29.i.i.if.end37.i.i_crit_edge:             ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37.i.i

if.then29.i.i.sw.epilog61.thread99_crit_edge:     ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog61.thread99

if.end37.i.i:                                     ; preds = %if.then29.i.i.if.end37.i.i_crit_edge, %if.end26.i.i.if.end37.i.i_crit_edge
  %enable_timeout_us.i.i = getelementptr inbounds %struct.fpga_image_info, ptr %call8.i.i, i32 0, i32 1
  %call.i.i88.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.23, ptr noundef %enable_timeout_us.i.i, i32 noundef 1, i32 noundef 0) #5
  %disable_timeout_us.i.i = getelementptr inbounds %struct.fpga_image_info, ptr %call8.i.i, i32 0, i32 2
  %call.i.i89.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.24, ptr noundef %disable_timeout_us.i.i, i32 noundef 1, i32 noundef 0) #5
  %config_complete_timeout_us.i.i = getelementptr inbounds %struct.fpga_image_info, ptr %call8.i.i, i32 0, i32 3
  %call.i.i90.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.25, ptr noundef %config_complete_timeout_us.i.i, i32 noundef 1, i32 noundef 0) #5
  %firmware_name41.i.i = getelementptr inbounds %struct.fpga_image_info, ptr %call8.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %firmware_name41.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %firmware_name41.i.i, align 4
  %tobool42.not.i.i = icmp eq ptr %21, null
  br i1 %tobool42.not.i.i, label %if.end37.i.i.ret_no_info.i.i_crit_edge, label %if.end44.i.i

if.end37.i.i.ret_no_info.i.i_crit_edge:           ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ret_no_info.i.i

if.end44.i.i:                                     ; preds = %if.end37.i.i
  %22 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call8.i.i, align 4
  %and.i.i = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool46.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool46.not.i.i, label %if.end44.i.i.of_fpga_region_parse_ov.exit.i_crit_edge, label %do.end50.i.i

if.end44.i.i.of_fpga_region_parse_ov.exit.i_crit_edge: ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_fpga_region_parse_ov.exit.i

do.end50.i.i:                                     ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.27) #8
  br label %ret_no_info.i.i

ret_no_info.i.i:                                  ; preds = %do.end50.i.i, %if.end37.i.i.ret_no_info.i.i_crit_edge
  %ret.0.i.i = phi ptr [ inttoptr (i32 -22 to ptr), %do.end50.i.i ], [ null, %if.end37.i.i.ret_no_info.i.i_crit_edge ]
  call void @fpga_image_info_free(ptr noundef nonnull %call8.i.i) #5
  br label %of_fpga_region_parse_ov.exit.i

sw.epilog61.thread99:                             ; preds = %if.then29.i.i.sw.epilog61.thread99_crit_edge, %if.end7.i.i.sw.epilog61.thread99_crit_edge, %if.then5.i.i, %do.end.i.i
  %retval.0.i.ph.i = phi ptr [ inttoptr (i32 -12 to ptr), %if.then29.i.i.sw.epilog61.thread99_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end7.i.i.sw.epilog61.thread99_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then5.i.i ], [ inttoptr (i32 -22 to ptr), %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware_name.i.i) #5
  %24 = ptrtoint ptr %retval.0.i.ph.i to i32
  br label %if.then63

of_fpga_region_parse_ov.exit.i:                   ; preds = %ret_no_info.i.i, %if.end44.i.i.of_fpga_region_parse_ov.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %ret.0.i.i, %ret_no_info.i.i ], [ %call8.i.i, %if.end44.i.i.of_fpga_region_parse_ov.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware_name.i.i) #5
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %sw.epilog61, label %if.end.i

if.end.i:                                         ; preds = %of_fpga_region_parse_ov.exit.i
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %if.end.i.sw.epilog61.thread_crit_edge, label %if.end5.i

if.end.i.sw.epilog61.thread_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog61.thread

if.end5.i:                                        ; preds = %if.end.i
  %25 = ptrtoint ptr %info2.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %info2.i.i, align 8
  %tobool7.not.i = icmp eq ptr %26, null
  br i1 %tobool7.not.i, label %if.end9.i, label %do.end.i

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.15) #8
  br label %if.then63

if.end9.i:                                        ; preds = %if.end5.i
  %27 = ptrtoint ptr %info2.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %retval.0.i.i, ptr %info2.i.i, align 8
  %call11.i = call i32 @fpga_region_program_fpga(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end9.i.sw.epilog61.thread_crit_edge, label %if.then13.i

if.end9.i.sw.epilog61.thread_crit_edge:           ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog61.thread

if.then13.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @fpga_image_info_free(ptr noundef nonnull %retval.0.i.i) #5
  %28 = ptrtoint ptr %info2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %info2.i.i, align 8
  br label %if.then63

sw.bb60:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  %bridge_list.i = getelementptr inbounds %struct.fpga_region, ptr %call.i, i32 0, i32 2
  %call.i85 = tail call i32 @fpga_bridges_disable(ptr noundef %bridge_list.i) #5
  tail call void @fpga_bridges_put(ptr noundef %bridge_list.i) #5
  %info.i = getelementptr inbounds %struct.fpga_region, ptr %call.i, i32 0, i32 4
  %29 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %info.i, align 8
  tail call void @fpga_image_info_free(ptr noundef %30) #5
  %31 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %info.i, align 8
  br label %sw.epilog61.thread

sw.epilog61.thread:                               ; preds = %sw.bb60, %if.end9.i.sw.epilog61.thread_crit_edge, %if.end.i.sw.epilog61.thread_crit_edge, %if.end57.sw.epilog61.thread_crit_edge
  call void @put_device(ptr noundef nonnull %call.i) #5
  br label %cleanup

sw.epilog61:                                      ; preds = %of_fpga_region_parse_ov.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %retval.0.i.i to i32
  br label %if.then63

if.then63:                                        ; preds = %sw.epilog61, %if.then13.i, %do.end.i, %sw.epilog61.thread99
  %ret.096 = phi i32 [ %32, %sw.epilog61 ], [ %24, %sw.epilog61.thread99 ], [ %call11.i, %if.then13.i ], [ -22, %do.end.i ]
  call void @put_device(ptr noundef nonnull %call.i) #5
  %sub.i = sub i32 1, %ret.096
  %or.i = or i32 %sub.i, 32768
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %sw.epilog61.thread, %sw.epilog.cleanup_crit_edge, %if.then33, %do.body21, %if.then16, %do.body4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or.i, %if.then63 ], [ 1, %if.then16 ], [ 1, %if.then33 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %sw.epilog.cleanup_crit_edge ], [ 1, %do.body4 ], [ 1, %do.body21 ], [ 1, %sw.epilog61.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fpga_region_class_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_of_node(ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fpga_region_program_fpga(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fpga_image_info_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fpga_image_info_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fpga_bridges_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_overlay_notifier_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !36, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !51, !52, !53, !55, !56, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !75, !77, !78, !79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__initcall__kmod_of_fpga_region__187_475_of_fpga_region_init4, !1, !"__initcall__kmod_of_fpga_region__187_475_of_fpga_region_init4", i1 false, i1 false}
!1 = !{!"../drivers/fpga/of-fpga-region.c", i32 475, i32 1}
!2 = !{ptr @__exitcall_of_fpga_region_exit, !3, !"__exitcall_of_fpga_region_exit", i1 false, i1 false}
!3 = !{!"../drivers/fpga/of-fpga-region.c", i32 476, i32 1}
!4 = !{ptr @__UNIQUE_ID_description188, !5, !"__UNIQUE_ID_description188", i1 false, i1 false}
!5 = !{!"../drivers/fpga/of-fpga-region.c", i32 478, i32 1}
!6 = !{ptr @__UNIQUE_ID_author189, !7, !"__UNIQUE_ID_author189", i1 false, i1 false}
!7 = !{!"../drivers/fpga/of-fpga-region.c", i32 479, i32 1}
!8 = !{ptr @__UNIQUE_ID_file190, !9, !"__UNIQUE_ID_file190", i1 false, i1 false}
!9 = !{!"../drivers/fpga/of-fpga-region.c", i32 480, i32 1}
!10 = !{ptr @__UNIQUE_ID_license191, !9, !"__UNIQUE_ID_license191", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/fpga/of-fpga-region.c", i32 441, i32 11}
!13 = !{ptr @of_fpga_region_driver, !14, !"of_fpga_region_driver", i1 false, i1 false}
!14 = !{!"../drivers/fpga/of-fpga-region.c", i32 437, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/fpga/of-fpga-region.c", i32 417, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @of_fpga_region_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @of_fpga_region_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/fpga/of-fpga-region.c", i32 55, i32 35}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/fpga/of-fpga-region.c", i32 56, i32 36}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/fpga/of-fpga-region.c", i32 107, i32 39}
!29 = !{ptr @fpga_region_of_match, !30, !"fpga_region_of_match", i1 false, i1 false}
!30 = !{!"../drivers/fpga/of-fpga-region.c", i32 19, i32 34}
!31 = !{ptr @fpga_region_of_nb, !32, !"fpga_region_of_nb", i1 false, i1 false}
!32 = !{!"../drivers/fpga/of-fpga-region.c", i32 391, i32 30}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/fpga/of-fpga-region.c", i32 353, i32 3}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @of_fpga_region_notify.__UNIQUE_ID_ddebug183, !34, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/fpga/of-fpga-region.c", i32 356, i32 3}
!40 = !{ptr @of_fpga_region_notify.__UNIQUE_ID_ddebug184, !39, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/fpga/of-fpga-region.c", i32 359, i32 3}
!43 = !{ptr @of_fpga_region_notify.__UNIQUE_ID_ddebug185, !42, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/fpga/of-fpga-region.c", i32 362, i32 3}
!46 = !{ptr @of_fpga_region_notify.__UNIQUE_ID_ddebug186, !45, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/fpga/of-fpga-region.c", i32 300, i32 3}
!49 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @of_fpga_region_notify_pre_apply._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @of_fpga_region_notify_pre_apply._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/fpga/of-fpga-region.c", i32 202, i32 3}
!55 = !{ptr @of_fpga_region_parse_ov._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @of_fpga_region_parse_ov._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/fpga/of-fpga-region.c", i32 222, i32 37}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/fpga/of-fpga-region.c", i32 225, i32 37}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/fpga/of-fpga-region.c", i32 228, i32 37}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/fpga/of-fpga-region.c", i32 231, i32 40}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/fpga/of-fpga-region.c", i32 239, i32 32}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/fpga/of-fpga-region.c", i32 242, i32 32}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/fpga/of-fpga-region.c", i32 245, i32 32}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/fpga/of-fpga-region.c", i32 259, i32 3}
!73 = !{ptr @of_fpga_region_parse_ov._entry.26, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @of_fpga_region_parse_ov._entry_ptr.28, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/fpga/of-fpga-region.c", i32 172, i32 3}
!77 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @child_regions_with_firmware._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @child_regions_with_firmware._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i64 2148290714, i64 2148290719, i64 2148290732, i64 2148290776, i64 2148290810, i64 2148290831}
!90 = !{!"auto-init"}
