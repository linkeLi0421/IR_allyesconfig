; ModuleID = '/llk/IR_all_yes/drivers/mtd/maps/physmap-gemini.c_pt.bc'
source_filename = "../drivers/mtd/maps/physmap-gemini.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.map_info = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.gemini_flash = type { ptr, ptr, ptr, ptr }
%union.map_word = type { [8 x i32] }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cortina,gemini-flash\00", [43 x i8] zeroinitializer }, align 32
@gf = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"syscon\00", [25 x i8] zeroinitializer }, align 32
@of_flash_probe_gemini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 140, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"no syscon\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"of_flash_probe_gemini\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/mtd/maps/physmap-gemini.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@of_flash_probe_gemini._entry_ptr = internal global ptr @of_flash_probe_gemini._entry, section ".printk_index", align 4
@of_flash_probe_gemini._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 146, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to read global status register\0A\00", [57 x i8] zeroinitializer }, align 32
@of_flash_probe_gemini._entry_ptr.9 = internal global ptr @of_flash_probe_gemini._entry.7, section ".printk_index", align 4
@of_flash_probe_gemini.__UNIQUE_ID_ddebug210 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.3, ptr @.str.4, ptr @.str.11, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"physmap\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"global status reg: %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@of_flash_probe_gemini._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 155, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"flash is not parallel\0A\00", [41 x i8] zeroinitializer }, align 32
@of_flash_probe_gemini._entry_ptr.14 = internal global ptr @of_flash_probe_gemini._entry.12, section ".printk_index", align 4
@of_flash_probe_gemini._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 165, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"flash hardware say flash is 16 bit wide but DT says it is %d bits wide\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@of_flash_probe_gemini._entry_ptr.18 = internal global ptr @of_flash_probe_gemini._entry.15, section ".printk_index", align 4
@of_flash_probe_gemini._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 169, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"flash hardware say flash is 8 bit wide but DT says it is %d bits wide\0A\00", [57 x i8] zeroinitializer }, align 32
@of_flash_probe_gemini._entry_ptr.21 = internal global ptr @of_flash_probe_gemini._entry.19, section ".printk_index", align 4
@of_flash_probe_gemini._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 174, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no pinctrl handle\0A\00", [45 x i8] zeroinitializer }, align 32
@of_flash_probe_gemini._entry_ptr.24 = internal global ptr @of_flash_probe_gemini._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@of_flash_probe_gemini._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 181, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"no enabled pin control state\0A\00", [34 x i8] zeroinitializer }, align 32
@of_flash_probe_gemini._entry_ptr.28 = internal global ptr @of_flash_probe_gemini._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@of_flash_probe_gemini._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 185, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no disabled pin control state\0A\00", [33 x i8] zeroinitializer }, align 32
@of_flash_probe_gemini._entry_ptr.32 = internal global ptr @of_flash_probe_gemini._entry.30, section ".printk_index", align 4
@of_flash_probe_gemini._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.3, ptr @.str.4, i32 189, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to disable pins\0A\00", [40 x i8] zeroinitializer }, align 32
@of_flash_probe_gemini._entry_ptr.35 = internal global ptr @of_flash_probe_gemini._entry.33, section ".printk_index", align 4
@of_flash_probe_gemini._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.3, ptr @.str.4, i32 197, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"initialized Gemini-specific physmap control\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@of_flash_probe_gemini._entry_ptr.39 = internal global ptr @of_flash_probe_gemini._entry.36, section ".printk_index", align 4
@gemini_flash_enable_pins._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 67, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to enable pins\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gemini_flash_enable_pins\00", [39 x i8] zeroinitializer }, align 32
@gemini_flash_enable_pins._entry_ptr = internal global ptr @gemini_flash_enable_pins._entry, section ".printk_index", align 4
@gemini_flash_disable_pins._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.42, ptr @.str.4, i32 78, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gemini_flash_disable_pins\00", [38 x i8] zeroinitializer }, align 32
@gemini_flash_disable_pins._entry_ptr = internal global ptr @gemini_flash_disable_pins._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 130, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant [3 x i8] c"gf\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 57, i32 29 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 138, i32 45 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 140, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 146, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 149, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 155, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 164, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 168, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 174, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 179, i32 50 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 181, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 183, i32 51 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 185, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 189, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 197, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 67, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private constant [37 x i8] c"../drivers/mtd/maps/physmap-gemini.c\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 78, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @gemini_flash_disable_pins._entry, ptr @gemini_flash_disable_pins._entry_ptr, ptr @gemini_flash_enable_pins._entry, ptr @gemini_flash_enable_pins._entry_ptr, ptr @of_flash_probe_gemini._entry, ptr @of_flash_probe_gemini._entry.12, ptr @of_flash_probe_gemini._entry.15, ptr @of_flash_probe_gemini._entry.19, ptr @of_flash_probe_gemini._entry.22, ptr @of_flash_probe_gemini._entry.26, ptr @of_flash_probe_gemini._entry.30, ptr @of_flash_probe_gemini._entry.33, ptr @of_flash_probe_gemini._entry.36, ptr @of_flash_probe_gemini._entry.7, ptr @of_flash_probe_gemini._entry_ptr, ptr @of_flash_probe_gemini._entry_ptr.14, ptr @of_flash_probe_gemini._entry_ptr.18, ptr @of_flash_probe_gemini._entry_ptr.21, ptr @of_flash_probe_gemini._entry_ptr.24, ptr @of_flash_probe_gemini._entry_ptr.28, ptr @of_flash_probe_gemini._entry_ptr.32, ptr @of_flash_probe_gemini._entry_ptr.35, ptr @of_flash_probe_gemini._entry_ptr.39, ptr @of_flash_probe_gemini._entry_ptr.9, ptr @.str, ptr @gf, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_flash_probe_gemini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_flash_probe_gemini._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_flash_probe_gemini._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_flash_probe_gemini._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_flash_probe_gemini._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_flash_probe_gemini._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_flash_probe_gemini._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_flash_probe_gemini._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_flash_probe_gemini._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_flash_probe_gemini._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_flash_enable_pins._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_flash_disable_pins._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_flash_probe_gemini(ptr noundef %pdev, ptr noundef %np, ptr nocapture noundef %map) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !78
  %call = tail call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #5
  store ptr %call.i, ptr @gf, align 4
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 4
  %call7 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %np, ptr noundef nonnull @.str.1) #5
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  %2 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %call12 = call i32 @regmap_read(ptr noundef %call7, i32 noundef 4, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body19, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #8
  br label %cleanup

do.body19:                                        ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @of_flash_probe_gemini.__UNIQUE_ID_ddebug210, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@of_flash_probe_gemini, %if.then24)) #5
          to label %do.end27 [label %if.then24], !srcloc !79

if.then24:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @of_flash_probe_gemini.__UNIQUE_ID_ddebug210, ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %4) #5
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %do.body19
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %and)
  %cmp.not = icmp eq i32 %and, 16777216
  br i1 %cmp.not, label %if.end32, label %do.end31

do.end31:                                         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end32:                                         ; preds = %do.end27
  %and33 = and i32 %6, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %bankwidth43 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %7 = ptrtoint ptr %bankwidth43 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bankwidth43, align 4
  br i1 %tobool34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp36.not = icmp eq i32 %8, 2
  br i1 %cmp36.not, label %if.then35.if.end52_crit_edge, label %if.then35.if.end52.sink.split_crit_edge

if.then35.if.end52.sink.split_crit_edge:          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52.sink.split

if.then35.if.end52_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp44.not = icmp eq i32 %8, 1
  br i1 %cmp44.not, label %if.else.if.end52_crit_edge, label %if.else.if.end52.sink.split_crit_edge

if.else.if.end52.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52.sink.split

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.end52.sink.split:                              ; preds = %if.else.if.end52.sink.split_crit_edge, %if.then35.if.end52.sink.split_crit_edge
  %.str.20.sink = phi ptr [ @.str.16, %if.then35.if.end52.sink.split_crit_edge ], [ @.str.20, %if.else.if.end52.sink.split_crit_edge ]
  %mul50 = shl i32 %8, 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull %.str.20.sink, i32 noundef %mul50) #8
  br label %if.end52

if.end52:                                         ; preds = %if.end52.sink.split, %if.else.if.end52_crit_edge, %if.then35.if.end52_crit_edge
  %call53 = call ptr @devm_pinctrl_get(ptr noundef %dev1) #5
  %9 = load ptr, ptr @gf, align 4
  %p = getelementptr inbounds %struct.gemini_flash, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call53, ptr %p, align 4
  %cmp.i123 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i123, label %do.end59, label %if.end62

do.end59:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #8
  %11 = load ptr, ptr @gf, align 4
  %p60 = getelementptr inbounds %struct.gemini_flash, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %p60 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p60, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end62:                                         ; preds = %if.end52
  %call64 = call ptr @pinctrl_lookup_state(ptr noundef %call53, ptr noundef nonnull @.str.25) #5
  %15 = load ptr, ptr @gf, align 4
  %enabled_state = getelementptr inbounds %struct.gemini_flash, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %enabled_state to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call64, ptr %enabled_state, align 4
  %cmp.i124 = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %do.end70, label %if.end62.if.end71_crit_edge

if.end62.if.end71_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

do.end70:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #8
  br label %if.end71

if.end71:                                         ; preds = %do.end70, %if.end62.if.end71_crit_edge
  %17 = load ptr, ptr @gf, align 4
  %p72 = getelementptr inbounds %struct.gemini_flash, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %p72 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %p72, align 4
  %call73 = call ptr @pinctrl_lookup_state(ptr noundef %19, ptr noundef nonnull @.str.29) #5
  %20 = load ptr, ptr @gf, align 4
  %disabled_state = getelementptr inbounds %struct.gemini_flash, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %disabled_state to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call73, ptr %disabled_state, align 4
  %enabled_state74 = getelementptr inbounds %struct.gemini_flash, ptr %20, i32 0, i32 2
  %22 = ptrtoint ptr %enabled_state74 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %enabled_state74, align 4
  %cmp.i125 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125, label %do.end79, label %if.else80

do.end79:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31) #8
  br label %if.end91

if.else80:                                        ; preds = %if.end71
  %p81 = getelementptr inbounds %struct.gemini_flash, ptr %20, i32 0, i32 1
  %24 = ptrtoint ptr %p81 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %p81, align 4
  %call83 = call i32 @pinctrl_select_state(ptr noundef %25, ptr noundef %call73) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.else80.if.end91_crit_edge, label %do.end88

if.else80.if.end91_crit_edge:                     ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91

do.end88:                                         ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #7
  %26 = load ptr, ptr @gf, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.34) #8
  br label %if.end91

if.end91:                                         ; preds = %do.end88, %if.else80.if.end91_crit_edge, %do.end79
  %read = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %29 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @gemini_flash_map_read, ptr %read, align 4
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %30 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @gemini_flash_map_write, ptr %write, align 4
  %copy_from = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 8
  %31 = ptrtoint ptr %copy_from to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @gemini_flash_map_copy_from, ptr %copy_from, align 4
  %copy_to = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 10
  %32 = ptrtoint ptr %copy_to to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @gemini_flash_map_copy_to, ptr %copy_to, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.37) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %do.end59, %do.end31, %do.end17, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %do.end ], [ -19, %do.end17 ], [ -19, %do.end31 ], [ %14, %do.end59 ], [ 0, %if.end91 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gemini_flash_map_read(ptr noalias nocapture writeonly sret(%union.map_word) align 4 %agg.result, ptr nocapture noundef readonly %map, i32 noundef %ofs) #0 align 64 {
entry:
  %tmp = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %agg.result, i32 255, i32 32)
  %1 = load ptr, ptr @gf, align 4
  %enabled_state.i = getelementptr inbounds %struct.gemini_flash, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %enabled_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enabled_state.i, align 4
  %cmp.i.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.gemini_flash_enable_pins.exit_crit_edge, label %if.end.i

entry.gemini_flash_enable_pins.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %gemini_flash_enable_pins.exit

if.end.i:                                         ; preds = %entry
  %p.i = getelementptr inbounds %struct.gemini_flash, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p.i, align 4
  %call2.i = tail call i32 @pinctrl_select_state(ptr noundef %5, ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i.gemini_flash_enable_pins.exit_crit_edge, label %do.end.i

if.end.i.gemini_flash_enable_pins.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gemini_flash_enable_pins.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %6 = load ptr, ptr @gf, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.40) #8
  br label %gemini_flash_enable_pins.exit

gemini_flash_enable_pins.exit:                    ; preds = %do.end.i, %if.end.i.gemini_flash_enable_pins.exit_crit_edge, %entry.gemini_flash_enable_pins.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp) #5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %bankwidth.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %9 = call ptr @memset(ptr %tmp, i32 255, i32 32)
  %10 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bankwidth.i, align 4, !noalias !80
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.else19.i [
    i32 1, label %if.then.i
    i32 2, label %if.then4.i
    i32 4, label %if.then14.i
  ]

if.then.i:                                        ; preds = %gemini_flash_enable_pins.exit
  call void @__sanitizer_cov_trace_pc() #7
  %virt.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 3
  %13 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %virt.i, align 4, !noalias !80
  %add.ptr.i = getelementptr i8, ptr %14, i32 %ofs
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #5, !noalias !80, !srcloc !83
  %conv.i = zext i8 %15 to i32
  %16 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv.i, ptr %tmp, align 4, !alias.scope !80
  br label %inline_map_read.exit

if.then4.i:                                       ; preds = %gemini_flash_enable_pins.exit
  call void @__sanitizer_cov_trace_pc() #7
  %virt5.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 3
  %17 = ptrtoint ptr %virt5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %virt5.i, align 4, !noalias !80
  %add.ptr6.i = getelementptr i8, ptr %18, i32 %ofs
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr6.i) #5, !noalias !80, !srcloc !84
  %conv8.i = zext i16 %19 to i32
  %20 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv8.i, ptr %tmp, align 4, !alias.scope !80
  br label %inline_map_read.exit

if.then14.i:                                      ; preds = %gemini_flash_enable_pins.exit
  call void @__sanitizer_cov_trace_pc() #7
  %virt15.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 3
  %21 = ptrtoint ptr %virt15.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %virt15.i, align 4, !noalias !80
  %add.ptr16.i = getelementptr i8, ptr %22, i32 %ofs
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #5, !noalias !80, !srcloc !85
  %24 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %tmp, align 4, !alias.scope !80
  br label %inline_map_read.exit

if.else19.i:                                      ; preds = %gemini_flash_enable_pins.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp21.i = icmp sgt i32 %11, 4
  br i1 %cmp21.i, label %if.then23.i, label %do.body.i

if.then23.i:                                      ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #7
  %virt24.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 3
  %25 = ptrtoint ptr %virt24.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %virt24.i, align 4, !noalias !80
  %add.ptr25.i = getelementptr i8, ptr %26, i32 %ofs
  call void @mmiocpy(ptr noundef nonnull %tmp, ptr noundef %add.ptr25.i, i32 noundef %11) #5
  br label %inline_map_read.exit

do.body.i:                                        ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #5, !noalias !80, !srcloc !86
  unreachable

inline_map_read.exit:                             ; preds = %if.then23.i, %if.then14.i, %if.then4.i, %if.then.i
  %27 = call ptr @memcpy(ptr %agg.result, ptr %tmp, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp) #5
  %28 = load ptr, ptr @gf, align 4
  %disabled_state.i = getelementptr inbounds %struct.gemini_flash, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %disabled_state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %disabled_state.i, align 4
  %cmp.i.i1 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i1, label %inline_map_read.exit.gemini_flash_disable_pins.exit_crit_edge, label %if.end.i5

inline_map_read.exit.gemini_flash_disable_pins.exit_crit_edge: ; preds = %inline_map_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %gemini_flash_disable_pins.exit

if.end.i5:                                        ; preds = %inline_map_read.exit
  %p.i2 = getelementptr inbounds %struct.gemini_flash, ptr %28, i32 0, i32 1
  %31 = ptrtoint ptr %p.i2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %p.i2, align 4
  %call2.i3 = call i32 @pinctrl_select_state(ptr noundef %32, ptr noundef %30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i3)
  %tobool.not.i4 = icmp eq i32 %call2.i3, 0
  br i1 %tobool.not.i4, label %if.end.i5.gemini_flash_disable_pins.exit_crit_edge, label %do.end.i6

if.end.i5.gemini_flash_disable_pins.exit_crit_edge: ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #7
  br label %gemini_flash_disable_pins.exit

do.end.i6:                                        ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #7
  %33 = load ptr, ptr @gf, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.34) #8
  br label %gemini_flash_disable_pins.exit

gemini_flash_disable_pins.exit:                   ; preds = %do.end.i6, %if.end.i5.gemini_flash_disable_pins.exit_crit_edge, %inline_map_read.exit.gemini_flash_disable_pins.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gemini_flash_map_write(ptr nocapture noundef readonly %map, [8 x i32] %datum.coerce, i32 noundef %ofs) #0 align 64 {
entry:
  %datum.i = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gf, align 4
  %enabled_state.i = getelementptr inbounds %struct.gemini_flash, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %enabled_state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %enabled_state.i, align 4
  %cmp.i.i = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.gemini_flash_enable_pins.exit_crit_edge, label %if.end.i

entry.gemini_flash_enable_pins.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %gemini_flash_enable_pins.exit

if.end.i:                                         ; preds = %entry
  %p.i = getelementptr inbounds %struct.gemini_flash, ptr %0, i32 0, i32 1
  %3 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p.i, align 4
  %call2.i = tail call i32 @pinctrl_select_state(ptr noundef %4, ptr noundef %2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i.gemini_flash_enable_pins.exit_crit_edge, label %do.end.i

if.end.i.gemini_flash_enable_pins.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gemini_flash_enable_pins.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %5 = load ptr, ptr @gf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.40) #8
  br label %gemini_flash_enable_pins.exit

gemini_flash_enable_pins.exit:                    ; preds = %do.end.i, %if.end.i.gemini_flash_enable_pins.exit_crit_edge, %entry.gemini_flash_enable_pins.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %datum.i)
  %datum.coerce.fca.0.extract.i = extractvalue [8 x i32] %datum.coerce, 0
  %8 = ptrtoint ptr %datum.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %datum.coerce.fca.0.extract.i, ptr %datum.i, align 4
  %datum.coerce.fca.1.extract.i = extractvalue [8 x i32] %datum.coerce, 1
  %datum.coerce.fca.1.gep.i = getelementptr inbounds [8 x i32], ptr %datum.i, i32 0, i32 1
  %9 = ptrtoint ptr %datum.coerce.fca.1.gep.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %datum.coerce.fca.1.extract.i, ptr %datum.coerce.fca.1.gep.i, align 4
  %datum.coerce.fca.2.extract.i = extractvalue [8 x i32] %datum.coerce, 2
  %datum.coerce.fca.2.gep.i = getelementptr inbounds [8 x i32], ptr %datum.i, i32 0, i32 2
  %10 = ptrtoint ptr %datum.coerce.fca.2.gep.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %datum.coerce.fca.2.extract.i, ptr %datum.coerce.fca.2.gep.i, align 4
  %datum.coerce.fca.3.extract.i = extractvalue [8 x i32] %datum.coerce, 3
  %datum.coerce.fca.3.gep.i = getelementptr inbounds [8 x i32], ptr %datum.i, i32 0, i32 3
  %11 = ptrtoint ptr %datum.coerce.fca.3.gep.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %datum.coerce.fca.3.extract.i, ptr %datum.coerce.fca.3.gep.i, align 4
  %datum.coerce.fca.4.extract.i = extractvalue [8 x i32] %datum.coerce, 4
  %datum.coerce.fca.4.gep.i = getelementptr inbounds [8 x i32], ptr %datum.i, i32 0, i32 4
  %12 = ptrtoint ptr %datum.coerce.fca.4.gep.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %datum.coerce.fca.4.extract.i, ptr %datum.coerce.fca.4.gep.i, align 4
  %datum.coerce.fca.5.extract.i = extractvalue [8 x i32] %datum.coerce, 5
  %datum.coerce.fca.5.gep.i = getelementptr inbounds [8 x i32], ptr %datum.i, i32 0, i32 5
  %13 = ptrtoint ptr %datum.coerce.fca.5.gep.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %datum.coerce.fca.5.extract.i, ptr %datum.coerce.fca.5.gep.i, align 4
  %datum.coerce.fca.6.extract.i = extractvalue [8 x i32] %datum.coerce, 6
  %datum.coerce.fca.6.gep.i = getelementptr inbounds [8 x i32], ptr %datum.i, i32 0, i32 6
  %14 = ptrtoint ptr %datum.coerce.fca.6.gep.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %datum.coerce.fca.6.extract.i, ptr %datum.coerce.fca.6.gep.i, align 4
  %datum.coerce.fca.7.extract.i = extractvalue [8 x i32] %datum.coerce, 7
  %datum.coerce.fca.7.gep.i = getelementptr inbounds [8 x i32], ptr %datum.i, i32 0, i32 7
  %15 = ptrtoint ptr %datum.coerce.fca.7.gep.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %datum.coerce.fca.7.extract.i, ptr %datum.coerce.fca.7.gep.i, align 4
  %bankwidth.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %16 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bankwidth.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %17, label %if.else17.i [
    i32 1, label %if.then.i
    i32 2, label %if.then4.i
    i32 4, label %if.then13.i
  ]

if.then.i:                                        ; preds = %gemini_flash_enable_pins.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = trunc i32 %datum.coerce.fca.0.extract.i to i8
  %virt.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 3
  %19 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 %ofs
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv.i) #5, !srcloc !87
  br label %inline_map_write.exit

if.then4.i:                                       ; preds = %gemini_flash_enable_pins.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv6.i = trunc i32 %datum.coerce.fca.0.extract.i to i16
  %virt7.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 3
  %21 = ptrtoint ptr %virt7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %virt7.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %22, i32 %ofs
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 %conv6.i) #5, !srcloc !88
  br label %inline_map_write.exit

if.then13.i:                                      ; preds = %gemini_flash_enable_pins.exit
  call void @__sanitizer_cov_trace_pc() #7
  %virt15.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 3
  %23 = ptrtoint ptr %virt15.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %virt15.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %24, i32 %ofs
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %datum.coerce.fca.0.extract.i) #5, !srcloc !89
  br label %inline_map_write.exit

if.else17.i:                                      ; preds = %gemini_flash_enable_pins.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp19.i = icmp sgt i32 %17, 4
  br i1 %cmp19.i, label %if.then21.i, label %do.body.i

if.then21.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #7
  %virt22.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 3
  %25 = ptrtoint ptr %virt22.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %virt22.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %26, i32 %ofs
  call void @mmiocpy(ptr noundef %add.ptr23.i, ptr noundef nonnull %datum.i, i32 noundef %17) #5
  br label %inline_map_write.exit

do.body.i:                                        ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #5, !srcloc !90
  unreachable

inline_map_write.exit:                            ; preds = %if.then21.i, %if.then13.i, %if.then4.i, %if.then.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  call void @arm_heavy_mb() #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %datum.i)
  %27 = load ptr, ptr @gf, align 4
  %disabled_state.i = getelementptr inbounds %struct.gemini_flash, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %disabled_state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %disabled_state.i, align 4
  %cmp.i.i2 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i2, label %inline_map_write.exit.gemini_flash_disable_pins.exit_crit_edge, label %if.end.i6

inline_map_write.exit.gemini_flash_disable_pins.exit_crit_edge: ; preds = %inline_map_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %gemini_flash_disable_pins.exit

if.end.i6:                                        ; preds = %inline_map_write.exit
  %p.i3 = getelementptr inbounds %struct.gemini_flash, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %p.i3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %p.i3, align 4
  %call2.i4 = call i32 @pinctrl_select_state(ptr noundef %31, ptr noundef %29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i4)
  %tobool.not.i5 = icmp eq i32 %call2.i4, 0
  br i1 %tobool.not.i5, label %if.end.i6.gemini_flash_disable_pins.exit_crit_edge, label %do.end.i7

if.end.i6.gemini_flash_disable_pins.exit_crit_edge: ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #7
  br label %gemini_flash_disable_pins.exit

do.end.i7:                                        ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #7
  %32 = load ptr, ptr @gf, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.34) #8
  br label %gemini_flash_disable_pins.exit

gemini_flash_disable_pins.exit:                   ; preds = %do.end.i7, %if.end.i6.gemini_flash_disable_pins.exit_crit_edge, %inline_map_write.exit.gemini_flash_disable_pins.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gemini_flash_map_copy_from(ptr nocapture noundef readonly %map, ptr noundef %to, i32 noundef %from, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gf, align 4
  %enabled_state.i = getelementptr inbounds %struct.gemini_flash, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %enabled_state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %enabled_state.i, align 4
  %cmp.i.i = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.gemini_flash_enable_pins.exit_crit_edge, label %if.end.i

entry.gemini_flash_enable_pins.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %gemini_flash_enable_pins.exit

if.end.i:                                         ; preds = %entry
  %p.i = getelementptr inbounds %struct.gemini_flash, ptr %0, i32 0, i32 1
  %3 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p.i, align 4
  %call2.i = tail call i32 @pinctrl_select_state(ptr noundef %4, ptr noundef %2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i.gemini_flash_enable_pins.exit_crit_edge, label %do.end.i

if.end.i.gemini_flash_enable_pins.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gemini_flash_enable_pins.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %5 = load ptr, ptr @gf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.40) #8
  br label %gemini_flash_enable_pins.exit

gemini_flash_enable_pins.exit:                    ; preds = %do.end.i, %if.end.i.gemini_flash_enable_pins.exit_crit_edge, %entry.gemini_flash_enable_pins.exit_crit_edge
  %cached.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 4
  %8 = ptrtoint ptr %cached.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cached.i, align 4
  %tobool.not.i1 = icmp eq ptr %9, null
  br i1 %tobool.not.i1, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %gemini_flash_enable_pins.exit
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %9, i32 %from
  %10 = call ptr @memcpy(ptr %to, ptr %add.ptr.i, i32 %len)
  br label %inline_map_copy_from.exit

if.else.i:                                        ; preds = %gemini_flash_enable_pins.exit
  call void @__sanitizer_cov_trace_pc() #7
  %virt.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 3
  %11 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %virt.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %12, i32 %from
  tail call void @mmiocpy(ptr noundef %to, ptr noundef %add.ptr2.i, i32 noundef %len) #5
  br label %inline_map_copy_from.exit

inline_map_copy_from.exit:                        ; preds = %if.else.i, %if.then.i
  %13 = load ptr, ptr @gf, align 4
  %disabled_state.i = getelementptr inbounds %struct.gemini_flash, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %disabled_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disabled_state.i, align 4
  %cmp.i.i3 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i3, label %inline_map_copy_from.exit.gemini_flash_disable_pins.exit_crit_edge, label %if.end.i7

inline_map_copy_from.exit.gemini_flash_disable_pins.exit_crit_edge: ; preds = %inline_map_copy_from.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %gemini_flash_disable_pins.exit

if.end.i7:                                        ; preds = %inline_map_copy_from.exit
  %p.i4 = getelementptr inbounds %struct.gemini_flash, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %p.i4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p.i4, align 4
  %call2.i5 = tail call i32 @pinctrl_select_state(ptr noundef %17, ptr noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i5)
  %tobool.not.i6 = icmp eq i32 %call2.i5, 0
  br i1 %tobool.not.i6, label %if.end.i7.gemini_flash_disable_pins.exit_crit_edge, label %do.end.i8

if.end.i7.gemini_flash_disable_pins.exit_crit_edge: ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #7
  br label %gemini_flash_disable_pins.exit

do.end.i8:                                        ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #7
  %18 = load ptr, ptr @gf, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.34) #8
  br label %gemini_flash_disable_pins.exit

gemini_flash_disable_pins.exit:                   ; preds = %do.end.i8, %if.end.i7.gemini_flash_disable_pins.exit_crit_edge, %inline_map_copy_from.exit.gemini_flash_disable_pins.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gemini_flash_map_copy_to(ptr nocapture noundef readonly %map, i32 noundef %to, ptr noundef %from, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gf, align 4
  %enabled_state.i = getelementptr inbounds %struct.gemini_flash, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %enabled_state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %enabled_state.i, align 4
  %cmp.i.i = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.gemini_flash_enable_pins.exit_crit_edge, label %if.end.i

entry.gemini_flash_enable_pins.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %gemini_flash_enable_pins.exit

if.end.i:                                         ; preds = %entry
  %p.i = getelementptr inbounds %struct.gemini_flash, ptr %0, i32 0, i32 1
  %3 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p.i, align 4
  %call2.i = tail call i32 @pinctrl_select_state(ptr noundef %4, ptr noundef %2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i.gemini_flash_enable_pins.exit_crit_edge, label %do.end.i

if.end.i.gemini_flash_enable_pins.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gemini_flash_enable_pins.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %5 = load ptr, ptr @gf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.40) #8
  br label %gemini_flash_enable_pins.exit

gemini_flash_enable_pins.exit:                    ; preds = %do.end.i, %if.end.i.gemini_flash_enable_pins.exit_crit_edge, %entry.gemini_flash_enable_pins.exit_crit_edge
  %virt.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 3
  %8 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %to
  tail call void @mmiocpy(ptr noundef %add.ptr.i, ptr noundef %from, i32 noundef %len) #5
  %10 = load ptr, ptr @gf, align 4
  %disabled_state.i = getelementptr inbounds %struct.gemini_flash, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %disabled_state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %disabled_state.i, align 4
  %cmp.i.i1 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i1, label %gemini_flash_enable_pins.exit.gemini_flash_disable_pins.exit_crit_edge, label %if.end.i5

gemini_flash_enable_pins.exit.gemini_flash_disable_pins.exit_crit_edge: ; preds = %gemini_flash_enable_pins.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %gemini_flash_disable_pins.exit

if.end.i5:                                        ; preds = %gemini_flash_enable_pins.exit
  %p.i2 = getelementptr inbounds %struct.gemini_flash, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %p.i2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p.i2, align 4
  %call2.i3 = tail call i32 @pinctrl_select_state(ptr noundef %14, ptr noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i3)
  %tobool.not.i4 = icmp eq i32 %call2.i3, 0
  br i1 %tobool.not.i4, label %if.end.i5.gemini_flash_disable_pins.exit_crit_edge, label %do.end.i6

if.end.i5.gemini_flash_disable_pins.exit_crit_edge: ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #7
  br label %gemini_flash_disable_pins.exit

do.end.i6:                                        ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #7
  %15 = load ptr, ptr @gf, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.34) #8
  br label %gemini_flash_disable_pins.exit

gemini_flash_disable_pins.exit:                   ; preds = %do.end.i6, %if.end.i5.gemini_flash_disable_pins.exit_crit_edge, %gemini_flash_enable_pins.exit.gemini_flash_disable_pins.exit_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !62, !63, !64, !65, !67, !68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/maps/physmap-gemini.c", i32 130, i32 35}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mtd/maps/physmap-gemini.c", i32 138, i32 45}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mtd/maps/physmap-gemini.c", i32 140, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @of_flash_probe_gemini._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @of_flash_probe_gemini._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/maps/physmap-gemini.c", i32 146, i32 3}
!14 = !{ptr @of_flash_probe_gemini._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @of_flash_probe_gemini._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/maps/physmap-gemini.c", i32 149, i32 2}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @of_flash_probe_gemini.__UNIQUE_ID_ddebug210, !17, !"__UNIQUE_ID_ddebug210", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/maps/physmap-gemini.c", i32 155, i32 3}
!22 = !{ptr @of_flash_probe_gemini._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @of_flash_probe_gemini._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/maps/physmap-gemini.c", i32 164, i32 4}
!26 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @of_flash_probe_gemini._entry.15, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @of_flash_probe_gemini._entry_ptr.18, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mtd/maps/physmap-gemini.c", i32 168, i32 4}
!31 = !{ptr @of_flash_probe_gemini._entry.19, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @of_flash_probe_gemini._entry_ptr.21, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.23, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mtd/maps/physmap-gemini.c", i32 174, i32 3}
!35 = !{ptr @of_flash_probe_gemini._entry.22, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @of_flash_probe_gemini._entry_ptr.24, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.25, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mtd/maps/physmap-gemini.c", i32 179, i32 50}
!39 = !{ptr @.str.27, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/maps/physmap-gemini.c", i32 181, i32 3}
!41 = !{ptr @of_flash_probe_gemini._entry.26, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @of_flash_probe_gemini._entry_ptr.28, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.29, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mtd/maps/physmap-gemini.c", i32 183, i32 51}
!45 = !{ptr @.str.31, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mtd/maps/physmap-gemini.c", i32 185, i32 3}
!47 = !{ptr @of_flash_probe_gemini._entry.30, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @of_flash_probe_gemini._entry_ptr.32, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.34, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mtd/maps/physmap-gemini.c", i32 189, i32 4}
!51 = !{ptr @of_flash_probe_gemini._entry.33, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @of_flash_probe_gemini._entry_ptr.35, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.37, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mtd/maps/physmap-gemini.c", i32 197, i32 2}
!55 = !{ptr @.str.38, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @of_flash_probe_gemini._entry.36, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @of_flash_probe_gemini._entry_ptr.39, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @gf, !59, !"gf", i1 false, i1 false}
!59 = !{!"../drivers/mtd/maps/physmap-gemini.c", i32 57, i32 29}
!60 = !{ptr @.str.40, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/maps/physmap-gemini.c", i32 67, i32 3}
!62 = !{ptr @.str.41, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @gemini_flash_enable_pins._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @gemini_flash_enable_pins._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.42, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mtd/maps/physmap-gemini.c", i32 78, i32 3}
!67 = !{ptr @gemini_flash_disable_pins._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @gemini_flash_disable_pins._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{!"auto-init"}
!79 = !{i64 2148861251, i64 2148861256, i64 2148861269, i64 2148861313, i64 2148861347, i64 2148861368}
!80 = !{!81}
!81 = distinct !{!81, !82, !"inline_map_read: %agg.result"}
!82 = distinct !{!82, !"inline_map_read"}
!83 = !{i64 4961123}
!84 = !{i64 4960505}
!85 = !{i64 4961343}
!86 = !{i64 2152527947, i64 2152528435, i64 2152527984, i64 2152528040, i64 2152528074, i64 2152528098, i64 2152528139, i64 2152528160, i64 2152528188, i64 2152528222}
!87 = !{i64 4960728}
!88 = !{i64 4960305}
!89 = !{i64 4960925}
!90 = !{i64 2152529940, i64 2152530428, i64 2152529977, i64 2152530033, i64 2152530067, i64 2152530091, i64 2152530132, i64 2152530153, i64 2152530181, i64 2152530215}
!91 = !{i64 2152531331}
