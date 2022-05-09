; ModuleID = '/llk/IR_all_yes/sound/soc/stm/stm32_sai.c_pt.bc'
source_filename = "../sound/soc/stm/stm32_sai.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.stm32_sai_conf = type { i32, i32, i8 }
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
%struct.stm32_sai_data = type { ptr, ptr, ptr, ptr, ptr, %struct.stm32_sai_conf, i32, ptr, i32 }

@__initcall__kmod_snd_soc_stm32_sai__282_289_stm32_sai_driver_init6 = internal global ptr @stm32_sai_driver_init, section ".initcall6.init", align 4
@stm32_sai_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_sai_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_sai_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_sai_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_sai_driver_exit = internal global ptr @stm32_sai_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description283 = internal constant [54 x i8] c"snd_soc_stm32_sai.description=STM32 Soc SAI Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_author284 = internal constant [64 x i8] c"snd_soc_stm32_sai.author=Olivier Moysan <olivier.moysan@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias285 = internal constant [46 x i8] c"snd_soc_stm32_sai.alias=platform:st,stm32-sai\00", section ".modinfo", align 1
@__UNIQUE_ID_file286 = internal constant [55 x i8] c"snd_soc_stm32_sai.file=sound/soc/stm/snd-soc-stm32-sai\00", section ".modinfo", align 1
@__UNIQUE_ID_license287 = internal constant [33 x i8] c"snd_soc_stm32_sai.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"st,stm32-sai\00", [19 x i8] zeroinitializer }, align 32
@stm32_sai_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f4-sai\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32_sai_conf_f4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32h7-sai\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32_sai_conf_h7 }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@stm32_sai_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_sai_suspend, ptr @stm32_sai_resume, ptr @stm32_sai_suspend, ptr @stm32_sai_resume, ptr @stm32_sai_suspend, ptr @stm32_sai_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"missing bus clock pclk\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"x8k\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"missing x8k parent clock\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"x11k\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"missing x11k parent clock\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Reset controller error\0A\00", [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@stm32_sai_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 209, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stm32_sai_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/stm/stm32_sai.c\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_sai_probe._entry_ptr = internal global ptr @stm32_sai_probe._entry, section ".printk_index", align 4
@stm32_sai_probe.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.9, ptr @.str.10, ptr @.str.14, i8 0, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_soc_stm32_sai\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SAI version: %lu.%lu registered\0A\00", [63 x i8] zeroinitializer }, align 32
@stm32_sai_set_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.10, i32 124, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Device not found for node %pOFn\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stm32_sai_set_sync\00", [45 x i8] zeroinitializer }, align 32
@stm32_sai_set_sync._entry_ptr = internal global ptr @stm32_sai_set_sync._entry, section ".printk_index", align 4
@stm32_sai_set_sync._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.10, i32 132, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SAI sync provider data not found\0A\00", [62 x i8] zeroinitializer }, align 32
@stm32_sai_set_sync._entry_ptr.19 = internal global ptr @stm32_sai_set_sync._entry.17, section ".printk_index", align 4
@stm32_sai_pclk_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.20, ptr @.str.10, i32 61, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32_sai_pclk_enable\00", [42 x i8] zeroinitializer }, align 32
@stm32_sai_pclk_enable._entry_ptr = internal global ptr @stm32_sai_pclk_enable._entry, section ".printk_index", align 4
@stm32_sai_sync_conf_provider.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.21, ptr @.str.10, ptr @.str.22, i8 0, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"stm32_sai_sync_conf_provider\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Set %pOFn%s as synchro provider\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@stm32_sai_sync_conf_provider._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.21, ptr @.str.10, i32 102, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%pOFn%s already set as sync provider\0A\00", [58 x i8] zeroinitializer }, align 32
@stm32_sai_sync_conf_provider._entry_ptr = internal global ptr @stm32_sai_sync_conf_provider._entry, section ".printk_index", align 4
@stm32_sai_conf_f4 = internal constant { %struct.stm32_sai_conf, [20 x i8] } { %struct.stm32_sai_conf { i32 16, i32 8, i8 0 }, [20 x i8] zeroinitializer }, align 32
@stm32_sai_conf_h7 = internal constant { %struct.stm32_sai_conf, [20 x i8] } { %struct.stm32_sai_conf { i32 0, i32 8, i8 1 }, [20 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"stm32_sai_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 280, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 282, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"stm32_sai_ids\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 39, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"stm32_sai_pm_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 274, i32 32 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 175, i32 40 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 178, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 181, i32 42 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 184, i32 10 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 186, i32 43 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 189, i32 10 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 200, i32 10 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 209, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 224, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 123, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 131, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 61, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 94, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 100, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [18 x i8] c"stm32_sai_conf_f4\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 22, i32 36 }
@___asan_gen_.125 = private unnamed_addr constant [18 x i8] c"stm32_sai_conf_h7\00", align 1
@___asan_gen_.126 = private constant [29 x i8] c"../sound/soc/stm/stm32_sai.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 33, i32 36 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_alias285, ptr @__UNIQUE_ID_author284, ptr @__UNIQUE_ID_description283, ptr @__UNIQUE_ID_file286, ptr @__UNIQUE_ID_license287, ptr @__exitcall_stm32_sai_driver_exit, ptr @__initcall__kmod_snd_soc_stm32_sai__282_289_stm32_sai_driver_init6, ptr @stm32_sai_driver_exit, ptr @stm32_sai_pclk_enable._entry, ptr @stm32_sai_pclk_enable._entry_ptr, ptr @stm32_sai_probe._entry, ptr @stm32_sai_probe._entry_ptr, ptr @stm32_sai_set_sync._entry, ptr @stm32_sai_set_sync._entry.17, ptr @stm32_sai_set_sync._entry_ptr, ptr @stm32_sai_set_sync._entry_ptr.19, ptr @stm32_sai_sync_conf_provider._entry, ptr @stm32_sai_sync_conf_provider._entry_ptr, ptr @stm32_sai_driver, ptr @.str, ptr @stm32_sai_ids, ptr @stm32_sai_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @stm32_sai_conf_f4, ptr @stm32_sai_conf_h7], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_set_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_set_sync._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_pclk_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_sync_conf_provider._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_conf_f4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_conf_h7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_sai_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_sai_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_sai_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_sai_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_sai_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.stm32_sai_data, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = tail call ptr @of_match_device(ptr noundef nonnull @stm32_sai_ids, ptr noundef %dev) #6
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.then11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %if.end7
  %conf = getelementptr inbounds %struct.stm32_sai_data, ptr %call.i, i32 0, i32 5
  %data = getelementptr inbounds %struct.of_device_id, ptr %call9, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = call ptr @memcpy(ptr %conf, ptr %3, i32 12)
  %5 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %conf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp = icmp eq i32 %6, 16
  br i1 %cmp, label %if.then11.if.end25_crit_edge, label %if.then14

if.then11.if.end25_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then14:                                        ; preds = %if.then11
  %call16 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  %pclk = getelementptr inbounds %struct.stm32_sai_data, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call16, ptr %pclk, align 4
  %cmp.i253 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i253, label %if.then19, label %if.then14.if.end25_crit_edge

if.then14.if.end25_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then19:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call16 to i32
  %call23 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %8, ptr noundef nonnull @.str.2) #6
  br label %cleanup

if.end25:                                         ; preds = %if.then14.if.end25_crit_edge, %if.then11.if.end25_crit_edge
  %call27 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #6
  %clk_x8k = getelementptr inbounds %struct.stm32_sai_data, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %clk_x8k to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call27, ptr %clk_x8k, align 4
  %cmp.i254 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i254, label %if.then30, label %if.end35

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call27 to i32
  %call34 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %10, ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.end35:                                         ; preds = %if.end25
  %call37 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.5) #6
  %clk_x11k = getelementptr inbounds %struct.stm32_sai_data, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %clk_x11k to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call37, ptr %clk_x11k, align 4
  %cmp.i255 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i255, label %if.then40, label %if.end45

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call37 to i32
  %call44 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %12, ptr noundef nonnull @.str.6) #6
  br label %cleanup

if.end45:                                         ; preds = %if.end35
  %call46 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.stm32_sai_data, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call46, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp48 = icmp slt i32 %call46, 0
  br i1 %cmp48, label %if.end45.cleanup_crit_edge, label %if.end51

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end51:                                         ; preds = %if.end45
  %call.i256 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #6
  %cmp.i257 = icmp ugt ptr %call.i256, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i257, label %if.then55, label %if.end59

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call.i256 to i32
  %call58 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %14, ptr noundef nonnull @.str.7) #6
  br label %cleanup

if.end59:                                         ; preds = %if.end51
  %call60 = tail call i32 @reset_control_assert(ptr noundef %call.i256) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 429496) #6
  %call61 = tail call i32 @reset_control_deassert(ptr noundef %call.i256) #6
  %pclk62 = getelementptr inbounds %struct.stm32_sai_data, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %pclk62 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pclk62, align 4
  %call63 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %do.end82, label %do.end

do.end:                                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call63) #9
  br label %cleanup

do.end82:                                         ; preds = %if.end59
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 1016
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 822088448, i32 %20)
  %cmp86 = icmp eq i32 %20, 822088448
  br i1 %cmp86, label %if.then87, label %do.end82.if.end189_crit_edge

do.end82.if.end189_crit_edge:                     ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end189

if.then87:                                        ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr90 = getelementptr i8, ptr %22, i32 1008
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #6, !srcloc !82
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %and109 = and i32 %24, 255
  %fifo_size = getelementptr inbounds %struct.stm32_sai_data, ptr %call.i, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %fifo_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and109, ptr %fifo_size, align 4
  %26 = and i32 %24, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool130 = icmp ne i32 %26, 0
  %has_spdif_pdm = getelementptr inbounds %struct.stm32_sai_data, ptr %call.i, i32 0, i32 5, i32 2
  %frombool = zext i1 %tobool130 to i8
  %27 = ptrtoint ptr %has_spdif_pdm to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %frombool, ptr %has_spdif_pdm, align 4
  %add.ptr135 = getelementptr i8, ptr %22, i32 1012
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr135) #6, !srcloc !82
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %conf, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_sai_probe.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_sai_probe, %if.then148)) #6
          to label %if.end189 [label %if.then148], !srcloc !83

if.then148:                                       ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #8
  %and166 = lshr i32 %29, 4
  %shr167 = and i32 %and166, 15
  %and184 = and i32 %29, 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_sai_probe.__UNIQUE_ID_ddebug271, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %shr167, i32 noundef %and184) #6
  br label %if.end189

if.end189:                                        ; preds = %if.then148, %if.then87, %do.end82.if.end189_crit_edge
  %31 = ptrtoint ptr %pclk62 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pclk62, align 4
  tail call void @clk_disable(ptr noundef %32) #6
  tail call void @clk_unprepare(ptr noundef %32) #6
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %pdev, ptr %call.i, align 4
  %set_sync = getelementptr inbounds %struct.stm32_sai_data, ptr %call.i, i32 0, i32 7
  %34 = ptrtoint ptr %set_sync to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @stm32_sai_set_sync, ptr %set_sync, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call193 = tail call i32 @devm_of_platform_populate(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end189, %do.end, %if.then55, %if.end45.cleanup_crit_edge, %if.then40, %if.then30, %if.then19, %if.end7.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %call34, %if.then30 ], [ %call44, %if.then40 ], [ %call58, %if.then55 ], [ %call63, %do.end ], [ %call193, %if.end189 ], [ %call23, %if.then19 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ %call46, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %clk) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_sai_set_sync(ptr nocapture noundef readonly %sai_client, ptr noundef %np_provider, i32 noundef %synco, i32 noundef %synci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_device_by_node(ptr noundef %np_provider) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %sai_client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sai_client, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef %np_provider) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool3.not = icmp eq ptr %3, null
  %4 = ptrtoint ptr %sai_client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sai_client, align 4
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.18) #9
  br label %error

if.end10:                                         ; preds = %if.end
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %pclk.i.i = getelementptr inbounds %struct.stm32_sai_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %pclk.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pclk.i.i, align 4
  %call.i.i.i = tail call i32 @clk_prepare(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end10.stm32_sai_sync_conf_client.exit_crit_edge

if.end10.stm32_sai_sync_conf_client.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %stm32_sai_sync_conf_client.exit

if.end.i.i.i:                                     ; preds = %if.end10
  %call1.i.i.i = tail call i32 @clk_enable(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %stm32_sai_sync_conf_client.exit.thread, label %if.then3.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %9) #6
  br label %stm32_sai_sync_conf_client.exit

stm32_sai_sync_conf_client.exit.thread:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = shl i32 %synci, 24
  %and18.i = add i32 %sub.i, 50331648
  %10 = and i32 %and18.i, 50331648
  %base.i = getelementptr inbounds %struct.stm32_sai_data, ptr %sai_client, i32 0, i32 1
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #6, !srcloc !84
  %13 = ptrtoint ptr %sai_client to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sai_client, align 4
  %driver_data.i.i27.i = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %driver_data.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i27.i, align 4
  %pclk.i28.i = getelementptr inbounds %struct.stm32_sai_data, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %pclk.i28.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pclk.i28.i, align 4
  tail call void @clk_disable(ptr noundef %18) #6
  tail call void @clk_unprepare(ptr noundef %18) #6
  br label %if.end13

stm32_sai_sync_conf_client.exit:                  ; preds = %if.then3.i.i.i, %if.end10.stm32_sai_sync_conf_client.exit_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ %call1.i.i.i, %if.then3.i.i.i ], [ %call.i.i.i, %if.end10.stm32_sai_sync_conf_client.exit_crit_edge ]
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %7, align 4
  %dev2.i.i = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i.ph.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.ph.i.i)
  %cmp = icmp slt i32 %retval.0.i.ph.i.i, 0
  br i1 %cmp, label %stm32_sai_sync_conf_client.exit.error_crit_edge, label %stm32_sai_sync_conf_client.exit.if.end13_crit_edge

stm32_sai_sync_conf_client.exit.if.end13_crit_edge: ; preds = %stm32_sai_sync_conf_client.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

stm32_sai_sync_conf_client.exit.error_crit_edge:  ; preds = %stm32_sai_sync_conf_client.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end13:                                         ; preds = %stm32_sai_sync_conf_client.exit.if.end13_crit_edge, %stm32_sai_sync_conf_client.exit.thread
  %call14 = tail call fastcc i32 @stm32_sai_sync_conf_provider(ptr noundef nonnull %3, i32 noundef %synco)
  br label %error

error:                                            ; preds = %if.end13, %stm32_sai_sync_conf_client.exit.error_crit_edge, %do.end7
  %ret.0 = phi i32 [ %retval.0.i.ph.i.i, %stm32_sai_sync_conf_client.exit.error_crit_edge ], [ %call14, %if.end13 ], [ -22, %do.end7 ]
  %dev15 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  tail call void @put_device(ptr noundef %dev15) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %do.end
  %retval.0 = phi i32 [ %ret.0, %error ], [ -19, %do.end ]
  tail call void @of_node_put(ptr noundef %np_provider) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_sai_sync_conf_provider(ptr nocapture noundef readonly %sai, i32 noundef %synco) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sai to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sai, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pclk.i = getelementptr inbounds %struct.stm32_sai_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.stm32_sai_pclk_enable.exit_crit_edge

entry.stm32_sai_pclk_enable.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %stm32_sai_pclk_enable.exit

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %do.body, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %stm32_sai_pclk_enable.exit

stm32_sai_pclk_enable.exit:                       ; preds = %if.then3.i.i, %entry.stm32_sai_pclk_enable.exit_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %entry.stm32_sai_pclk_enable.exit_crit_edge ]
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i.ph.i) #9
  br label %cleanup

do.body:                                          ; preds = %if.end.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_sai_sync_conf_provider.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_sai_sync_conf_provider, %if.then5)) #6
          to label %do.end25 [label %if.then5], !srcloc !83

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %sai to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sai, align 4
  %dev7 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %synco)
  %cmp = icmp eq i32 %synco, 1
  %cond = select i1 %cmp, ptr @.str.23, ptr @.str.24
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_sai_sync_conf_provider.__UNIQUE_ID_ddebug245, ptr noundef %dev7, ptr noundef nonnull @.str.22, ptr noundef %11, ptr noundef nonnull %cond) #6
  br label %do.end25

do.end25:                                         ; preds = %if.then5, %do.body
  %base = getelementptr inbounds %struct.stm32_sai_data, ptr %sai, i32 0, i32 1
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !82
  %15 = lshr i32 %14, 28
  %and = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp29.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %synco)
  %cmp30.not = icmp eq i32 %and, %synco
  %or.cond = or i1 %cmp29.not, %cmp30.not
  br i1 %or.cond, label %do.end64, label %do.end34

do.end34:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %sai to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sai, align 4
  %dev36 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %of_node39 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3, i32 27
  %18 = ptrtoint ptr %of_node39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node39, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp40 = icmp eq i32 %and, 1
  %cond41 = select i1 %cmp40, ptr @.str.23, ptr @.str.24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.25, ptr noundef %19, ptr noundef nonnull %cond41) #9
  %20 = ptrtoint ptr %sai to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sai, align 4
  %driver_data.i.i89 = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3, i32 8
  %22 = ptrtoint ptr %driver_data.i.i89 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i89, align 4
  %pclk.i90 = getelementptr inbounds %struct.stm32_sai_data, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %pclk.i90 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pclk.i90, align 4
  tail call void @clk_disable(ptr noundef %25) #6
  tail call void @clk_unprepare(ptr noundef %25) #6
  br label %cleanup

do.end64:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl i32 %synco, 28
  %and66 = and i32 %shl, 805306368
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %and66) #6, !srcloc !84
  %28 = ptrtoint ptr %sai to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sai, align 4
  %driver_data.i.i91 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %driver_data.i.i91 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i.i91, align 4
  %pclk.i92 = getelementptr inbounds %struct.stm32_sai_data, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %pclk.i92 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pclk.i92, align 4
  tail call void @clk_disable(ptr noundef %33) #6
  tail call void @clk_unprepare(ptr noundef %33) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %do.end34, %stm32_sai_pclk_enable.exit
  %retval.0 = phi i32 [ -22, %do.end34 ], [ 0, %do.end64 ], [ %retval.0.i.ph.i, %stm32_sai_pclk_enable.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_sai_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pclk.i = getelementptr inbounds %struct.stm32_sai_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pclk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.stm32_sai_pclk_enable.exit_crit_edge

entry.stm32_sai_pclk_enable.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %stm32_sai_pclk_enable.exit

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %stm32_sai_pclk_enable.exit

stm32_sai_pclk_enable.exit:                       ; preds = %if.then3.i.i, %entry.stm32_sai_pclk_enable.exit_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %entry.stm32_sai_pclk_enable.exit_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i.ph.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %base = getelementptr inbounds %struct.stm32_sai_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !82
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %gcr = getelementptr inbounds %struct.stm32_sai_data, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %gcr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %gcr, align 4
  %11 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i, align 4
  %pclk.i12 = getelementptr inbounds %struct.stm32_sai_data, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %pclk.i12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pclk.i12, align 4
  tail call void @clk_disable(ptr noundef %14) #6
  tail call void @clk_unprepare(ptr noundef %14) #6
  %call4 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %stm32_sai_pclk_enable.exit
  %retval.0 = phi i32 [ %call4, %if.end ], [ %retval.0.i.ph.i, %stm32_sai_pclk_enable.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_sai_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pclk.i = getelementptr inbounds %struct.stm32_sai_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pclk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.stm32_sai_pclk_enable.exit_crit_edge

entry.stm32_sai_pclk_enable.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %stm32_sai_pclk_enable.exit

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %stm32_sai_pclk_enable.exit

stm32_sai_pclk_enable.exit:                       ; preds = %if.then3.i.i, %entry.stm32_sai_pclk_enable.exit_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %entry.stm32_sai_pclk_enable.exit_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i.ph.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %gcr = getelementptr inbounds %struct.stm32_sai_data, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %gcr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gcr, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %base = getelementptr inbounds %struct.stm32_sai_data, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #6, !srcloc !84
  %11 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i, align 4
  %pclk.i11 = getelementptr inbounds %struct.stm32_sai_data, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %pclk.i11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pclk.i11, align 4
  tail call void @clk_disable(ptr noundef %14) #6
  tail call void @clk_unprepare(ptr noundef %14) #6
  %call3 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %stm32_sai_pclk_enable.exit
  %retval.0 = phi i32 [ %call3, %if.end ], [ %retval.0.i.ph.i, %stm32_sai_pclk_enable.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !61, !63, !64, !65, !67, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_snd_soc_stm32_sai__282_289_stm32_sai_driver_init6, !1, !"__initcall__kmod_snd_soc_stm32_sai__282_289_stm32_sai_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/stm/stm32_sai.c", i32 289, i32 1}
!2 = !{ptr @__exitcall_stm32_sai_driver_exit, !1, !"__exitcall_stm32_sai_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description283, !4, !"__UNIQUE_ID_description283", i1 false, i1 false}
!4 = !{!"../sound/soc/stm/stm32_sai.c", i32 291, i32 1}
!5 = !{ptr @__UNIQUE_ID_author284, !6, !"__UNIQUE_ID_author284", i1 false, i1 false}
!6 = !{!"../sound/soc/stm/stm32_sai.c", i32 292, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias285, !8, !"__UNIQUE_ID_alias285", i1 false, i1 false}
!8 = !{!"../sound/soc/stm/stm32_sai.c", i32 293, i32 1}
!9 = !{ptr @__UNIQUE_ID_file286, !10, !"__UNIQUE_ID_file286", i1 false, i1 false}
!10 = !{!"../sound/soc/stm/stm32_sai.c", i32 294, i32 1}
!11 = !{ptr @__UNIQUE_ID_license287, !10, !"__UNIQUE_ID_license287", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/stm/stm32_sai.c", i32 282, i32 11}
!14 = !{ptr @stm32_sai_driver, !15, !"stm32_sai_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/stm/stm32_sai.c", i32 280, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/stm/stm32_sai.c", i32 175, i32 40}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/stm/stm32_sai.c", i32 178, i32 11}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/stm/stm32_sai.c", i32 181, i32 42}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/stm/stm32_sai.c", i32 184, i32 10}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/stm/stm32_sai.c", i32 186, i32 43}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/stm/stm32_sai.c", i32 189, i32 10}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/stm/stm32_sai.c", i32 200, i32 10}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/stm/stm32_sai.c", i32 209, i32 3}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @stm32_sai_probe._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @stm32_sai_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/stm/stm32_sai.c", i32 224, i32 3}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @stm32_sai_probe.__UNIQUE_ID_ddebug271, !39, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/stm/stm32_sai.c", i32 123, i32 3}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @stm32_sai_set_sync._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @stm32_sai_set_sync._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/stm/stm32_sai.c", i32 131, i32 3}
!49 = !{ptr @stm32_sai_set_sync._entry.17, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @stm32_sai_set_sync._entry_ptr.19, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/stm/stm32_sai.c", i32 61, i32 3}
!53 = !{ptr @stm32_sai_pclk_enable._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @stm32_sai_pclk_enable._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/stm/stm32_sai.c", i32 94, i32 2}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @stm32_sai_sync_conf_provider.__UNIQUE_ID_ddebug245, !56, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!59 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/stm/stm32_sai.c", i32 100, i32 3}
!63 = !{ptr @stm32_sai_sync_conf_provider._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @stm32_sai_sync_conf_provider._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @stm32_sai_ids, !66, !"stm32_sai_ids", i1 false, i1 false}
!66 = !{!"../sound/soc/stm/stm32_sai.c", i32 39, i32 34}
!67 = !{ptr @stm32_sai_conf_f4, !68, !"stm32_sai_conf_f4", i1 false, i1 false}
!68 = !{!"../sound/soc/stm/stm32_sai.c", i32 22, i32 36}
!69 = !{ptr @stm32_sai_conf_h7, !70, !"stm32_sai_conf_h7", i1 false, i1 false}
!70 = !{!"../sound/soc/stm/stm32_sai.c", i32 33, i32 36}
!71 = !{ptr @stm32_sai_pm_ops, !72, !"stm32_sai_pm_ops", i1 false, i1 false}
!72 = !{!"../sound/soc/stm/stm32_sai.c", i32 274, i32 32}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 6804418}
!83 = !{i64 2148758687, i64 2148758692, i64 2148758705, i64 2148758749, i64 2148758783, i64 2148758804}
!84 = !{i64 6804000}
