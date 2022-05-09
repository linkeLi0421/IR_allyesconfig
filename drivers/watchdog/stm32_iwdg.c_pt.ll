; ModuleID = '/llk/IR_all_yes/drivers/watchdog/stm32_iwdg.c_pt.bc'
source_filename = "../drivers/watchdog/stm32_iwdg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.stm32_iwdg_data = type { i8, i32 }
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
%struct.stm32_iwdg = type { %struct.watchdog_device, ptr, ptr, ptr, ptr, i32 }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_stm32_iwdg__194_294_stm32_iwdg_driver_init6 = internal global ptr @stm32_iwdg_driver_init, section ".initcall6.init", align 4
@stm32_iwdg_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_iwdg_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_iwdg_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_iwdg_driver_exit = internal global ptr @stm32_iwdg_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author195 = internal constant [57 x i8] c"stm32_iwdg.author=Yannick Fertre <yannick.fertre@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description196 = internal constant [76 x i8] c"stm32_iwdg.description=STMicroelectronics STM32 Independent Watchdog Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file197 = internal constant [44 x i8] c"stm32_iwdg.file=drivers/watchdog/stm32_iwdg\00", section ".modinfo", align 1
@__UNIQUE_ID_license198 = internal constant [26 x i8] c"stm32_iwdg.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iwdg\00", [27 x i8] zeroinitializer }, align 32
@stm32_iwdg_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-iwdg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32_iwdg_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1-iwdg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32mp1_iwdg_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@stm32_iwdg_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"STM32 Independent Watchdog\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@stm32_iwdg_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @stm32_iwdg_start, ptr null, ptr @stm32_iwdg_ping, ptr null, ptr @stm32_iwdg_set_timeout, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lsi\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to get lsi clock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to get pclk clock\0A\00", [38 x i8] zeroinitializer }, align 32
@stm32_iwdg_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 177, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to prepare pclk clock\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32_iwdg_clk_init\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/watchdog/stm32_iwdg.c\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_iwdg_clk_init._entry_ptr = internal global ptr @stm32_iwdg_clk_init._entry, section ".printk_index", align 4
@stm32_iwdg_clk_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 189, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to prepare lsi clock\0A\00", [35 x i8] zeroinitializer }, align 32
@stm32_iwdg_clk_init._entry_ptr.12 = internal global ptr @stm32_iwdg_clk_init._entry.10, section ".printk_index", align 4
@stm32_iwdg_ping.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.7, ptr @.str.15, i8 0, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stm32_iwdg\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stm32_iwdg_ping\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@stm32_iwdg_set_timeout.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.16, ptr @.str.7, ptr @.str.17, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stm32_iwdg_set_timeout\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s timeout: %d sec\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32_iwdg_start.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.18, ptr @.str.7, ptr @.str.15, i8 0, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stm32_iwdg_start\00", [47 x i8] zeroinitializer }, align 32
@stm32_iwdg_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.18, ptr @.str.7, i32 118, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Fail to set prescaler, reload regs\0A\00", [60 x i8] zeroinitializer }, align 32
@stm32_iwdg_start._entry_ptr = internal global ptr @stm32_iwdg_start._entry, section ".printk_index", align 4
@stm32_iwdg_data = internal constant { %struct.stm32_iwdg_data, [24 x i8] } { %struct.stm32_iwdg_data { i8 0, i32 256 }, [24 x i8] zeroinitializer }, align 32
@stm32mp1_iwdg_data = internal constant { %struct.stm32_iwdg_data, [24 x i8] } { %struct.stm32_iwdg_data { i8 1, i32 1024 }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"stm32_iwdg_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 287, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 290, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"stm32_iwdg_of_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 216, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"stm32_iwdg_info\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 202, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"stm32_iwdg_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 209, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 164, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 166, i32 52 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 170, i32 37 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 173, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 177, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 189, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 132, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 143, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 93, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 118, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [16 x i8] c"stm32_iwdg_data\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 58, i32 37 }
@___asan_gen_.98 = private unnamed_addr constant [19 x i8] c"stm32mp1_iwdg_data\00", align 1
@___asan_gen_.99 = private constant [33 x i8] c"../drivers/watchdog/stm32_iwdg.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 63, i32 37 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author195, ptr @__UNIQUE_ID_description196, ptr @__UNIQUE_ID_file197, ptr @__UNIQUE_ID_license198, ptr @__exitcall_stm32_iwdg_driver_exit, ptr @__initcall__kmod_stm32_iwdg__194_294_stm32_iwdg_driver_init6, ptr @stm32_iwdg_clk_init._entry, ptr @stm32_iwdg_clk_init._entry.10, ptr @stm32_iwdg_clk_init._entry_ptr, ptr @stm32_iwdg_clk_init._entry_ptr.12, ptr @stm32_iwdg_driver_exit, ptr @stm32_iwdg_start._entry, ptr @stm32_iwdg_start._entry_ptr, ptr @stm32_iwdg_driver, ptr @.str, ptr @stm32_iwdg_of_match, ptr @stm32_iwdg_info, ptr @stm32_iwdg_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @stm32_iwdg_data, ptr @stm32mp1_iwdg_data], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_iwdg_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_iwdg_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_iwdg_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_iwdg_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_iwdg_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_iwdg_clk_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_iwdg_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_iwdg_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32mp1_iwdg_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_iwdg_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_iwdg_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_iwdg_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_iwdg_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_iwdg_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 128, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %data = getelementptr inbounds %struct.stm32_iwdg, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %data, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %regs = getelementptr inbounds %struct.stm32_iwdg, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call8, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %call.i72 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #5
  %clk_lsi.i = getelementptr inbounds %struct.stm32_iwdg, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %clk_lsi.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i72, ptr %clk_lsi.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end14.stm32_iwdg_clk_init.exit_crit_edge, label %if.end.i

if.end14.stm32_iwdg_clk_init.exit_crit_edge:      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %stm32_iwdg_clk_init.exit

if.end.i:                                         ; preds = %if.end14
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.i.if.end26.i_crit_edge, label %if.then7.i

if.end.i.if.end26.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

if.then7.i:                                       ; preds = %if.end.i
  %call8.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.3) #5
  %clk_pclk.i = getelementptr inbounds %struct.stm32_iwdg, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %clk_pclk.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i, ptr %clk_pclk.i, align 4
  %cmp.i69.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69.i, label %if.then7.i.stm32_iwdg_clk_init.exit_crit_edge, label %if.end15.i

if.then7.i.stm32_iwdg_clk_init.exit_crit_edge:    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stm32_iwdg_clk_init.exit

if.end15.i:                                       ; preds = %if.then7.i
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %call8.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end15.i.do.end.i_crit_edge

if.end15.i.do.end.i_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.end15.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %call8.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end20.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call8.i) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i.i, %if.end15.i.do.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end15.i.do.end.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end20.i:                                       ; preds = %if.end.i.i
  %9 = ptrtoint ptr %clk_pclk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_pclk.i, align 4
  %call.i70.i = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @stm32_clk_disable_unprepare, ptr noundef %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70.i)
  %tobool.not.i71.i = icmp eq i32 %call.i70.i, 0
  br i1 %tobool.not.i71.i, label %if.end20.i.if.end26.i_crit_edge, label %devm_add_action_or_reset.exit.i

if.end20.i.if.end26.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

devm_add_action_or_reset.exit.i:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef %10) #5
  tail call void @clk_unprepare(ptr noundef %10) #5
  br label %cleanup

if.end26.i:                                       ; preds = %if.end20.i.if.end26.i_crit_edge, %if.end.i.if.end26.i_crit_edge
  %11 = ptrtoint ptr %clk_lsi.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_lsi.i, align 4
  %call.i73.i = tail call i32 @clk_prepare(ptr noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73.i)
  %tobool.not.i74.i = icmp eq i32 %call.i73.i, 0
  br i1 %tobool.not.i74.i, label %if.end.i77.i, label %if.end26.i.do.end33.i_crit_edge

if.end26.i.do.end33.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end33.i

if.end.i77.i:                                     ; preds = %if.end26.i
  %call1.i75.i = tail call i32 @clk_enable(ptr noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i75.i)
  %tobool2.not.i76.i = icmp eq i32 %call1.i75.i, 0
  br i1 %tobool2.not.i76.i, label %if.end34.i, label %if.then3.i78.i

if.then3.i78.i:                                   ; preds = %if.end.i77.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %12) #5
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then3.i78.i, %if.end26.i.do.end33.i_crit_edge
  %retval.0.i79.ph.i = phi i32 [ %call1.i75.i, %if.then3.i78.i ], [ %call.i73.i, %if.end26.i.do.end33.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end34.i:                                       ; preds = %if.end.i77.i
  %13 = ptrtoint ptr %clk_lsi.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk_lsi.i, align 4
  %call.i81.i = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @stm32_clk_disable_unprepare, ptr noundef %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81.i)
  %tobool.not.i82.i = icmp eq i32 %call.i81.i, 0
  br i1 %tobool.not.i82.i, label %stm32_iwdg_clk_init.exit.thread75, label %devm_add_action_or_reset.exit85.i

devm_add_action_or_reset.exit85.i:                ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef %14) #5
  tail call void @clk_unprepare(ptr noundef %14) #5
  br label %cleanup

stm32_iwdg_clk_init.exit.thread75:                ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %clk_lsi.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk_lsi.i, align 4
  %call41.i = tail call i32 @clk_get_rate(ptr noundef %16) #5
  %rate.i = getelementptr inbounds %struct.stm32_iwdg, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call41.i, ptr %rate.i, align 4
  br label %if.end18

stm32_iwdg_clk_init.exit:                         ; preds = %if.then7.i.stm32_iwdg_clk_init.exit_crit_edge, %if.end14.stm32_iwdg_clk_init.exit_crit_edge
  %call.i72.sink = phi ptr [ %call.i72, %if.end14.stm32_iwdg_clk_init.exit_crit_edge ], [ %call8.i, %if.then7.i.stm32_iwdg_clk_init.exit_crit_edge ]
  %.str.2.sink = phi ptr [ @.str.2, %if.end14.stm32_iwdg_clk_init.exit_crit_edge ], [ @.str.4, %if.then7.i.stm32_iwdg_clk_init.exit_crit_edge ]
  %18 = ptrtoint ptr %call.i72.sink to i32
  %call6.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %18, ptr noundef nonnull %.str.2.sink) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool16.not = icmp eq i32 %call6.i, 0
  br i1 %tobool16.not, label %stm32_iwdg_clk_init.exit.if.end18_crit_edge, label %stm32_iwdg_clk_init.exit.cleanup_crit_edge

stm32_iwdg_clk_init.exit.cleanup_crit_edge:       ; preds = %stm32_iwdg_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

stm32_iwdg_clk_init.exit.if.end18_crit_edge:      ; preds = %stm32_iwdg_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.end18:                                         ; preds = %stm32_iwdg_clk_init.exit.if.end18_crit_edge, %stm32_iwdg_clk_init.exit.thread75
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev1, ptr %parent, align 4
  %info = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @stm32_iwdg_info, ptr %info, align 4
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 4
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @stm32_iwdg_ops, ptr %ops, align 4
  %rate = getelementptr inbounds %struct.stm32_iwdg, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rate, align 4
  %sub = add i32 %23, 11
  %div = udiv i32 %sub, %23
  %min_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 9
  %24 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div, ptr %min_timeout, align 4
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %max_prescaler = getelementptr inbounds %struct.stm32_iwdg_data, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %max_prescaler to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_prescaler, align 4
  %mul22 = mul i32 %28, 4096000
  %div24 = udiv i32 %mul22, %23
  %max_hw_heartbeat_ms = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 12
  %29 = ptrtoint ptr %max_hw_heartbeat_ms to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div24, ptr %max_hw_heartbeat_ms, align 4
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 16
  %30 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %driver_data.i, align 4
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #5
  %call25 = tail call i32 @watchdog_init_timeout(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef %dev1) #5
  %call26 = tail call i32 @stm32_iwdg_start(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.end18
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status.i) #5
  %call30 = tail call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end29.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %stm32_iwdg_clk_init.exit.cleanup_crit_edge, %devm_add_action_or_reset.exit85.i, %do.end33.i, %devm_add_action_or_reset.exit.i, %do.end.i, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then11 ], [ 0, %if.end33 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call6.i, %stm32_iwdg_clk_init.exit.cleanup_crit_edge ], [ %call26, %if.end18.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ], [ %call.i81.i, %devm_add_action_or_reset.exit85.i ], [ %call.i70.i, %devm_add_action_or_reset.exit.i ], [ %retval.0.i79.ph.i, %do.end33.i ], [ %retval.0.i.ph.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_iwdg_start(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_iwdg_start.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_iwdg_start, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !70

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_iwdg_start.__UNIQUE_ID_ddebug187, ptr noundef %3, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timeout, align 4
  %min_timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 9
  %6 = ptrtoint ptr %min_timeout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %min_timeout, align 4
  %8 = tail call i32 @llvm.umax.i32(i32 %5, i32 %7)
  %max_hw_heartbeat_ms = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 12
  %9 = ptrtoint ptr %max_hw_heartbeat_ms to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_hw_heartbeat_ms, align 4
  %div = udiv i32 %10, 1000
  %11 = tail call i32 @llvm.umin.i32(i32 %8, i32 %div)
  %rate = getelementptr inbounds %struct.stm32_iwdg, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rate, align 4
  %mul = mul i32 %11, %13
  %sub = add i32 %mul, 4095
  %div11160 = lshr i32 %sub, 12
  %sub.i161 = add nsw i32 %div11160, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i161)
  %tobool.not.i.i.i = icmp eq i32 %sub.i161, 0
  br i1 %tobool.not.i.i.i, label %do.end.cond.end57_crit_edge, label %cond.end36

do.end.cond.end57_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end57

cond.end36:                                       ; preds = %do.end
  %14 = tail call i32 @llvm.ctlz.i32(i32 %sub.i161, i1 true) #5, !range !71
  %sub.i.i.i = sub nuw nsw i32 32, %14
  %cond37 = shl nuw i32 1, %sub.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i161)
  %cmp38 = icmp ult i32 %sub.i161, 4
  br i1 %cmp38, label %cond.end36.cond.end57_crit_edge, label %cond.false41

cond.end36.cond.end57_crit_edge:                  ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end57

cond.false41:                                     ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #7
  %15 = tail call i32 @llvm.ctlz.i32(i32 %cond37, i1 true) #5, !range !71
  %sub56 = sub nsw i32 29, %15
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false41, %cond.end36.cond.end57_crit_edge, %do.end.cond.end57_crit_edge
  %cond37168 = phi i32 [ %cond37, %cond.false41 ], [ %cond37, %cond.end36.cond.end57_crit_edge ], [ 1, %do.end.cond.end57_crit_edge ]
  %cond58 = phi i32 [ %sub56, %cond.false41 ], [ 0, %cond.end36.cond.end57_crit_edge ], [ 0, %do.end.cond.end57_crit_edge ]
  %div61 = udiv i32 %mul, %cond37168
  %sub62 = add i32 %div61, -1
  %regs = getelementptr inbounds %struct.stm32_iwdg, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 1431633920) #5, !srcloc !72
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %cond58) #5
  %add.ptr.i = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %20) #5, !srcloc !72
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %sub62) #5
  %add.ptr.i163 = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163, i32 %23) #5, !srcloc !72
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 -859045888) #5, !srcloc !72
  %call66 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call66, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 116) #5
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr170 = getelementptr i8, ptr %27, i32 12
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr170) #5, !srcloc !73
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %and171 = and i32 %29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool84.not172 = icmp eq i32 %and171, 0
  br i1 %tobool84.not172, label %cond.end57.for.end_crit_edge, label %cond.end57.land.lhs.true_crit_edge

cond.end57.land.lhs.true_crit_edge:               ; preds = %cond.end57
  br label %land.lhs.true

cond.end57.for.end_crit_edge:                     ; preds = %cond.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.lhs.true:                                    ; preds = %if.then100.land.lhs.true_crit_edge, %cond.end57.land.lhs.true_crit_edge
  %call88 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call88, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call88, %add.i
  br i1 %cmp3.i, label %if.then92, label %if.then100

if.then92:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %add.ptr95 = getelementptr i8, ptr %31, i32 12
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr95) #5, !srcloc !73
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  br label %for.end

if.then100:                                       ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #5
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %35, i32 12
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !73
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %and = and i32 %37, 3
  %tobool84.not = icmp eq i32 %and, 0
  br i1 %tobool84.not, label %if.then100.for.end_crit_edge, label %if.then100.land.lhs.true_crit_edge

if.then100.land.lhs.true_crit_edge:               ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.then100.for.end_crit_edge:                     ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.then100.for.end_crit_edge, %if.then92, %cond.end57.for.end_crit_edge
  %iwdg_sr.0 = phi i32 [ %33, %if.then92 ], [ %29, %cond.end57.for.end_crit_edge ], [ %37, %if.then100.for.end_crit_edge ]
  %and104 = and i32 %iwdg_sr.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end115, label %do.end113

do.end113:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %parent114 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 1
  %38 = ptrtoint ptr %parent114 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %parent114, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.19) #8
  br label %cleanup

if.end115:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 -1431699456) #5, !srcloc !72
  br label %cleanup

cleanup:                                          ; preds = %if.end115, %do.end113
  %retval.0 = phi i32 [ -110, %do.end113 ], [ 0, %if.end115 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_clk_disable_unprepare(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %data) #5
  tail call void @clk_unprepare(ptr noundef %data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_iwdg_ping(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_iwdg_ping.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_iwdg_ping, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !70

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_iwdg_ping.__UNIQUE_ID_ddebug192, ptr noundef %3, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regs = getelementptr inbounds %struct.stm32_iwdg, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 -1431699456) #5, !srcloc !72
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_iwdg_set_timeout(ptr noundef %wdd, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_iwdg_set_timeout.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_iwdg_set_timeout, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !70

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_iwdg_set_timeout.__UNIQUE_ID_ddebug193, ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %timeout) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %timeout3 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %2 = ptrtoint ptr %timeout3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %timeout, ptr %timeout3, align 4
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.end.return_crit_edge, label %if.then5

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @stm32_iwdg_start(ptr noundef %wdd)
  br label %return

return:                                           ; preds = %if.then5, %do.end.return_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then5 ], [ 0, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !52, !53, !54, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__initcall__kmod_stm32_iwdg__194_294_stm32_iwdg_driver_init6, !1, !"__initcall__kmod_stm32_iwdg__194_294_stm32_iwdg_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/stm32_iwdg.c", i32 294, i32 1}
!2 = !{ptr @__exitcall_stm32_iwdg_driver_exit, !1, !"__exitcall_stm32_iwdg_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author195, !4, !"__UNIQUE_ID_author195", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/stm32_iwdg.c", i32 296, i32 1}
!5 = !{ptr @__UNIQUE_ID_description196, !6, !"__UNIQUE_ID_description196", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/stm32_iwdg.c", i32 297, i32 1}
!7 = !{ptr @__UNIQUE_ID_file197, !8, !"__UNIQUE_ID_file197", i1 false, i1 false}
!8 = !{!"../drivers/watchdog/stm32_iwdg.c", i32 298, i32 1}
!9 = !{ptr @__UNIQUE_ID_license198, !8, !"__UNIQUE_ID_license198", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/stm32_iwdg.c", i32 290, i32 11}
!12 = !{ptr @stm32_iwdg_driver, !13, !"stm32_iwdg_driver", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/stm32_iwdg.c", i32 287, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/watchdog/stm32_iwdg.c", i32 164, i32 35}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/watchdog/stm32_iwdg.c", i32 166, i32 52}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/watchdog/stm32_iwdg.c", i32 170, i32 37}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/stm32_iwdg.c", i32 173, i32 11}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/stm32_iwdg.c", i32 177, i32 4}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @stm32_iwdg_clk_init._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @stm32_iwdg_clk_init._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/stm32_iwdg.c", i32 189, i32 3}
!32 = !{ptr @stm32_iwdg_clk_init._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @stm32_iwdg_clk_init._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @stm32_iwdg_info, !35, !"stm32_iwdg_info", i1 false, i1 false}
!35 = !{!"../drivers/watchdog/stm32_iwdg.c", i32 202, i32 35}
!36 = !{ptr @stm32_iwdg_ops, !37, !"stm32_iwdg_ops", i1 false, i1 false}
!37 = !{!"../drivers/watchdog/stm32_iwdg.c", i32 209, i32 34}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/watchdog/stm32_iwdg.c", i32 132, i32 2}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @stm32_iwdg_ping.__UNIQUE_ID_ddebug192, !39, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/watchdog/stm32_iwdg.c", i32 143, i32 2}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @stm32_iwdg_set_timeout.__UNIQUE_ID_ddebug193, !44, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/watchdog/stm32_iwdg.c", i32 93, i32 2}
!49 = !{ptr @stm32_iwdg_start.__UNIQUE_ID_ddebug187, !48, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/watchdog/stm32_iwdg.c", i32 118, i32 3}
!52 = !{ptr @stm32_iwdg_start._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @stm32_iwdg_start._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @stm32_iwdg_of_match, !55, !"stm32_iwdg_of_match", i1 false, i1 false}
!55 = !{!"../drivers/watchdog/stm32_iwdg.c", i32 216, i32 34}
!56 = !{ptr @stm32_iwdg_data, !57, !"stm32_iwdg_data", i1 false, i1 false}
!57 = !{!"../drivers/watchdog/stm32_iwdg.c", i32 58, i32 37}
!58 = !{ptr @stm32mp1_iwdg_data, !59, !"stm32mp1_iwdg_data", i1 false, i1 false}
!59 = !{!"../drivers/watchdog/stm32_iwdg.c", i32 63, i32 37}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i8 0, i8 2}
!70 = !{i64 2148727614, i64 2148727619, i64 2148727632, i64 2148727676, i64 2148727710, i64 2148727731}
!71 = !{i32 0, i32 33}
!72 = !{i64 4243075}
!73 = !{i64 4243493}
