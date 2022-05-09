; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-st-ssc4.c_pt.bc'
source_filename = "../drivers/spi/spi-st-ssc4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_st = type { ptr, ptr, ptr, ptr, ptr, i16, i32, i32, %struct.completion }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_spi_st_ssc4__236_479_spi_st_driver_init6 = internal global ptr @spi_st_driver_init, section ".initcall6.init", align 4
@spi_st_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @spi_st_probe, ptr @spi_st_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm_spi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spi_st_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_spi_st_driver_exit = internal global ptr @spi_st_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [60 x i8] c"spi_st_ssc4.author=Patrice Chotard <patrice.chotard@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [43 x i8] c"spi_st_ssc4.description=STM SSC SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [41 x i8] c"spi_st_ssc4.file=drivers/spi/spi-st-ssc4\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [27 x i8] c"spi_st_ssc4.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spi-st\00", [25 x i8] zeroinitializer }, align 32
@stm_spi_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,comms-ssc4-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@spi_st_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @spi_st_suspend, ptr @spi_st_resume, ptr @spi_st_suspend, ptr @spi_st_resume, ptr @spi_st_suspend, ptr @spi_st_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spi_st_runtime_suspend, ptr @spi_st_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ssc\00", [28 x i8] zeroinitializer }, align 32
@spi_st_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 321, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to request clock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spi_st_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/spi/spi-st-ssc4.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@spi_st_probe._entry_ptr = internal global ptr @spi_st_probe._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@spi_st_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 357, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IRQ missing or invalid\0A\00", [40 x i8] zeroinitializer }, align 32
@spi_st_probe._entry_ptr.9 = internal global ptr @spi_st_probe._entry.7, section ".printk_index", align 4
@spi_st_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 365, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@spi_st_probe._entry_ptr.12 = internal global ptr @spi_st_probe._entry.10, section ".printk_index", align 4
@spi_st_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 377, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to register master\0A\00", [37 x i8] zeroinitializer }, align 32
@spi_st_probe._entry_ptr.15 = internal global ptr @spi_st_probe._entry.13, section ".printk_index", align 4
@spi_st_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 190, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max_speed_hz unspecified\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spi_st_setup\00", [19 x i8] zeroinitializer }, align 32
@spi_st_setup._entry_ptr = internal global ptr @spi_st_setup._entry, section ".printk_index", align 4
@spi_st_setup._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.4, i32 195, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%d is not a valid gpio\0A\00", [40 x i8] zeroinitializer }, align 32
@spi_st_setup._entry_ptr.20 = internal global ptr @spi_st_setup._entry.18, section ".printk_index", align 4
@spi_st_setup._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.4, i32 201, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not request gpio:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@spi_st_setup._entry_ptr.23 = internal global ptr @spi_st_setup._entry.21, section ".printk_index", align 4
@spi_st_setup._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.4, i32 215, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"baudrate %d outside valid range %d\0A\00", [60 x i8] zeroinitializer }, align 32
@spi_st_setup._entry_ptr.26 = internal global ptr @spi_st_setup._entry.24, section ".printk_index", align 4
@spi_st_setup.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.17, ptr @.str.4, ptr @.str.28, i8 0, i8 57, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_st_ssc4\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"setting baudrate:target= %u hz, actual= %u hz, sscbrg= %u\0A\00", [37 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"spi_st_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 470, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 472, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"stm_spi_match\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 464, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [10 x i8] c"spi_st_pm\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 459, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 319, i32 41 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 321, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 357, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 365, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 377, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 190, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 195, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 201, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 214, i32 3 }
@___asan_gen_.112 = private constant [29 x i8] c"../drivers/spi/spi-st-ssc4.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 226, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 87, i32 2 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_spi_st_driver_exit, ptr @__initcall__kmod_spi_st_ssc4__236_479_spi_st_driver_init6, ptr @spi_st_driver_exit, ptr @spi_st_probe._entry, ptr @spi_st_probe._entry.10, ptr @spi_st_probe._entry.13, ptr @spi_st_probe._entry.7, ptr @spi_st_probe._entry_ptr, ptr @spi_st_probe._entry_ptr.12, ptr @spi_st_probe._entry_ptr.15, ptr @spi_st_probe._entry_ptr.9, ptr @spi_st_setup._entry, ptr @spi_st_setup._entry.18, ptr @spi_st_setup._entry.21, ptr @spi_st_setup._entry.24, ptr @spi_st_setup._entry_ptr, ptr @spi_st_setup._entry_ptr.20, ptr @spi_st_setup._entry_ptr.23, ptr @spi_st_setup._entry_ptr.26, ptr @spi_st_driver, ptr @.str, ptr @stm_spi_match, ptr @spi_st_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @init_completion.__key, ptr @.str.29], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_st_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm_spi_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_st_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_st_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_st_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_st_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_st_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_st_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_st_setup._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_st_setup._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_st_setup._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_st_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @spi_st_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @spi_st_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @spi_st_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_st_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 88, i1 noundef zeroext false) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup79_crit_edge, label %if.end

entry.cleanup79_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup79

if.end:                                           ; preds = %entry
  %of_node3 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %2 = ptrtoint ptr %of_node3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %of_node3, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 47, ptr %mode_bits, align 8
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %4 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @spi_st_setup, ptr %setup, align 4
  %cleanup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 23
  %5 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @spi_st_cleanup, ptr %cleanup, align 8
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %6 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @spi_st_transfer_one, ptr %transfer_one, align 4
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 32896, ptr %bits_per_word_mask, align 8
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 36
  %8 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %auto_runtime_pm, align 4
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %conv = trunc i32 %10 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %bus_num, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %call6 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #5
  %clk = getelementptr inbounds %struct.spi_st, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call6, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %spi_controller_put.exit

if.end13:                                         ; preds = %if.end
  %call.i139 = tail call i32 @clk_prepare(ptr noundef %call6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %tobool.not.i = icmp eq i32 %call.i139, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end13.spi_controller_put.exit_crit_edge

if.end13.spi_controller_put.exit_crit_edge:       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_controller_put.exit

if.end.i:                                         ; preds = %if.end13
  %call1.i = tail call i32 @clk_enable(ptr noundef %call6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end18, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call6) #5
  br label %spi_controller_put.exit

if.end18:                                         ; preds = %if.end.i
  %done = getelementptr inbounds %struct.spi_st, ptr %13, i32 0, i32 8
  %18 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.spi_st, ptr %13, i32 0, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @init_completion.__key) #5
  %call19 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call19, ptr %13, align 4
  %cmp.i140 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i140, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %call19 to i32
  br label %clk_disable

if.end25:                                         ; preds = %if.end18
  %add.ptr = getelementptr i8, ptr %call19, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !73
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %13, align 4
  %add.ptr28 = getelementptr i8, ptr %22, i32 12
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr28) #5, !srcloc !74
  %24 = or i16 %23, -32768
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %or = zext i16 %25 to i32
  %26 = tail call i32 @llvm.bswap.i32(i32 %or)
  %27 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %13, align 4
  %add.ptr32 = getelementptr i8, ptr %28, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %26) #5, !srcloc !73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #5
  %30 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %13, align 4
  %add.ptr35 = getelementptr i8, ptr %31, i32 12
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #5, !srcloc !75
  %33 = and i32 %32, 2147483647
  %34 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %13, align 4
  %add.ptr39 = getelementptr i8, ptr %35, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %33) #5, !srcloc !73
  %36 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %13, align 4
  %add.ptr42 = getelementptr i8, ptr %37, i32 12
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #5, !srcloc !75
  %39 = and i32 %38, -65537
  %40 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %13, align 4
  %add.ptr47 = getelementptr i8, ptr %41, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %39) #5, !srcloc !73
  %call48 = tail call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %do.end53, label %if.end55

do.end53:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  br label %clk_disable

if.end55:                                         ; preds = %if.end25
  %42 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev, align 8
  %call.i141 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call48, ptr noundef nonnull @spi_st_irq, ptr noundef null, i32 noundef 0, ptr noundef %43, ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %tobool58.not = icmp eq i32 %call.i141, 0
  br i1 %tobool58.not, label %if.end64, label %do.end62

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call48) #8
  br label %clk_disable

if.end64:                                         ; preds = %if.end55
  %call.i142 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #5
  tail call void @pm_runtime_enable(ptr noundef %dev) #5
  %driver_data.i.i143 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %44 = ptrtoint ptr %driver_data.i.i143 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %driver_data.i.i143, align 4
  %call69 = tail call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end64.cleanup79_crit_edge, label %do.end74

if.end64.cleanup79_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup79

do.end74:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  br label %clk_disable

clk_disable:                                      ; preds = %do.end74, %do.end62, %do.end53, %if.then22
  %ret.0 = phi i32 [ %20, %if.then22 ], [ %call.i141, %do.end62 ], [ %call69, %do.end74 ], [ -22, %do.end53 ]
  %45 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %46) #5
  tail call void @clk_unprepare(ptr noundef %46) #5
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %clk_disable, %if.then3.i, %if.end13.spi_controller_put.exit_crit_edge, %do.end
  %ret.1 = phi i32 [ %17, %do.end ], [ %ret.0, %clk_disable ], [ %call1.i, %if.then3.i ], [ %call.i139, %if.end13.spi_controller_put.exit_crit_edge ]
  tail call void @put_device(ptr noundef nonnull %call.i) #5
  br label %cleanup79

cleanup79:                                        ; preds = %spi_controller_put.exit, %if.end64.cleanup79_crit_edge, %entry.cleanup79_crit_edge
  %retval.0 = phi i32 [ %ret.1, %spi_controller_put.exit ], [ -12, %entry.cleanup79_crit_edge ], [ 0, %if.end64.cleanup79_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_st_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i6 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i6, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  %clk = getelementptr inbounds %struct.spi_st, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  %call3 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_st_setup(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %4 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_speed_hz, align 8
  %cs_gpio = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 13
  %6 = ptrtoint ptr %cs_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cs_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.16) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %7)
  %8 = icmp ult i32 %7, 2048
  br i1 %8, label %if.end7, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.19, i32 noundef %7) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %init_name.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.dev_name.exit_crit_edge

if.end7.dev_name.exit_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %spi, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end7.dev_name.exit_crit_edge
  %retval.0.i150 = phi ptr [ %12, %if.end.i ], [ %10, %if.end7.dev_name.exit_crit_edge ]
  %call10 = tail call i32 @gpio_request(i32 noundef %7, ptr noundef %retval.0.i150) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.22, i32 noundef %7) #8
  br label %cleanup

if.end17:                                         ; preds = %dev_name.exit
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode, align 8
  %and = and i32 %14, 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %7) #5
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i, i32 noundef %and) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool19.not = icmp eq i32 %call1.i, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.out_free_gpio_crit_edge

if.end17.out_free_gpio_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free_gpio

if.end21:                                         ; preds = %if.end17
  %clk = getelementptr inbounds %struct.spi_st, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk, align 4
  %call22 = tail call i32 @clk_get_rate(ptr noundef %16) #5
  %mul = shl i32 %5, 1
  %div = udiv i32 %call22, %mul
  %17 = add i32 %div, -65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65530, i32 %17)
  %18 = icmp ult i32 %17, -65530
  br i1 %18, label %do.end27, label %if.end29

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.25, i32 noundef %div, i32 noundef %5) #8
  br label %out_free_gpio

if.end29:                                         ; preds = %if.end21
  %mul30 = shl nuw nsw i32 %div, 1
  %div31 = udiv i32 %call22, %mul30
  %baud = getelementptr inbounds %struct.spi_st, ptr %3, i32 0, i32 7
  %19 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div31, ptr %baud, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %div)
  %cmp32 = icmp eq i32 %div, 65536
  %spec.store.select = select i1 %cmp32, i32 0, i32 %div
  %20 = tail call i32 @llvm.bswap.i32(i32 %spec.store.select)
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #5, !srcloc !73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_st_setup.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spi_st_setup, %do.end46)) #5
          to label %if.then41 [label %do.end46], !srcloc !76

if.then41:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %baud, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_st_setup.__UNIQUE_ID_ddebug235, ptr noundef %spi, ptr noundef nonnull @.str.28, i32 noundef %5, i32 noundef %24, i32 noundef %spec.store.select) #5
  br label %do.end46

do.end46:                                         ; preds = %if.then41, %if.end29
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %add.ptr48 = getelementptr i8, ptr %26, i32 12
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #5, !srcloc !75
  %28 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mode, align 8
  %and52 = shl i32 %29, 5
  %30 = and i32 %and52, 64
  %31 = and i32 %and52, 32
  %and67 = shl i32 %29, 1
  %32 = and i32 %and67, 16
  %33 = and i32 %and52, 1024
  %34 = and i32 %27, -2132738049
  %35 = or i32 %34, 65536
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %and64.masked.masked.masked = or i32 %36, %30
  %and72.masked.masked = or i32 %and64.masked.masked.masked, %31
  %var.2.masked = or i32 %and72.masked.masked, %32
  %var.3 = or i32 %var.2.masked, %33
  %and82 = xor i32 %var.3, 16
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %37 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bits_per_word, align 1
  %conv = zext i8 %38 to i32
  %sub = add nsw i32 %conv, -1
  %or83 = or i32 %sub, %and82
  %or85 = or i32 %or83, 6656
  %39 = tail call i32 @llvm.bswap.i32(i32 %or85)
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  %add.ptr87 = getelementptr i8, ptr %41, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 %39) #5, !srcloc !73
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 4
  %add.ptr90 = getelementptr i8, ptr %43, i32 8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #5, !srcloc !75
  br label %cleanup

out_free_gpio:                                    ; preds = %do.end27, %if.end17.out_free_gpio_crit_edge
  %ret.0 = phi i32 [ %call1.i, %if.end17.out_free_gpio_crit_edge ], [ -22, %do.end27 ]
  tail call void @gpio_free(i32 noundef %7) #5
  br label %cleanup

cleanup:                                          ; preds = %out_free_gpio, %do.end46, %do.end15, %do.end5, %do.end
  %retval.0 = phi i32 [ %call10, %do.end15 ], [ %ret.0, %out_free_gpio ], [ 0, %do.end46 ], [ -22, %do.end5 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_st_cleanup(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cs_gpio = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 13
  %0 = ptrtoint ptr %cs_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cs_gpio, align 4
  tail call void @gpio_free(i32 noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_st_transfer_one(ptr nocapture noundef readonly %master, ptr nocapture noundef readonly %spi, ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t, align 4
  %tx_ptr = getelementptr inbounds %struct.spi_st, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %tx_ptr, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %5 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_buf, align 4
  %rx_ptr = getelementptr inbounds %struct.spi_st, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %rx_ptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %rx_ptr, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %8 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %9)
  %cmp = icmp ugt i8 %9, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bytes_per_word = getelementptr inbounds %struct.spi_st, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %bytes_per_word to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %bytes_per_word, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %div61 = lshr i32 %12, 1
  %words_remaining = getelementptr inbounds %struct.spi_st, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %words_remaining to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div61, ptr %words_remaining, align 4
  br label %if.end24

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %9)
  %cmp4 = icmp eq i8 %9, 8
  br i1 %cmp4, label %land.lhs.true, label %if.else.if.else20_crit_edge

if.else.if.else20_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else20

land.lhs.true:                                    ; preds = %if.else
  %len6 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %14 = ptrtoint ptr %len6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len6, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then7, label %land.lhs.true.if.else20_crit_edge

land.lhs.true.if.else20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else20

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %bytes_per_word8 = getelementptr inbounds %struct.spi_st, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %bytes_per_word8 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %bytes_per_word8, align 4
  %17 = ptrtoint ptr %len6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len6, align 4
  %div1060 = lshr i32 %18, 1
  %words_remaining11 = getelementptr inbounds %struct.spi_st, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %words_remaining11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div1060, ptr %words_remaining11, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !75
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %or = or i32 %23, 15
  %24 = tail call i32 @llvm.bswap.i32(i32 %or)
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %add.ptr14 = getelementptr i8, ptr %26, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %24) #5, !srcloc !73
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %add.ptr17 = getelementptr i8, ptr %28, i32 8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #5, !srcloc !75
  br label %if.end24

if.else20:                                        ; preds = %land.lhs.true.if.else20_crit_edge, %if.else.if.else20_crit_edge
  %bytes_per_word21 = getelementptr inbounds %struct.spi_st, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %bytes_per_word21 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %bytes_per_word21, align 4
  %len22 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %31 = ptrtoint ptr %len22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len22, align 4
  %words_remaining23 = getelementptr inbounds %struct.spi_st, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %words_remaining23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %words_remaining23, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else20, %if.then7, %if.then
  %ctl.0 = phi i32 [ 0, %if.then ], [ 0, %if.else20 ], [ %23, %if.then7 ]
  %done = getelementptr inbounds %struct.spi_st, ptr %1, i32 0, i32 8
  %34 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %done, align 4
  %words_remaining.i = getelementptr inbounds %struct.spi_st, ptr %1, i32 0, i32 6
  %35 = ptrtoint ptr %words_remaining.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %words_remaining.i, align 4
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp228.not.i = icmp eq i32 %37, 0
  br i1 %cmp228.not.i, label %if.end24.ssc_write_tx_fifo.exit_crit_edge, label %for.body.lr.ph.i

if.end24.ssc_write_tx_fifo.exit_crit_edge:        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssc_write_tx_fifo.exit

for.body.lr.ph.i:                                 ; preds = %if.end24
  %bytes_per_word.i = getelementptr inbounds %struct.spi_st, ptr %1, i32 0, i32 5
  %38 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tx_ptr, align 4
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %for.body.lr.ph.i.if.end17.i_crit_edge, label %if.then3.i

for.body.lr.ph.i.if.end17.i_crit_edge:            ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

if.then3.i:                                       ; preds = %for.body.lr.ph.i
  %40 = ptrtoint ptr %bytes_per_word.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %bytes_per_word.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %41)
  %cmp4.i = icmp eq i16 %41, 1
  %incdec.ptr.i = getelementptr i8, ptr %39, i32 1
  %42 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %incdec.ptr.i, ptr %tx_ptr, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %39, align 1
  %conv8.i = zext i8 %44 to i32
  br i1 %cmp4.i, label %if.then3.i.if.end17.i_crit_edge, label %if.else9.i

if.then3.i.if.end17.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

if.else9.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr14.i = getelementptr i8, ptr %39, i32 2
  %45 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %incdec.ptr14.i, ptr %tx_ptr, align 4
  %46 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %incdec.ptr.i, align 1
  %conv15.i = zext i8 %47 to i32
  %shl.i = shl nuw nsw i32 %conv8.i, 8
  %or.i = or i32 %shl.i, %conv15.i
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else9.i, %if.then3.i.if.end17.i_crit_edge, %for.body.lr.ph.i.if.end17.i_crit_edge
  %word.1.i = phi i32 [ %or.i, %if.else9.i ], [ 0, %for.body.lr.ph.i.if.end17.i_crit_edge ], [ %conv8.i, %if.then3.i.if.end17.i_crit_edge ]
  %48 = tail call i32 @llvm.bswap.i32(i32 %word.1.i) #5
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %50, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %48) #5, !srcloc !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %exitcond.not.i = icmp eq i32 %37, 1
  br i1 %exitcond.not.i, label %if.end17.i.ssc_write_tx_fifo.exit_crit_edge, label %for.body.i.1

if.end17.i.ssc_write_tx_fifo.exit_crit_edge:      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssc_write_tx_fifo.exit

for.body.i.1:                                     ; preds = %if.end17.i
  %51 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tx_ptr, align 4
  %tobool.not.i.1 = icmp eq ptr %52, null
  br i1 %tobool.not.i.1, label %for.body.i.1.if.end17.i.1_crit_edge, label %if.then3.i.1

for.body.i.1.if.end17.i.1_crit_edge:              ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i.1

if.then3.i.1:                                     ; preds = %for.body.i.1
  %53 = ptrtoint ptr %bytes_per_word.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %bytes_per_word.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %54)
  %cmp4.i.1 = icmp eq i16 %54, 1
  %incdec.ptr.i.1 = getelementptr i8, ptr %52, i32 1
  %55 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %incdec.ptr.i.1, ptr %tx_ptr, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %52, align 1
  %conv8.i.1 = zext i8 %57 to i32
  br i1 %cmp4.i.1, label %if.then3.i.1.if.end17.i.1_crit_edge, label %if.else9.i.1

if.then3.i.1.if.end17.i.1_crit_edge:              ; preds = %if.then3.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i.1

if.else9.i.1:                                     ; preds = %if.then3.i.1
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr14.i.1 = getelementptr i8, ptr %52, i32 2
  %58 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %incdec.ptr14.i.1, ptr %tx_ptr, align 4
  %59 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %incdec.ptr.i.1, align 1
  %conv15.i.1 = zext i8 %60 to i32
  %shl.i.1 = shl nuw nsw i32 %conv8.i.1, 8
  %or.i.1 = or i32 %shl.i.1, %conv15.i.1
  br label %if.end17.i.1

if.end17.i.1:                                     ; preds = %if.else9.i.1, %if.then3.i.1.if.end17.i.1_crit_edge, %for.body.i.1.if.end17.i.1_crit_edge
  %word.1.i.1 = phi i32 [ %or.i.1, %if.else9.i.1 ], [ %word.1.i, %for.body.i.1.if.end17.i.1_crit_edge ], [ %conv8.i.1, %if.then3.i.1.if.end17.i.1_crit_edge ]
  %61 = tail call i32 @llvm.bswap.i32(i32 %word.1.i.1) #5
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %63, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 %61) #5, !srcloc !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %exitcond.not.i.1 = icmp eq i32 %37, 2
  br i1 %exitcond.not.i.1, label %if.end17.i.1.ssc_write_tx_fifo.exit_crit_edge, label %for.body.i.2

if.end17.i.1.ssc_write_tx_fifo.exit_crit_edge:    ; preds = %if.end17.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssc_write_tx_fifo.exit

for.body.i.2:                                     ; preds = %if.end17.i.1
  %64 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tx_ptr, align 4
  %tobool.not.i.2 = icmp eq ptr %65, null
  br i1 %tobool.not.i.2, label %for.body.i.2.if.end17.i.2_crit_edge, label %if.then3.i.2

for.body.i.2.if.end17.i.2_crit_edge:              ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i.2

if.then3.i.2:                                     ; preds = %for.body.i.2
  %66 = ptrtoint ptr %bytes_per_word.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %bytes_per_word.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %67)
  %cmp4.i.2 = icmp eq i16 %67, 1
  %incdec.ptr.i.2 = getelementptr i8, ptr %65, i32 1
  %68 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %incdec.ptr.i.2, ptr %tx_ptr, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %65, align 1
  %conv8.i.2 = zext i8 %70 to i32
  br i1 %cmp4.i.2, label %if.then3.i.2.if.end17.i.2_crit_edge, label %if.else9.i.2

if.then3.i.2.if.end17.i.2_crit_edge:              ; preds = %if.then3.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i.2

if.else9.i.2:                                     ; preds = %if.then3.i.2
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr14.i.2 = getelementptr i8, ptr %65, i32 2
  %71 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %incdec.ptr14.i.2, ptr %tx_ptr, align 4
  %72 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %incdec.ptr.i.2, align 1
  %conv15.i.2 = zext i8 %73 to i32
  %shl.i.2 = shl nuw nsw i32 %conv8.i.2, 8
  %or.i.2 = or i32 %shl.i.2, %conv15.i.2
  br label %if.end17.i.2

if.end17.i.2:                                     ; preds = %if.else9.i.2, %if.then3.i.2.if.end17.i.2_crit_edge, %for.body.i.2.if.end17.i.2_crit_edge
  %word.1.i.2 = phi i32 [ %or.i.2, %if.else9.i.2 ], [ %word.1.i.1, %for.body.i.2.if.end17.i.2_crit_edge ], [ %conv8.i.2, %if.then3.i.2.if.end17.i.2_crit_edge ]
  %74 = tail call i32 @llvm.bswap.i32(i32 %word.1.i.2) #5
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %76, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 %74) #5, !srcloc !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %exitcond.not.i.2 = icmp eq i32 %37, 3
  br i1 %exitcond.not.i.2, label %if.end17.i.2.ssc_write_tx_fifo.exit_crit_edge, label %for.body.i.3

if.end17.i.2.ssc_write_tx_fifo.exit_crit_edge:    ; preds = %if.end17.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssc_write_tx_fifo.exit

for.body.i.3:                                     ; preds = %if.end17.i.2
  %77 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tx_ptr, align 4
  %tobool.not.i.3 = icmp eq ptr %78, null
  br i1 %tobool.not.i.3, label %for.body.i.3.if.end17.i.3_crit_edge, label %if.then3.i.3

for.body.i.3.if.end17.i.3_crit_edge:              ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i.3

if.then3.i.3:                                     ; preds = %for.body.i.3
  %79 = ptrtoint ptr %bytes_per_word.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %bytes_per_word.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %80)
  %cmp4.i.3 = icmp eq i16 %80, 1
  %incdec.ptr.i.3 = getelementptr i8, ptr %78, i32 1
  %81 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %incdec.ptr.i.3, ptr %tx_ptr, align 4
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %78, align 1
  %conv8.i.3 = zext i8 %83 to i32
  br i1 %cmp4.i.3, label %if.then3.i.3.if.end17.i.3_crit_edge, label %if.else9.i.3

if.then3.i.3.if.end17.i.3_crit_edge:              ; preds = %if.then3.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i.3

if.else9.i.3:                                     ; preds = %if.then3.i.3
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr14.i.3 = getelementptr i8, ptr %78, i32 2
  %84 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %incdec.ptr14.i.3, ptr %tx_ptr, align 4
  %85 = ptrtoint ptr %incdec.ptr.i.3 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %incdec.ptr.i.3, align 1
  %conv15.i.3 = zext i8 %86 to i32
  %shl.i.3 = shl nuw nsw i32 %conv8.i.3, 8
  %or.i.3 = or i32 %shl.i.3, %conv15.i.3
  br label %if.end17.i.3

if.end17.i.3:                                     ; preds = %if.else9.i.3, %if.then3.i.3.if.end17.i.3_crit_edge, %for.body.i.3.if.end17.i.3_crit_edge
  %word.1.i.3 = phi i32 [ %or.i.3, %if.else9.i.3 ], [ %word.1.i.2, %for.body.i.3.if.end17.i.3_crit_edge ], [ %conv8.i.3, %if.then3.i.3.if.end17.i.3_crit_edge ]
  %87 = tail call i32 @llvm.bswap.i32(i32 %word.1.i.3) #5
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %89, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 %87) #5, !srcloc !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %37)
  %exitcond.not.i.3 = icmp eq i32 %37, 4
  br i1 %exitcond.not.i.3, label %if.end17.i.3.ssc_write_tx_fifo.exit_crit_edge, label %for.body.i.4

if.end17.i.3.ssc_write_tx_fifo.exit_crit_edge:    ; preds = %if.end17.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssc_write_tx_fifo.exit

for.body.i.4:                                     ; preds = %if.end17.i.3
  %90 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tx_ptr, align 4
  %tobool.not.i.4 = icmp eq ptr %91, null
  br i1 %tobool.not.i.4, label %for.body.i.4.if.end17.i.4_crit_edge, label %if.then3.i.4

for.body.i.4.if.end17.i.4_crit_edge:              ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i.4

if.then3.i.4:                                     ; preds = %for.body.i.4
  %92 = ptrtoint ptr %bytes_per_word.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %bytes_per_word.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %93)
  %cmp4.i.4 = icmp eq i16 %93, 1
  %incdec.ptr.i.4 = getelementptr i8, ptr %91, i32 1
  %94 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %incdec.ptr.i.4, ptr %tx_ptr, align 4
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %91, align 1
  %conv8.i.4 = zext i8 %96 to i32
  br i1 %cmp4.i.4, label %if.then3.i.4.if.end17.i.4_crit_edge, label %if.else9.i.4

if.then3.i.4.if.end17.i.4_crit_edge:              ; preds = %if.then3.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i.4

if.else9.i.4:                                     ; preds = %if.then3.i.4
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr14.i.4 = getelementptr i8, ptr %91, i32 2
  %97 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %incdec.ptr14.i.4, ptr %tx_ptr, align 4
  %98 = ptrtoint ptr %incdec.ptr.i.4 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %incdec.ptr.i.4, align 1
  %conv15.i.4 = zext i8 %99 to i32
  %shl.i.4 = shl nuw nsw i32 %conv8.i.4, 8
  %or.i.4 = or i32 %shl.i.4, %conv15.i.4
  br label %if.end17.i.4

if.end17.i.4:                                     ; preds = %if.else9.i.4, %if.then3.i.4.if.end17.i.4_crit_edge, %for.body.i.4.if.end17.i.4_crit_edge
  %word.1.i.4 = phi i32 [ %or.i.4, %if.else9.i.4 ], [ %word.1.i.3, %for.body.i.4.if.end17.i.4_crit_edge ], [ %conv8.i.4, %if.then3.i.4.if.end17.i.4_crit_edge ]
  %100 = tail call i32 @llvm.bswap.i32(i32 %word.1.i.4) #5
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %1, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %102, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.4, i32 %100) #5, !srcloc !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %37)
  %exitcond.not.i.4 = icmp eq i32 %37, 5
  br i1 %exitcond.not.i.4, label %if.end17.i.4.ssc_write_tx_fifo.exit_crit_edge, label %for.body.i.5

if.end17.i.4.ssc_write_tx_fifo.exit_crit_edge:    ; preds = %if.end17.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssc_write_tx_fifo.exit

for.body.i.5:                                     ; preds = %if.end17.i.4
  %103 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %tx_ptr, align 4
  %tobool.not.i.5 = icmp eq ptr %104, null
  br i1 %tobool.not.i.5, label %for.body.i.5.if.end17.i.5_crit_edge, label %if.then3.i.5

for.body.i.5.if.end17.i.5_crit_edge:              ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i.5

if.then3.i.5:                                     ; preds = %for.body.i.5
  %105 = ptrtoint ptr %bytes_per_word.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %bytes_per_word.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %106)
  %cmp4.i.5 = icmp eq i16 %106, 1
  %incdec.ptr.i.5 = getelementptr i8, ptr %104, i32 1
  %107 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %incdec.ptr.i.5, ptr %tx_ptr, align 4
  %108 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %104, align 1
  %conv8.i.5 = zext i8 %109 to i32
  br i1 %cmp4.i.5, label %if.then3.i.5.if.end17.i.5_crit_edge, label %if.else9.i.5

if.then3.i.5.if.end17.i.5_crit_edge:              ; preds = %if.then3.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i.5

if.else9.i.5:                                     ; preds = %if.then3.i.5
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr14.i.5 = getelementptr i8, ptr %104, i32 2
  %110 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %incdec.ptr14.i.5, ptr %tx_ptr, align 4
  %111 = ptrtoint ptr %incdec.ptr.i.5 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %incdec.ptr.i.5, align 1
  %conv15.i.5 = zext i8 %112 to i32
  %shl.i.5 = shl nuw nsw i32 %conv8.i.5, 8
  %or.i.5 = or i32 %shl.i.5, %conv15.i.5
  br label %if.end17.i.5

if.end17.i.5:                                     ; preds = %if.else9.i.5, %if.then3.i.5.if.end17.i.5_crit_edge, %for.body.i.5.if.end17.i.5_crit_edge
  %word.1.i.5 = phi i32 [ %or.i.5, %if.else9.i.5 ], [ %word.1.i.4, %for.body.i.5.if.end17.i.5_crit_edge ], [ %conv8.i.5, %if.then3.i.5.if.end17.i.5_crit_edge ]
  %113 = tail call i32 @llvm.bswap.i32(i32 %word.1.i.5) #5
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %1, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %115, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.5, i32 %113) #5, !srcloc !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %37)
  %exitcond.not.i.5 = icmp eq i32 %37, 6
  br i1 %exitcond.not.i.5, label %if.end17.i.5.ssc_write_tx_fifo.exit_crit_edge, label %for.body.i.6

if.end17.i.5.ssc_write_tx_fifo.exit_crit_edge:    ; preds = %if.end17.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssc_write_tx_fifo.exit

for.body.i.6:                                     ; preds = %if.end17.i.5
  %116 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %tx_ptr, align 4
  %tobool.not.i.6 = icmp eq ptr %117, null
  br i1 %tobool.not.i.6, label %for.body.i.6.if.end17.i.6_crit_edge, label %if.then3.i.6

for.body.i.6.if.end17.i.6_crit_edge:              ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i.6

if.then3.i.6:                                     ; preds = %for.body.i.6
  %118 = ptrtoint ptr %bytes_per_word.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %bytes_per_word.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %119)
  %cmp4.i.6 = icmp eq i16 %119, 1
  %incdec.ptr.i.6 = getelementptr i8, ptr %117, i32 1
  %120 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %incdec.ptr.i.6, ptr %tx_ptr, align 4
  %121 = ptrtoint ptr %117 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %117, align 1
  %conv8.i.6 = zext i8 %122 to i32
  br i1 %cmp4.i.6, label %if.then3.i.6.if.end17.i.6_crit_edge, label %if.else9.i.6

if.then3.i.6.if.end17.i.6_crit_edge:              ; preds = %if.then3.i.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i.6

if.else9.i.6:                                     ; preds = %if.then3.i.6
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr14.i.6 = getelementptr i8, ptr %117, i32 2
  %123 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %incdec.ptr14.i.6, ptr %tx_ptr, align 4
  %124 = ptrtoint ptr %incdec.ptr.i.6 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %incdec.ptr.i.6, align 1
  %conv15.i.6 = zext i8 %125 to i32
  %shl.i.6 = shl nuw nsw i32 %conv8.i.6, 8
  %or.i.6 = or i32 %shl.i.6, %conv15.i.6
  br label %if.end17.i.6

if.end17.i.6:                                     ; preds = %if.else9.i.6, %if.then3.i.6.if.end17.i.6_crit_edge, %for.body.i.6.if.end17.i.6_crit_edge
  %word.1.i.6 = phi i32 [ %or.i.6, %if.else9.i.6 ], [ %word.1.i.5, %for.body.i.6.if.end17.i.6_crit_edge ], [ %conv8.i.6, %if.then3.i.6.if.end17.i.6_crit_edge ]
  %126 = tail call i32 @llvm.bswap.i32(i32 %word.1.i.6) #5
  %127 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %1, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %128, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.6, i32 %126) #5, !srcloc !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %37)
  %exitcond.not.i.6 = icmp eq i32 %37, 7
  br i1 %exitcond.not.i.6, label %if.end17.i.6.ssc_write_tx_fifo.exit_crit_edge, label %for.body.i.7

if.end17.i.6.ssc_write_tx_fifo.exit_crit_edge:    ; preds = %if.end17.i.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssc_write_tx_fifo.exit

for.body.i.7:                                     ; preds = %if.end17.i.6
  %129 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %tx_ptr, align 4
  %tobool.not.i.7 = icmp eq ptr %130, null
  br i1 %tobool.not.i.7, label %for.body.i.7.if.end17.i.7_crit_edge, label %if.then3.i.7

for.body.i.7.if.end17.i.7_crit_edge:              ; preds = %for.body.i.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i.7

if.then3.i.7:                                     ; preds = %for.body.i.7
  %131 = ptrtoint ptr %bytes_per_word.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %bytes_per_word.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %132)
  %cmp4.i.7 = icmp eq i16 %132, 1
  %incdec.ptr.i.7 = getelementptr i8, ptr %130, i32 1
  %133 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %incdec.ptr.i.7, ptr %tx_ptr, align 4
  %134 = ptrtoint ptr %130 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %130, align 1
  %conv8.i.7 = zext i8 %135 to i32
  br i1 %cmp4.i.7, label %if.then3.i.7.if.end17.i.7_crit_edge, label %if.else9.i.7

if.then3.i.7.if.end17.i.7_crit_edge:              ; preds = %if.then3.i.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i.7

if.else9.i.7:                                     ; preds = %if.then3.i.7
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr14.i.7 = getelementptr i8, ptr %130, i32 2
  %136 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %incdec.ptr14.i.7, ptr %tx_ptr, align 4
  %137 = ptrtoint ptr %incdec.ptr.i.7 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %incdec.ptr.i.7, align 1
  %conv15.i.7 = zext i8 %138 to i32
  %shl.i.7 = shl nuw nsw i32 %conv8.i.7, 8
  %or.i.7 = or i32 %shl.i.7, %conv15.i.7
  br label %if.end17.i.7

if.end17.i.7:                                     ; preds = %if.else9.i.7, %if.then3.i.7.if.end17.i.7_crit_edge, %for.body.i.7.if.end17.i.7_crit_edge
  %word.1.i.7 = phi i32 [ %or.i.7, %if.else9.i.7 ], [ %word.1.i.6, %for.body.i.7.if.end17.i.7_crit_edge ], [ %conv8.i.7, %if.then3.i.7.if.end17.i.7_crit_edge ]
  %139 = tail call i32 @llvm.bswap.i32(i32 %word.1.i.7) #5
  %140 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %1, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %141, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.7, i32 %139) #5, !srcloc !73
  br label %ssc_write_tx_fifo.exit

ssc_write_tx_fifo.exit:                           ; preds = %if.end17.i.7, %if.end17.i.6.ssc_write_tx_fifo.exit_crit_edge, %if.end17.i.5.ssc_write_tx_fifo.exit_crit_edge, %if.end17.i.4.ssc_write_tx_fifo.exit_crit_edge, %if.end17.i.3.ssc_write_tx_fifo.exit_crit_edge, %if.end17.i.2.ssc_write_tx_fifo.exit_crit_edge, %if.end17.i.1.ssc_write_tx_fifo.exit_crit_edge, %if.end17.i.ssc_write_tx_fifo.exit_crit_edge, %if.end24.ssc_write_tx_fifo.exit_crit_edge
  %142 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %1, align 4
  %add.ptr26 = getelementptr i8, ptr %143, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 67108864) #5, !srcloc !73
  tail call void @wait_for_completion(ptr noundef %done) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ctl.0)
  %tobool28.not = icmp eq i32 %ctl.0, 0
  br i1 %tobool28.not, label %ssc_write_tx_fifo.exit.if.end32_crit_edge, label %if.then29

ssc_write_tx_fifo.exit.if.end32_crit_edge:        ; preds = %ssc_write_tx_fifo.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then29:                                        ; preds = %ssc_write_tx_fifo.exit
  call void @__sanitizer_cov_trace_pc() #7
  %144 = tail call i32 @llvm.bswap.i32(i32 %ctl.0)
  %145 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %1, align 4
  %add.ptr31 = getelementptr i8, ptr %146, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %144) #5, !srcloc !73
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %ssc_write_tx_fifo.exit.if.end32_crit_edge
  %master33 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %147 = ptrtoint ptr %master33 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %master33, align 4
  tail call void @spi_finalize_current_transfer(ptr noundef %148) #5
  %len34 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %149 = ptrtoint ptr %len34 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %len34, align 4
  ret i32 %150
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_st_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %words_remaining.i = getelementptr inbounds %struct.spi_st, ptr %dev_id, i32 0, i32 6
  %0 = ptrtoint ptr %words_remaining.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %words_remaining.i, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp232.not.i = icmp eq i32 %2, 0
  br i1 %cmp232.not.i, label %entry.ssc_read_rx_fifo.exit_crit_edge, label %for.body.lr.ph.i

entry.ssc_read_rx_fifo.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssc_read_rx_fifo.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %rx_ptr.i = getelementptr inbounds %struct.spi_st, ptr %dev_id, i32 0, i32 4
  %bytes_per_word.i = getelementptr inbounds %struct.spi_st, ptr %dev_id, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.033.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_id, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !75
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  %7 = ptrtoint ptr %rx_ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_ptr.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then3.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then3.i:                                       ; preds = %for.body.i
  %9 = ptrtoint ptr %bytes_per_word.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %bytes_per_word.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %10)
  %cmp4.i = icmp eq i16 %10, 1
  br i1 %cmp4.i, label %if.then6.i, label %if.else9.i

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv7.i = trunc i32 %6 to i8
  %incdec.ptr.i = getelementptr i8, ptr %8, i32 1
  %11 = ptrtoint ptr %rx_ptr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %incdec.ptr.i, ptr %rx_ptr.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv7.i, ptr %8, align 1
  br label %for.inc.i

if.else9.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i = lshr i32 %6, 8
  %conv10.i = trunc i32 %shr.i to i8
  %incdec.ptr12.i = getelementptr i8, ptr %8, i32 1
  %13 = ptrtoint ptr %rx_ptr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %incdec.ptr12.i, ptr %rx_ptr.i, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv10.i, ptr %8, align 1
  %conv13.i = trunc i32 %6 to i8
  %15 = load ptr, ptr %rx_ptr.i, align 4
  %incdec.ptr15.i = getelementptr i8, ptr %15, i32 1
  store ptr %incdec.ptr15.i, ptr %rx_ptr.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv13.i, ptr %15, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else9.i, %if.then6.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %2
  br i1 %exitcond.not.i, label %for.inc.i.ssc_read_rx_fifo.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.ssc_read_rx_fifo.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssc_read_rx_fifo.exit

ssc_read_rx_fifo.exit:                            ; preds = %for.inc.i.ssc_read_rx_fifo.exit_crit_edge, %entry.ssc_read_rx_fifo.exit_crit_edge
  %17 = ptrtoint ptr %words_remaining.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %words_remaining.i, align 4
  %sub.i = sub i32 %18, %2
  store i32 %sub.i, ptr %words_remaining.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %2)
  %tobool.not = icmp eq i32 %18, %2
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %ssc_read_rx_fifo.exit
  %19 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 8) #5
  %tx_ptr.i = getelementptr inbounds %struct.spi_st, ptr %dev_id, i32 0, i32 3
  %bytes_per_word.i10 = getelementptr inbounds %struct.spi_st, ptr %dev_id, i32 0, i32 5
  br label %for.body.i13

for.body.i13:                                     ; preds = %if.end17.i.for.body.i13_crit_edge, %if.then
  %word.030.i = phi i32 [ 0, %if.then ], [ %word.1.i, %if.end17.i.for.body.i13_crit_edge ]
  %i.029.i = phi i32 [ 0, %if.then ], [ %inc.i19, %if.end17.i.for.body.i13_crit_edge ]
  %20 = ptrtoint ptr %tx_ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_ptr.i, align 4
  %tobool.not.i12 = icmp eq ptr %21, null
  br i1 %tobool.not.i12, label %for.body.i13.if.end17.i_crit_edge, label %if.then3.i16

for.body.i13.if.end17.i_crit_edge:                ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

if.then3.i16:                                     ; preds = %for.body.i13
  %22 = ptrtoint ptr %bytes_per_word.i10 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %bytes_per_word.i10, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %23)
  %cmp4.i14 = icmp eq i16 %23, 1
  %incdec.ptr.i15 = getelementptr i8, ptr %21, i32 1
  %24 = ptrtoint ptr %tx_ptr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %incdec.ptr.i15, ptr %tx_ptr.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %21, align 1
  %conv8.i = zext i8 %26 to i32
  br i1 %cmp4.i14, label %if.then3.i16.if.end17.i_crit_edge, label %if.else9.i17

if.then3.i16.if.end17.i_crit_edge:                ; preds = %if.then3.i16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

if.else9.i17:                                     ; preds = %if.then3.i16
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr14.i = getelementptr i8, ptr %21, i32 2
  %27 = ptrtoint ptr %tx_ptr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %incdec.ptr14.i, ptr %tx_ptr.i, align 4
  %28 = ptrtoint ptr %incdec.ptr.i15 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %incdec.ptr.i15, align 1
  %conv15.i = zext i8 %29 to i32
  %shl.i = shl nuw nsw i32 %conv8.i, 8
  %or.i = or i32 %shl.i, %conv15.i
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else9.i17, %if.then3.i16.if.end17.i_crit_edge, %for.body.i13.if.end17.i_crit_edge
  %word.1.i = phi i32 [ %or.i, %if.else9.i17 ], [ %word.030.i, %for.body.i13.if.end17.i_crit_edge ], [ %conv8.i, %if.then3.i16.if.end17.i_crit_edge ]
  %30 = tail call i32 @llvm.bswap.i32(i32 %word.1.i) #5
  %31 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_id, align 4
  %add.ptr.i18 = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %30) #5, !srcloc !73
  %inc.i19 = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i20 = icmp eq i32 %inc.i19, %19
  br i1 %exitcond.not.i20, label %if.end17.i.if.end_crit_edge, label %if.end17.i.for.body.i13_crit_edge

if.end17.i.for.body.i13_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i13

if.end17.i.if.end_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %ssc_read_rx_fifo.exit
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_id, align 4
  %add.ptr = getelementptr i8, ptr %34, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !73
  %35 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_id, align 4
  %add.ptr2 = getelementptr i8, ptr %36, i32 16
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  %done = getelementptr inbounds %struct.spi_st, ptr %dev_id, i32 0, i32 8
  tail call void @complete(ptr noundef %done) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end17.i.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_st_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @spi_controller_suspend(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_st_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @spi_controller_resume(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_st_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !73
  %call2 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #5
  %clk = getelementptr inbounds %struct.spi_st, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_st_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.spi_st, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  %call3 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #5
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_spi_st_ssc4__236_479_spi_st_driver_init6, !1, !"__initcall__kmod_spi_st_ssc4__236_479_spi_st_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-st-ssc4.c", i32 479, i32 1}
!2 = !{ptr @__exitcall_spi_st_driver_exit, !1, !"__exitcall_spi_st_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-st-ssc4.c", i32 481, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-st-ssc4.c", i32 482, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-st-ssc4.c", i32 483, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-st-ssc4.c", i32 472, i32 11}
!12 = !{ptr @spi_st_driver, !13, !"spi_st_driver", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-st-ssc4.c", i32 470, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-st-ssc4.c", i32 319, i32 41}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-st-ssc4.c", i32 321, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @spi_st_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @spi_st_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-st-ssc4.c", i32 357, i32 3}
!26 = !{ptr @spi_st_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @spi_st_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-st-ssc4.c", i32 365, i32 3}
!30 = !{ptr @spi_st_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @spi_st_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/spi/spi-st-ssc4.c", i32 377, i32 3}
!34 = !{ptr @spi_st_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @spi_st_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/spi/spi-st-ssc4.c", i32 190, i32 3}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @spi_st_setup._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @spi_st_setup._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/spi/spi-st-ssc4.c", i32 195, i32 3}
!43 = !{ptr @spi_st_setup._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @spi_st_setup._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/spi/spi-st-ssc4.c", i32 201, i32 3}
!47 = !{ptr @spi_st_setup._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @spi_st_setup._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/spi/spi-st-ssc4.c", i32 214, i32 3}
!51 = !{ptr @spi_st_setup._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @spi_st_setup._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/spi/spi-st-ssc4.c", i32 226, i32 2}
!55 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @spi_st_setup.__UNIQUE_ID_ddebug235, !54, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!57 = !{ptr @init_completion.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../include/linux/completion.h", i32 87, i32 2}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @stm_spi_match, !61, !"stm_spi_match", i1 false, i1 false}
!61 = !{!"../drivers/spi/spi-st-ssc4.c", i32 464, i32 34}
!62 = !{ptr @spi_st_pm, !63, !"spi_st_pm", i1 false, i1 false}
!63 = !{!"../drivers/spi/spi-st-ssc4.c", i32 459, i32 32}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 4246515}
!74 = !{i64 4246095}
!75 = !{i64 4246933}
!76 = !{i64 2148731054, i64 2148731059, i64 2148731072, i64 2148731116, i64 2148731150, i64 2148731171}
!77 = !{i64 2154496563}
