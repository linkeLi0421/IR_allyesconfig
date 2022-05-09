; ModuleID = '/llk/IR_all_yes/drivers/bus/uniphier-system-bus.c_pt.bc'
source_filename = "../drivers/bus/uniphier-system-bus.c"
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
%struct.uniphier_system_bus_priv = type { ptr, ptr, [8 x %struct.uniphier_system_bus_bank] }
%struct.uniphier_system_bus_bank = type { i32, i32 }

@__initcall__kmod_uniphier_system_bus__174_279_uniphier_system_bus_driver_init6 = internal global ptr @uniphier_system_bus_driver_init, section ".initcall6.init", align 4
@uniphier_system_bus_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @uniphier_system_bus_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_system_bus_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uniphier_system_bus_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_uniphier_system_bus_driver_exit = internal global ptr @uniphier_system_bus_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author175 = internal constant [75 x i8] c"uniphier_system_bus.author=Masahiro Yamada <yamada.masahiro@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [59 x i8] c"uniphier_system_bus.description=UniPhier System Bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file177 = internal constant [57 x i8] c"uniphier_system_bus.file=drivers/bus/uniphier-system-bus\00", section ".modinfo", align 1
@__UNIQUE_ID_license178 = internal constant [32 x i8] c"uniphier_system_bus.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uniphier-system-bus\00", [44 x i8] zeroinitializer }, align 32
@uniphier_system_bus_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-system-bus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@uniphier_system_bus_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @uniphier_system_bus_resume, ptr null, ptr @uniphier_system_bus_resume, ptr null, ptr @uniphier_system_bus_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"#address-cells\00", [17 x i8] zeroinitializer }, align 32
@uniphier_system_bus_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 198, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get #address-cells\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"uniphier_system_bus_probe\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/bus/uniphier-system-bus.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uniphier_system_bus_probe._entry_ptr = internal global ptr @uniphier_system_bus_probe._entry, section ".printk_index", align 4
@uniphier_system_bus_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 202, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"#address-cells must be 2\0A\00", [38 x i8] zeroinitializer }, align 32
@uniphier_system_bus_probe._entry_ptr.9 = internal global ptr @uniphier_system_bus_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"#size-cells\00", [20 x i8] zeroinitializer }, align 32
@uniphier_system_bus_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 208, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get #size-cells\0A\00", [37 x i8] zeroinitializer }, align 32
@uniphier_system_bus_probe._entry_ptr.13 = internal global ptr @uniphier_system_bus_probe._entry.11, section ".printk_index", align 4
@uniphier_system_bus_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 212, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"#size-cells must be 1\0A\00", [41 x i8] zeroinitializer }, align 32
@uniphier_system_bus_probe._entry_ptr.16 = internal global ptr @uniphier_system_bus_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ranges\00", [25 x i8] zeroinitializer }, align 32
@uniphier_system_bus_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 218, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get ranges property\0A\00", [33 x i8] zeroinitializer }, align 32
@uniphier_system_bus_probe._entry_ptr.20 = internal global ptr @uniphier_system_bus_probe._entry.18, section ".printk_index", align 4
@uniphier_system_bus_add_bank.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.4, ptr @.str.23, i8 0, i8 11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uniphier_system_bus\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"uniphier_system_bus_add_bank\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"range found: bank = %d, addr = %08x, paddr = %08llx, size = %08x\0A\00", [62 x i8] zeroinitializer }, align 32
@uniphier_system_bus_add_bank._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 48, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unsupported bank number %d\0A\00", [36 x i8] zeroinitializer }, align 32
@uniphier_system_bus_add_bank._entry_ptr = internal global ptr @uniphier_system_bus_add_bank._entry, section ".printk_index", align 4
@uniphier_system_bus_add_bank._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.4, i32 54, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"range for bank %d has already been specified\0A\00", [50 x i8] zeroinitializer }, align 32
@uniphier_system_bus_add_bank._entry_ptr.27 = internal global ptr @uniphier_system_bus_add_bank._entry.25, section ".printk_index", align 4
@uniphier_system_bus_add_bank._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.22, ptr @.str.4, i32 59, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"base address %llx is too high\0A\00", [33 x i8] zeroinitializer }, align 32
@uniphier_system_bus_add_bank._entry_ptr.30 = internal global ptr @uniphier_system_bus_add_bank._entry.28, section ".printk_index", align 4
@uniphier_system_bus_add_bank._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.22, ptr @.str.4, i32 68, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"base %08x cannot be mapped to %08llx of parent\0A\00", [48 x i8] zeroinitializer }, align 32
@uniphier_system_bus_add_bank._entry_ptr.33 = internal global ptr @uniphier_system_bus_add_bank._entry.31, section ".printk_index", align 4
@uniphier_system_bus_add_bank._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.22, ptr @.str.4, i32 77, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"end address %08llx is too high\0A\00", [32 x i8] zeroinitializer }, align 32
@uniphier_system_bus_add_bank._entry_ptr.36 = internal global ptr @uniphier_system_bus_add_bank._entry.34, section ".printk_index", align 4
@uniphier_system_bus_add_bank.__UNIQUE_ID_ddebug171 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.4, ptr @.str.37, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"range added: bank = %d, addr = %08x, end = %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@uniphier_system_bus_check_overlap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 106, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"region overlap between bank%d and bank%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"uniphier_system_bus_check_overlap\00", [62 x i8] zeroinitializer }, align 32
@uniphier_system_bus_check_overlap._entry_ptr = internal global ptr @uniphier_system_bus_check_overlap._entry, section ".printk_index", align 4
@uniphier_system_bus_check_boot_swap.__UNIQUE_ID_ddebug172 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.40, ptr @.str.4, ptr @.str.41, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"uniphier_system_bus_check_boot_swap\00", [60 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Boot Swap: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@uniphier_system_bus_set_reg.__UNIQUE_ID_ddebug173 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.44, ptr @.str.4, ptr @.str.45, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"uniphier_system_bus_set_reg\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SBC_BASE[%d] = 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.46 = private unnamed_addr constant [27 x i8] c"uniphier_system_bus_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 271, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 274, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [26 x i8] c"uniphier_system_bus_match\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 265, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant [27 x i8] c"uniphier_system_bus_pm_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 261, i32 32 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 196, i32 43 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 198, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 202, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 206, i32 43 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 208, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 212, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 216, i32 41 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 218, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 43, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 48, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 53, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 59, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 66, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 77, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 89, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 104, i32 5 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 123, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.176 = private constant [37 x i8] c"../drivers/bus/uniphier-system-bus.c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 169, i32 3 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file177, ptr @__UNIQUE_ID_license178, ptr @__exitcall_uniphier_system_bus_driver_exit, ptr @__initcall__kmod_uniphier_system_bus__174_279_uniphier_system_bus_driver_init6, ptr @uniphier_system_bus_add_bank._entry, ptr @uniphier_system_bus_add_bank._entry.25, ptr @uniphier_system_bus_add_bank._entry.28, ptr @uniphier_system_bus_add_bank._entry.31, ptr @uniphier_system_bus_add_bank._entry.34, ptr @uniphier_system_bus_add_bank._entry_ptr, ptr @uniphier_system_bus_add_bank._entry_ptr.27, ptr @uniphier_system_bus_add_bank._entry_ptr.30, ptr @uniphier_system_bus_add_bank._entry_ptr.33, ptr @uniphier_system_bus_add_bank._entry_ptr.36, ptr @uniphier_system_bus_check_overlap._entry, ptr @uniphier_system_bus_check_overlap._entry_ptr, ptr @uniphier_system_bus_driver_exit, ptr @uniphier_system_bus_probe._entry, ptr @uniphier_system_bus_probe._entry.11, ptr @uniphier_system_bus_probe._entry.14, ptr @uniphier_system_bus_probe._entry.18, ptr @uniphier_system_bus_probe._entry.7, ptr @uniphier_system_bus_probe._entry_ptr, ptr @uniphier_system_bus_probe._entry_ptr.13, ptr @uniphier_system_bus_probe._entry_ptr.16, ptr @uniphier_system_bus_probe._entry_ptr.20, ptr @uniphier_system_bus_probe._entry_ptr.9, ptr @uniphier_system_bus_driver, ptr @.str, ptr @uniphier_system_bus_match, ptr @uniphier_system_bus_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_system_bus_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_system_bus_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_system_bus_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_system_bus_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_system_bus_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_system_bus_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_system_bus_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_system_bus_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_system_bus_add_bank._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_system_bus_add_bank._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_system_bus_add_bank._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_system_bus_add_bank._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_system_bus_add_bank._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_system_bus_check_overlap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_system_bus_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_system_bus_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_system_bus_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_system_bus_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_system_bus_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %cells = alloca i32, align 4
  %rlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cells) #6
  %0 = ptrtoint ptr %cells to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cells, align 4, !annotation !100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rlen) #6
  %1 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rlen, align 4, !annotation !100
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 72, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %membase = getelementptr inbounds %struct.uniphier_system_bus_priv, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %membase, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %call.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call10 = tail call i32 @of_n_addr_cells(ptr noundef %6) #6
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef nonnull %cells, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool13.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool13.not, label %if.end15, label %do.end

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %9 = ptrtoint ptr %cells to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cells, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.not = icmp eq i32 %10, 2
  br i1 %cmp.not, label %if.end20, label %do.end19

do.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call.i.i115 = call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.10, ptr noundef nonnull %cells, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i115)
  %tobool23.not = icmp sgt i32 %call.i.i115, -1
  br i1 %tobool23.not, label %if.end28, label %do.end27

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  %13 = ptrtoint ptr %cells to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cells, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp29.not = icmp eq i32 %14, 1
  br i1 %cmp29.not, label %if.end34, label %do.end33

do.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %call36 = call ptr @of_get_property(ptr noundef %16, ptr noundef nonnull @.str.17, ptr noundef nonnull %rlen) #6
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %do.end41, label %if.end42

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end42:                                         ; preds = %if.end34
  %17 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rlen, align 4
  %div114 = lshr i32 %18, 2
  store i32 %div114, ptr %rlen, align 4
  %add = add i32 %call10, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div114, i32 %add)
  %cmp43.not129 = icmp slt i32 %div114, %add
  br i1 %cmp43.not129, label %if.end42.for.body.i.preheader_crit_edge, label %if.end42.for.body_crit_edge

if.end42.for.body_crit_edge:                      ; preds = %if.end42
  br label %for.body

if.end42.for.body.i.preheader_crit_edge:          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end42.for.body_crit_edge
  %ranges.0130 = phi ptr [ %incdec.ptr52, %for.inc.for.body_crit_edge ], [ %call36, %if.end42.for.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %ranges.0130, i32 1
  %19 = ptrtoint ptr %ranges.0130 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ranges.0130, align 4
  %incdec.ptr45 = getelementptr i32, ptr %ranges.0130, i32 2
  %21 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %incdec.ptr, align 4
  %23 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node, align 8
  %call48 = call i64 @of_translate_address(ptr noundef %24, ptr noundef %incdec.ptr45) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call48)
  %cmp49 = icmp eq i64 %call48, -1
  br i1 %cmp49, label %for.body.cleanup_crit_edge, label %if.end51

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end51:                                         ; preds = %for.body
  %add.ptr = getelementptr i32, ptr %incdec.ptr45, i32 %call10
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr, align 4
  %call54 = call fastcc i32 @uniphier_system_bus_add_bank(ptr noundef nonnull %call.i, i32 noundef %20, i32 noundef %22, i64 noundef %call48, i32 noundef %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %for.inc, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %if.end51
  %incdec.ptr52 = getelementptr i32, ptr %add.ptr, i32 1
  %27 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rlen, align 4
  %sub = sub i32 %28, %add
  store i32 %sub, ptr %rlen, align 4
  %cmp43.not = icmp slt i32 %sub, %add
  br i1 %cmp43.not, label %for.inc.for.body.i.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.body.i.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %for.inc.for.body.i.preheader_crit_edge, %if.end42.for.body.i.preheader_crit_edge
  br label %for.body.i

for.cond.loopexit.i:                              ; preds = %for.inc.i.for.cond.loopexit.i_crit_edge, %for.body.i.for.cond.loopexit.i_crit_edge
  %exitcond39.not.i = icmp eq i32 %add.i, 8
  br i1 %exitcond39.not.i, label %if.end61, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.036.i = phi i32 [ %add.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %add.i = add nuw nsw i32 %i.036.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.036.i)
  %cmp233.i = icmp ult i32 %i.036.i, 7
  br i1 %cmp233.i, label %for.body3.lr.ph.i, label %for.body.i.for.cond.loopexit.i_crit_edge

for.body.i.for.cond.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.loopexit.i

for.body3.lr.ph.i:                                ; preds = %for.body.i
  %end.i = getelementptr %struct.uniphier_system_bus_priv, ptr %call.i, i32 0, i32 2, i32 %i.036.i, i32 1
  %29 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %end.i, align 4
  %arrayidx.i = getelementptr %struct.uniphier_system_bus_priv, ptr %call.i, i32 0, i32 2, i32 %i.036.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc.i.for.body3.i_crit_edge, %for.body3.lr.ph.i
  %j.034.i = phi i32 [ %add.i, %for.body3.lr.ph.i ], [ %inc.i, %for.inc.i.for.body3.i_crit_edge ]
  %arrayidx5.i = getelementptr %struct.uniphier_system_bus_priv, ptr %call.i, i32 0, i32 2, i32 %j.034.i
  %31 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp6.i = icmp ugt i32 %30, %32
  br i1 %cmp6.i, label %land.lhs.true.i, label %for.body3.i.for.inc.i_crit_edge

for.body3.i.for.inc.i_crit_edge:                  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body3.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  %end12.i = getelementptr %struct.uniphier_system_bus_priv, ptr %call.i, i32 0, i32 2, i32 %j.034.i, i32 1
  %35 = ptrtoint ptr %end12.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %end12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp13.i = icmp ult i32 %34, %36
  br i1 %cmp13.i, label %uniphier_system_bus_check_overlap.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body3.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %j.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.inc.i.for.cond.loopexit.i_crit_edge, label %for.inc.i.for.body3.i_crit_edge

for.inc.i.for.body3.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i

for.inc.i.for.cond.loopexit.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.loopexit.i

uniphier_system_bus_check_overlap.exit:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.38, i32 noundef %i.036.i, i32 noundef %j.034.i) #9
  br label %cleanup

if.end61:                                         ; preds = %for.cond.loopexit.i
  %39 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 256
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !101
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  %42 = and i32 %41, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i = icmp eq i32 %42, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uniphier_system_bus_check_boot_swap.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uniphier_system_bus_probe, %if.then.i)) #6
          to label %do.end.i116 [label %if.then.i], !srcloc !103

if.then.i:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  %cond.i = select i1 %tobool.not.i, ptr @.str.42, ptr @.str.43
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uniphier_system_bus_check_boot_swap.__UNIQUE_ID_ddebug172, ptr noundef %44, ptr noundef nonnull @.str.41, ptr noundef nonnull %cond.i) #6
  br label %do.end.i116

do.end.i116:                                      ; preds = %if.then.i, %if.end61
  br i1 %tobool.not.i, label %do.body13.i, label %do.end.i116.uniphier_system_bus_check_boot_swap.exit_crit_edge

do.end.i116.uniphier_system_bus_check_boot_swap.exit_crit_edge: ; preds = %do.end.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %uniphier_system_bus_check_boot_swap.exit

do.body13.i:                                      ; preds = %do.end.i116
  call void @__sanitizer_cov_trace_pc() #8
  %bank.i = getelementptr inbounds %struct.uniphier_system_bus_priv, ptr %call.i, i32 0, i32 2
  %45 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %__tmp.sroa.0.0.copyload.i = load i32, ptr %bank.i, align 4
  %__tmp.sroa.5.0.arrayidx.sroa_idx.i = getelementptr inbounds %struct.uniphier_system_bus_priv, ptr %call.i, i32 0, i32 2, i32 0, i32 1
  %46 = ptrtoint ptr %__tmp.sroa.5.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %__tmp.sroa.5.0.copyload.i = load i32, ptr %__tmp.sroa.5.0.arrayidx.sroa_idx.i, align 4
  %arrayidx17.i = getelementptr %struct.uniphier_system_bus_priv, ptr %call.i, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 8)
  %48 = load i64, ptr %arrayidx17.i, align 4
  store i64 %48, ptr %bank.i, align 4
  store i32 %__tmp.sroa.0.0.copyload.i, ptr %arrayidx17.i, align 4
  %__tmp.sroa.5.0.arrayidx19.sroa_idx.i = getelementptr %struct.uniphier_system_bus_priv, ptr %call.i, i32 0, i32 2, i32 1, i32 1
  %49 = ptrtoint ptr %__tmp.sroa.5.0.arrayidx19.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %__tmp.sroa.5.0.copyload.i, ptr %__tmp.sroa.5.0.arrayidx19.sroa_idx.i, align 4
  br label %uniphier_system_bus_check_boot_swap.exit

uniphier_system_bus_check_boot_swap.exit:         ; preds = %do.body13.i, %do.end.i116.uniphier_system_bus_check_boot_swap.exit_crit_edge
  %50 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase, align 4
  %add.ptr.i118 = getelementptr i8, ptr %51, i32 256
  br label %for.body.i120

for.body.i120:                                    ; preds = %do.body16.i.for.body.i120_crit_edge, %uniphier_system_bus_check_boot_swap.exit
  %i.037.i = phi i32 [ 0, %uniphier_system_bus_check_boot_swap.exit ], [ %inc.i123, %do.body16.i.for.body.i120_crit_edge ]
  %arrayidx.i119 = getelementptr %struct.uniphier_system_bus_priv, ptr %call.i, i32 0, i32 2, i32 %i.037.i
  %52 = ptrtoint ptr %arrayidx.i119 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i119, align 4
  %end4.i = getelementptr %struct.uniphier_system_bus_priv, ptr %call.i, i32 0, i32 2, i32 %i.037.i, i32 1
  %54 = ptrtoint ptr %end4.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %end4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp5.i = icmp eq i32 %53, %55
  br i1 %cmp5.i, label %if.then.i122, label %if.else8.i

if.then.i122:                                     ; preds = %for.body.i120
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.037.i)
  %cmp6.i121 = icmp ult i32 %i.037.i, 2
  %..i = sext i1 %cmp6.i121 to i32
  br label %do.body.i

if.else8.i:                                       ; preds = %for.body.i120
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = and i32 %53, -131072
  %sub.not.i = sub i32 0, %55
  %neg.i = xor i32 %53, %sub.not.i
  %shr.i = lshr i32 %neg.i, 16
  %or.i = or i32 %and.i, %shr.i
  %or10.i = or i32 %or.i, 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.else8.i, %if.then.i122
  %val.0.i = phi i32 [ %or10.i, %if.else8.i ], [ %..i, %if.then.i122 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uniphier_system_bus_set_reg.__UNIQUE_ID_ddebug173, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uniphier_system_bus_probe, %if.then14.i)) #6
          to label %do.body16.i [label %if.then14.i], !srcloc !103

if.then14.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uniphier_system_bus_set_reg.__UNIQUE_ID_ddebug173, ptr noundef %57, ptr noundef nonnull @.str.45, i32 noundef %i.037.i, i32 noundef %val.0.i) #6
  br label %do.body16.i

do.body16.i:                                      ; preds = %if.then14.i, %do.body.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  call void @arm_heavy_mb() #6
  %58 = call i32 @llvm.bswap.i32(i32 %val.0.i) #6
  %mul.i = shl nuw nsw i32 %i.037.i, 4
  %add.ptr19.i = getelementptr i8, ptr %add.ptr.i118, i32 %mul.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %58) #6, !srcloc !105
  %inc.i123 = add nuw nsw i32 %i.037.i, 1
  %exitcond.not.i124 = icmp eq i32 %inc.i123, 8
  br i1 %exitcond.not.i124, label %uniphier_system_bus_set_reg.exit, label %do.body16.i.for.body.i120_crit_edge

do.body16.i.for.body.i120_crit_edge:              ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i120

uniphier_system_bus_set_reg.exit:                 ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %59 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %60 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %of_node, align 8
  %call63 = call i32 @of_platform_default_populate(ptr noundef %61, ptr noundef null, ptr noundef %dev1) #6
  br label %cleanup

cleanup:                                          ; preds = %uniphier_system_bus_set_reg.exit, %uniphier_system_bus_check_overlap.exit, %if.end51.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end41, %do.end33, %do.end27, %do.end19, %do.end, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then5 ], [ %call.i.i, %do.end ], [ -22, %do.end19 ], [ %call.i.i115, %do.end27 ], [ -22, %do.end33 ], [ %call63, %uniphier_system_bus_set_reg.exit ], [ -2, %do.end41 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %uniphier_system_bus_check_overlap.exit ], [ %call54, %if.end51.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rlen) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cells) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_n_addr_cells(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_translate_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uniphier_system_bus_add_bank(ptr nocapture noundef %priv, i32 noundef %bank, i32 noundef %addr, i64 noundef %paddr, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uniphier_system_bus_add_bank.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uniphier_system_bus_add_bank, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !103

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uniphier_system_bus_add_bank.__UNIQUE_ID_ddebug170, ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %bank, i32 noundef %addr, i64 noundef %paddr, i32 noundef %size) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %bank)
  %cmp = icmp ugt i32 %bank, 7
  br i1 %cmp, label %do.end6, label %if.end8

do.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24, i32 noundef %bank) #9
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %arrayidx = getelementptr %struct.uniphier_system_bus_priv, ptr %priv, i32 0, i32 2, i32 %bank
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool10.not = icmp eq i32 %5, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %if.end8.do.end18_crit_edge

if.end8.do.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

lor.lhs.false:                                    ; preds = %if.end8
  %end13 = getelementptr %struct.uniphier_system_bus_priv, ptr %priv, i32 0, i32 2, i32 %bank, i32 1
  %6 = ptrtoint ptr %end13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool14.not = icmp eq i32 %7, 0
  br i1 %tobool14.not, label %if.end20, label %lor.lhs.false.do.end18_crit_edge

lor.lhs.false.do.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

do.end18:                                         ; preds = %lor.lhs.false.do.end18_crit_edge, %if.end8.do.end18_crit_edge
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.26, i32 noundef %bank) #9
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %paddr)
  %cmp21 = icmp ugt i64 %paddr, 4294967295
  br i1 %cmp21, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.29, i64 noundef %paddr) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  %conv28 = zext i32 %addr to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv28, i64 %paddr)
  %cmp29 = icmp ugt i64 %conv28, %paddr
  br i1 %cmp29, label %do.end34, label %if.end36

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.32, i32 noundef %addr, i64 noundef %paddr) #9
  br label %cleanup

if.end36:                                         ; preds = %if.end27
  %conv = zext i32 %size to i64
  %add = add nsw i64 %paddr, -1
  %sub38 = add nsw i64 %add, %conv
  %or = or i64 %sub38, 131071
  %add39 = add i64 %or, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %add39)
  %cmp40 = icmp ugt i64 %add39, 4294967295
  br i1 %cmp40, label %do.end45, label %cond.end72

do.end45:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.35, i64 noundef %add39) #9
  br label %cleanup

cond.end72:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub nsw i64 %paddr, %conv28
  %and = and i64 %sub, -131072
  %xor = xor i64 %or, %and
  %conv70 = trunc i64 %xor to i32
  %sub.i165 = add nsw i32 %conv70, -1
  %16 = tail call i32 @llvm.ctlz.i32(i32 %sub.i165, i1 true) #6, !range !106
  %sub.i.i.i = sub nuw nsw i32 32, %16
  %cond73 = shl nuw i32 1, %sub.i.i.i
  %conv74 = zext i32 %cond73 to i64
  %sub75 = add nuw nsw i64 %conv74, 4294967295
  %neg = sub nsw i64 0, %conv74
  %and76 = and i64 %and, %neg
  %or79 = or i64 %sub75, %or
  %conv81 = trunc i64 %and76 to i32
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv81, ptr %arrayidx, align 4
  %18 = trunc i64 %or79 to i32
  %conv85 = add i32 %18, 1
  %19 = ptrtoint ptr %end13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv85, ptr %end13, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uniphier_system_bus_add_bank.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uniphier_system_bus_add_bank, %if.then101)) #6
          to label %cleanup [label %if.then101], !srcloc !103

if.then101:                                       ; preds = %cond.end72
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 4
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %24 = ptrtoint ptr %end13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %end13, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uniphier_system_bus_add_bank.__UNIQUE_ID_ddebug171, ptr noundef %21, ptr noundef nonnull @.str.37, i32 noundef %bank, i32 noundef %23, i32 noundef %25) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then101, %cond.end72, %do.end45, %do.end34, %do.end25, %do.end18, %do.end6
  %retval.0 = phi i32 [ -22, %do.end6 ], [ -22, %do.end18 ], [ -22, %do.end25 ], [ -22, %do.end34 ], [ -22, %do.end45 ], [ 0, %if.then101 ], [ 0, %cond.end72 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_default_populate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_system_bus_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %membase.i = getelementptr inbounds %struct.uniphier_system_bus_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 256
  br label %for.body.i

for.body.i:                                       ; preds = %do.body16.i.for.body.i_crit_edge, %entry
  %i.037.i = phi i32 [ 0, %entry ], [ %inc.i, %do.body16.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.uniphier_system_bus_priv, ptr %1, i32 0, i32 2, i32 %i.037.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %end4.i = getelementptr %struct.uniphier_system_bus_priv, ptr %1, i32 0, i32 2, i32 %i.037.i, i32 1
  %6 = ptrtoint ptr %end4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp5.i = icmp eq i32 %5, %7
  br i1 %cmp5.i, label %if.then.i, label %if.else8.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.037.i)
  %cmp6.i = icmp ult i32 %i.037.i, 2
  %..i = sext i1 %cmp6.i to i32
  br label %do.body.i

if.else8.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = and i32 %5, -131072
  %sub.not.i = sub i32 0, %7
  %neg.i = xor i32 %5, %sub.not.i
  %shr.i = lshr i32 %neg.i, 16
  %or.i = or i32 %and.i, %shr.i
  %or10.i = or i32 %or.i, 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.else8.i, %if.then.i
  %val.0.i = phi i32 [ %or10.i, %if.else8.i ], [ %..i, %if.then.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uniphier_system_bus_set_reg.__UNIQUE_ID_ddebug173, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uniphier_system_bus_resume, %if.then14.i)) #6
          to label %do.body16.i [label %if.then14.i], !srcloc !103

if.then14.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uniphier_system_bus_set_reg.__UNIQUE_ID_ddebug173, ptr noundef %9, ptr noundef nonnull @.str.45, i32 noundef %i.037.i, i32 noundef %val.0.i) #6
  br label %do.body16.i

do.body16.i:                                      ; preds = %if.then14.i, %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #6
  %mul.i = shl nuw nsw i32 %i.037.i, 4
  %add.ptr19.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %10) #6, !srcloc !105
  %inc.i = add nuw nsw i32 %i.037.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %uniphier_system_bus_set_reg.exit, label %do.body16.i.for.body.i_crit_edge

do.body16.i.for.body.i_crit_edge:                 ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

uniphier_system_bus_set_reg.exit:                 ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !83, !85, !86, !87, !89}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__initcall__kmod_uniphier_system_bus__174_279_uniphier_system_bus_driver_init6, !1, !"__initcall__kmod_uniphier_system_bus__174_279_uniphier_system_bus_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/bus/uniphier-system-bus.c", i32 279, i32 1}
!2 = !{ptr @__exitcall_uniphier_system_bus_driver_exit, !1, !"__exitcall_uniphier_system_bus_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author175, !4, !"__UNIQUE_ID_author175", i1 false, i1 false}
!4 = !{!"../drivers/bus/uniphier-system-bus.c", i32 281, i32 1}
!5 = !{ptr @__UNIQUE_ID_description176, !6, !"__UNIQUE_ID_description176", i1 false, i1 false}
!6 = !{!"../drivers/bus/uniphier-system-bus.c", i32 282, i32 1}
!7 = !{ptr @__UNIQUE_ID_file177, !8, !"__UNIQUE_ID_file177", i1 false, i1 false}
!8 = !{!"../drivers/bus/uniphier-system-bus.c", i32 283, i32 1}
!9 = !{ptr @__UNIQUE_ID_license178, !8, !"__UNIQUE_ID_license178", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/bus/uniphier-system-bus.c", i32 274, i32 11}
!12 = !{ptr @uniphier_system_bus_driver, !13, !"uniphier_system_bus_driver", i1 false, i1 false}
!13 = !{!"../drivers/bus/uniphier-system-bus.c", i32 271, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/bus/uniphier-system-bus.c", i32 196, i32 43}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/bus/uniphier-system-bus.c", i32 198, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @uniphier_system_bus_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @uniphier_system_bus_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/bus/uniphier-system-bus.c", i32 202, i32 3}
!26 = !{ptr @uniphier_system_bus_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @uniphier_system_bus_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/bus/uniphier-system-bus.c", i32 206, i32 43}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/bus/uniphier-system-bus.c", i32 208, i32 3}
!32 = !{ptr @uniphier_system_bus_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @uniphier_system_bus_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/bus/uniphier-system-bus.c", i32 212, i32 3}
!36 = !{ptr @uniphier_system_bus_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @uniphier_system_bus_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/bus/uniphier-system-bus.c", i32 216, i32 41}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/bus/uniphier-system-bus.c", i32 218, i32 3}
!42 = !{ptr @uniphier_system_bus_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @uniphier_system_bus_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/bus/uniphier-system-bus.c", i32 43, i32 2}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @uniphier_system_bus_add_bank.__UNIQUE_ID_ddebug170, !45, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/bus/uniphier-system-bus.c", i32 48, i32 3}
!51 = !{ptr @uniphier_system_bus_add_bank._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @uniphier_system_bus_add_bank._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/bus/uniphier-system-bus.c", i32 53, i32 3}
!55 = !{ptr @uniphier_system_bus_add_bank._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @uniphier_system_bus_add_bank._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/bus/uniphier-system-bus.c", i32 59, i32 3}
!59 = !{ptr @uniphier_system_bus_add_bank._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @uniphier_system_bus_add_bank._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/bus/uniphier-system-bus.c", i32 66, i32 3}
!63 = !{ptr @uniphier_system_bus_add_bank._entry.31, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @uniphier_system_bus_add_bank._entry_ptr.33, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/bus/uniphier-system-bus.c", i32 77, i32 3}
!67 = !{ptr @uniphier_system_bus_add_bank._entry.34, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @uniphier_system_bus_add_bank._entry_ptr.36, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/bus/uniphier-system-bus.c", i32 89, i32 2}
!71 = !{ptr @uniphier_system_bus_add_bank.__UNIQUE_ID_ddebug171, !70, !"__UNIQUE_ID_ddebug171", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/bus/uniphier-system-bus.c", i32 104, i32 5}
!74 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @uniphier_system_bus_check_overlap._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @uniphier_system_bus_check_overlap._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/bus/uniphier-system-bus.c", i32 123, i32 2}
!79 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @uniphier_system_bus_check_boot_swap.__UNIQUE_ID_ddebug172, !78, !"__UNIQUE_ID_ddebug172", i1 false, i1 false}
!81 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/bus/uniphier-system-bus.c", i32 169, i32 3}
!85 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @uniphier_system_bus_set_reg.__UNIQUE_ID_ddebug173, !84, !"__UNIQUE_ID_ddebug173", i1 false, i1 false}
!87 = !{ptr @uniphier_system_bus_match, !88, !"uniphier_system_bus_match", i1 false, i1 false}
!88 = !{!"../drivers/bus/uniphier-system-bus.c", i32 265, i32 34}
!89 = !{ptr @uniphier_system_bus_pm_ops, !90, !"uniphier_system_bus_pm_ops", i1 false, i1 false}
!90 = !{!"../drivers/bus/uniphier-system-bus.c", i32 261, i32 32}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{!"auto-init"}
!101 = !{i64 691099}
!102 = !{i64 2152524492}
!103 = !{i64 2148157838, i64 2148157843, i64 2148157856, i64 2148157900, i64 2148157934, i64 2148157955}
!104 = !{i64 2152529982}
!105 = !{i64 690681}
!106 = !{i32 0, i32 33}
