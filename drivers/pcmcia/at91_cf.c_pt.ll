; ModuleID = '/llk/IR_all_yes/drivers/pcmcia/at91_cf.c_pt.bc'
source_filename = "../drivers/pcmcia/at91_cf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pccard_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pccard_resource_ops = type opaque
%struct.atomic_t = type { i32 }
%struct.socket_state_t = type { i32, i32, i8, i8, i8 }
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
%struct.at91_cf_data = type { i32, i32, i32, i32, i8, i8 }
%struct.at91_cf_socket = type { %struct.pcmcia_socket, i8, ptr, ptr, i32 }
%struct.pcmcia_socket = type { ptr, %struct.socket_state_t, i32, i32, i16, i16, %struct.pccard_mem_map, ptr, [2 x %struct.io_window_t], [4 x %struct.pccard_mem_map], %struct.list_head, i32, ptr, %struct.list_head, %struct.completion, i32, i32, i32, i32, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.completion, i32, i32, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, i8, i8, %struct.atomic_t, i32, %struct.device, ptr, i32 }
%struct.pccard_mem_map = type { i8, i8, i16, i32, i32, ptr }
%struct.io_window_t = type { i32, i32, ptr }
%struct.pccard_io_map = type { i8, i8, i16, i32, i32 }

@__initcall__kmod_at91_cf__240_402_at91_cf_driver_init6 = internal global ptr @at91_cf_driver_init, section ".initcall6.init", align 4
@at91_cf_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @at91_cf_probe, ptr @at91_cf_remove, ptr null, ptr @at91_cf_suspend, ptr @at91_cf_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at91_cf_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_at91_cf_driver_exit = internal global ptr @at91_cf_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description241 = internal constant [46 x i8] c"at91_cf.description=AT91 Compact Flash Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [30 x i8] c"at91_cf.author=David Brownell\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [36 x i8] c"at91_cf.file=drivers/pcmcia/at91_cf\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [20 x i8] c"at91_cf.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias245 = internal constant [31 x i8] c"at91_cf.alias=platform:at91_cf\00", section ".modinfo", align 1
@mc = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"at91_cf\00", [24 x i8] zeroinitializer }, align 32
@at91_cf_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-cf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atmel,at91rm9200-sdramc\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cf_det\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"at91_cf detect\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cf_rst\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cf_vcc\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cf_irq\00", [25 x i8] zeroinitializer }, align 32
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@at91_cf_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 325, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"irqs det #%d, io #%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"at91_cf_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/pcmcia/at91_cf.c\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@at91_cf_probe._entry_ptr = internal global ptr @at91_cf_probe._entry, section ".printk_index", align 4
@at91_cf_ops = internal global { %struct.pccard_operations, [40 x i8] } { %struct.pccard_operations { ptr @at91_cf_ss_init, ptr @at91_cf_ss_suspend, ptr @at91_cf_get_status, ptr @at91_cf_set_socket, ptr @at91_cf_set_io_map, ptr @at91_cf_set_mem_map }, [40 x i8] zeroinitializer }, align 32
@pccard_static_ops = external dso_local global %struct.pccard_resource_ops, align 1
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpios\00", [26 x i8] zeroinitializer }, align 32
@at91_cf_irq.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.9, ptr @.str.14, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"at91_cf_irq\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"card %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"present\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gone\00", [27 x i8] zeroinitializer }, align 32
@dead_socket = external dso_local global %struct.socket_state_t, align 4
@at91_cf_set_socket.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.9, ptr @.str.18, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"at91_cf_set_socket\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Vcc %d, io_irq %d, flags %04x csc %04x\0A\00", [56 x i8] zeroinitializer }, align 32
@at91_cf_set_io_map.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.9, ptr @.str.20, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"at91_cf_set_io_map\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"8bit i/o bus\0A\00", [18 x i8] zeroinitializer }, align 32
@at91_cf_set_io_map.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.9, ptr @.str.21, i8 0, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"16bit i/o bus\0A\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 33]
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"at91_cf_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 391, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant [3 x i8] c"mc\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 49, i32 16 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 393, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"at91_cf_dt_ids\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 223, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 246, i32 42 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 267, i32 57 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 272, i32 22 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 278, i32 57 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 283, i32 58 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 295, i32 58 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 324, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [12 x i8] c"at91_cf_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 212, i32 33 }
@___asan_gen_.74 = private unnamed_addr constant [27 x i8] c"../include/linux/of_gpio.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 121, i32 37 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 86, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 144, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 178, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [28 x i8] c"../drivers/pcmcia/at91_cf.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 181, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_alias245, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_at91_cf_driver_exit, ptr @__initcall__kmod_at91_cf__240_402_at91_cf_driver_init6, ptr @at91_cf_driver_exit, ptr @at91_cf_probe._entry, ptr @at91_cf_probe._entry_ptr, ptr @at91_cf_driver, ptr @mc, ptr @.str, ptr @at91_cf_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @at91_cf_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_cf_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_cf_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_cf_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_cf_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_cf_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @at91_cf_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @at91_cf_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @at91_cf_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_cf_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %realio = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %realio) #7
  %0 = getelementptr inbounds %struct.resource, ptr %realio, i32 0, i32 1
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %1 = call ptr @memset(ptr %realio, i32 255, i32 32)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i.i = tail call i32 @of_get_named_gpio_flags(ptr noundef %3, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef null) #7
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call.i.i, ptr %call.i, align 4
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call.i.i200 = tail call i32 @of_get_named_gpio_flags(ptr noundef %6, ptr noundef nonnull @.str.12, i32 noundef 1, ptr noundef null) #7
  %det_pin = getelementptr inbounds %struct.at91_cf_data, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %det_pin to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.i.i200, ptr %det_pin, align 4
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call.i.i201 = tail call i32 @of_get_named_gpio_flags(ptr noundef %9, ptr noundef nonnull @.str.12, i32 noundef 2, ptr noundef null) #7
  %vcc_pin = getelementptr inbounds %struct.at91_cf_data, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %vcc_pin to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.i.i201, ptr %vcc_pin, align 4
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call.i.i202 = tail call i32 @of_get_named_gpio_flags(ptr noundef %12, ptr noundef nonnull @.str.12, i32 noundef 3, ptr noundef null) #7
  %rst_pin = getelementptr inbounds %struct.at91_cf_data, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %rst_pin to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call.i.i202, ptr %rst_pin, align 4
  %call12 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.1) #7
  store ptr %call12, ptr @mc, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %15 = ptrtoint ptr %det_pin to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %det_pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %16)
  %17 = icmp ult i32 %16, 2048
  br i1 %17, label %lor.lhs.false, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end16
  %18 = ptrtoint ptr %rst_pin to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rst_pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %19)
  %20 = icmp ult i32 %19, 2048
  br i1 %20, label %if.end22, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false
  %call23 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %call.i203 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1544, i32 noundef 3520) #7
  %tobool29.not = icmp eq ptr %call.i203, null
  br i1 %tobool29.not, label %if.end26.cleanup_crit_edge, label %if.end31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %board32 = getelementptr inbounds %struct.at91_cf_socket, ptr %call.i203, i32 0, i32 3
  %21 = ptrtoint ptr %board32 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %board32, align 8
  %pdev33 = getelementptr inbounds %struct.at91_cf_socket, ptr %call.i203, i32 0, i32 2
  %22 = ptrtoint ptr %pdev33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %pdev, ptr %pdev33, align 4
  %23 = ptrtoint ptr %call23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call23, align 4
  %phys_baseaddr = getelementptr inbounds %struct.at91_cf_socket, ptr %call.i203, i32 0, i32 4
  %25 = ptrtoint ptr %phys_baseaddr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %phys_baseaddr, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i203, ptr %driver_data.i.i, align 4
  %27 = ptrtoint ptr %det_pin to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %det_pin, align 4
  %call36 = tail call i32 @devm_gpio_request(ptr noundef %dev, i32 noundef %28, ptr noundef nonnull @.str.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp = icmp slt i32 %call36, 0
  br i1 %cmp, label %if.end31.cleanup_crit_edge, label %if.end38

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38:                                         ; preds = %if.end31
  %29 = ptrtoint ptr %det_pin to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %det_pin, align 4
  %call.i204 = tail call ptr @gpio_to_desc(i32 noundef %30) #7
  %call1.i = tail call i32 @gpiod_to_irq(ptr noundef %call.i204) #7
  %call.i205 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call1.i, ptr noundef nonnull @at91_cf_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull %call.i203) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %cmp43 = icmp slt i32 %call.i205, 0
  br i1 %cmp43, label %if.end38.cleanup_crit_edge, label %if.end45

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45:                                         ; preds = %if.end38
  %call47 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #7
  %31 = ptrtoint ptr %rst_pin to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rst_pin, align 4
  %call50 = tail call i32 @devm_gpio_request(ptr noundef %dev, i32 noundef %32, ptr noundef nonnull @.str.4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.end45.fail0a_crit_edge, label %if.end53

if.end45.fail0a_crit_edge:                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail0a

if.end53:                                         ; preds = %if.end45
  %33 = ptrtoint ptr %vcc_pin to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vcc_pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %34)
  %35 = icmp ult i32 %34, 2048
  br i1 %35, label %if.then56, label %if.end53.if.end63_crit_edge

if.end53.if.end63_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then56:                                        ; preds = %if.end53
  %call59 = tail call i32 @devm_gpio_request(ptr noundef %dev, i32 noundef %34, ptr noundef nonnull @.str.5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.then56.fail0a_crit_edge, label %if.then56.if.end63_crit_edge

if.then56.if.end63_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then56.fail0a_crit_edge:                       ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail0a

if.end63:                                         ; preds = %if.then56.if.end63_crit_edge, %if.end53.if.end63_crit_edge
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %37)
  %38 = icmp ult i32 %37, 2048
  br i1 %38, label %if.then66, label %if.else

if.then66:                                        ; preds = %if.end63
  %call69 = tail call i32 @devm_gpio_request(ptr noundef %dev, i32 noundef %37, ptr noundef nonnull @.str.6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.then66.fail0a_crit_edge, label %if.end72

if.then66.fail0a_crit_edge:                       ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail0a

if.end72:                                         ; preds = %if.then66
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %call.i, align 4
  %call.i206 = tail call ptr @gpio_to_desc(i32 noundef %40) #7
  %call1.i207 = tail call i32 @gpiod_to_irq(ptr noundef %call.i206) #7
  %call.i208 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call1.i207, ptr noundef nonnull @at91_cf_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call.i203) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i208)
  %cmp77 = icmp slt i32 %call.i208, 0
  br i1 %cmp77, label %if.end72.fail0a_crit_edge, label %if.end79

if.end72.fail0a_crit_edge:                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail0a

if.end79:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call.i, align 4
  %call.i209 = tail call ptr @gpio_to_desc(i32 noundef %42) #7
  %call1.i210 = tail call i32 @gpiod_to_irq(ptr noundef %call.i209) #7
  br label %if.end84

if.else:                                          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %43 = load i32, ptr @nr_irqs, align 4
  %add = add i32 %43, 1
  br label %if.end84

if.end84:                                         ; preds = %if.else, %if.end79
  %add.sink = phi i32 [ %add, %if.else ], [ %call1.i210, %if.end79 ]
  %pci_irq83 = getelementptr inbounds %struct.pcmcia_socket, ptr %call.i203, i32 0, i32 20
  %44 = ptrtoint ptr %pci_irq83 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add.sink, ptr %pci_irq83, align 4
  %io_offset = getelementptr inbounds %struct.pcmcia_socket, ptr %call.i203, i32 0, i32 19
  %45 = ptrtoint ptr %io_offset to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 65536, ptr %io_offset, align 8
  %46 = ptrtoint ptr %realio to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 65536, ptr %realio, align 4
  %47 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 131071, ptr %0, align 4
  %48 = ptrtoint ptr %phys_baseaddr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %phys_baseaddr, align 4
  %add92 = add i32 %49, 8388608
  %call93 = call i32 @pci_remap_iospace(ptr noundef nonnull %realio, i32 noundef %add92) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %if.end84.fail0a_crit_edge

if.end84.fail0a_crit_edge:                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail0a

if.end96:                                         ; preds = %if.end84
  %50 = ptrtoint ptr %call23 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %call23, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call23, i32 0, i32 1
  %52 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %51
  %add.i = add i32 %sub.i, %53
  %call100 = call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @iomem_resource, i32 noundef %51, i32 noundef %add.i, ptr noundef nonnull @.str) #7
  %tobool101.not = icmp eq ptr %call100, null
  br i1 %tobool101.not, label %if.end96.fail0a_crit_edge, label %do.end

if.end96.fail0a_crit_edge:                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail0a

do.end:                                           ; preds = %if.end96
  %54 = ptrtoint ptr %det_pin to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %det_pin, align 4
  %call.i211 = call ptr @gpio_to_desc(i32 noundef %55) #7
  %call1.i212 = call i32 @gpiod_to_irq(ptr noundef %call.i211) #7
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %call.i, align 4
  %call.i213 = call ptr @gpio_to_desc(i32 noundef %57) #7
  %call1.i214 = call i32 @gpiod_to_irq(ptr noundef %call.i213) #7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call1.i212, i32 noundef %call1.i214) #10
  %58 = ptrtoint ptr %call.i203 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %call.i203, align 8
  %parent = getelementptr inbounds %struct.pcmcia_socket, ptr %call.i203, i32 0, i32 42, i32 1
  %59 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %dev, ptr %parent, align 8
  %ops = getelementptr inbounds %struct.pcmcia_socket, ptr %call.i203, i32 0, i32 23
  %60 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @at91_cf_ops, ptr %ops, align 8
  %resource_ops = getelementptr inbounds %struct.pcmcia_socket, ptr %call.i203, i32 0, i32 24
  %61 = ptrtoint ptr %resource_ops to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @pccard_static_ops, ptr %resource_ops, align 4
  %features = getelementptr inbounds %struct.pcmcia_socket, ptr %call.i203, i32 0, i32 16
  %62 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 16396, ptr %features, align 4
  %map_size = getelementptr inbounds %struct.pcmcia_socket, ptr %call.i203, i32 0, i32 18
  %63 = ptrtoint ptr %map_size to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 2048, ptr %map_size, align 4
  %res = getelementptr inbounds %struct.pcmcia_socket, ptr %call.i203, i32 0, i32 8, i32 0, i32 2
  %64 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call23, ptr %res, align 8
  %call120 = call i32 @pcmcia_register_socket(ptr noundef nonnull %call.i203) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %cmp121 = icmp slt i32 %call120, 0
  br i1 %cmp121, label %do.end.fail0a_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.fail0a_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail0a

fail0a:                                           ; preds = %do.end.fail0a_crit_edge, %if.end96.fail0a_crit_edge, %if.end84.fail0a_crit_edge, %if.end72.fail0a_crit_edge, %if.then66.fail0a_crit_edge, %if.then56.fail0a_crit_edge, %if.end45.fail0a_crit_edge
  %status.0 = phi i32 [ %call50, %if.end45.fail0a_crit_edge ], [ %call59, %if.then56.fail0a_crit_edge ], [ %call69, %if.then66.fail0a_crit_edge ], [ %call.i208, %if.end72.fail0a_crit_edge ], [ %call93, %if.end84.fail0a_crit_edge ], [ %call120, %do.end.fail0a_crit_edge ], [ -6, %if.end96.fail0a_crit_edge ]
  %call125 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %fail0a, %do.end.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then14 ], [ %status.0, %fail0a ], [ -12, %entry.cleanup_crit_edge ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %if.end16.cleanup_crit_edge ], [ -19, %if.end22.cleanup_crit_edge ], [ -12, %if.end26.cleanup_crit_edge ], [ %call36, %if.end31.cleanup_crit_edge ], [ %call.i205, %if.end38.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %realio) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_cf_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @pcmcia_unregister_socket(ptr noundef %1) #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_cf_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %mesg.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %board1 = getelementptr inbounds %struct.at91_cf_socket, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board1, align 8
  %can_wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end10_crit_edge, label %device_may_wakeup.exit

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end10_crit_edge, label %if.then

device_may_wakeup.exit.if.end10_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then:                                          ; preds = %device_may_wakeup.exit
  %det_pin = getelementptr inbounds %struct.at91_cf_data, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %det_pin to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %det_pin, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %8) #7
  %call1.i = tail call i32 @gpiod_to_irq(ptr noundef %call.i) #7
  %call.i14 = tail call i32 @irq_set_irq_wake(i32 noundef %call1.i, i32 noundef 1) #7
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %10)
  %11 = icmp ult i32 %10, 2048
  br i1 %11, label %if.then6, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call.i15 = tail call ptr @gpio_to_desc(i32 noundef %10) #7
  %call1.i16 = tail call i32 @gpiod_to_irq(ptr noundef %call.i15) #7
  %call.i17 = tail call i32 @irq_set_irq_wake(i32 noundef %call1.i16, i32 noundef 1) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.then.if.end10_crit_edge, %device_may_wakeup.exit.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_cf_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %board1 = getelementptr inbounds %struct.at91_cf_socket, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board1, align 8
  %can_wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end10_crit_edge, label %device_may_wakeup.exit

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end10_crit_edge, label %if.then

device_may_wakeup.exit.if.end10_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then:                                          ; preds = %device_may_wakeup.exit
  %det_pin = getelementptr inbounds %struct.at91_cf_data, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %det_pin to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %det_pin, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %8) #7
  %call1.i = tail call i32 @gpiod_to_irq(ptr noundef %call.i) #7
  %call.i14 = tail call i32 @irq_set_irq_wake(i32 noundef %call1.i, i32 noundef 0) #7
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %10)
  %11 = icmp ult i32 %10, 2048
  br i1 %11, label %if.then6, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call.i15 = tail call ptr @gpio_to_desc(i32 noundef %10) #7
  %call1.i16 = tail call i32 @gpiod_to_irq(ptr noundef %call.i15) #7
  %call.i17 = tail call i32 @irq_set_irq_wake(i32 noundef %call1.i16, i32 noundef 0) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.then.if.end10_crit_edge, %device_may_wakeup.exit.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_cf_irq(i32 noundef %irq, ptr noundef %_cf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %board = getelementptr inbounds %struct.at91_cf_socket, ptr %_cf, i32 0, i32 3
  %0 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board, align 8
  %det_pin = getelementptr inbounds %struct.at91_cf_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %det_pin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %det_pin, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %3) #7
  %call1.i = tail call i32 @gpiod_to_irq(ptr noundef %call.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i, i32 %irq)
  %cmp = icmp eq i32 %call1.i, %irq
  br i1 %cmp, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board, align 8
  %det_pin.i = getelementptr inbounds %struct.at91_cf_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %det_pin.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %det_pin.i, align 4
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %7) #7
  %call1.i.i = tail call i32 @gpiod_get_raw_value(ptr noundef %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  %present2 = getelementptr inbounds %struct.at91_cf_socket, ptr %_cf, i32 0, i32 1
  %8 = ptrtoint ptr %present2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %present2, align 8
  %bf.lshr = lshr i8 %bf.load, 7
  %9 = zext i1 %tobool.not.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr, i8 %9)
  %cmp3.not = icmp eq i8 %bf.lshr, %9
  br i1 %cmp3.not, label %if.then.if.end13_crit_edge, label %if.then4

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then4:                                         ; preds = %if.then
  %bf.shl = select i1 %tobool.not.i, i8 -128, i8 0
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  %10 = ptrtoint ptr %present2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %bf.set, ptr %present2, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_cf_irq.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at91_cf_irq, %if.then10)) #7
          to label %do.end [label %if.then10], !srcloc !70

if.then10:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.at91_cf_socket, ptr %_cf, i32 0, i32 2
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  %cond = select i1 %tobool.not.i, ptr @.str.15, ptr @.str.16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_cf_irq.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull %cond) #7
  br label %do.end

do.end:                                           ; preds = %if.then10, %if.then4
  tail call void @pcmcia_parse_events(ptr noundef %_cf, i32 noundef 128) #7
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_remap_iospace(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_socket(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_parse_events(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_raw_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @at91_cf_ss_init(ptr nocapture noundef readnone %s) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_cf_ss_suspend(ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @at91_cf_set_socket(ptr noundef %s, ptr noundef nonnull @dead_socket)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_cf_get_status(ptr nocapture noundef readonly %s, ptr noundef %sp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %board.i = getelementptr inbounds %struct.at91_cf_socket, ptr %s, i32 0, i32 3
  %0 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board.i, align 8
  %det_pin.i = getelementptr inbounds %struct.at91_cf_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %det_pin.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %det_pin.i, align 4
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %3) #7
  %call1.i.i = tail call i32 @gpiod_get_raw_value(ptr noundef %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.not, label %if.then2, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then2:                                         ; preds = %if.end
  %4 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %7)
  %8 = icmp ult i32 %7, 2048
  %vcc_pin = getelementptr inbounds %struct.at91_cf_data, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %vcc_pin to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vcc_pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %10)
  %11 = icmp ult i32 %10, 2048
  %12 = ptrtoint ptr %sp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4224, ptr %sp, align 4
  br i1 %8, label %lor.lhs.false, label %if.then2.if.then12_crit_edge

if.then2.if.then12_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.then2
  %13 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %board.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %16) #7
  %call1.i = tail call i32 @gpiod_get_raw_value(ptr noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool11.not = icmp eq i32 %call1.i, 0
  br i1 %tobool11.not, label %lor.lhs.false.if.end13_crit_edge, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.then2.if.then12_crit_edge
  %17 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sp, align 4
  %or = or i32 %18, 64
  store i32 %or, ptr %sp, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %lor.lhs.false.if.end13_crit_edge
  br i1 %11, label %lor.lhs.false15, label %if.end13.if.then20_crit_edge

if.end13.if.then20_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

lor.lhs.false15:                                  ; preds = %if.end13
  %19 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %board.i, align 8
  %vcc_pin17 = getelementptr inbounds %struct.at91_cf_data, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %vcc_pin17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vcc_pin17, align 4
  %call.i32 = tail call ptr @gpio_to_desc(i32 noundef %22) #7
  %call1.i33 = tail call i32 @gpiod_get_raw_value(ptr noundef %call.i32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i33)
  %tobool19.not = icmp eq i32 %call1.i33, 0
  br i1 %tobool19.not, label %lor.lhs.false15.cleanup_crit_edge, label %lor.lhs.false15.if.then20_crit_edge

lor.lhs.false15.if.then20_crit_edge:              ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

lor.lhs.false15.cleanup_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20:                                        ; preds = %lor.lhs.false15.if.then20_crit_edge, %if.end13.if.then20_crit_edge
  %23 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sp, align 4
  %or21 = or i32 %24, 256
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then20, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %or21, %if.then20 ], [ 0, %if.end.cleanup.sink.split_crit_edge ]
  %25 = ptrtoint ptr %sp to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %sp, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false15.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_cf_set_socket(ptr nocapture noundef readonly %sock, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %board = getelementptr inbounds %struct.at91_cf_socket, ptr %sock, i32 0, i32 3
  %0 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board, align 8
  %vcc_pin = getelementptr inbounds %struct.at91_cf_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vcc_pin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vcc_pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %3)
  %4 = icmp ult i32 %3, 2048
  br i1 %4, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %Vcc = getelementptr inbounds %struct.socket_state_t, ptr %s, i32 0, i32 2
  %5 = ptrtoint ptr %Vcc to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %Vcc, align 4
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %if.then.cleanup_crit_edge [
    i8 0, label %if.then.if.end.sink.split_crit_edge
    i8 33, label %sw.bb3
  ]

if.then.if.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb3:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %sw.bb3, %if.then.if.end.sink.split_crit_edge
  %.sink = phi i32 [ 1, %sw.bb3 ], [ 0, %if.then.if.end.sink.split_crit_edge ]
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %3) #7
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef %.sink) #7
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %board, align 8
  %rst_pin = getelementptr inbounds %struct.at91_cf_data, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %rst_pin to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rst_pin, align 4
  %12 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s, align 4
  %and = and i32 %13, 64
  %call.i27 = tail call ptr @gpio_to_desc(i32 noundef %11) #7
  tail call void @gpiod_set_raw_value(ptr noundef %call.i27, i32 noundef %and) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_cf_set_socket.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at91_cf_set_socket, %if.then11)) #7
          to label %cleanup [label %if.then11], !srcloc !70

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.at91_cf_socket, ptr %sock, i32 0, i32 2
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %Vcc12 = getelementptr inbounds %struct.socket_state_t, ptr %s, i32 0, i32 2
  %16 = ptrtoint ptr %Vcc12 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %Vcc12, align 4
  %conv13 = zext i8 %17 to i32
  %io_irq = getelementptr inbounds %struct.socket_state_t, ptr %s, i32 0, i32 4
  %18 = ptrtoint ptr %io_irq to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %io_irq, align 2
  %conv14 = zext i8 %19 to i32
  %20 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s, align 4
  %csc_mask = getelementptr inbounds %struct.socket_state_t, ptr %s, i32 0, i32 1
  %22 = ptrtoint ptr %csc_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %csc_mask, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_cf_set_socket.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %conv13, i32 noundef %conv14, i32 noundef %21, i32 noundef %23) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ 0, %if.then11 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_cf_set_io_map(ptr nocapture noundef readonly %s, ptr nocapture noundef %io) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.pccard_io_map, ptr %io, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 1
  %2 = and i8 %1, 7
  store i8 %2, ptr %flags, align 1
  %3 = and i8 %1, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_cf_set_io_map.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at91_cf_set_io_map, %if.then9)) #7
          to label %if.end28 [label %if.then9], !srcloc !70

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.at91_cf_socket, ptr %s, i32 0, i32 2
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_cf_set_io_map.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.20) #7
  br label %if.end28

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_cf_set_io_map.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at91_cf_set_io_map, %if.then22)) #7
          to label %if.end28 [label %if.then22], !srcloc !70

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %pdev23 = getelementptr inbounds %struct.at91_cf_socket, ptr %s, i32 0, i32 2
  %6 = ptrtoint ptr %pdev23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev23, align 4
  %dev24 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_cf_set_io_map.__UNIQUE_ID_ddebug239, ptr noundef %dev24, ptr noundef nonnull @.str.21) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then22, %if.else, %if.then9, %if.then
  %csr.0 = phi i32 [ 8192, %if.then22 ], [ 16384, %if.then9 ], [ 16384, %if.then ], [ 8192, %if.else ]
  %8 = load ptr, ptr @mc, align 4
  %board = getelementptr inbounds %struct.at91_cf_socket, ptr %s, i32 0, i32 3
  %9 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %board, align 8
  %chipselect = getelementptr inbounds %struct.at91_cf_data, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %chipselect to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %chipselect, align 4
  %conv29 = zext i8 %12 to i32
  %mul = shl nuw nsw i32 %conv29, 2
  %add = add nuw nsw i32 %mul, 112
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %add, i32 noundef 24576, i32 noundef %csr.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %io_offset = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 19
  %13 = ptrtoint ptr %io_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_offset, align 8
  %start = getelementptr inbounds %struct.pccard_io_map, ptr %io, i32 0, i32 3
  %15 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %start, align 4
  %sub = add i32 %14, 2047
  %stop = getelementptr inbounds %struct.pccard_io_map, ptr %io, i32 0, i32 4
  %16 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub, ptr %stop, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @at91_cf_set_mem_map(ptr nocapture noundef readonly %s, ptr nocapture noundef %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %card_start = getelementptr inbounds %struct.pccard_mem_map, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %card_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %card_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.pccard_mem_map, ptr %map, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 1
  %4 = and i8 %3, 35
  store i8 %4, ptr %flags, align 1
  %5 = and i8 %3, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  %phys_baseaddr7 = getelementptr inbounds %struct.at91_cf_socket, ptr %s, i32 0, i32 4
  %6 = ptrtoint ptr %phys_baseaddr7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phys_baseaddr7, align 4
  %add8 = add i32 %7, 25163776
  %.sink = select i1 %tobool5.not, i32 %add8, i32 %7
  %static_start = getelementptr inbounds %struct.pccard_mem_map, ptr %map, i32 0, i32 3
  %8 = ptrtoint ptr %static_start to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %static_start, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_socket(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !42, !43, !44, !45, !46, !48, !50, !51, !52, !54, !55, !56, !58, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__initcall__kmod_at91_cf__240_402_at91_cf_driver_init6, !1, !"__initcall__kmod_at91_cf__240_402_at91_cf_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pcmcia/at91_cf.c", i32 402, i32 1}
!2 = !{ptr @__exitcall_at91_cf_driver_exit, !1, !"__exitcall_at91_cf_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description241, !4, !"__UNIQUE_ID_description241", i1 false, i1 false}
!4 = !{!"../drivers/pcmcia/at91_cf.c", i32 404, i32 1}
!5 = !{ptr @__UNIQUE_ID_author242, !6, !"__UNIQUE_ID_author242", i1 false, i1 false}
!6 = !{!"../drivers/pcmcia/at91_cf.c", i32 405, i32 1}
!7 = !{ptr @__UNIQUE_ID_file243, !8, !"__UNIQUE_ID_file243", i1 false, i1 false}
!8 = !{!"../drivers/pcmcia/at91_cf.c", i32 406, i32 1}
!9 = !{ptr @__UNIQUE_ID_license244, !8, !"__UNIQUE_ID_license244", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias245, !11, !"__UNIQUE_ID_alias245", i1 false, i1 false}
!11 = !{!"../drivers/pcmcia/at91_cf.c", i32 407, i32 1}
!12 = !{ptr @mc, !13, !"mc", i1 false, i1 false}
!13 = !{!"../drivers/pcmcia/at91_cf.c", i32 49, i32 16}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pcmcia/at91_cf.c", i32 393, i32 12}
!16 = !{ptr @at91_cf_driver, !17, !"at91_cf_driver", i1 false, i1 false}
!17 = !{!"../drivers/pcmcia/at91_cf.c", i32 391, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pcmcia/at91_cf.c", i32 246, i32 42}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pcmcia/at91_cf.c", i32 267, i32 57}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pcmcia/at91_cf.c", i32 272, i32 22}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pcmcia/at91_cf.c", i32 278, i32 57}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pcmcia/at91_cf.c", i32 283, i32 58}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pcmcia/at91_cf.c", i32 295, i32 58}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pcmcia/at91_cf.c", i32 324, i32 2}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @at91_cf_probe._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @at91_cf_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/of_gpio.h", i32 121, i32 37}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pcmcia/at91_cf.c", i32 86, i32 4}
!42 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @at91_cf_irq.__UNIQUE_ID_ddebug236, !41, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!44 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @at91_cf_ops, !47, !"at91_cf_ops", i1 false, i1 false}
!47 = !{!"../drivers/pcmcia/at91_cf.c", i32 212, i32 33}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pcmcia/at91_cf.c", i32 144, i32 2}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @at91_cf_set_socket.__UNIQUE_ID_ddebug237, !49, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pcmcia/at91_cf.c", i32 178, i32 3}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @at91_cf_set_io_map.__UNIQUE_ID_ddebug238, !53, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pcmcia/at91_cf.c", i32 181, i32 3}
!58 = !{ptr @at91_cf_set_io_map.__UNIQUE_ID_ddebug239, !57, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!59 = !{ptr @at91_cf_dt_ids, !60, !"at91_cf_dt_ids", i1 false, i1 false}
!60 = !{!"../drivers/pcmcia/at91_cf.c", i32 223, i32 34}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i64 2148961788, i64 2148961793, i64 2148961806, i64 2148961850, i64 2148961884, i64 2148961905}
