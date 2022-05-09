; ModuleID = '/llk/IR_all_yes/drivers/memory/mvebu-devbus.c_pt.bc'
source_filename = "../drivers/memory/mvebu-devbus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.devbus_read_params = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.devbus_write_params = type { i32, i32, i32, i32 }
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
%struct.devbus = type { ptr, ptr, i32 }

@__initcall__kmod_mvebu_devbus__187_343_mvebu_devbus_init6 = internal global ptr @mvebu_devbus_init, section ".initcall6.init", align 4
@__UNIQUE_ID_file188 = internal constant [46 x i8] c"mvebu_devbus.file=drivers/memory/mvebu-devbus\00", section ".modinfo", align 1
@__UNIQUE_ID_license189 = internal constant [28 x i8] c"mvebu_devbus.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author190 = internal constant [73 x i8] c"mvebu_devbus.author=Ezequiel Garcia <ezequiel.garcia@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description191 = internal constant [63 x i8] c"mvebu_devbus.description=Marvell EBU SoC Device Bus controller\00", section ".modinfo", align 1
@mvebu_devbus_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mvebu_devbus_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mvebu_devbus_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mvebu-devbus\00", [19 x i8] zeroinitializer }, align 32
@mvebu_devbus_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mvebu-devbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-devbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@mvebu_devbus_probe.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mvebu_devbus\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mvebu_devbus_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/memory/mvebu-devbus.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Setting timing parameter, tick is %lu ps\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"devbus,keep-config\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"marvell,orion-devbus\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"devbus,bus-width\00", [47 x i8] zeroinitializer }, align 32
@devbus_get_timing_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 119, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%pOF has no 'devbus,bus-width' property\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"devbus_get_timing_params\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@devbus_get_timing_params._entry_ptr = internal global ptr @devbus_get_timing_params._entry, section ".printk_index", align 4
@devbus_get_timing_params._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.3, i32 132, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid bus width %d\0A\00", [42 x i8] zeroinitializer }, align 32
@devbus_get_timing_params._entry_ptr.14 = internal global ptr @devbus_get_timing_params._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"devbus,badr-skew-ps\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"devbus,turn-off-ps\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"devbus,acc-first-ps\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"devbus,acc-next-ps\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"marvell,mvebu-devbus\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"devbus,rd-setup-ps\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"devbus,rd-hold-ps\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"devbus,sync-enable\00", [45 x i8] zeroinitializer }, align 32
@devbus_get_timing_params._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.9, ptr @.str.3, i32 172, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%pOF has no 'devbus,sync-enable' property\0A\00", [53 x i8] zeroinitializer }, align 32
@devbus_get_timing_params._entry_ptr.25 = internal global ptr @devbus_get_timing_params._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"devbus,ale-wr-ps\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"devbus,wr-low-ps\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"devbus,wr-high-ps\00", [46 x i8] zeroinitializer }, align 32
@get_timing_param_ps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 97, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%pOF has no '%s' property\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"get_timing_param_ps\00", [44 x i8] zeroinitializer }, align 32
@get_timing_param_ps._entry_ptr = internal global ptr @get_timing_param_ps._entry, section ".printk_index", align 4
@get_timing_param_ps.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: %u ps -> 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@devbus_armada_set_timing_params.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"devbus_armada_set_timing_params\00", [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"read parameters register 0x%p = 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@devbus_armada_set_timing_params.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.3, ptr @.str.34, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"write parameters register: 0x%p = 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@___asan_gen_.35 = private unnamed_addr constant [20 x i8] c"mvebu_devbus_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 331, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 334, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [22 x i8] c"mvebu_devbus_of_match\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 324, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 296, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 299, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 306, i32 37 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 115, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 117, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 132, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 136, i32 42 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 141, i32 42 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 146, i32 42 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 151, i32 42 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 156, i32 52 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 157, i32 43 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 162, i32 43 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 167, i32 36 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 170, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 177, i32 42 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 182, i32 42 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 187, i32 42 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 96, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 103, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 244, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private constant [33 x i8] c"../drivers/memory/mvebu-devbus.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 256, i32 2 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author190, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_file188, ptr @__UNIQUE_ID_license189, ptr @__initcall__kmod_mvebu_devbus__187_343_mvebu_devbus_init6, ptr @devbus_get_timing_params._entry, ptr @devbus_get_timing_params._entry.12, ptr @devbus_get_timing_params._entry.23, ptr @devbus_get_timing_params._entry_ptr, ptr @devbus_get_timing_params._entry_ptr.14, ptr @devbus_get_timing_params._entry_ptr.25, ptr @get_timing_param_ps._entry, ptr @get_timing_param_ps._entry_ptr, ptr @mvebu_devbus_driver, ptr @.str, ptr @mvebu_devbus_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_devbus_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_devbus_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devbus_get_timing_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devbus_get_timing_params._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devbus_get_timing_params._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_timing_param_ps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_devbus_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mvebu_devbus_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_devbus_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %r = alloca %struct.devbus_read_params, align 4
  %w = alloca %struct.devbus_write_params, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %r) #6
  %2 = getelementptr inbounds %struct.devbus_read_params, ptr %r, i32 0, i32 1
  %3 = getelementptr inbounds %struct.devbus_read_params, ptr %r, i32 0, i32 2
  %4 = getelementptr inbounds %struct.devbus_read_params, ptr %r, i32 0, i32 3
  %5 = getelementptr inbounds %struct.devbus_read_params, ptr %r, i32 0, i32 4
  %6 = call ptr @memset(ptr %r, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %w) #6
  %7 = getelementptr inbounds %struct.devbus_write_params, ptr %w, i32 0, i32 1
  %8 = getelementptr inbounds %struct.devbus_write_params, ptr %w, i32 0, i32 2
  %9 = getelementptr inbounds %struct.devbus_write_params, ptr %w, i32 0, i32 3
  %10 = call ptr @memset(ptr %w, i32 255, i32 16)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev1, ptr %call.i, align 4
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.devbus, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call13 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %cmp.i76 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %call.i77 = tail call i32 @clk_prepare(ptr noundef %call13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool.not.i = icmp eq i32 %call.i77, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end17.clk_prepare_enable.exit_crit_edge

if.end17.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end17
  %call1.i = tail call i32 @clk_enable(ptr noundef %call13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call13) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end17.clk_prepare_enable.exit_crit_edge
  %call19 = tail call i32 @clk_get_rate(ptr noundef %call13) #6
  %div = udiv i32 %call19, 1000
  %div20 = udiv i32 1000000000, %div
  %tick_ps = getelementptr inbounds %struct.devbus, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %tick_ps to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div20, ptr %tick_ps, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvebu_devbus_probe.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvebu_devbus_probe, %if.then25)) #6
          to label %do.end [label %if.then25], !srcloc !88

if.then25:                                        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %18 = ptrtoint ptr %tick_ps to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tick_ps, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvebu_devbus_probe.__UNIQUE_ID_ddebug186, ptr noundef %17, ptr noundef nonnull @.str.4, i32 noundef %19) #6
  br label %do.end

do.end:                                           ; preds = %if.then25, %clk_prepare_enable.exit
  %call.i78 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i78, null
  br i1 %tobool.i.not, label %if.then30, label %do.end.if.end38_crit_edge

do.end.if.end38_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then30:                                        ; preds = %do.end
  %call31 = call fastcc i32 @devbus_get_timing_params(ptr noundef nonnull %call.i, ptr noundef %1, ptr noundef nonnull %r, ptr noundef nonnull %w)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp slt i32 %call31, 0
  br i1 %cmp, label %if.then30.cleanup_crit_edge, label %if.end33

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.then30
  %call34 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 4
  %and.i = and i32 %21, 7
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %4, align 4
  %and1.i = shl i32 %23, 3
  %shl2.i = and i32 %and1.i, 120
  %or.i = or i32 %shl2.i, %and.i
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %5, align 4
  %and3.i = shl i32 %25, 7
  %shl4.i = and i32 %and3.i, 1920
  %or5.i = or i32 %or.i, %shl4.i
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %9, align 4
  %and6.i = shl i32 %27, 11
  %shl7.i = and i32 %and6.i, 14336
  %or8.i = or i32 %or5.i, %shl7.i
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %8, align 4
  %and9.i = shl i32 %29, 14
  %shl10.i = and i32 %and9.i, 114688
  %or11.i = or i32 %or8.i, %shl10.i
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %7, align 4
  %and12.i = shl i32 %31, 17
  %shl13.i = and i32 %and12.i, 917504
  %or14.i = or i32 %or11.i, %shl13.i
  %32 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %r, align 4
  %shl15.i = shl i32 %33, 20
  %or16.i = or i32 %or14.i, %shl15.i
  %and18.i = shl i32 %21, 19
  %34 = and i32 %and18.i, 4194304
  %and21.i = shl i32 %23, 19
  %35 = and i32 %and21.i, 8388608
  %and26.i = shl i32 %25, 20
  %36 = and i32 %and26.i, 16777216
  %and31.i = shl i32 %27, 22
  %37 = and i32 %and31.i, 33554432
  %and36.i = shl i32 %29, 23
  %38 = and i32 %and36.i, 67108864
  %and41.i = shl i32 %31, 24
  %39 = and i32 %and41.i, 134217728
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %2, align 4
  %shl45.i = shl i32 %41, 28
  %or19.i = or i32 %35, %34
  %or24.i = or i32 %or19.i, %36
  %or29.i = or i32 %or24.i, %37
  %or34.i = or i32 %or29.i, %38
  %or39.i = or i32 %or34.i, %39
  %or44.i = or i32 %or39.i, %shl45.i
  %or46.i = or i32 %or16.i, %or44.i
  %or47.i = or i32 %or46.i, -2147483648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  call void @arm_heavy_mb() #6
  %42 = call i32 @llvm.bswap.i32(i32 %or47.i) #6
  %43 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #6, !srcloc !90
  br label %if.end38

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @devbus_armada_set_timing_params(ptr noundef nonnull %call.i, ptr noundef nonnull %r, ptr noundef nonnull %w)
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then36, %do.end.if.end38_crit_edge
  %call39 = call i32 @of_platform_populate(ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef %dev1) #6
  %45 = call i32 @llvm.smin.i32(i32 %call39, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then30.cleanup_crit_edge, %if.then15, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then8 ], [ %14, %if.then15 ], [ -12, %entry.cleanup_crit_edge ], [ %call31, %if.then30.cleanup_crit_edge ], [ %45, %if.end38 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %w) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %r) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @devbus_get_timing_params(ptr noundef readonly %devbus, ptr noundef %node, ptr noundef %r, ptr noundef %w) unnamed_addr #2 align 64 {
entry:
  %time_ps.i202 = alloca i32, align 4
  %time_ps.i191 = alloca i32, align 4
  %time_ps.i180 = alloca i32, align 4
  %time_ps.i168 = alloca i32, align 4
  %time_ps.i157 = alloca i32, align 4
  %time_ps.i146 = alloca i32, align 4
  %time_ps.i135 = alloca i32, align 4
  %time_ps.i124 = alloca i32, align 4
  %time_ps.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.7, ptr noundef %r, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %devbus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devbus, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef %node) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end12 [
    i32 8, label %if.end.if.end16_crit_edge
    i32 16, label %if.then7
  ]

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %devbus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %devbus, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.13, i32 noundef %3) #9
  br label %cleanup

if.end16:                                         ; preds = %if.then7, %if.end.if.end16_crit_edge
  %storemerge = phi i32 [ 1, %if.then7 ], [ 0, %if.end.if.end16_crit_edge ]
  %7 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge, ptr %r, align 4
  %badr_skew = getelementptr inbounds %struct.devbus_read_params, ptr %r, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %time_ps.i) #6
  %8 = ptrtoint ptr %time_ps.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %time_ps.i, align 4, !annotation !91
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.15, ptr noundef nonnull %time_ps.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %get_timing_param_ps.exit.thread, label %if.end.i

get_timing_param_ps.exit.thread:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %devbus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %devbus, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.29, ptr noundef %node, ptr noundef nonnull @.str.15) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time_ps.i) #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end16
  %11 = ptrtoint ptr %time_ps.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %time_ps.i, align 4
  %tick_ps.i = getelementptr inbounds %struct.devbus, ptr %devbus, i32 0, i32 2
  %13 = ptrtoint ptr %tick_ps.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tick_ps.i, align 4
  %add.i = add i32 %12, -1
  %sub.i = add i32 %add.i, %14
  %div.i = udiv i32 %sub.i, %14
  %15 = ptrtoint ptr %badr_skew to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div.i, ptr %badr_skew, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_timing_param_ps.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@devbus_get_timing_params, %if.then6.i)) #6
          to label %if.end20 [label %if.then6.i], !srcloc !88

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %devbus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %devbus, align 4
  %18 = ptrtoint ptr %time_ps.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %time_ps.i, align 4
  %20 = ptrtoint ptr %badr_skew to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %badr_skew, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_timing_param_ps.__UNIQUE_ID_ddebug183, ptr noundef %17, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.15, i32 noundef %19, i32 noundef %21) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then6.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time_ps.i) #6
  %turn_off = getelementptr inbounds %struct.devbus_read_params, ptr %r, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %time_ps.i124) #6
  %22 = ptrtoint ptr %time_ps.i124 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %time_ps.i124, align 4, !annotation !91
  %call.i.i.i125 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.16, ptr noundef nonnull %time_ps.i124, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i125)
  %cmp.i126 = icmp slt i32 %call.i.i.i125, 0
  br i1 %cmp.i126, label %get_timing_param_ps.exit134.thread, label %if.end.i132

get_timing_param_ps.exit134.thread:               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %devbus to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %devbus, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.29, ptr noundef %node, ptr noundef nonnull @.str.16) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time_ps.i124) #6
  br label %cleanup

if.end.i132:                                      ; preds = %if.end20
  %25 = ptrtoint ptr %time_ps.i124 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %time_ps.i124, align 4
  %tick_ps.i128 = getelementptr inbounds %struct.devbus, ptr %devbus, i32 0, i32 2
  %27 = ptrtoint ptr %tick_ps.i128 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tick_ps.i128, align 4
  %add.i129 = add i32 %26, -1
  %sub.i130 = add i32 %add.i129, %28
  %div.i131 = udiv i32 %sub.i130, %28
  %29 = ptrtoint ptr %turn_off to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div.i131, ptr %turn_off, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_timing_param_ps.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@devbus_get_timing_params, %if.then6.i133)) #6
          to label %if.end24 [label %if.then6.i133], !srcloc !88

if.then6.i133:                                    ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %devbus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %devbus, align 4
  %32 = ptrtoint ptr %time_ps.i124 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %time_ps.i124, align 4
  %34 = ptrtoint ptr %turn_off to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %turn_off, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_timing_param_ps.__UNIQUE_ID_ddebug183, ptr noundef %31, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.16, i32 noundef %33, i32 noundef %35) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then6.i133, %if.end.i132
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time_ps.i124) #6
  %acc_first = getelementptr inbounds %struct.devbus_read_params, ptr %r, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %time_ps.i135) #6
  %36 = ptrtoint ptr %time_ps.i135 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %time_ps.i135, align 4, !annotation !91
  %call.i.i.i136 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.17, ptr noundef nonnull %time_ps.i135, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i136)
  %cmp.i137 = icmp slt i32 %call.i.i.i136, 0
  br i1 %cmp.i137, label %get_timing_param_ps.exit145.thread, label %if.end.i143

get_timing_param_ps.exit145.thread:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %devbus to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %devbus, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.29, ptr noundef %node, ptr noundef nonnull @.str.17) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time_ps.i135) #6
  br label %cleanup

if.end.i143:                                      ; preds = %if.end24
  %39 = ptrtoint ptr %time_ps.i135 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %time_ps.i135, align 4
  %tick_ps.i139 = getelementptr inbounds %struct.devbus, ptr %devbus, i32 0, i32 2
  %41 = ptrtoint ptr %tick_ps.i139 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tick_ps.i139, align 4
  %add.i140 = add i32 %40, -1
  %sub.i141 = add i32 %add.i140, %42
  %div.i142 = udiv i32 %sub.i141, %42
  %43 = ptrtoint ptr %acc_first to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %div.i142, ptr %acc_first, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_timing_param_ps.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@devbus_get_timing_params, %if.then6.i144)) #6
          to label %if.end28 [label %if.then6.i144], !srcloc !88

if.then6.i144:                                    ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %devbus to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %devbus, align 4
  %46 = ptrtoint ptr %time_ps.i135 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %time_ps.i135, align 4
  %48 = ptrtoint ptr %acc_first to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %acc_first, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_timing_param_ps.__UNIQUE_ID_ddebug183, ptr noundef %45, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.17, i32 noundef %47, i32 noundef %49) #6
  br label %if.end28

if.end28:                                         ; preds = %if.then6.i144, %if.end.i143
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time_ps.i135) #6
  %acc_next = getelementptr inbounds %struct.devbus_read_params, ptr %r, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %time_ps.i146) #6
  %50 = ptrtoint ptr %time_ps.i146 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %time_ps.i146, align 4, !annotation !91
  %call.i.i.i147 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.18, ptr noundef nonnull %time_ps.i146, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i147)
  %cmp.i148 = icmp slt i32 %call.i.i.i147, 0
  br i1 %cmp.i148, label %get_timing_param_ps.exit156.thread, label %if.end.i154

get_timing_param_ps.exit156.thread:               ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %devbus to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %devbus, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.29, ptr noundef %node, ptr noundef nonnull @.str.18) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time_ps.i146) #6
  br label %cleanup

if.end.i154:                                      ; preds = %if.end28
  %53 = ptrtoint ptr %time_ps.i146 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %time_ps.i146, align 4
  %tick_ps.i150 = getelementptr inbounds %struct.devbus, ptr %devbus, i32 0, i32 2
  %55 = ptrtoint ptr %tick_ps.i150 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tick_ps.i150, align 4
  %add.i151 = add i32 %54, -1
  %sub.i152 = add i32 %add.i151, %56
  %div.i153 = udiv i32 %sub.i152, %56
  %57 = ptrtoint ptr %acc_next to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %div.i153, ptr %acc_next, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_timing_param_ps.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@devbus_get_timing_params, %if.then6.i155)) #6
          to label %if.end32 [label %if.then6.i155], !srcloc !88

if.then6.i155:                                    ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %devbus to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %devbus, align 4
  %60 = ptrtoint ptr %time_ps.i146 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %time_ps.i146, align 4
  %62 = ptrtoint ptr %acc_next to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %acc_next, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_timing_param_ps.__UNIQUE_ID_ddebug183, ptr noundef %59, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.18, i32 noundef %61, i32 noundef %63) #6
  br label %if.end32

if.end32:                                         ; preds = %if.then6.i155, %if.end.i154
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time_ps.i146) #6
  %64 = ptrtoint ptr %devbus to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %devbus, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %65, i32 0, i32 27
  %66 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %of_node, align 8
  %call34 = call i32 @of_device_is_compatible(ptr noundef %67, ptr noundef nonnull @.str.19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool.not = icmp eq i32 %call34, 0
  br i1 %tobool.not, label %if.end32.if.end52_crit_edge, label %if.then35

if.end32.if.end52_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then35:                                        ; preds = %if.end32
  %rd_setup = getelementptr inbounds %struct.devbus_read_params, ptr %r, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %time_ps.i157) #6
  %68 = ptrtoint ptr %time_ps.i157 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %time_ps.i157, align 4, !annotation !91
  %call.i.i.i158 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.20, ptr noundef nonnull %time_ps.i157, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i158)
  %cmp.i159 = icmp slt i32 %call.i.i.i158, 0
  br i1 %cmp.i159, label %get_timing_param_ps.exit167.thread, label %if.end.i165

get_timing_param_ps.exit167.thread:               ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %devbus to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %devbus, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.29, ptr noundef %node, ptr noundef nonnull @.str.20) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time_ps.i157) #6
  br label %cleanup

if.end.i165:                                      ; preds = %if.then35
  %71 = ptrtoint ptr %time_ps.i157 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %time_ps.i157, align 4
  %tick_ps.i161 = getelementptr inbounds %struct.devbus, ptr %devbus, i32 0, i32 2
  %73 = ptrtoint ptr %tick_ps.i161 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tick_ps.i161, align 4
  %add.i162 = add i32 %72, -1
  %sub.i163 = add i32 %add.i162, %74
  %div.i164 = udiv i32 %sub.i163, %74
  %75 = ptrtoint ptr %rd_setup to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %div.i164, ptr %rd_setup, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_timing_param_ps.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@devbus_get_timing_params, %if.then6.i166)) #6
          to label %if.end39 [label %if.then6.i166], !srcloc !88

if.then6.i166:                                    ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %devbus to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %devbus, align 4
  %78 = ptrtoint ptr %time_ps.i157 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %time_ps.i157, align 4
  %80 = ptrtoint ptr %rd_setup to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rd_setup, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_timing_param_ps.__UNIQUE_ID_ddebug183, ptr noundef %77, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.20, i32 noundef %79, i32 noundef %81) #6
  br label %if.end39

if.end39:                                         ; preds = %if.then6.i166, %if.end.i165
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time_ps.i157) #6
  %rd_hold = getelementptr inbounds %struct.devbus_read_params, ptr %r, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %time_ps.i168) #6
  %82 = ptrtoint ptr %time_ps.i168 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %time_ps.i168, align 4, !annotation !91
  %call.i.i.i169 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.21, ptr noundef nonnull %time_ps.i168, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i169)
  %cmp.i170 = icmp slt i32 %call.i.i.i169, 0
  br i1 %cmp.i170, label %get_timing_param_ps.exit178.thread, label %if.end.i176

get_timing_param_ps.exit178.thread:               ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %devbus to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %devbus, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.29, ptr noundef %node, ptr noundef nonnull @.str.21) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time_ps.i168) #6
  br label %cleanup

if.end.i176:                                      ; preds = %if.end39
  %85 = ptrtoint ptr %time_ps.i168 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %time_ps.i168, align 4
  %tick_ps.i172 = getelementptr inbounds %struct.devbus, ptr %devbus, i32 0, i32 2
  %87 = ptrtoint ptr %tick_ps.i172 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tick_ps.i172, align 4
  %add.i173 = add i32 %86, -1
  %sub.i174 = add i32 %add.i173, %88
  %div.i175 = udiv i32 %sub.i174, %88
  %89 = ptrtoint ptr %rd_hold to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %div.i175, ptr %rd_hold, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_timing_param_ps.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@devbus_get_timing_params, %if.then6.i177)) #6
          to label %if.end43 [label %if.then6.i177], !srcloc !88

if.then6.i177:                                    ; preds = %if.end.i176
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %devbus to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %devbus, align 4
  %92 = ptrtoint ptr %time_ps.i168 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %time_ps.i168, align 4
  %94 = ptrtoint ptr %rd_hold to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rd_hold, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_timing_param_ps.__UNIQUE_ID_ddebug183, ptr noundef %91, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.21, i32 noundef %93, i32 noundef %95) #6
  br label %if.end43

if.end43:                                         ; preds = %if.then6.i177, %if.end.i176
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time_ps.i168) #6
  %call.i.i179 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.22, ptr noundef %w, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i179)
  %cmp45 = icmp slt i32 %call.i.i179, 0
  br i1 %cmp45, label %do.end49, label %if.end43.if.end52_crit_edge

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %devbus to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %devbus, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.24, ptr noundef %node) #9
  br label %cleanup

if.end52:                                         ; preds = %if.end43.if.end52_crit_edge, %if.end32.if.end52_crit_edge
  %ale_wr = getelementptr inbounds %struct.devbus_write_params, ptr %w, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %time_ps.i180) #6
  %98 = ptrtoint ptr %time_ps.i180 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -1, ptr %time_ps.i180, align 4, !annotation !91
  %call.i.i.i181 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.26, ptr noundef nonnull %time_ps.i180, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i181)
  %cmp.i182 = icmp slt i32 %call.i.i.i181, 0
  br i1 %cmp.i182, label %get_timing_param_ps.exit190.thread, label %if.end.i188

get_timing_param_ps.exit190.thread:               ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %99 = ptrtoint ptr %devbus to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %devbus, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.29, ptr noundef %node, ptr noundef nonnull @.str.26) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time_ps.i180) #6
  br label %cleanup

if.end.i188:                                      ; preds = %if.end52
  %101 = ptrtoint ptr %time_ps.i180 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %time_ps.i180, align 4
  %tick_ps.i184 = getelementptr inbounds %struct.devbus, ptr %devbus, i32 0, i32 2
  %103 = ptrtoint ptr %tick_ps.i184 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tick_ps.i184, align 4
  %add.i185 = add i32 %102, -1
  %sub.i186 = add i32 %add.i185, %104
  %div.i187 = udiv i32 %sub.i186, %104
  %105 = ptrtoint ptr %ale_wr to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %div.i187, ptr %ale_wr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_timing_param_ps.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@devbus_get_timing_params, %if.then6.i189)) #6
          to label %if.end56 [label %if.then6.i189], !srcloc !88

if.then6.i189:                                    ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #8
  %106 = ptrtoint ptr %devbus to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %devbus, align 4
  %108 = ptrtoint ptr %time_ps.i180 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %time_ps.i180, align 4
  %110 = ptrtoint ptr %ale_wr to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ale_wr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_timing_param_ps.__UNIQUE_ID_ddebug183, ptr noundef %107, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.26, i32 noundef %109, i32 noundef %111) #6
  br label %if.end56

if.end56:                                         ; preds = %if.then6.i189, %if.end.i188
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time_ps.i180) #6
  %wr_low = getelementptr inbounds %struct.devbus_write_params, ptr %w, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %time_ps.i191) #6
  %112 = ptrtoint ptr %time_ps.i191 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -1, ptr %time_ps.i191, align 4, !annotation !91
  %call.i.i.i192 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.27, ptr noundef nonnull %time_ps.i191, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i192)
  %cmp.i193 = icmp slt i32 %call.i.i.i192, 0
  br i1 %cmp.i193, label %get_timing_param_ps.exit201.thread, label %if.end.i199

get_timing_param_ps.exit201.thread:               ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %113 = ptrtoint ptr %devbus to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %devbus, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.29, ptr noundef %node, ptr noundef nonnull @.str.27) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time_ps.i191) #6
  br label %cleanup

if.end.i199:                                      ; preds = %if.end56
  %115 = ptrtoint ptr %time_ps.i191 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %time_ps.i191, align 4
  %tick_ps.i195 = getelementptr inbounds %struct.devbus, ptr %devbus, i32 0, i32 2
  %117 = ptrtoint ptr %tick_ps.i195 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %tick_ps.i195, align 4
  %add.i196 = add i32 %116, -1
  %sub.i197 = add i32 %add.i196, %118
  %div.i198 = udiv i32 %sub.i197, %118
  %119 = ptrtoint ptr %wr_low to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %div.i198, ptr %wr_low, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_timing_param_ps.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@devbus_get_timing_params, %if.then6.i200)) #6
          to label %if.end60 [label %if.then6.i200], !srcloc !88

if.then6.i200:                                    ; preds = %if.end.i199
  call void @__sanitizer_cov_trace_pc() #8
  %120 = ptrtoint ptr %devbus to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %devbus, align 4
  %122 = ptrtoint ptr %time_ps.i191 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %time_ps.i191, align 4
  %124 = ptrtoint ptr %wr_low to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %wr_low, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_timing_param_ps.__UNIQUE_ID_ddebug183, ptr noundef %121, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.27, i32 noundef %123, i32 noundef %125) #6
  br label %if.end60

if.end60:                                         ; preds = %if.then6.i200, %if.end.i199
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time_ps.i191) #6
  %wr_high = getelementptr inbounds %struct.devbus_write_params, ptr %w, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %time_ps.i202) #6
  %126 = ptrtoint ptr %time_ps.i202 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 -1, ptr %time_ps.i202, align 4, !annotation !91
  %call.i.i.i203 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.28, ptr noundef nonnull %time_ps.i202, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i203)
  %cmp.i204 = icmp slt i32 %call.i.i.i203, 0
  br i1 %cmp.i204, label %do.end.i205, label %if.end.i210

do.end.i205:                                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %127 = ptrtoint ptr %devbus to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %devbus, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.29, ptr noundef %node, ptr noundef nonnull @.str.28) #9
  br label %get_timing_param_ps.exit212

if.end.i210:                                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %129 = ptrtoint ptr %time_ps.i202 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %time_ps.i202, align 4
  %tick_ps.i206 = getelementptr inbounds %struct.devbus, ptr %devbus, i32 0, i32 2
  %131 = ptrtoint ptr %tick_ps.i206 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %tick_ps.i206, align 4
  %add.i207 = add i32 %130, -1
  %sub.i208 = add i32 %add.i207, %132
  %div.i209 = udiv i32 %sub.i208, %132
  %133 = ptrtoint ptr %wr_high to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %div.i209, ptr %wr_high, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_timing_param_ps.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@devbus_get_timing_params, %if.then6.i211)) #6
          to label %get_timing_param_ps.exit212 [label %if.then6.i211], !srcloc !88

if.then6.i211:                                    ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #8
  %134 = ptrtoint ptr %devbus to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %devbus, align 4
  %136 = ptrtoint ptr %time_ps.i202 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %time_ps.i202, align 4
  %138 = ptrtoint ptr %wr_high to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %wr_high, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_timing_param_ps.__UNIQUE_ID_ddebug183, ptr noundef %135, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.28, i32 noundef %137, i32 noundef %139) #6
  br label %get_timing_param_ps.exit212

get_timing_param_ps.exit212:                      ; preds = %if.then6.i211, %if.end.i210, %do.end.i205
  %140 = call i32 @llvm.smin.i32(i32 %call.i.i.i203, i32 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time_ps.i202) #6
  br label %cleanup

cleanup:                                          ; preds = %get_timing_param_ps.exit212, %get_timing_param_ps.exit201.thread, %get_timing_param_ps.exit190.thread, %do.end49, %get_timing_param_ps.exit178.thread, %get_timing_param_ps.exit167.thread, %get_timing_param_ps.exit156.thread, %get_timing_param_ps.exit145.thread, %get_timing_param_ps.exit134.thread, %get_timing_param_ps.exit.thread, %do.end12, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %call.i.i179, %do.end49 ], [ -22, %do.end12 ], [ %140, %get_timing_param_ps.exit212 ], [ %call.i.i.i, %get_timing_param_ps.exit.thread ], [ %call.i.i.i125, %get_timing_param_ps.exit134.thread ], [ %call.i.i.i136, %get_timing_param_ps.exit145.thread ], [ %call.i.i.i147, %get_timing_param_ps.exit156.thread ], [ %call.i.i.i158, %get_timing_param_ps.exit167.thread ], [ %call.i.i.i169, %get_timing_param_ps.exit178.thread ], [ %call.i.i.i181, %get_timing_param_ps.exit190.thread ], [ %call.i.i.i192, %get_timing_param_ps.exit201.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @devbus_armada_set_timing_params(ptr nocapture noundef readonly %devbus, ptr nocapture noundef readonly %r, ptr nocapture noundef readonly %w) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %r, align 4
  %shl = shl i32 %1, 30
  %badr_skew = getelementptr inbounds %struct.devbus_read_params, ptr %r, i32 0, i32 1
  %2 = ptrtoint ptr %badr_skew to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %badr_skew, align 4
  %shl1 = shl i32 %3, 28
  %or = or i32 %shl1, %shl
  %rd_hold = getelementptr inbounds %struct.devbus_read_params, ptr %r, i32 0, i32 6
  %4 = ptrtoint ptr %rd_hold to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rd_hold, align 4
  %shl2 = shl i32 %5, 23
  %or3 = or i32 %or, %shl2
  %acc_next = getelementptr inbounds %struct.devbus_read_params, ptr %r, i32 0, i32 4
  %6 = ptrtoint ptr %acc_next to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %acc_next, align 4
  %shl4 = shl i32 %7, 17
  %or5 = or i32 %or3, %shl4
  %rd_setup = getelementptr inbounds %struct.devbus_read_params, ptr %r, i32 0, i32 5
  %8 = ptrtoint ptr %rd_setup to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rd_setup, align 4
  %shl6 = shl i32 %9, 12
  %or7 = or i32 %or5, %shl6
  %acc_first = getelementptr inbounds %struct.devbus_read_params, ptr %r, i32 0, i32 3
  %10 = ptrtoint ptr %acc_first to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %acc_first, align 4
  %shl8 = shl i32 %11, 6
  %or9 = or i32 %or7, %shl8
  %turn_off = getelementptr inbounds %struct.devbus_read_params, ptr %r, i32 0, i32 2
  %12 = ptrtoint ptr %turn_off to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %turn_off, align 4
  %or10 = or i32 %or9, %13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @devbus_armada_set_timing_params.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@devbus_armada_set_timing_params, %if.then)) #6
          to label %do.body13 [label %if.then], !srcloc !88

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %devbus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %devbus, align 4
  %base = getelementptr inbounds %struct.devbus, ptr %devbus, i32 0, i32 1
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @devbus_armada_set_timing_params.__UNIQUE_ID_ddebug184, ptr noundef %15, ptr noundef nonnull @.str.33, ptr noundef %17, i32 noundef %or10) #6
  br label %do.body13

do.body13:                                        ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %or10)
  %base16 = getelementptr inbounds %struct.devbus, ptr %devbus, i32 0, i32 1
  %19 = ptrtoint ptr %base16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #6, !srcloc !90
  %21 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %w, align 4
  %shl18 = shl i32 %22, 24
  %wr_low = getelementptr inbounds %struct.devbus_write_params, ptr %w, i32 0, i32 2
  %23 = ptrtoint ptr %wr_low to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wr_low, align 4
  %shl19 = shl i32 %24, 8
  %or20 = or i32 %shl19, %shl18
  %wr_high = getelementptr inbounds %struct.devbus_write_params, ptr %w, i32 0, i32 1
  %25 = ptrtoint ptr %wr_high to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wr_high, align 4
  %shl21 = shl i32 %26, 16
  %or22 = or i32 %or20, %shl21
  %ale_wr = getelementptr inbounds %struct.devbus_write_params, ptr %w, i32 0, i32 3
  %27 = ptrtoint ptr %ale_wr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ale_wr, align 4
  %or23 = or i32 %or22, %28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @devbus_armada_set_timing_params.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@devbus_armada_set_timing_params, %if.then36)) #6
          to label %do.body43 [label %if.then36], !srcloc !88

if.then36:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %devbus to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %devbus, align 4
  %31 = ptrtoint ptr %base16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base16, align 4
  %add.ptr39 = getelementptr i8, ptr %32, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @devbus_armada_set_timing_params.__UNIQUE_ID_ddebug185, ptr noundef %30, ptr noundef nonnull @.str.34, ptr noundef %add.ptr39, i32 noundef %or23) #6
  br label %do.body43

do.body43:                                        ; preds = %if.then36, %do.body13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %33 = tail call i32 @llvm.bswap.i32(i32 %or23)
  %34 = ptrtoint ptr %base16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base16, align 4
  %add.ptr47 = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %33) #6, !srcloc !90
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !16, !17, !18, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !58, !60, !62, !64, !65, !66, !67, !69, !70, !72, !73, !74, !76, !77}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__initcall__kmod_mvebu_devbus__187_343_mvebu_devbus_init6, !1, !"__initcall__kmod_mvebu_devbus__187_343_mvebu_devbus_init6", i1 false, i1 false}
!1 = !{!"../drivers/memory/mvebu-devbus.c", i32 343, i32 1}
!2 = !{ptr @__UNIQUE_ID_file188, !3, !"__UNIQUE_ID_file188", i1 false, i1 false}
!3 = !{!"../drivers/memory/mvebu-devbus.c", i32 345, i32 1}
!4 = !{ptr @__UNIQUE_ID_license189, !3, !"__UNIQUE_ID_license189", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author190, !6, !"__UNIQUE_ID_author190", i1 false, i1 false}
!6 = !{!"../drivers/memory/mvebu-devbus.c", i32 346, i32 1}
!7 = !{ptr @__UNIQUE_ID_description191, !8, !"__UNIQUE_ID_description191", i1 false, i1 false}
!8 = !{!"../drivers/memory/mvebu-devbus.c", i32 347, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/memory/mvebu-devbus.c", i32 334, i32 11}
!11 = !{ptr @mvebu_devbus_driver, !12, !"mvebu_devbus_driver", i1 false, i1 false}
!12 = !{!"../drivers/memory/mvebu-devbus.c", i32 331, i32 31}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/memory/mvebu-devbus.c", i32 296, i32 2}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mvebu_devbus_probe.__UNIQUE_ID_ddebug186, !14, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/memory/mvebu-devbus.c", i32 299, i32 35}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/memory/mvebu-devbus.c", i32 306, i32 37}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/memory/mvebu-devbus.c", i32 115, i32 35}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/memory/mvebu-devbus.c", i32 117, i32 3}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @devbus_get_timing_params._entry, !26, !"_entry", i1 false, i1 false}
!31 = !{ptr @devbus_get_timing_params._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/memory/mvebu-devbus.c", i32 132, i32 3}
!34 = !{ptr @devbus_get_timing_params._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @devbus_get_timing_params._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/memory/mvebu-devbus.c", i32 136, i32 42}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/memory/mvebu-devbus.c", i32 141, i32 42}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/memory/mvebu-devbus.c", i32 146, i32 42}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/memory/mvebu-devbus.c", i32 151, i32 42}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/memory/mvebu-devbus.c", i32 156, i32 52}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/memory/mvebu-devbus.c", i32 157, i32 43}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/memory/mvebu-devbus.c", i32 162, i32 43}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/memory/mvebu-devbus.c", i32 167, i32 36}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/memory/mvebu-devbus.c", i32 170, i32 4}
!54 = !{ptr @devbus_get_timing_params._entry.23, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @devbus_get_timing_params._entry_ptr.25, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/memory/mvebu-devbus.c", i32 177, i32 42}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/memory/mvebu-devbus.c", i32 182, i32 42}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/memory/mvebu-devbus.c", i32 187, i32 42}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/memory/mvebu-devbus.c", i32 96, i32 3}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @get_timing_param_ps._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @get_timing_param_ps._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/memory/mvebu-devbus.c", i32 103, i32 2}
!69 = !{ptr @get_timing_param_ps.__UNIQUE_ID_ddebug183, !68, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/memory/mvebu-devbus.c", i32 244, i32 2}
!72 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @devbus_armada_set_timing_params.__UNIQUE_ID_ddebug184, !71, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/memory/mvebu-devbus.c", i32 256, i32 2}
!76 = !{ptr @devbus_armada_set_timing_params.__UNIQUE_ID_ddebug185, !75, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!77 = !{ptr @mvebu_devbus_of_match, !78, !"mvebu_devbus_of_match", i1 false, i1 false}
!78 = !{!"../drivers/memory/mvebu-devbus.c", i32 324, i32 34}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{i64 2148699071, i64 2148699076, i64 2148699089, i64 2148699133, i64 2148699167, i64 2148699188}
!89 = !{i64 2152945046}
!90 = !{i64 4940444}
!91 = !{!"auto-init"}
!92 = !{i64 2152948055}
!93 = !{i64 2152951083}
