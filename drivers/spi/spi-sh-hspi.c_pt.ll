; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-sh-hspi.c_pt.bc'
source_filename = "../drivers/spi/spi-sh-hspi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.hspi_priv = type { ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }

@__initcall__kmod_spi_sh_hspi__237_304_hspi_driver_init6 = internal global ptr @hspi_driver_init, section ".initcall6.init", align 4
@hspi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hspi_probe, ptr @hspi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hspi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hspi_driver_exit = internal global ptr @hspi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description238 = internal constant [47 x i8] c"spi_sh_hspi.description=SuperH HSPI bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [41 x i8] c"spi_sh_hspi.file=drivers/spi/spi-sh-hspi\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [27 x i8] c"spi_sh_hspi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [72 x i8] c"spi_sh_hspi.author=Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias242 = internal constant [35 x i8] c"spi_sh_hspi.alias=platform:sh-hspi\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sh-hspi\00", [24 x i8] zeroinitializer }, align 32
@hspi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,hspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@hspi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 223, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid resource\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hspi_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/spi/spi-sh-hspi.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hspi_probe._entry_ptr = internal global ptr @hspi_probe._entry, section ".printk_index", align 4
@hspi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 233, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"couldn't get clock\0A\00", [44 x i8] zeroinitializer }, align 32
@hspi_probe._entry_ptr.8 = internal global ptr @hspi_probe._entry.6, section ".printk_index", align 4
@hspi_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 263, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"devm_spi_register_controller error.\0A\00", [59 x i8] zeroinitializer }, align 32
@hspi_probe._entry_ptr.11 = internal global ptr @hspi_probe._entry.9, section ".printk_index", align 4
@hspi_transfer_one_message.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.3, ptr @.str.14, i8 0, i8 38, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_sh_hspi\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hspi_transfer_one_message\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@hspi_hw_setup.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 34, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hspi_hw_setup\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"speed %d/%d\0A\00", [19 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hspi_status_check_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 80, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"timeout\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hspi_status_check_timeout\00", [38 x i8] zeroinitializer }, align 32
@hspi_status_check_timeout._entry_ptr = internal global ptr @hspi_status_check_timeout._entry, section ".printk_index", align 4
@___asan_gen_.19 = private unnamed_addr constant [12 x i8] c"hspi_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 296, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 300, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"hspi_of_match\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 290, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 223, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 233, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 263, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 154, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 136, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [29 x i8] c"../drivers/spi/spi-sh-hspi.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 80, i32 2 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_alias242, ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_hspi_driver_exit, ptr @__initcall__kmod_spi_sh_hspi__237_304_hspi_driver_init6, ptr @hspi_driver_exit, ptr @hspi_probe._entry, ptr @hspi_probe._entry.6, ptr @hspi_probe._entry.9, ptr @hspi_probe._entry_ptr, ptr @hspi_probe._entry_ptr.11, ptr @hspi_probe._entry_ptr.8, ptr @hspi_status_check_timeout._entry, ptr @hspi_status_check_timeout._entry_ptr, ptr @hspi_driver, ptr @.str, ptr @hspi_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hspi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hspi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hspi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hspi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hspi_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hspi_status_check_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hspi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hspi_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hspi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @hspi_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hspi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %tobool.not = icmp eq ptr %call, null
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 16, i1 noundef zeroext false) #5
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = tail call ptr @clk_get(ptr noundef %dev, ptr noundef null) #5
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %spi_controller_put.exit

if.end14:                                         ; preds = %if.end5
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i78 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i78 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %driver_data.i.i78, align 4
  %ctlr16 = getelementptr inbounds %struct.hspi_priv, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %ctlr16 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %ctlr16, align 4
  %dev18 = getelementptr inbounds %struct.hspi_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev18 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %dev18, align 4
  %clk19 = getelementptr inbounds %struct.hspi_priv, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %clk19 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7, ptr %clk19, align 4
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %7
  %add.i = add i32 %sub.i, %9
  %call22 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %7, i32 noundef %add.i) #5
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call22, ptr %1, align 4
  %tobool24.not = icmp eq ptr %call22, null
  br i1 %tobool24.not, label %if.end14.error1_crit_edge, label %if.end26

if.end14.error1_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %error1

if.end26:                                         ; preds = %if.end14
  tail call void @pm_runtime_enable(ptr noundef %dev) #5
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %conv = trunc i32 %12 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %bus_num, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %mode_bits, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %of_node30 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %17 = ptrtoint ptr %of_node30 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %of_node30, align 8
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 36
  %18 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %auto_runtime_pm, align 4
  %transfer_one_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 45
  %19 = ptrtoint ptr %transfer_one_message to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @hspi_transfer_one_message, ptr %transfer_one_message, align 4
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %20 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 128, ptr %bits_per_word_mask, align 8
  %call32 = tail call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp = icmp slt i32 %call32, 0
  br i1 %cmp, label %do.end37, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end37:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  br label %error1

error1:                                           ; preds = %do.end37, %if.end14.error1_crit_edge
  %ret.0 = phi i32 [ %call32, %do.end37 ], [ -12, %if.end14.error1_crit_edge ]
  tail call void @clk_put(ptr noundef %call7) #5
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %error1, %do.end12
  %ret.1 = phi i32 [ -22, %do.end12 ], [ %ret.0, %error1 ]
  tail call void @put_device(ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end26.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.1, %spi_controller_put.exit ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hspi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  %clk = getelementptr inbounds %struct.hspi_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hspi_transfer_one_message(ptr noundef %ctlr, ptr noundef %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hspi_transfer_one_message.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hspi_transfer_one_message, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.hspi_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hspi_transfer_one_message.__UNIQUE_ID_ddebug236, ptr noundef %3, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn118 = load ptr, ptr %msg, align 4
  %cmp.not120 = icmp eq ptr %.pn118, %msg
  br i1 %cmp.not120, label %for.end47.thread, label %for.body.lr.ph

for.end47.thread:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %status128 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 7
  %5 = ptrtoint ptr %status128 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %status128, align 4
  br label %if.end50

for.body.lr.ph:                                   ; preds = %do.end
  %dev.i = getelementptr inbounds %struct.hspi_priv, ptr %1, i32 0, i32 2
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %for.body.lr.ph
  %.pn123 = phi ptr [ %.pn118, %for.body.lr.ph ], [ %.pn123.be, %for.body.backedge ]
  %ret.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.2, %for.body.backedge ]
  %tobool9.not = phi i1 [ false, %for.body.lr.ph ], [ %tobool38.not, %for.body.backedge ]
  %t.0124 = getelementptr i8, ptr %.pn123, i32 -84
  br i1 %tobool9.not, label %for.body.if.end11_crit_edge, label %if.then10

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @hspi_hw_setup(ptr noundef %1, ptr noundef %msg, ptr noundef %t.0124)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %9 = and i32 %8, -1073741825
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr.i1.i.i = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i.i, i32 %9) #5, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %for.body.if.end11_crit_edge
  %cs_change12 = getelementptr i8, ptr %.pn123, i32 -40
  %13 = ptrtoint ptr %cs_change12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %cs_change12, align 4
  %len = getelementptr i8, ptr %.pn123, i32 -76
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp14114.not = icmp eq i32 %15, 0
  br i1 %cmp14114.not, label %if.end11.for.end_crit_edge, label %while.body.i.preheader.lr.ph

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

while.body.i.preheader.lr.ph:                     ; preds = %if.end11
  %rx_buf = getelementptr i8, ptr %.pn123, i32 -80
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %for.inc.while.body.i.preheader_crit_edge, %while.body.i.preheader.lr.ph
  %i.0115 = phi i32 [ 0, %while.body.i.preheader.lr.ph ], [ %inc, %for.inc.while.body.i.preheader_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.i.preheader
  %dec2.i = phi i32 [ %dec.i, %if.end.i.while.body.i_crit_edge ], [ 255, %while.body.i.preheader ]
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp eq i32 %19, 0
  br i1 %cmp.i, label %if.end19, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 2147480) #5
  %dec.i = add nsw i32 %dec2.i, -1
  %tobool.not.i = icmp eq i32 %dec2.i, 0
  br i1 %tobool.not.i, label %if.end.i.for.end.sink.split_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end.i.for.end.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.sink.split

if.end19:                                         ; preds = %while.body.i
  %21 = ptrtoint ptr %t.0124 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %t.0124, align 4
  %tobool20.not = icmp eq ptr %22, null
  br i1 %tobool20.not, label %if.end19.if.end23_crit_edge, label %if.then21

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr i8, ptr %22, i32 %i.0115
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %24 to i32
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19.if.end23_crit_edge
  %tx.0 = phi i32 [ %conv, %if.then21 ], [ 0, %if.end19.if.end23_crit_edge ]
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %27 = shl nuw i32 %tx.0, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %27) #5, !srcloc !61
  br label %while.body.i88

while.body.i88:                                   ; preds = %if.end.i91.while.body.i88_crit_edge, %if.end23
  %dec2.i84 = phi i32 [ 255, %if.end23 ], [ %dec.i89, %if.end.i91.while.body.i88_crit_edge ]
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %add.ptr.i.i85 = getelementptr i8, ptr %29, i32 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i85) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %31 = and i32 %30, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i87.not = icmp eq i32 %31, 0
  br i1 %cmp.i87.not, label %if.end.i91, label %if.end28

if.end.i91:                                       ; preds = %while.body.i88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 2147480) #5
  %dec.i89 = add nsw i32 %dec2.i84, -1
  %tobool.not.i90 = icmp eq i32 %dec2.i84, 0
  br i1 %tobool.not.i90, label %if.end.i91.for.end.sink.split_crit_edge, label %if.end.i91.while.body.i88_crit_edge

if.end.i91.while.body.i88_crit_edge:              ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i88

if.end.i91.for.end.sink.split_crit_edge:          ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.sink.split

if.end28:                                         ; preds = %while.body.i88
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %add.ptr.i96 = getelementptr i8, ptr %34, i32 16
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i96) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %36 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rx_buf, align 4
  %tobool30.not = icmp eq ptr %37, null
  br i1 %tobool30.not, label %if.end28.for.inc_crit_edge, label %if.then31

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %38 = lshr i32 %35, 24
  %conv32 = trunc i32 %38 to i8
  %arrayidx34 = getelementptr i8, ptr %37, i32 %i.0115
  %39 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv32, ptr %arrayidx34, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then31, %if.end28.for.inc_crit_edge
  %inc = add nuw i32 %i.0115, 1
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 4
  %cmp14 = icmp ult i32 %inc, %41
  br i1 %cmp14, label %for.inc.while.body.i.preheader_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.while.body.i.preheader_crit_edge:         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.preheader

for.end.sink.split:                               ; preds = %if.end.i91.for.end.sink.split_crit_edge, %if.end.i.for.end.sink.split_crit_edge
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.17) #8
  br label %for.end

for.end:                                          ; preds = %for.end.sink.split, %for.inc.for.end_crit_edge, %if.end11.for.end_crit_edge
  %ret.2 = phi i32 [ %ret.0122, %if.end11.for.end_crit_edge ], [ -110, %for.end.sink.split ], [ 0, %for.inc.for.end_crit_edge ]
  %44 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len, align 4
  %46 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %actual_length, align 4
  %add = add i32 %47, %45
  store i32 %add, ptr %actual_length, align 4
  %delay.i = getelementptr i8, ptr %.pn123, i32 -38
  %call.i = tail call i32 @spi_delay_exec(ptr noundef %delay.i, ptr noundef %t.0124) #5
  %48 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool38.not = icmp eq i8 %48, 0
  br i1 %tobool38.not, label %for.inc41.thread, label %for.inc41

for.inc41:                                        ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748) #5
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i97 = getelementptr i8, ptr %51, i32 8
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i97) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %53 = or i32 %52, 1073741824
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %add.ptr.i1.i.i98 = getelementptr i8, ptr %55, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i.i98, i32 %53) #5, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748) #5
  %57 = ptrtoint ptr %.pn123 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn = load ptr, ptr %.pn123, align 4
  %cmp.not = icmp eq ptr %.pn, %msg
  br i1 %cmp.not, label %for.end47, label %for.inc41.for.body.backedge_crit_edge

for.inc41.for.body.backedge_crit_edge:            ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.backedge

for.body.backedge:                                ; preds = %for.inc41.thread.for.body.backedge_crit_edge, %for.inc41.for.body.backedge_crit_edge
  %.pn123.be = phi ptr [ %.pn, %for.inc41.for.body.backedge_crit_edge ], [ %.pn130, %for.inc41.thread.for.body.backedge_crit_edge ]
  br label %for.body

for.inc41.thread:                                 ; preds = %for.end
  %58 = ptrtoint ptr %.pn123 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn130 = load ptr, ptr %.pn123, align 4
  %cmp.not131 = icmp eq ptr %.pn130, %msg
  br i1 %cmp.not131, label %if.then49, label %for.inc41.thread.for.body.backedge_crit_edge

for.inc41.thread.for.body.backedge_crit_edge:     ; preds = %for.inc41.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.backedge

for.end47:                                        ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #7
  %status = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 7
  %59 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %ret.2, ptr %status, align 4
  br label %if.end50

if.then49:                                        ; preds = %for.inc41.thread
  call void @__sanitizer_cov_trace_pc() #7
  %status134 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 7
  %60 = ptrtoint ptr %status134 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %ret.2, ptr %status134, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748) #5
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i99 = getelementptr i8, ptr %63, i32 8
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i99) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %65 = or i32 %64, 1073741824
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %add.ptr.i1.i.i101 = getelementptr i8, ptr %67, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i.i101, i32 %65) #5, !srcloc !61
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %for.end47, %for.end47.thread
  %ret.0.lcssa129 = phi i32 [ 0, %for.end47.thread ], [ %ret.2, %if.then49 ], [ %ret.2, %for.end47 ]
  tail call void @spi_finalize_current_message(ptr noundef %ctlr) #5
  ret i32 %ret.0.lcssa129
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hspi_hw_setup(ptr nocapture noundef readonly %hspi, ptr nocapture noundef readonly %msg, ptr nocapture noundef readonly %t) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  %dev2 = getelementptr inbounds %struct.hspi_priv, ptr %hspi, i32 0, i32 2
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %clk = getelementptr inbounds %struct.hspi_priv, ptr %hspi, i32 0, i32 3
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %spcr.057 = phi i32 [ 0, %entry ], [ %spcr.1, %for.body.for.body_crit_edge ]
  %min.056 = phi i32 [ -1, %entry ], [ %9, %for.body.for.body_crit_edge ]
  %best_rate.055 = phi i32 [ 0, %entry ], [ %best_rate.1, %for.body.for.body_crit_edge ]
  %idiv_clk.054 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %5) #5
  %and = and i32 %idiv_clk.054, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %rate.0.v = select i1 %tobool.not, i32 4, i32 7
  %rate.0 = lshr i32 %call, %rate.0.v
  %and4 = shl nuw nsw i32 %idiv_clk.054, 1
  %add = and i32 %and4, 62
  %mul = add nuw nsw i32 %add, 2
  %div5 = udiv i32 %rate.0, %mul
  %6 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed_hz, align 4
  %sub = sub i32 %7, %div5
  %8 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %min.056)
  %cmp9 = icmp ult i32 %8, %min.056
  %best_rate.1 = select i1 %cmp9, i32 %div5, i32 %best_rate.055
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 %min.056)
  %spcr.1 = select i1 %cmp9, i32 %idiv_clk.054, i32 %spcr.057
  %inc = add nuw nsw i32 %idiv_clk.054, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  %mode = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hspi_hw_setup.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hspi_hw_setup, %do.end)) #5
          to label %if.then28 [label %do.end], !srcloc !57

if.then28:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed_hz, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hspi_hw_setup.__UNIQUE_ID_ddebug235, ptr noundef %3, ptr noundef nonnull @.str.16, i32 noundef %13, i32 noundef %best_rate.1) #5
  br label %do.end

do.end:                                           ; preds = %if.then28, %for.end
  %and12 = shl i32 %11, 7
  %14 = and i32 %and12, 128
  %15 = or i32 %14, %spcr.1
  %and17 = shl i32 %11, 5
  %16 = and i32 %and17, 64
  %17 = or i32 %15, %16
  %18 = ptrtoint ptr %hspi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hspi, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %20 = tail call i32 @llvm.bswap.i32(i32 %17) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %20) #5, !srcloc !61
  %21 = ptrtoint ptr %hspi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hspi, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !61
  %23 = ptrtoint ptr %hspi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hspi, align 4
  %add.ptr.i52 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 553648128) #5, !srcloc !61
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_delay_exec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_spi_sh_hspi__237_304_hspi_driver_init6, !1, !"__initcall__kmod_spi_sh_hspi__237_304_hspi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-sh-hspi.c", i32 304, i32 1}
!2 = !{ptr @__exitcall_hspi_driver_exit, !1, !"__exitcall_hspi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description238, !4, !"__UNIQUE_ID_description238", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-sh-hspi.c", i32 306, i32 1}
!5 = !{ptr @__UNIQUE_ID_file239, !6, !"__UNIQUE_ID_file239", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-sh-hspi.c", i32 307, i32 1}
!7 = !{ptr @__UNIQUE_ID_license240, !6, !"__UNIQUE_ID_license240", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author241, !9, !"__UNIQUE_ID_author241", i1 false, i1 false}
!9 = !{!"../drivers/spi/spi-sh-hspi.c", i32 308, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias242, !11, !"__UNIQUE_ID_alias242", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-sh-hspi.c", i32 309, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-sh-hspi.c", i32 300, i32 11}
!14 = !{ptr @hspi_driver, !15, !"hspi_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-sh-hspi.c", i32 296, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-sh-hspi.c", i32 223, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @hspi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @hspi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-sh-hspi.c", i32 233, i32 3}
!26 = !{ptr @hspi_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @hspi_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-sh-hspi.c", i32 263, i32 3}
!30 = !{ptr @hspi_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @hspi_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/spi/spi-sh-hspi.c", i32 154, i32 2}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @hspi_transfer_one_message.__UNIQUE_ID_ddebug236, !33, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/spi/spi-sh-hspi.c", i32 136, i32 2}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @hspi_hw_setup.__UNIQUE_ID_ddebug235, !38, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/spi/spi-sh-hspi.c", i32 80, i32 2}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @hspi_status_check_timeout._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @hspi_status_check_timeout._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @hspi_of_match, !47, !"hspi_of_match", i1 false, i1 false}
!47 = !{!"../drivers/spi/spi-sh-hspi.c", i32 290, i32 34}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2148726049, i64 2148726054, i64 2148726067, i64 2148726111, i64 2148726145, i64 2148726166}
!58 = !{i64 4659811}
!59 = !{i64 2152200160}
!60 = !{i64 2152201515}
!61 = !{i64 4659393}
