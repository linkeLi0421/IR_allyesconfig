; ModuleID = '/llk/IR_all_yes/drivers/soc/qcom/ocmem.c_pt.bc'
source_filename = "../drivers/soc/qcom/ocmem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+of_get_ocmem\22, \22a\22\09"
module asm "\09.weak\09__crc_of_get_ocmem\09\09\09\09"
module asm "\09.long\09__crc_of_get_ocmem\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_ocmem:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_ocmem\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_ocmem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ocmem_allocate\22, \22a\22\09"
module asm "\09.weak\09__crc_ocmem_allocate\09\09\09\09"
module asm "\09.long\09__crc_ocmem_allocate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocmem_allocate:\09\09\09\09\09"
module asm "\09.asciz \09\22ocmem_allocate\22\09\09\09\09\09"
module asm "__kstrtabns_ocmem_allocate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ocmem_free\22, \22a\22\09"
module asm "\09.weak\09__crc_ocmem_free\09\09\09\09"
module asm "\09.long\09__crc_ocmem_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocmem_free:\09\09\09\09\09"
module asm "\09.asciz \09\22ocmem_free\22\09\09\09\09\09"
module asm "__kstrtabns_ocmem_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.ocmem_config = type { i8, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ocmem = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, i32 }
%struct.ocmem_buf = type { i32, i32, i32 }
%struct.ocmem_region = type { i8, i32, i32, [4 x i32], i32, i32 }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sram\00", [27 x i8] zeroinitializer }, align 32
@of_get_ocmem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 196, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot look up sram phandle\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"of_get_ocmem\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/soc/qcom/ocmem.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@of_get_ocmem._entry_ptr = internal global ptr @of_get_ocmem._entry, section ".printk_index", align 4
@of_get_ocmem._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 202, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot find device node %s\0A\00", [36 x i8] zeroinitializer }, align 32
@of_get_ocmem._entry_ptr.8 = internal global ptr @of_get_ocmem._entry.6, section ".printk_index", align 4
@of_get_ocmem._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 208, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cannot get ocmem\0A\00", [46 x i8] zeroinitializer }, align 32
@of_get_ocmem._entry_ptr.11 = internal global ptr @of_get_ocmem._entry.9, section ".printk_index", align 4
@__kstrtab_of_get_ocmem = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_ocmem = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_ocmem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_ocmem to i32), ptr @__kstrtab_of_get_ocmem, ptr @__kstrtabns_of_get_ocmem }, section "___ksymtab+of_get_ocmem", align 4
@ocmem_allocate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 247, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"could not lock: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ocmem_allocate\00", [17 x i8] zeroinitializer }, align 32
@ocmem_allocate._entry_ptr = internal global ptr @ocmem_allocate._entry, section ".printk_index", align 4
@ocmem_allocate.__UNIQUE_ID_ddebug204 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.13, ptr @.str.3, ptr @.str.15, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ocmem\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"using %ldK of OCMEM at 0x%08lx for client %d\0A\00", [50 x i8] zeroinitializer }, align 32
@__kstrtab_ocmem_allocate = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocmem_allocate = external dso_local constant [0 x i8], align 1
@__ksymtab_ocmem_allocate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocmem_allocate to i32), ptr @__kstrtab_ocmem_allocate, ptr @__kstrtabns_ocmem_allocate }, section "___ksymtab+ocmem_allocate", align 4
@ocmem_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 286, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"could not unlock: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ocmem_free\00", [21 x i8] zeroinitializer }, align 32
@ocmem_free._entry_ptr = internal global ptr @ocmem_free._entry, section ".printk_index", align 4
@__kstrtab_ocmem_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocmem_free = external dso_local constant [0 x i8], align 1
@__ksymtab_ocmem_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocmem_free to i32), ptr @__kstrtab_ocmem_free, ptr @__kstrtabns_ocmem_free }, section "___ksymtab+ocmem_free", align 4
@__initcall__kmod_ocmem__216_434_ocmem_driver_init6 = internal global ptr @ocmem_driver_init, section ".initcall6.init", align 4
@ocmem_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ocmem_dev_probe, ptr @ocmem_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.14, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ocmem_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ocmem_driver_exit = internal global ptr @ocmem_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description217 = internal constant [76 x i8] c"ocmem.description=On Chip Memory (OCMEM) allocator for some Snapdragon SoCs\00", section ".modinfo", align 1
@__UNIQUE_ID_file218 = internal constant [34 x i8] c"ocmem.file=drivers/soc/qcom/ocmem\00", section ".modinfo", align 1
@__UNIQUE_ID_license219 = internal constant [21 x i8] c"ocmem.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@update_ocmem.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"update_ocmem\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ocmem_region_mode_control %x\0A\00", [34 x i8] zeroinitializer }, align 32
@ocmem_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8974-ocmem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ocmem_8974_config }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ocmem_clks = internal global { [2 x %struct.clk_bulk_data], [16 x i8] } { [2 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.43, ptr null }, %struct.clk_bulk_data { ptr @.str.44, ptr null }], [16 x i8] zeroinitializer }, align 32
@ocmem_dev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 318, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unable to get clocks\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ocmem_dev_probe\00", [16 x i8] zeroinitializer }, align 32
@ocmem_dev_probe._entry_ptr = internal global ptr @ocmem_dev_probe._entry, section ".printk_index", align 4
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ctrl\00", [27 x i8] zeroinitializer }, align 32
@ocmem_dev_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str.3, i32 325, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to ioremap ocmem_ctrl resource\0A\00", [57 x i8] zeroinitializer }, align 32
@ocmem_dev_probe._entry_ptr.25 = internal global ptr @ocmem_dev_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mem\00", [28 x i8] zeroinitializer }, align 32
@ocmem_dev_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.21, ptr @.str.3, i32 332, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Could not get mem region\0A\00", [38 x i8] zeroinitializer }, align 32
@ocmem_dev_probe._entry_ptr.29 = internal global ptr @ocmem_dev_probe._entry.27, section ".printk_index", align 4
@ocmem_dev_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.21, ptr @.str.3, i32 341, ptr @.str.32, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to enable clocks\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ocmem_dev_probe._entry_ptr.33 = internal global ptr @ocmem_dev_probe._entry.30, section ".printk_index", align 4
@ocmem_dev_probe.__UNIQUE_ID_ddebug205 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.21, ptr @.str.3, ptr @.str.34, i8 0, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"configuring scm\0A\00", [47 x i8] zeroinitializer }, align 32
@ocmem_dev_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.21, ptr @.str.3, i32 349, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Could not enable secure configuration\0A\00", [57 x i8] zeroinitializer }, align 32
@ocmem_dev_probe._entry_ptr.37 = internal global ptr @ocmem_dev_probe._entry.35, section ".printk_index", align 4
@ocmem_dev_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.21, ptr @.str.3, i32 364, ptr @.str.32, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%u ports, %u regions, %u macros, %sinterleaved\0A\00", [48 x i8] zeroinitializer }, align 32
@ocmem_dev_probe._entry_ptr.40 = internal global ptr @ocmem_dev_probe._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"not \00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@ocmem_8974_config = internal constant { %struct.ocmem_config, [24 x i8] } { %struct.ocmem_config { i8 3, i32 131072 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 194, i32 43 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 196, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 202, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 208, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 247, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 257, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 286, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant [13 x i8] c"ocmem_driver\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 425, i32 31 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 127, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [15 x i8] c"ocmem_of_match\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 418, i32 34 }
@___asan_gen_.114 = private unnamed_addr constant [11 x i8] c"ocmem_clks\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 95, i32 29 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 318, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 323, i32 60 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 325, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 330, i32 12 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 332, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 341, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 346, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 349, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 362, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 97, i32 9 }
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 100, i32 9 }
@___asan_gen_.180 = private unnamed_addr constant [18 x i8] c"ocmem_8974_config\00", align 1
@___asan_gen_.181 = private constant [28 x i8] c"../drivers/soc/qcom/ocmem.c\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 413, i32 34 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_description217, ptr @__UNIQUE_ID_file218, ptr @__UNIQUE_ID_license219, ptr @__exitcall_ocmem_driver_exit, ptr @__initcall__kmod_ocmem__216_434_ocmem_driver_init6, ptr @__ksymtab_ocmem_allocate, ptr @__ksymtab_ocmem_free, ptr @__ksymtab_of_get_ocmem, ptr @ocmem_allocate._entry, ptr @ocmem_allocate._entry_ptr, ptr @ocmem_dev_probe._entry, ptr @ocmem_dev_probe._entry.23, ptr @ocmem_dev_probe._entry.27, ptr @ocmem_dev_probe._entry.30, ptr @ocmem_dev_probe._entry.35, ptr @ocmem_dev_probe._entry.38, ptr @ocmem_dev_probe._entry_ptr, ptr @ocmem_dev_probe._entry_ptr.25, ptr @ocmem_dev_probe._entry_ptr.29, ptr @ocmem_dev_probe._entry_ptr.33, ptr @ocmem_dev_probe._entry_ptr.37, ptr @ocmem_dev_probe._entry_ptr.40, ptr @ocmem_driver_exit, ptr @ocmem_free._entry, ptr @ocmem_free._entry_ptr, ptr @of_get_ocmem._entry, ptr @of_get_ocmem._entry.6, ptr @of_get_ocmem._entry.9, ptr @of_get_ocmem._entry_ptr, ptr @of_get_ocmem._entry_ptr.11, ptr @of_get_ocmem._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @ocmem_driver, ptr @.str.18, ptr @.str.19, ptr @ocmem_of_match, ptr @ocmem_clks, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @ocmem_8974_config], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_ocmem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_ocmem._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_ocmem._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocmem_allocate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocmem_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocmem_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocmem_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocmem_clks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocmem_dev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocmem_dev_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocmem_dev_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocmem_dev_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocmem_dev_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocmem_dev_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocmem_8974_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_get_ocmem(ptr noundef %dev) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #9
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  br label %do.end

of_parse_phandle.exit:                            ; preds = %entry
  %3 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %of_parse_phandle.exit.do.end_crit_edge, label %lor.lhs.false

of_parse_phandle.exit.do.end_crit_edge:           ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %of_parse_phandle.exit
  %parent = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %of_parse_phandle.exit.do.end_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call4 = call ptr @of_find_device_by_node(ptr noundef nonnull %6) #9
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %8) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call4, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  %tobool13.not = icmp eq ptr %10, null
  br i1 %tobool13.not, label %do.end17, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.end11.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -19 to ptr), %do.end17 ], [ inttoptr (i32 -517 to ptr), %do.end9 ], [ inttoptr (i32 -19 to ptr), %do.end ], [ %10, %if.end11.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ocmem_allocate(ptr noundef %ocmem, i32 noundef %client, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %client)
  %cmp.not = icmp eq i32 %client, 0
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !106

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 222, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %size)
  %cmp22 = icmp ugt i32 %size, 65535
  %and = and i32 %size, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp23 = icmp eq i32 %and, 0
  %or.cond = and i1 %cmp22, %cmp23
  br i1 %or.cond, label %if.end26, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %active_allocations = getelementptr inbounds %struct.ocmem, ptr %ocmem, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_allocations, i32 noundef 4) #9
  %0 = ptrtoint ptr %active_allocations to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %active_allocations, align 4
  %and.i.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %test_and_set_bit_lock.exit, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

test_and_set_bit_lock.exit:                       ; preds = %if.end26
  tail call void @llvm.prefetch.p0(ptr %active_allocations, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_allocations, ptr %active_allocations, i32 2, ptr elementtype(i32) %active_allocations) #9, !srcloc !107
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !108
  %3 = and i32 %asmresult.i.i.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %phi.cmp.i.not = icmp eq i32 %3, 0
  br i1 %phi.cmp.i.not, label %if.end30, label %test_and_set_bit_lock.exit.cleanup_crit_edge

test_and_set_bit_lock.exit.cleanup_crit_edge:     ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %test_and_set_bit_lock.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 12) #13
  %tobool32.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool32.not, label %if.end30.err_unlock_crit_edge, label %if.end34

if.end30.err_unlock_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unlock

if.end34:                                         ; preds = %if.end30
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %call7.i.i, align 8
  %addr = getelementptr inbounds %struct.ocmem_buf, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %addr, align 4
  %len = getelementptr inbounds %struct.ocmem_buf, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %size, ptr %len, align 8
  %config.i = getelementptr inbounds %struct.ocmem, ptr %ocmem, i32 0, i32 1
  %8 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp7.not.i = icmp eq i8 %11, 0
  br i1 %cmp7.not.i, label %if.end34.update_range.exit_crit_edge, label %for.body.lr.ph.i

if.end34.update_range.exit_crit_edge:             ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %update_range.exit

for.body.lr.ph.i:                                 ; preds = %if.end34
  %regions.i = getelementptr inbounds %struct.ocmem, ptr %ocmem, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc26.i, %for.end.i.for.body.i_crit_edge ]
  %offset.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %offset.1.lcssa.i, %for.end.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %regions.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regions.i, align 4
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %offset.08.i)
  %cmp3.not.i = icmp ugt i32 %15, %offset.08.i
  br i1 %cmp3.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 8
  %add.i = add i32 %17, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.08.i, i32 %add.i)
  %cmp6.i = icmp ult i32 %offset.08.i, %add.i
  br i1 %cmp6.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %mode.i = getelementptr %struct.ocmem_region, ptr %13, i32 %i.09.i, i32 1
  %18 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %mode.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %num_macros.i = getelementptr %struct.ocmem_region, ptr %13, i32 %i.09.i, i32 2
  %19 = ptrtoint ptr %num_macros.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_macros.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp91.not.i = icmp eq i32 %20, 0
  br i1 %cmp91.not.i, label %if.end.i.for.end.i_crit_edge, label %for.body11.lr.ph.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body11.lr.ph.i:                               ; preds = %if.end.i
  %macro_size.i = getelementptr %struct.ocmem_region, ptr %13, i32 %i.09.i, i32 4
  br label %for.body11.i

for.body11.i:                                     ; preds = %if.end23.i.for.body11.i_crit_edge, %for.body11.lr.ph.i
  %j.04.i = phi i32 [ 0, %for.body11.lr.ph.i ], [ %inc.i, %if.end23.i.for.body11.i_crit_edge ]
  %offset.12.i = phi i32 [ %offset.08.i, %for.body11.lr.ph.i ], [ %add24.i, %if.end23.i.for.body11.i_crit_edge ]
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %offset.12.i)
  %cmp13.not.i = icmp ugt i32 %22, %offset.12.i
  br i1 %cmp13.not.i, label %for.body11.i.if.end23.i_crit_edge, label %land.lhs.true15.i

for.body11.i.if.end23.i_crit_edge:                ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

land.lhs.true15.i:                                ; preds = %for.body11.i
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 8
  %add18.i = add i32 %24, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.12.i, i32 %add18.i)
  %cmp19.i = icmp ult i32 %offset.12.i, %add18.i
  br i1 %cmp19.i, label %if.then21.i, label %land.lhs.true15.i.if.end23.i_crit_edge

land.lhs.true15.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then21.i:                                      ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx22.i = getelementptr %struct.ocmem_region, ptr %13, i32 %i.09.i, i32 3, i32 %j.04.i
  %25 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %arrayidx22.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %land.lhs.true15.i.if.end23.i_crit_edge, %for.body11.i.if.end23.i_crit_edge
  %26 = ptrtoint ptr %macro_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %macro_size.i, align 4
  %add24.i = add i32 %27, %offset.12.i
  %inc.i = add nuw i32 %j.04.i, 1
  %28 = ptrtoint ptr %num_macros.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_macros.i, align 4
  %cmp9.i = icmp ult i32 %inc.i, %29
  br i1 %cmp9.i, label %if.end23.i.for.body11.i_crit_edge, label %if.end23.i.for.end.i_crit_edge

if.end23.i.for.end.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end23.i.for.body11.i_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body11.i

for.end.i:                                        ; preds = %if.end23.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %offset.1.lcssa.i = phi i32 [ %offset.08.i, %if.end.i.for.end.i_crit_edge ], [ %add24.i, %if.end23.i.for.end.i_crit_edge ]
  %inc26.i = add nuw nsw i32 %i.09.i, 1
  %30 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 4
  %conv.i = zext i8 %33 to i32
  %cmp.i = icmp ult i32 %inc26.i, %conv.i
  br i1 %cmp.i, label %for.end.i.for.body.i_crit_edge, label %for.end.i.update_range.exit_crit_edge

for.end.i.update_range.exit_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %update_range.exit

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

update_range.exit:                                ; preds = %for.end.i.update_range.exit_crit_edge, %if.end34.update_range.exit_crit_edge
  tail call fastcc void @update_ocmem(ptr noundef %ocmem) #9
  %call37 = tail call zeroext i1 @qcom_scm_ocmem_lock_available() #9
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call7.i.i, align 8
  br i1 %call37, label %if.then38, label %if.else

if.then38:                                        ; preds = %update_range.exit
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 8
  %call41 = tail call i32 @qcom_scm_ocmem_lock(i32 noundef 1, i32 noundef %35, i32 noundef %37, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then38.do.body52_crit_edge, label %do.end46

if.then38.do.body52_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body52

do.end46:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %ocmem to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ocmem, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.12, i32 noundef %call41) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %err_unlock

if.else:                                          ; preds = %update_range.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %40 = tail call i32 @llvm.bswap.i32(i32 %35) #9
  %mmio.i = getelementptr inbounds %struct.ocmem, ptr %ocmem, i32 0, i32 3
  %41 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %42, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %40) #9, !srcloc !110
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 8
  %add = add i32 %44, %35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %45 = tail call i32 @llvm.bswap.i32(i32 %add) #9
  %46 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i104 = getelementptr i8, ptr %47, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 %45) #9, !srcloc !110
  br label %do.body52

do.body52:                                        ; preds = %if.else, %if.then38.do.body52_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ocmem_allocate.__UNIQUE_ID_ddebug204, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ocmem_allocate, %if.then62)) #9
          to label %cleanup [label %if.then62], !srcloc !111

if.then62:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %ocmem to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ocmem, align 4
  %div102 = lshr i32 %size, 10
  %50 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ocmem_allocate.__UNIQUE_ID_ddebug204, ptr noundef %49, ptr noundef nonnull @.str.15, i32 noundef %div102, i32 noundef %51, i32 noundef 0) #9
  br label %cleanup

err_unlock:                                       ; preds = %do.end46, %if.end30.err_unlock_crit_edge
  %ret.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end46 ], [ inttoptr (i32 -12 to ptr), %if.end30.err_unlock_crit_edge ]
  %call.i.i105 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_allocations, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @llvm.prefetch.p0(ptr %active_allocations, i32 1, i32 3, i32 1) #9
  %52 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_allocations, ptr %active_allocations, i32 2, ptr elementtype(i32) %active_allocations) #9, !srcloc !113
  br label %cleanup

cleanup:                                          ; preds = %err_unlock, %if.then62, %do.body52, %test_and_set_bit_lock.exit.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -19 to ptr), %do.end ], [ %ret.0, %err_unlock ], [ %call7.i.i, %if.then62 ], [ inttoptr (i32 -22 to ptr), %if.end21.cleanup_crit_edge ], [ inttoptr (i32 -16 to ptr), %test_and_set_bit_lock.exit.cleanup_crit_edge ], [ %call7.i.i, %do.body52 ], [ inttoptr (i32 -16 to ptr), %if.end26.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qcom_scm_ocmem_lock_available() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_ocmem_lock(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocmem_free(ptr noundef %ocmem, i32 noundef %client, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %client)
  %cmp.not = icmp eq i32 %client, 0
  br i1 %cmp.not, label %if.end21.critedge, label %do.end, !prof !106

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 275, i32 noundef 9, ptr noundef null) #9
  br label %return

if.end21.critedge:                                ; preds = %entry
  %config.i = getelementptr inbounds %struct.ocmem, ptr %ocmem, i32 0, i32 1
  %0 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp7.not.i = icmp eq i8 %3, 0
  br i1 %cmp7.not.i, label %if.end21.critedge.update_range.exit_crit_edge, label %for.body.lr.ph.i

if.end21.critedge.update_range.exit_crit_edge:    ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %update_range.exit

for.body.lr.ph.i:                                 ; preds = %if.end21.critedge
  %regions.i = getelementptr inbounds %struct.ocmem, ptr %ocmem, i32 0, i32 7
  %len.i = getelementptr inbounds %struct.ocmem_buf, ptr %buf, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc26.i, %for.end.i.for.body.i_crit_edge ]
  %offset.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %offset.1.lcssa.i, %for.end.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %regions.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regions.i, align 4
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %offset.08.i)
  %cmp3.not.i = icmp ugt i32 %7, %offset.08.i
  br i1 %cmp3.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 4
  %add.i = add i32 %9, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.08.i, i32 %add.i)
  %cmp6.i = icmp ult i32 %offset.08.i, %add.i
  br i1 %cmp6.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %mode.i = getelementptr %struct.ocmem_region, ptr %5, i32 %i.09.i, i32 1
  %10 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %mode.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %num_macros.i = getelementptr %struct.ocmem_region, ptr %5, i32 %i.09.i, i32 2
  %11 = ptrtoint ptr %num_macros.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_macros.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp91.not.i = icmp eq i32 %12, 0
  br i1 %cmp91.not.i, label %if.end.i.for.end.i_crit_edge, label %for.body11.lr.ph.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body11.lr.ph.i:                               ; preds = %if.end.i
  %macro_size.i = getelementptr %struct.ocmem_region, ptr %5, i32 %i.09.i, i32 4
  br label %for.body11.i

for.body11.i:                                     ; preds = %if.end23.i.for.body11.i_crit_edge, %for.body11.lr.ph.i
  %j.04.i = phi i32 [ 0, %for.body11.lr.ph.i ], [ %inc.i, %if.end23.i.for.body11.i_crit_edge ]
  %offset.12.i = phi i32 [ %offset.08.i, %for.body11.lr.ph.i ], [ %add24.i, %if.end23.i.for.body11.i_crit_edge ]
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %offset.12.i)
  %cmp13.not.i = icmp ugt i32 %14, %offset.12.i
  br i1 %cmp13.not.i, label %for.body11.i.if.end23.i_crit_edge, label %land.lhs.true15.i

for.body11.i.if.end23.i_crit_edge:                ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

land.lhs.true15.i:                                ; preds = %for.body11.i
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i, align 4
  %add18.i = add i32 %16, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.12.i, i32 %add18.i)
  %cmp19.i = icmp ult i32 %offset.12.i, %add18.i
  br i1 %cmp19.i, label %if.then21.i, label %land.lhs.true15.i.if.end23.i_crit_edge

land.lhs.true15.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then21.i:                                      ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx22.i = getelementptr %struct.ocmem_region, ptr %5, i32 %i.09.i, i32 3, i32 %j.04.i
  %17 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %arrayidx22.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %land.lhs.true15.i.if.end23.i_crit_edge, %for.body11.i.if.end23.i_crit_edge
  %18 = ptrtoint ptr %macro_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %macro_size.i, align 4
  %add24.i = add i32 %19, %offset.12.i
  %inc.i = add nuw i32 %j.04.i, 1
  %20 = ptrtoint ptr %num_macros.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_macros.i, align 4
  %cmp9.i = icmp ult i32 %inc.i, %21
  br i1 %cmp9.i, label %if.end23.i.for.body11.i_crit_edge, label %if.end23.i.for.end.i_crit_edge

if.end23.i.for.end.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end23.i.for.body11.i_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body11.i

for.end.i:                                        ; preds = %if.end23.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %offset.1.lcssa.i = phi i32 [ %offset.08.i, %if.end.i.for.end.i_crit_edge ], [ %add24.i, %if.end23.i.for.end.i_crit_edge ]
  %inc26.i = add nuw nsw i32 %i.09.i, 1
  %22 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %config.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 4
  %conv.i = zext i8 %25 to i32
  %cmp.i = icmp ult i32 %inc26.i, %conv.i
  br i1 %cmp.i, label %for.end.i.for.body.i_crit_edge, label %for.end.i.update_range.exit_crit_edge

for.end.i.update_range.exit_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %update_range.exit

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

update_range.exit:                                ; preds = %for.end.i.update_range.exit_crit_edge, %if.end21.critedge.update_range.exit_crit_edge
  tail call fastcc void @update_ocmem(ptr noundef %ocmem) #9
  %call = tail call zeroext i1 @qcom_scm_ocmem_lock_available() #9
  br i1 %call, label %if.then22, label %if.else

if.then22:                                        ; preds = %update_range.exit
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buf, align 4
  %len = getelementptr inbounds %struct.ocmem_buf, ptr %buf, i32 0, i32 2
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  %call23 = tail call i32 @qcom_scm_ocmem_unlock(i32 noundef 1, i32 noundef %27, i32 noundef %29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.if.end30_crit_edge, label %do.end28

if.then22.if.end30_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

do.end28:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %ocmem to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ocmem, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.16, i32 noundef %call23) #12
  br label %if.end30

if.else:                                          ; preds = %update_range.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %mmio.i = getelementptr inbounds %struct.ocmem, ptr %ocmem, i32 0, i32 3
  %32 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %34 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %35, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 0) #9, !srcloc !110
  br label %if.end30

if.end30:                                         ; preds = %if.else, %do.end28, %if.then22.if.end30_crit_edge
  tail call void @kfree(ptr noundef %buf) #9
  %active_allocations = getelementptr inbounds %struct.ocmem, ptr %ocmem, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_allocations, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @llvm.prefetch.p0(ptr %active_allocations, i32 1, i32 3, i32 1) #9
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_allocations, ptr %active_allocations, i32 2, ptr elementtype(i32) %active_allocations) #9, !srcloc !113
  br label %return

return:                                           ; preds = %if.end30, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_ocmem_unlock(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ocmem_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ocmem_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ocmem_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @ocmem_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_ocmem(ptr nocapture noundef readonly %ocmem) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @qcom_scm_ocmem_lock_available() #9
  br i1 %call, label %entry.if.end10_crit_edge, label %for.cond.preheader

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

for.cond.preheader:                               ; preds = %entry
  %config = getelementptr inbounds %struct.ocmem, ptr %ocmem, i32 0, i32 1
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp178.not = icmp eq i8 %3, 0
  br i1 %cmp178.not, label %for.cond.preheader.do.body_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %regions = getelementptr inbounds %struct.ocmem, ptr %ocmem, i32 0, i32 7
  %4 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regions, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %region_mode_ctrl.0180 = phi i32 [ 0, %for.body.lr.ph ], [ %region_mode_ctrl.1, %for.body.for.body_crit_edge ]
  %i.0179 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mode = getelementptr %struct.ocmem_region, ptr %5, i32 %i.0179, i32 1
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp2 = icmp eq i32 %7, 1
  %shl = shl nuw i32 1, %i.0179
  %or = select i1 %cmp2, i32 %shl, i32 0
  %region_mode_ctrl.1 = or i32 %or, %region_mode_ctrl.0180
  %inc = add nuw nsw i32 %i.0179, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.do.body_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge
  %region_mode_ctrl.0.lcssa = phi i32 [ 0, %for.cond.preheader.do.body_crit_edge ], [ %region_mode_ctrl.1, %for.body.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_ocmem.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_ocmem, %if.then8)) #9
          to label %do.end [label %if.then8], !srcloc !111

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %ocmem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ocmem, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_ocmem.__UNIQUE_ID_ddebug183, ptr noundef %9, ptr noundef nonnull @.str.19, i32 noundef %region_mode_ctrl.0.lcssa) #9
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %region_mode_ctrl.0.lcssa) #9
  %mmio.i = getelementptr inbounds %struct.ocmem, ptr %ocmem, i32 0, i32 3
  %11 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #9, !srcloc !110
  br label %if.end10

if.end10:                                         ; preds = %do.end, %entry.if.end10_crit_edge
  %config12 = getelementptr inbounds %struct.ocmem, ptr %ocmem, i32 0, i32 1
  %13 = ptrtoint ptr %config12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %config12, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp15182.not = icmp eq i8 %16, 0
  br i1 %cmp15182.not, label %if.end10.for.end142_crit_edge, label %for.body17.lr.ph

if.end10.for.end142_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end142

for.body17.lr.ph:                                 ; preds = %if.end10
  %regions19 = getelementptr inbounds %struct.ocmem, ptr %ocmem, i32 0, i32 7
  %mmio.i175 = getelementptr inbounds %struct.ocmem, ptr %ocmem, i32 0, i32 3
  br label %for.body17

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.body17.lr.ph
  %i.1183 = phi i32 [ 0, %for.body17.lr.ph ], [ %inc141, %for.body17.for.body17_crit_edge ]
  %17 = ptrtoint ptr %regions19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regions19, align 4
  %macro_state = getelementptr %struct.ocmem_region, ptr %18, i32 %i.1183, i32 3
  %19 = ptrtoint ptr %macro_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %macro_state, align 4
  %arrayidx55 = getelementptr %struct.ocmem_region, ptr %18, i32 %i.1183, i32 3, i32 1
  %21 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx55, align 4
  %arrayidx86 = getelementptr %struct.ocmem_region, ptr %18, i32 %i.1183, i32 3, i32 2
  %23 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx86, align 4
  %arrayidx117 = getelementptr %struct.ocmem_region, ptr %18, i32 %i.1183, i32 3, i32 3
  %25 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx117, align 4
  %and46 = and i32 %20, 7
  %shl75 = shl i32 %22, 4
  %and76 = and i32 %shl75, 112
  %or77 = or i32 %and76, %and46
  %shl106 = shl i32 %24, 8
  %and107 = and i32 %shl106, 1792
  %or108 = or i32 %or77, %and107
  %shl137 = shl i32 %26, 12
  %and138 = and i32 %shl137, 28672
  %or139 = or i32 %or108, %and138
  %add = add nuw nsw i32 %i.1183, 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %or139) #9
  %28 = ptrtoint ptr %mmio.i175 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i175, align 4
  %add.ptr.i176 = getelementptr i8, ptr %29, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i176, i32 %27) #9, !srcloc !110
  %inc141 = add nuw nsw i32 %i.1183, 1
  %30 = ptrtoint ptr %config12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config12, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 4
  %conv14 = zext i8 %33 to i32
  %cmp15 = icmp ult i32 %inc141, %conv14
  br i1 %cmp15, label %for.body17.for.body17_crit_edge, label %for.body17.for.end142_crit_edge

for.body17.for.end142_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end142

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body17

for.end142:                                       ; preds = %for.body17.for.end142_crit_edge, %if.end10.for.end142_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocmem_dev_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call zeroext i1 @qcom_scm_is_available() #9
  br i1 %call, label %if.end, label %entry.cleanup230_crit_edge

entry.cleanup230_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup230

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 36, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup230_crit_edge, label %if.end4

if.end.cleanup230_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup230

if.end4:                                          ; preds = %if.end
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %call6 = tail call ptr @device_get_match_data(ptr noundef %dev1) #9
  %config = getelementptr inbounds %struct.ocmem, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call6, ptr %config, align 4
  %call7 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @ocmem_clks) #9
  %2 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call7, label %do.end [
    i32 0, label %if.end12
    i32 -517, label %if.end4.cleanup230_crit_edge
  ]

if.end4.cleanup230_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup230

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #12
  br label %cleanup230

if.end12:                                         ; preds = %if.end4
  %call13 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.22) #9
  %mmio = getelementptr inbounds %struct.ocmem, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call13, ptr %mmio, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end19, label %if.end23

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #12
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup230

if.end23:                                         ; preds = %if.end12
  %call24 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.26) #9
  %memory = getelementptr inbounds %struct.ocmem, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %memory to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call24, ptr %memory, align 4
  %tobool26.not = icmp eq ptr %call24, null
  br i1 %tobool26.not, label %do.end30, label %if.end31

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28) #12
  br label %cleanup230

if.end31:                                         ; preds = %if.end23
  %8 = load ptr, ptr getelementptr inbounds ([2 x %struct.clk_bulk_data], ptr @ocmem_clks, i32 0, i32 0, i32 1), align 4
  %call32 = tail call i32 @clk_set_rate(ptr noundef %8, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %do.end45, label %if.end31.if.end51_crit_edge, !prof !114

if.end31.if.end51_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

do.end45:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 337, i32 noundef 9, ptr noundef null) #9
  br label %if.end51

if.end51:                                         ; preds = %do.end45, %if.end31.if.end51_crit_edge
  %call58 = tail call fastcc i32 @clk_bulk_prepare_enable()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end65, label %do.end63

do.end63:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.31) #12
  br label %cleanup230

if.end65:                                         ; preds = %if.end51
  %call66 = tail call zeroext i1 @qcom_scm_restore_sec_cfg_available() #9
  br i1 %call66, label %do.body68, label %if.end65.if.end89_crit_edge

if.end65.if.end89_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

do.body68:                                        ; preds = %if.end65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ocmem_dev_probe.__UNIQUE_ID_ddebug205, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ocmem_dev_probe, %if.then78)) #9
          to label %do.end81 [label %if.then78], !srcloc !111

if.then78:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ocmem_dev_probe.__UNIQUE_ID_ddebug205, ptr noundef %dev1, ptr noundef nonnull @.str.34) #9
  br label %do.end81

do.end81:                                         ; preds = %if.then78, %do.body68
  %call82 = tail call i32 @qcom_scm_restore_sec_cfg(i32 noundef 5, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %do.end81.if.end89_crit_edge, label %do.end87

do.end81.if.end89_crit_edge:                      ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

do.end87:                                         ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36) #12
  br label %err_clk_disable

if.end89:                                         ; preds = %do.end81.if.end89_crit_edge, %if.end65.if.end89_crit_edge
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !115
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  %and110 = and i32 %14, 15
  %num_ports = getelementptr inbounds %struct.ocmem, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %num_ports to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and110, ptr %num_ports, align 4
  %shl133 = shl i32 %14, 8
  %and134 = and i32 %shl133, 16128
  %num_macros = getelementptr inbounds %struct.ocmem, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %num_macros to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and134, ptr %num_macros, align 4
  %and135 = and i32 %14, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  %interleaved = getelementptr inbounds %struct.ocmem, ptr %call.i, i32 0, i32 6
  %and135.lobit = lshr exact i32 %and135, 17
  %17 = trunc i32 %and135.lobit to i8
  %18 = ptrtoint ptr %interleaved to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %interleaved, align 4
  %div307 = lshr i32 %and110, 1
  %19 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %config, align 4
  %macro_size = getelementptr inbounds %struct.ocmem_config, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %macro_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %macro_size, align 4
  %mul = mul i32 %22, %div307
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %20, align 4
  %conv = zext i8 %24 to i32
  %cond = select i1 %tobool136.not, ptr @.str.42, ptr @.str.41
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.39, i32 noundef %and110, i32 noundef %conv, i32 noundef %and134, ptr noundef nonnull %cond) #12
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %20, align 4
  %conv155 = zext i8 %26 to i32
  %27 = mul nuw nsw i32 %conv155, 36
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %27, i32 noundef 3520) #9
  %regions = getelementptr inbounds %struct.ocmem, ptr %call.i, i32 0, i32 7
  %28 = ptrtoint ptr %regions to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call5.i.i, ptr %regions, align 4
  %tobool158.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool158.not, label %if.end89.err_clk_disable_crit_edge, label %for.cond.preheader

if.end89.err_clk_disable_crit_edge:               ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_clk_disable

for.cond.preheader:                               ; preds = %if.end89
  %29 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %config, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp164322.not = icmp eq i8 %32, 0
  br i1 %cmp164322.not, label %for.cond.preheader.for.end229_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end229_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end229

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and110)
  %cmp168 = icmp ugt i32 %and110, 9
  %and208 = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208)
  %tobool209.not = icmp eq i32 %and208, 0
  br i1 %cmp168, label %cleanup, label %for.body.lr.ph.for.body_crit_edge, !prof !114

for.body.lr.ph.for.body_crit_edge:                ; preds = %for.body.lr.ph
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph.for.body_crit_edge
  %i.0323 = phi i32 [ %inc228, %for.body.for.body_crit_edge ], [ 0, %for.body.lr.ph.for.body_crit_edge ]
  %33 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regions, align 4
  %mode = getelementptr %struct.ocmem_region, ptr %34, i32 %i.0323, i32 1
  %35 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %mode, align 4
  %num_macros202 = getelementptr %struct.ocmem_region, ptr %34, i32 %i.0323, i32 2
  %36 = ptrtoint ptr %num_macros202 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div307, ptr %num_macros202, align 4
  %37 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %config, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 4
  %conv205 = zext i8 %40 to i32
  %sub = add nsw i32 %conv205, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0323, i32 %sub)
  %cmp206 = icmp ne i32 %i.0323, %sub
  %or.cond312 = select i1 %cmp206, i1 true, i1 %tobool209.not
  %macro_size218 = getelementptr inbounds %struct.ocmem_config, ptr %38, i32 0, i32 1
  %41 = ptrtoint ptr %macro_size218 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %macro_size218, align 4
  %not.or.cond312 = xor i1 %or.cond312, true
  %div213308 = zext i1 %not.or.cond312 to i32
  %div213308.sink = lshr i32 %42, %div213308
  %not.or.cond312325 = xor i1 %or.cond312, true
  %div215309 = zext i1 %not.or.cond312325 to i32
  %div215309.sink = lshr i32 %mul, %div215309
  %43 = getelementptr %struct.ocmem_region, ptr %34, i32 %i.0323, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %div213308.sink, ptr %43, align 4
  %45 = getelementptr %struct.ocmem_region, ptr %34, i32 %i.0323, i32 5
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %div215309.sink, ptr %45, align 4
  %arrayidx226 = getelementptr %struct.ocmem_region, ptr %34, i32 %i.0323, i32 3, i32 0
  %47 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 4, ptr %arrayidx226, align 4
  %arrayidx226.1 = getelementptr %struct.ocmem_region, ptr %34, i32 %i.0323, i32 3, i32 1
  %48 = ptrtoint ptr %arrayidx226.1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 4, ptr %arrayidx226.1, align 4
  %arrayidx226.2 = getelementptr %struct.ocmem_region, ptr %34, i32 %i.0323, i32 3, i32 2
  %49 = ptrtoint ptr %arrayidx226.2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 4, ptr %arrayidx226.2, align 4
  %arrayidx226.3 = getelementptr %struct.ocmem_region, ptr %34, i32 %i.0323, i32 3, i32 3
  %50 = ptrtoint ptr %arrayidx226.3 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 4, ptr %arrayidx226.3, align 4
  %inc228 = add nuw nsw i32 %i.0323, 1
  %51 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %config, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %52, align 4
  %conv163 = zext i8 %54 to i32
  %cmp164 = icmp ult i32 %inc228, %conv163
  br i1 %cmp164, label %for.body.for.body_crit_edge, label %for.body.for.end229_crit_edge

for.body.for.end229_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end229

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 376, i32 noundef 9, ptr noundef null) #9
  br label %err_clk_disable

for.end229:                                       ; preds = %for.body.for.end229_crit_edge, %for.cond.preheader.for.end229_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %55 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup230

err_clk_disable:                                  ; preds = %cleanup, %if.end89.err_clk_disable_crit_edge, %do.end87
  %ret.3 = phi i32 [ %call82, %do.end87 ], [ -22, %cleanup ], [ -12, %if.end89.err_clk_disable_crit_edge ]
  tail call fastcc void @clk_bulk_disable_unprepare()
  br label %cleanup230

cleanup230:                                       ; preds = %err_clk_disable, %for.end229, %do.end63, %do.end30, %do.end19, %do.end, %if.end4.cleanup230_crit_edge, %if.end.cleanup230_crit_edge, %entry.cleanup230_crit_edge
  %retval.0 = phi i32 [ %6, %do.end19 ], [ %call58, %do.end63 ], [ %ret.3, %err_clk_disable ], [ 0, %for.end229 ], [ -6, %do.end30 ], [ -517, %entry.cleanup230_crit_edge ], [ -12, %if.end.cleanup230_crit_edge ], [ %call7, %if.end4.cleanup230_crit_edge ], [ %call7, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocmem_dev_remove(ptr nocapture noundef readnone %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_bulk_disable(i32 noundef 2, ptr noundef nonnull @ocmem_clks) #9
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef nonnull @ocmem_clks) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qcom_scm_is_available() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_bulk_prepare_enable() unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @clk_bulk_prepare(i32 noundef 2, ptr noundef nonnull @ocmem_clks) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_bulk_enable(i32 noundef 2, ptr noundef nonnull @ocmem_clks) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef nonnull @ocmem_clks) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qcom_scm_restore_sec_cfg_available() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_restore_sec_cfg(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clk_bulk_disable_unprepare() unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_bulk_disable(i32 noundef 2, ptr noundef nonnull @ocmem_clks) #9
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef nonnull @ocmem_clks) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !36, !38, !40, !41, !43, !45, !46, !48, !49, !50, !52, !54, !55, !56, !57, !59, !61, !62, !63, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !79, !80, !81, !83, !84, !85, !86, !87, !89, !91, !93, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/soc/qcom/ocmem.c", i32 194, i32 43}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soc/qcom/ocmem.c", i32 196, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @of_get_ocmem._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @of_get_ocmem._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/qcom/ocmem.c", i32 202, i32 3}
!12 = !{ptr @of_get_ocmem._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @of_get_ocmem._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/qcom/ocmem.c", i32 208, i32 3}
!16 = !{ptr @of_get_ocmem._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @of_get_ocmem._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__ksymtab_of_get_ocmem, !19, !"__ksymtab_of_get_ocmem", i1 false, i1 false}
!19 = !{!"../drivers/soc/qcom/ocmem.c", i32 213, i32 1}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/soc/qcom/ocmem.c", i32 247, i32 4}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ocmem_allocate._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @ocmem_allocate._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/soc/qcom/ocmem.c", i32 257, i32 2}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ocmem_allocate.__UNIQUE_ID_ddebug204, !26, !"__UNIQUE_ID_ddebug204", i1 false, i1 false}
!29 = !{ptr @__ksymtab_ocmem_allocate, !30, !"__ksymtab_ocmem_allocate", i1 false, i1 false}
!30 = !{!"../drivers/soc/qcom/ocmem.c", i32 269, i32 1}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/soc/qcom/ocmem.c", i32 286, i32 4}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ocmem_free._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @ocmem_free._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @__ksymtab_ocmem_free, !37, !"__ksymtab_ocmem_free", i1 false, i1 false}
!37 = !{!"../drivers/soc/qcom/ocmem.c", i32 296, i32 1}
!38 = !{ptr @__initcall__kmod_ocmem__216_434_ocmem_driver_init6, !39, !"__initcall__kmod_ocmem__216_434_ocmem_driver_init6", i1 false, i1 false}
!39 = !{!"../drivers/soc/qcom/ocmem.c", i32 434, i32 1}
!40 = !{ptr @__exitcall_ocmem_driver_exit, !39, !"__exitcall_ocmem_driver_exit", i1 false, i1 false}
!41 = !{ptr @__UNIQUE_ID_description217, !42, !"__UNIQUE_ID_description217", i1 false, i1 false}
!42 = !{!"../drivers/soc/qcom/ocmem.c", i32 436, i32 1}
!43 = !{ptr @__UNIQUE_ID_file218, !44, !"__UNIQUE_ID_file218", i1 false, i1 false}
!44 = !{!"../drivers/soc/qcom/ocmem.c", i32 437, i32 1}
!45 = !{ptr @__UNIQUE_ID_license219, !44, !"__UNIQUE_ID_license219", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/soc/qcom/ocmem.c", i32 127, i32 3}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @update_ocmem.__UNIQUE_ID_ddebug183, !47, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!50 = !{ptr @ocmem_driver, !51, !"ocmem_driver", i1 false, i1 false}
!51 = !{!"../drivers/soc/qcom/ocmem.c", i32 425, i32 31}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/soc/qcom/ocmem.c", i32 318, i32 4}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ocmem_dev_probe._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @ocmem_dev_probe._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/soc/qcom/ocmem.c", i32 323, i32 60}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/soc/qcom/ocmem.c", i32 325, i32 3}
!61 = !{ptr @ocmem_dev_probe._entry.23, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ocmem_dev_probe._entry_ptr.25, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/soc/qcom/ocmem.c", i32 330, i32 12}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/soc/qcom/ocmem.c", i32 332, i32 3}
!67 = !{ptr @ocmem_dev_probe._entry.27, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @ocmem_dev_probe._entry_ptr.29, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/soc/qcom/ocmem.c", i32 341, i32 3}
!71 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @ocmem_dev_probe._entry.30, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @ocmem_dev_probe._entry_ptr.33, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/soc/qcom/ocmem.c", i32 346, i32 3}
!76 = !{ptr @ocmem_dev_probe.__UNIQUE_ID_ddebug205, !75, !"__UNIQUE_ID_ddebug205", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/soc/qcom/ocmem.c", i32 349, i32 4}
!79 = !{ptr @ocmem_dev_probe._entry.35, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @ocmem_dev_probe._entry_ptr.37, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/soc/qcom/ocmem.c", i32 362, i32 2}
!83 = !{ptr @ocmem_dev_probe._entry.38, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @ocmem_dev_probe._entry_ptr.40, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/soc/qcom/ocmem.c", i32 97, i32 9}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/soc/qcom/ocmem.c", i32 100, i32 9}
!91 = !{ptr @ocmem_clks, !92, !"ocmem_clks", i1 false, i1 false}
!92 = !{!"../drivers/soc/qcom/ocmem.c", i32 95, i32 29}
!93 = !{ptr @ocmem_of_match, !94, !"ocmem_of_match", i1 false, i1 false}
!94 = !{!"../drivers/soc/qcom/ocmem.c", i32 418, i32 34}
!95 = !{ptr @ocmem_8974_config, !96, !"ocmem_8974_config", i1 false, i1 false}
!96 = !{!"../drivers/soc/qcom/ocmem.c", i32 413, i32 34}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{!"branch_weights", i32 2000, i32 1}
!107 = !{i64 2148316816, i64 2148316848, i64 2148316877, i64 2148316911, i64 2148316942, i64 2148316965}
!108 = !{i64 2148405897}
!109 = !{i64 2152965871}
!110 = !{i64 2065472}
!111 = !{i64 2148762443, i64 2148762448, i64 2148762461, i64 2148762505, i64 2148762539, i64 2148762560}
!112 = !{i64 2148404784}
!113 = !{i64 2148315203, i64 2148315235, i64 2148315264, i64 2148315298, i64 2148315329, i64 2148315352}
!114 = !{!"branch_weights", i32 1, i32 2000}
!115 = !{i64 2065890}
!116 = !{i64 2152966704}
