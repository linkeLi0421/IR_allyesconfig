; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-sh.c_pt.bc'
source_filename = "../drivers/spi/spi-sh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.spi_sh_data = type { ptr, i32, ptr, %struct.list_head, %struct.work_struct, i32, %struct.wait_queue_head, %struct.spinlock, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__initcall__kmod_spi_sh__245_507_spi_sh_driver_init6 = internal global ptr @spi_sh_driver_init, section ".initcall6.init", align 4
@spi_sh_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @spi_sh_probe, ptr @spi_sh_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_spi_sh_driver_exit = internal global ptr @spi_sh_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description246 = internal constant [37 x i8] c"spi_sh.description=SH SPI bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file247 = internal constant [31 x i8] c"spi_sh.file=drivers/spi/spi-sh\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [22 x i8] c"spi_sh.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [32 x i8] c"spi_sh.author=Yoshihiro Shimoda\00", section ".modinfo", align 1
@__UNIQUE_ID_alias250 = internal constant [29 x i8] c"spi_sh.alias=platform:sh_spi\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sh_spi\00", [25 x i8] zeroinitializer }, align 32
@spi_sh_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 435, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid resource\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spi_sh_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/spi/spi-sh.c\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@spi_sh_probe._entry_ptr = internal global ptr @spi_sh_probe._entry, section ".printk_index", align 4
@spi_sh_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 445, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"spi_alloc_master error.\0A\00", [39 x i8] zeroinitializer }, align 32
@spi_sh_probe._entry_ptr.8 = internal global ptr @spi_sh_probe._entry.6, section ".printk_index", align 4
@spi_sh_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 460, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No support width\0A\00", [46 x i8] zeroinitializer }, align 32
@spi_sh_probe._entry_ptr.11 = internal global ptr @spi_sh_probe._entry.9, section ".printk_index", align 4
@spi_sh_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 467, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ioremap error.\0A\00", [16 x i8] zeroinitializer }, align 32
@spi_sh_probe._entry_ptr.14 = internal global ptr @spi_sh_probe._entry.12, section ".printk_index", align 4
@spi_sh_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ss->lock\00", [22 x i8] zeroinitializer }, align 32
@spi_sh_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(work_completion)(&ss->ws)\00", [37 x i8] zeroinitializer }, align 32
@spi_sh_probe.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ss->wait\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spi_sh\00", [25 x i8] zeroinitializer }, align 32
@spi_sh_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 477, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"request_irq error\0A\00", [45 x i8] zeroinitializer }, align 32
@spi_sh_probe._entry_ptr.23 = internal global ptr @spi_sh_probe._entry.21, section ".printk_index", align 4
@spi_sh_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013spi_register_master error.\0A\00", [34 x i8] zeroinitializer }, align 32
@spi_sh_probe._entry_ptr.26 = internal global ptr @spi_sh_probe._entry.24, section ".printk_index", align 4
@spi_sh_work.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 70, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_sh_work\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: enter\0A\00", [21 x i8] zeroinitializer }, align 32
@spi_sh_work.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.27, ptr @.str.3, ptr @.str.29, i8 0, i8 73, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tx_buf = %p, rx_buf = %p\0A\00", [38 x i8] zeroinitializer }, align 32
@spi_sh_work.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.27, ptr @.str.3, ptr @.str.30, i8 0, i8 73, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"len = %d, delay.value = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@spi_sh_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013%s: timeout\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_sh_send\00", [20 x i8] zeroinitializer }, align 32
@spi_sh_send._entry_ptr = internal global ptr @spi_sh_send._entry, section ".printk_index", align 4
@spi_sh_send._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@spi_sh_send._entry_ptr.34 = internal global ptr @spi_sh_send._entry.33, section ".printk_index", align 4
@spi_sh_receive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.35, ptr @.str.3, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spi_sh_receive\00", [17 x i8] zeroinitializer }, align 32
@spi_sh_receive._entry_ptr = internal global ptr @spi_sh_receive._entry, section ".printk_index", align 4
@spi_sh_setup.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.36, ptr @.str.3, ptr @.str.28, i8 0, i8 85, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spi_sh_setup\00", [19 x i8] zeroinitializer }, align 32
@spi_sh_transfer.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.37, ptr @.str.3, ptr @.str.28, i8 0, i8 90, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spi_sh_transfer\00", [16 x i8] zeroinitializer }, align 32
@spi_sh_transfer.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 0, i8 91, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\09mode = %02x\0A\00", [18 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@spi_sh_cleanup.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.39, ptr @.str.3, ptr @.str.28, i8 0, i8 96, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spi_sh_cleanup\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 24]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@___asan_gen_.92 = private unnamed_addr constant [14 x i8] c"spi_sh_driver\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 500, i32 31 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 504, i32 11 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 435, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 445, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 460, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 467, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 471, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 472, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 473, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 475, i32 40 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 477, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 489, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 282, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 291, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 293, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 194, i32 5 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 210, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 247, i32 5 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 343, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 363, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 364, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private constant [24 x i8] c"../drivers/spi/spi-sh.c\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 385, i32 2 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_alias250, ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description246, ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_license248, ptr @__exitcall_spi_sh_driver_exit, ptr @__initcall__kmod_spi_sh__245_507_spi_sh_driver_init6, ptr @spi_sh_driver_exit, ptr @spi_sh_probe._entry, ptr @spi_sh_probe._entry.12, ptr @spi_sh_probe._entry.21, ptr @spi_sh_probe._entry.24, ptr @spi_sh_probe._entry.6, ptr @spi_sh_probe._entry.9, ptr @spi_sh_probe._entry_ptr, ptr @spi_sh_probe._entry_ptr.11, ptr @spi_sh_probe._entry_ptr.14, ptr @spi_sh_probe._entry_ptr.23, ptr @spi_sh_probe._entry_ptr.26, ptr @spi_sh_probe._entry_ptr.8, ptr @spi_sh_receive._entry, ptr @spi_sh_receive._entry_ptr, ptr @spi_sh_send._entry, ptr @spi_sh_send._entry.33, ptr @spi_sh_send._entry_ptr, ptr @spi_sh_send._entry_ptr.34, ptr @spi_sh_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @spi_sh_probe.__key, ptr @.str.15, ptr @spi_sh_probe.__key.16, ptr @.str.17, ptr @spi_sh_probe.__key.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_sh_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_sh_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_sh_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_sh_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_sh_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_sh_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_sh_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_sh_probe.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_sh_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_sh_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_sh_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_sh_send._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_sh_receive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_sh_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @spi_sh_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @spi_sh_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @spi_sh_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_sh_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end, label %if.end, !prof !98

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup68

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup68_crit_edge, label %if.end5

if.end.cleanup68_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup68

if.end5:                                          ; preds = %if.end
  %dev6 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__devm_spi_alloc_controller(ptr noundef %dev6, i32 noundef 168, i1 noundef zeroext false) #6
  %cmp8 = icmp eq ptr %call.i, null
  br i1 %cmp8, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.7) #9
  br label %cleanup68

if.end14:                                         ; preds = %if.end5
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i117 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i117 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %driver_data.i.i117, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 24
  %5 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %do.end20 [
    i32 0, label %if.end14.sw.epilog_crit_edge
    i32 24, label %sw.bb16
  ]

if.end14.sw.epilog_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.10) #9
  br label %cleanup68

sw.epilog:                                        ; preds = %sw.bb16, %if.end14.sw.epilog_crit_edge
  %.sink = phi i32 [ 32, %sw.bb16 ], [ 8, %if.end14.sw.epilog_crit_edge ]
  %width17 = getelementptr inbounds %struct.spi_sh_data, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %width17 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %width17, align 4
  %irq22 = getelementptr inbounds %struct.spi_sh_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %irq22 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call2, ptr %irq22, align 4
  %master23 = getelementptr inbounds %struct.spi_sh_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %master23 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %master23, align 4
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %10
  %add.i = add i32 %sub.i, %12
  %call26 = tail call ptr @devm_ioremap(ptr noundef %dev6, i32 noundef %10, i32 noundef %add.i) #6
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call26, ptr %1, align 4
  %cmp28 = icmp eq ptr %call26, null
  br i1 %cmp28, label %do.end32, label %if.end34

do.end32:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.13) #9
  br label %cleanup68

if.end34:                                         ; preds = %sw.epilog
  %queue = getelementptr inbounds %struct.spi_sh_data, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.spi_sh_data, ptr %1, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %queue, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.spi_sh_data, ptr %1, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @spi_sh_probe.__key, i16 noundef signext 3) #6
  %ws = getelementptr inbounds %struct.spi_sh_data, ptr %1, i32 0, i32 4
  tail call void @__init_work(ptr noundef %ws, i32 noundef 0) #6
  %16 = ptrtoint ptr %ws to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %ws, align 4
  %lockdep_map = getelementptr inbounds %struct.spi_sh_data, ptr %1, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.17, ptr noundef nonnull @spi_sh_probe.__key.16, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry43 = getelementptr inbounds %struct.spi_sh_data, ptr %1, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %entry43 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry43, ptr %entry43, align 4
  %prev.i118 = getelementptr inbounds %struct.spi_sh_data, ptr %1, i32 0, i32 4, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i118 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry43, ptr %prev.i118, align 4
  %func = getelementptr inbounds %struct.spi_sh_data, ptr %1, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @spi_sh_work, ptr %func, align 4
  %wait = getelementptr inbounds %struct.spi_sh_data, ptr %1, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.19, ptr noundef nonnull @spi_sh_probe.__key.18) #6
  %call.i119 = tail call i32 @request_threaded_irq(i32 noundef %call2, ptr noundef nonnull @spi_sh_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %cmp51 = icmp slt i32 %call.i119, 0
  br i1 %cmp51, label %do.end55, label %if.end57

do.end55:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.22) #9
  br label %cleanup68

if.end57:                                         ; preds = %if.end34
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %num_chipselect, align 2
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 4
  %conv = trunc i32 %22 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv, ptr %bus_num, align 8
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %24 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @spi_sh_setup, ptr %setup, align 4
  %transfer = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 22
  %25 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @spi_sh_transfer, ptr %transfer, align 4
  %cleanup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 23
  %26 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @spi_sh_cleanup, ptr %cleanup, align 8
  %call58 = tail call i32 @spi_register_controller(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %do.end64, label %if.end57.cleanup68_crit_edge

if.end57.cleanup68_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup68

do.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #9
  %call67 = tail call ptr @free_irq(i32 noundef %call2, ptr noundef %1) #6
  br label %cleanup68

cleanup68:                                        ; preds = %do.end64, %if.end57.cleanup68_crit_edge, %do.end55, %do.end32, %do.end20, %do.end12, %if.end.cleanup68_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %do.end12 ], [ -19, %do.end20 ], [ -12, %do.end32 ], [ %call.i119, %do.end55 ], [ %call58, %do.end64 ], [ %call2, %if.end.cleanup68_crit_edge ], [ 0, %if.end57.cleanup68_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_sh_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %master = getelementptr inbounds %struct.spi_sh_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  tail call void @spi_unregister_controller(ptr noundef %3) #6
  %ws = getelementptr inbounds %struct.spi_sh_data, ptr %1, i32 0, i32 4
  %call1 = tail call zeroext i1 @flush_work(ptr noundef %ws) #6
  %irq = getelementptr inbounds %struct.spi_sh_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_sh_work(ptr noundef %work) #2 align 64 {
entry:
  %__wq_entry.i172 = alloca %struct.wait_queue_entry, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %__wq_entry118.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_sh_work.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spi_sh_work, %do.body6)) #6
          to label %if.then [label %do.body6], !srcloc !99

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @spi_sh_work.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27) #6
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %lock = getelementptr i8, ptr %work, i32 100
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %queue = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not295 = icmp eq ptr %1, %queue
  br i1 %cmp.i.not295, label %do.body6.while.end_crit_edge, label %while.body.lr.ph

do.body6.while.end_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.body6
  %width.i.i.i = getelementptr i8, ptr %work, i32 144
  %cr1.i = getelementptr i8, ptr %work, i32 44
  %wait.i = getelementptr i8, ptr %work, i32 48
  br label %while.body

while.body:                                       ; preds = %if.end111.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %358, %if.end111.while.body_crit_edge ]
  %flags.0296 = phi i32 [ %call9, %while.body.lr.ph ], [ %call103, %if.end111.while.body_crit_edge ]
  %add.ptr21 = getelementptr i8, ptr %2, i32 -36
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #6
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %2, ptr %prev.i3.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0296) #6
  %11 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn290 = load ptr, ptr %add.ptr21, align 4
  %cmp29.not292 = icmp eq ptr %.pn290, %add.ptr21
  br i1 %cmp29.not292, label %list_del_init.exit.do.body95_crit_edge, label %do.body33.lr.ph

list_del_init.exit.do.body95_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body95

do.body33.lr.ph:                                  ; preds = %list_del_init.exit
  %actual_length = getelementptr i8, ptr %2, i32 -8
  br label %do.body33

do.body33:                                        ; preds = %if.end87.do.body33_crit_edge, %do.body33.lr.ph
  %.pn293 = phi ptr [ %.pn290, %do.body33.lr.ph ], [ %.pn, %if.end87.do.body33_crit_edge ]
  %t.0294 = getelementptr i8, ptr %.pn293, i32 -84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_sh_work.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spi_sh_work, %do.body51)) #6
          to label %if.then47 [label %do.body51], !srcloc !99

if.then47:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %t.0294 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %t.0294, align 4
  %rx_buf = getelementptr i8, ptr %.pn293, i32 -80
  %14 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_buf, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @spi_sh_work.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.29, ptr noundef %13, ptr noundef %15) #6
  br label %do.body51

do.body51:                                        ; preds = %if.then47, %do.body33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_sh_work.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spi_sh_work, %do.end69)) #6
          to label %if.then65 [label %do.end69], !srcloc !99

if.then65:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #8
  %len = getelementptr i8, ptr %.pn293, i32 -76
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %delay = getelementptr i8, ptr %.pn293, i32 -38
  %18 = ptrtoint ptr %delay to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %delay, align 2
  %conv66 = zext i16 %19 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @spi_sh_work.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.30, i32 noundef %17, i32 noundef %conv66) #6
  br label %do.end69

do.end69:                                         ; preds = %if.then65, %do.body51
  %20 = ptrtoint ptr %t.0294 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %t.0294, align 4
  %tobool71.not = icmp eq ptr %21, null
  br i1 %tobool71.not, label %do.end69.if.end78_crit_edge, label %if.then72

do.end69.if.end78_crit_edge:                      ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.then72:                                        ; preds = %do.end69
  %len.i = getelementptr i8, ptr %.pn293, i32 -76
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %if.then72.while.end.i_crit_edge, label %if.then.i

if.then72.while.end.i_crit_edge:                  ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.then.i:                                        ; preds = %if.then72
  %24 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %width.i.i.i, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %25, label %if.then.i.spi_sh_read.exit.i.i_crit_edge [
    i32 8, label %if.then.i.i.i
    i32 32, label %if.then4.i.i.i
  ]

if.then.i.spi_sh_read.exit.i.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_read.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 2
  %29 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i) #6, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %conv.i.i.i = zext i8 %29 to i32
  br label %spi_sh_read.exitthread-pre-split.i.i

if.then4.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i.i.i = getelementptr i8, ptr %31, i32 8
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i.i) #6, !srcloc !102
  %33 = call i32 @llvm.bswap.i32(i32 %32) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %spi_sh_read.exitthread-pre-split.i.i

spi_sh_read.exitthread-pre-split.i.i:             ; preds = %if.then4.i.i.i, %if.then.i.i.i
  %retval.0.i.ph.i.i = phi i32 [ %33, %if.then4.i.i.i ], [ %conv.i.i.i, %if.then.i.i.i ]
  %34 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr.i.i = load i32, ptr %width.i.i.i, align 4
  br label %spi_sh_read.exit.i.i

spi_sh_read.exit.i.i:                             ; preds = %spi_sh_read.exitthread-pre-split.i.i, %if.then.i.spi_sh_read.exit.i.i_crit_edge
  %35 = phi i32 [ %.pr.i.i, %spi_sh_read.exitthread-pre-split.i.i ], [ %25, %if.then.i.spi_sh_read.exit.i.i_crit_edge ]
  %retval.0.i.i.i = phi i32 [ %retval.0.i.ph.i.i, %spi_sh_read.exitthread-pre-split.i.i ], [ 0, %if.then.i.spi_sh_read.exit.i.i_crit_edge ]
  %or.i.i = or i32 %retval.0.i.i.i, 1
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %35, label %spi_sh_read.exit.i.i.if.end.i_crit_edge [
    i32 8, label %if.then.i8.i.i
    i32 32, label %if.then4.i10.i.i
  ]

spi_sh_read.exit.i.i.if.end.i_crit_edge:          ; preds = %spi_sh_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i8.i.i:                                   ; preds = %spi_sh_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i5.i.i = trunc i32 %or.i.i to i8
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %38, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i.i, i8 %conv.i5.i.i) #6, !srcloc !105
  br label %if.end.i

if.then4.i10.i.i:                                 ; preds = %spi_sh_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i9.i.i = getelementptr i8, ptr %40, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  call void @arm_heavy_mb() #6
  %41 = call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i9.i.i, i32 %41) #6, !srcloc !107
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i10.i.i, %if.then.i8.i.i, %spi_sh_read.exit.i.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp395.i = icmp sgt i32 %23, 0
  br i1 %cmp395.i, label %while.body.lr.ph.i, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end.i
  %42 = ptrtoint ptr %t.0294 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %t.0294, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.backedge, %while.body.lr.ph.i
  %remain.0398.i = phi i32 [ %23, %while.body.lr.ph.i ], [ %sub.i, %while.body.i.backedge ]
  %data.0396.i = phi ptr [ %43, %while.body.lr.ph.i ], [ %add.ptr.i, %while.body.i.backedge ]
  %44 = call i32 @llvm.umin.i32(i32 %remain.0398.i, i32 32) #6
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %spi_sh_write.exit.i.land.lhs.true.i_crit_edge, %while.body.i
  %i.0383.i = phi i32 [ %inc.i, %spi_sh_write.exit.i.land.lhs.true.i_crit_edge ], [ 0, %while.body.i ]
  %45 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %width.i.i.i, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %46, label %land.lhs.true.i.land.rhs.i_crit_edge [
    i32 8, label %if.then.i.i
    i32 32, label %if.then4.i.i
  ]

land.lhs.true.i.land.rhs.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

if.then.i.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 8
  %50 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #6, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %conv.i.i = zext i8 %50 to i32
  br label %spi_sh_read.exit.i

if.then4.i.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %52, i32 32
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #6, !srcloc !102
  %54 = call i32 @llvm.bswap.i32(i32 %53) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %spi_sh_read.exit.i

spi_sh_read.exit.i:                               ; preds = %if.then4.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.then.i.i ], [ %54, %if.then4.i.i ]
  %and.i = and i32 %retval.0.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %land.rhsthread-pre-split.i, label %spi_sh_read.exit.i.for.end.i_crit_edge

spi_sh_read.exit.i.for.end.i_crit_edge:           ; preds = %spi_sh_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

land.rhsthread-pre-split.i:                       ; preds = %spi_sh_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr.i = load i32, ptr %width.i.i.i, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %land.rhsthread-pre-split.i, %land.lhs.true.i.land.rhs.i_crit_edge
  %56 = phi i32 [ %.pr.i, %land.rhsthread-pre-split.i ], [ %46, %land.lhs.true.i.land.rhs.i_crit_edge ]
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %56, label %land.rhs.i.for.body.i_crit_edge [
    i32 8, label %if.then.i239.i
    i32 32, label %if.then4.i241.i
  ]

land.rhs.i.for.body.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.then.i239.i:                                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i237.i = getelementptr i8, ptr %59, i32 2
  %60 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i237.i) #6, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %conv.i238.i = zext i8 %60 to i32
  br label %spi_sh_read.exit243.i

if.then4.i241.i:                                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i240.i = getelementptr i8, ptr %62, i32 8
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i240.i) #6, !srcloc !102
  %64 = call i32 @llvm.bswap.i32(i32 %63) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %spi_sh_read.exit243.i

spi_sh_read.exit243.i:                            ; preds = %if.then4.i241.i, %if.then.i239.i
  %retval.0.i242.i = phi i32 [ %conv.i238.i, %if.then.i239.i ], [ %64, %if.then4.i241.i ]
  %and7.i = and i32 %retval.0.i242.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %spi_sh_read.exit243.i.for.body.i_crit_edge, label %spi_sh_read.exit243.i.for.end.i_crit_edge

spi_sh_read.exit243.i.for.end.i_crit_edge:        ; preds = %spi_sh_read.exit243.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

spi_sh_read.exit243.i.for.body.i_crit_edge:       ; preds = %spi_sh_read.exit243.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i:                                       ; preds = %spi_sh_read.exit243.i.for.body.i_crit_edge, %land.rhs.i.for.body.i_crit_edge
  %arrayidx.i = getelementptr i8, ptr %data.0396.i, i32 %i.0383.i
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i, align 1
  %67 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %width.i.i.i, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %68, label %for.body.i.spi_sh_write.exit.i_crit_edge [
    i32 8, label %if.then.i245.i
    i32 32, label %if.then4.i246.i
  ]

for.body.i.spi_sh_write.exit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_write.exit.i

if.then.i245.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %71, i8 %66) #6, !srcloc !105
  br label %spi_sh_write.exit.i

if.then4.i246.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i170 = zext i8 %66 to i32
  %72 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  call void @arm_heavy_mb() #6
  %74 = shl nuw i32 %conv.i170, 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %74) #6, !srcloc !107
  br label %spi_sh_write.exit.i

spi_sh_write.exit.i:                              ; preds = %if.then4.i246.i, %if.then.i245.i, %for.body.i.spi_sh_write.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0383.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %44
  br i1 %exitcond.not.i, label %spi_sh_write.exit.i.for.end.i_crit_edge, label %spi_sh_write.exit.i.land.lhs.true.i_crit_edge

spi_sh_write.exit.i.land.lhs.true.i_crit_edge:    ; preds = %spi_sh_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

spi_sh_write.exit.i.for.end.i_crit_edge:          ; preds = %spi_sh_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %spi_sh_write.exit.i.for.end.i_crit_edge, %spi_sh_read.exit243.i.for.end.i_crit_edge, %spi_sh_read.exit.i.for.end.i_crit_edge
  %i.0.lcssa.ph.i = phi i32 [ %44, %spi_sh_write.exit.i.for.end.i_crit_edge ], [ %i.0383.i, %spi_sh_read.exit.i.for.end.i_crit_edge ], [ %i.0383.i, %spi_sh_read.exit243.i.for.end.i_crit_edge ]
  %75 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %width.i.i.i, align 4
  %77 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %76, label %for.end.i.if.end13.i_crit_edge [
    i32 8, label %if.then.i250.i
    i32 32, label %if.then4.i252.i
  ]

for.end.i.if.end13.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then.i250.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i248.i = getelementptr i8, ptr %79, i32 8
  %80 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i248.i) #6, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %conv.i249.i = zext i8 %80 to i32
  br label %spi_sh_read.exit254.i

if.then4.i252.i:                                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i251.i = getelementptr i8, ptr %82, i32 32
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i251.i) #6, !srcloc !102
  %84 = call i32 @llvm.bswap.i32(i32 %83) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %spi_sh_read.exit254.i

spi_sh_read.exit254.i:                            ; preds = %if.then4.i252.i, %if.then.i250.i
  %retval.0.i253.i = phi i32 [ %conv.i249.i, %if.then.i250.i ], [ %84, %if.then4.i252.i ]
  %and10.i = and i32 %retval.0.i253.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %spi_sh_read.exit254.i.if.end13.i_crit_edge, label %if.then12.i

spi_sh_read.exit254.i.if.end13.i_crit_edge:       ; preds = %spi_sh_read.exit254.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then12.i:                                      ; preds = %spi_sh_read.exit254.i
  %85 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %width.i.i.i, align 4
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %86, label %if.then12.i.spi_sh_read.exit.i266.i_crit_edge [
    i32 8, label %if.then.i.i258.i
    i32 32, label %if.then4.i.i260.i
  ]

if.then12.i.spi_sh_read.exit.i266.i_crit_edge:    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_read.exit.i266.i

if.then.i.i258.i:                                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i256.i = getelementptr i8, ptr %89, i32 8
  %90 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i256.i) #6, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %conv.i.i257.i = zext i8 %90 to i32
  br label %spi_sh_read.exitthread-pre-split.i263.i

if.then4.i.i260.i:                                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i.i259.i = getelementptr i8, ptr %92, i32 32
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i259.i) #6, !srcloc !102
  %94 = call i32 @llvm.bswap.i32(i32 %93) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %spi_sh_read.exitthread-pre-split.i263.i

spi_sh_read.exitthread-pre-split.i263.i:          ; preds = %if.then4.i.i260.i, %if.then.i.i258.i
  %retval.0.i.ph.i261.i = phi i32 [ %94, %if.then4.i.i260.i ], [ %conv.i.i257.i, %if.then.i.i258.i ]
  %95 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pr.i262.i = load i32, ptr %width.i.i.i, align 4
  br label %spi_sh_read.exit.i266.i

spi_sh_read.exit.i266.i:                          ; preds = %spi_sh_read.exitthread-pre-split.i263.i, %if.then12.i.spi_sh_read.exit.i266.i_crit_edge
  %96 = phi i32 [ %.pr.i262.i, %spi_sh_read.exitthread-pre-split.i263.i ], [ %86, %if.then12.i.spi_sh_read.exit.i266.i_crit_edge ]
  %retval.0.i.i264.i = phi i32 [ %retval.0.i.ph.i261.i, %spi_sh_read.exitthread-pre-split.i263.i ], [ 0, %if.then12.i.spi_sh_read.exit.i266.i_crit_edge ]
  %or.i265.i = or i32 %retval.0.i.i264.i, 4
  %97 = zext i32 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %96, label %spi_sh_read.exit.i266.i.while.end.i_crit_edge [
    i32 8, label %if.then.i8.i269.i
    i32 32, label %if.then4.i10.i271.i
  ]

spi_sh_read.exit.i266.i.while.end.i_crit_edge:    ; preds = %spi_sh_read.exit.i266.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.then.i8.i269.i:                                ; preds = %spi_sh_read.exit.i266.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i5.i267.i = trunc i32 %or.i265.i to i8
  %98 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i7.i268.i = getelementptr i8, ptr %99, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i268.i, i8 %conv.i5.i267.i) #6, !srcloc !105
  br label %while.end.i

if.then4.i10.i271.i:                              ; preds = %spi_sh_read.exit.i266.i
  call void @__sanitizer_cov_trace_pc() #8
  %100 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i9.i270.i = getelementptr i8, ptr %101, i32 32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  call void @arm_heavy_mb() #6
  %102 = call i32 @llvm.bswap.i32(i32 %or.i265.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i9.i270.i, i32 %102) #6, !srcloc !107
  br label %while.end.i

if.end13.i:                                       ; preds = %spi_sh_read.exit254.i.if.end13.i_crit_edge, %for.end.i.if.end13.i_crit_edge
  %sub.i = sub i32 %remain.0398.i, %i.0.lcssa.ph.i
  %add.ptr.i = getelementptr i8, ptr %data.0396.i, i32 %i.0.lcssa.ph.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp14.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp14.i, label %if.then16.i, label %if.end13.i.while.end.i_crit_edge

if.end13.i.while.end.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.then16.i:                                      ; preds = %if.end13.i
  %103 = ptrtoint ptr %cr1.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cr1.i, align 4
  %and17.i = and i32 %104, -129
  store i32 %and17.i, ptr %cr1.i, align 4
  %105 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %width.i.i.i, align 4
  %107 = zext i32 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %106, label %if.then16.i.spi_sh_read.exit.i284.i_crit_edge [
    i32 8, label %if.then.i.i276.i
    i32 32, label %if.then4.i.i278.i
  ]

if.then16.i.spi_sh_read.exit.i284.i_crit_edge:    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_read.exit.i284.i

if.then.i.i276.i:                                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i274.i = getelementptr i8, ptr %109, i32 8
  %110 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i274.i) #6, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %conv.i.i275.i = zext i8 %110 to i32
  br label %spi_sh_read.exitthread-pre-split.i281.i

if.then4.i.i278.i:                                ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #8
  %111 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i.i277.i = getelementptr i8, ptr %112, i32 32
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i277.i) #6, !srcloc !102
  %114 = call i32 @llvm.bswap.i32(i32 %113) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %spi_sh_read.exitthread-pre-split.i281.i

spi_sh_read.exitthread-pre-split.i281.i:          ; preds = %if.then4.i.i278.i, %if.then.i.i276.i
  %retval.0.i.ph.i279.i = phi i32 [ %114, %if.then4.i.i278.i ], [ %conv.i.i275.i, %if.then.i.i276.i ]
  %115 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %.pr.i280.i = load i32, ptr %width.i.i.i, align 4
  br label %spi_sh_read.exit.i284.i

spi_sh_read.exit.i284.i:                          ; preds = %spi_sh_read.exitthread-pre-split.i281.i, %if.then16.i.spi_sh_read.exit.i284.i_crit_edge
  %116 = phi i32 [ %.pr.i280.i, %spi_sh_read.exitthread-pre-split.i281.i ], [ %106, %if.then16.i.spi_sh_read.exit.i284.i_crit_edge ]
  %retval.0.i.i282.i = phi i32 [ %retval.0.i.ph.i279.i, %spi_sh_read.exitthread-pre-split.i281.i ], [ 0, %if.then16.i.spi_sh_read.exit.i284.i_crit_edge ]
  %or.i283.i = or i32 %retval.0.i.i282.i, 128
  %117 = zext i32 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %116, label %spi_sh_read.exit.i284.i.spi_sh_set_bit.exit290.i_crit_edge [
    i32 8, label %if.then.i8.i287.i
    i32 32, label %if.then4.i10.i289.i
  ]

spi_sh_read.exit.i284.i.spi_sh_set_bit.exit290.i_crit_edge: ; preds = %spi_sh_read.exit.i284.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_set_bit.exit290.i

if.then.i8.i287.i:                                ; preds = %spi_sh_read.exit.i284.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i5.i285.i = trunc i32 %or.i283.i to i8
  %118 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i7.i286.i = getelementptr i8, ptr %119, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i286.i, i8 %conv.i5.i285.i) #6, !srcloc !105
  br label %spi_sh_set_bit.exit290.i

if.then4.i10.i289.i:                              ; preds = %spi_sh_read.exit.i284.i
  call void @__sanitizer_cov_trace_pc() #8
  %120 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i9.i288.i = getelementptr i8, ptr %121, i32 32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  call void @arm_heavy_mb() #6
  %122 = call i32 @llvm.bswap.i32(i32 %or.i283.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i9.i288.i, i32 %122) #6, !srcloc !107
  br label %spi_sh_set_bit.exit290.i

spi_sh_set_bit.exit290.i:                         ; preds = %if.then4.i10.i289.i, %if.then.i8.i287.i, %spi_sh_read.exit.i284.i.spi_sh_set_bit.exit290.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 192) #6
  %123 = ptrtoint ptr %cr1.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %cr1.i, align 4
  %and22.i = and i32 %124, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.then36.i, label %spi_sh_set_bit.exit290.i.while.body.i.backedge_crit_edge

spi_sh_set_bit.exit290.i.while.body.i.backedge_crit_edge: ; preds = %spi_sh_set_bit.exit290.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.backedge

if.then36.i:                                      ; preds = %spi_sh_set_bit.exit290.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #6
  %125 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #6
  %call39387.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #6
  %126 = ptrtoint ptr %cr1.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %cr1.i, align 4
  %and42388.i = and i32 %127, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42388.i)
  %tobool43.not389.not.i = icmp eq i32 %and42388.i, 0
  br i1 %tobool43.not389.not.i, label %if.then36.i.if.end61.i_crit_edge, label %if.end69.thread.i

if.then36.i.if.end61.i_crit_edge:                 ; preds = %if.then36.i
  br label %if.end61.i

if.end69.thread.i:                                ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @finish_wait(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #6
  br label %while.body.i.backedge

if.end61.i:                                       ; preds = %cleanup.i.if.end61.i_crit_edge, %if.then36.i.if.end61.i_crit_edge
  %__ret37.1392.i = phi i32 [ %__ret37.1.i, %cleanup.i.if.end61.i_crit_edge ], [ 300, %if.then36.i.if.end61.i_crit_edge ]
  %call39391.i = phi i32 [ %call39.i, %cleanup.i.if.end61.i_crit_edge ], [ %call39387.i, %if.then36.i.if.end61.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39391.i)
  %tobool62.not.i = icmp eq i32 %call39391.i, 0
  br i1 %tobool62.not.i, label %cleanup.i, label %if.end69.thread362.i

if.end69.thread362.i:                             ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #6
  br label %while.body.i.backedge

cleanup.i:                                        ; preds = %if.end61.i
  %call65.i = call i32 @schedule_timeout(i32 noundef %__ret37.1392.i) #6
  %call39.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #6
  %128 = ptrtoint ptr %cr1.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %cr1.i, align 4
  %and42.i = and i32 %129, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool48.not.i = icmp eq i32 %call65.i, 0
  %spec.store.select180.i = select i1 %tobool48.not.i, i32 1, i32 %call65.i
  %__ret37.1.i = select i1 %tobool43.not.i, i32 %call65.i, i32 %spec.store.select180.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret37.1.i)
  %tobool55.not.i = icmp eq i32 %__ret37.1.i, 0
  %not.tobool43.not.i = xor i1 %tobool43.not.i, true
  %130 = select i1 %not.tobool43.not.i, i1 true, i1 %tobool55.not.i
  br i1 %130, label %if.end69.i, label %cleanup.i.if.end61.i_crit_edge

cleanup.i.if.end61.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61.i

if.end69.i:                                       ; preds = %cleanup.i
  call void @finish_wait(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #6
  br i1 %tobool55.not.i, label %land.lhs.true73.i, label %if.end69.i.while.body.i.backedge_crit_edge

if.end69.i.while.body.i.backedge_crit_edge:       ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.backedge

land.lhs.true73.i:                                ; preds = %if.end69.i
  %131 = ptrtoint ptr %cr1.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %cr1.i, align 4
  %and75.i = and i32 %132, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %tobool76.not.i = icmp eq i32 %and75.i, 0
  br i1 %tobool76.not.i, label %land.lhs.true73.i.error.sink.split_crit_edge, label %land.lhs.true73.i.while.body.i.backedge_crit_edge

land.lhs.true73.i.while.body.i.backedge_crit_edge: ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.backedge

land.lhs.true73.i.error.sink.split_crit_edge:     ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error.sink.split

while.body.i.backedge:                            ; preds = %land.lhs.true73.i.while.body.i.backedge_crit_edge, %if.end69.i.while.body.i.backedge_crit_edge, %if.end69.thread362.i, %if.end69.thread.i, %spi_sh_set_bit.exit290.i.while.body.i.backedge_crit_edge
  br label %while.body.i

while.end.i:                                      ; preds = %if.end13.i.while.end.i_crit_edge, %if.then4.i10.i271.i, %if.then.i8.i269.i, %spi_sh_read.exit.i266.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge, %if.then72.while.end.i_crit_edge
  %cmp74 = phi i1 [ true, %if.then4.i10.i271.i ], [ true, %if.then.i8.i269.i ], [ true, %spi_sh_read.exit.i266.i.while.end.i_crit_edge ], [ false, %if.end.i.while.end.i_crit_edge ], [ false, %if.then72.while.end.i_crit_edge ], [ false, %if.end13.i.while.end.i_crit_edge ]
  %retval1.0.i = phi i32 [ -5, %if.then4.i10.i271.i ], [ -5, %if.then.i8.i269.i ], [ -5, %spi_sh_read.exit.i266.i.while.end.i_crit_edge ], [ 0, %if.end.i.while.end.i_crit_edge ], [ 0, %if.then72.while.end.i_crit_edge ], [ 0, %if.end13.i.while.end.i_crit_edge ]
  %133 = ptrtoint ptr %.pn293 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %.pn293, align 4
  %cmp.i.not.i = icmp eq ptr %134, %add.ptr21
  br i1 %cmp.i.not.i, label %if.then87.i, label %while.end.i.spi_sh_send.exit_crit_edge

while.end.i.spi_sh_send.exit_crit_edge:           ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_send.exit

if.then87.i:                                      ; preds = %while.end.i
  %135 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %width.i.i.i, align 4
  %137 = zext i32 %136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %136, label %if.then87.i.spi_sh_read.exit.i302.i_crit_edge [
    i32 8, label %if.then.i.i295.i
    i32 32, label %if.then4.i.i297.i
  ]

if.then87.i.spi_sh_read.exit.i302.i_crit_edge:    ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_read.exit.i302.i

if.then.i.i295.i:                                 ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #8
  %138 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i293.i = getelementptr i8, ptr %139, i32 2
  %140 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i293.i) #6, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %conv.i.i294.i = zext i8 %140 to i32
  br label %spi_sh_read.exitthread-pre-split.i300.i

if.then4.i.i297.i:                                ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #8
  %141 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i.i296.i = getelementptr i8, ptr %142, i32 8
  %143 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i296.i) #6, !srcloc !102
  %144 = call i32 @llvm.bswap.i32(i32 %143) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %spi_sh_read.exitthread-pre-split.i300.i

spi_sh_read.exitthread-pre-split.i300.i:          ; preds = %if.then4.i.i297.i, %if.then.i.i295.i
  %retval.0.i.ph.i298.i = phi i32 [ %144, %if.then4.i.i297.i ], [ %conv.i.i294.i, %if.then.i.i295.i ]
  %145 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %.pr.i299.i = load i32, ptr %width.i.i.i, align 4
  br label %spi_sh_read.exit.i302.i

spi_sh_read.exit.i302.i:                          ; preds = %spi_sh_read.exitthread-pre-split.i300.i, %if.then87.i.spi_sh_read.exit.i302.i_crit_edge
  %146 = phi i32 [ %.pr.i299.i, %spi_sh_read.exitthread-pre-split.i300.i ], [ %136, %if.then87.i.spi_sh_read.exit.i302.i_crit_edge ]
  %retval.0.i.i301.i = phi i32 [ %retval.0.i.ph.i298.i, %spi_sh_read.exitthread-pre-split.i300.i ], [ 0, %if.then87.i.spi_sh_read.exit.i302.i_crit_edge ]
  %and.i.i = and i32 %retval.0.i.i301.i, -7
  %147 = zext i32 %146 to i64
  call void @__sanitizer_cov_trace_switch(i64 %147, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %146, label %spi_sh_read.exit.i302.i.spi_sh_clear_bit.exit.i_crit_edge [
    i32 8, label %if.then.i8.i305.i
    i32 32, label %if.then4.i10.i307.i
  ]

spi_sh_read.exit.i302.i.spi_sh_clear_bit.exit.i_crit_edge: ; preds = %spi_sh_read.exit.i302.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_clear_bit.exit.i

if.then.i8.i305.i:                                ; preds = %spi_sh_read.exit.i302.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i5.i303.i = trunc i32 %and.i.i to i8
  %148 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i7.i304.i = getelementptr i8, ptr %149, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i304.i, i8 %conv.i5.i303.i) #6, !srcloc !105
  br label %spi_sh_clear_bit.exit.i

if.then4.i10.i307.i:                              ; preds = %spi_sh_read.exit.i302.i
  call void @__sanitizer_cov_trace_pc() #8
  %150 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i9.i306.i = getelementptr i8, ptr %151, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  call void @arm_heavy_mb() #6
  %152 = call i32 @llvm.bswap.i32(i32 %and.i.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i9.i306.i, i32 %152) #6, !srcloc !107
  br label %spi_sh_clear_bit.exit.i

spi_sh_clear_bit.exit.i:                          ; preds = %if.then4.i10.i307.i, %if.then.i8.i305.i, %spi_sh_read.exit.i302.i.spi_sh_clear_bit.exit.i_crit_edge
  %153 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %width.i.i.i, align 4
  %155 = zext i32 %154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %155, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %154, label %spi_sh_clear_bit.exit.i.spi_sh_read.exit.i319.i_crit_edge [
    i32 8, label %if.then.i.i311.i
    i32 32, label %if.then4.i.i313.i
  ]

spi_sh_clear_bit.exit.i.spi_sh_read.exit.i319.i_crit_edge: ; preds = %spi_sh_clear_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_read.exit.i319.i

if.then.i.i311.i:                                 ; preds = %spi_sh_clear_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %156 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i309.i = getelementptr i8, ptr %157, i32 2
  %158 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i309.i) #6, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %conv.i.i310.i = zext i8 %158 to i32
  br label %spi_sh_read.exitthread-pre-split.i316.i

if.then4.i.i313.i:                                ; preds = %spi_sh_clear_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %159 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i.i312.i = getelementptr i8, ptr %160, i32 8
  %161 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i312.i) #6, !srcloc !102
  %162 = call i32 @llvm.bswap.i32(i32 %161) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %spi_sh_read.exitthread-pre-split.i316.i

spi_sh_read.exitthread-pre-split.i316.i:          ; preds = %if.then4.i.i313.i, %if.then.i.i311.i
  %retval.0.i.ph.i314.i = phi i32 [ %162, %if.then4.i.i313.i ], [ %conv.i.i310.i, %if.then.i.i311.i ]
  %163 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %.pr.i315.i = load i32, ptr %width.i.i.i, align 4
  br label %spi_sh_read.exit.i319.i

spi_sh_read.exit.i319.i:                          ; preds = %spi_sh_read.exitthread-pre-split.i316.i, %spi_sh_clear_bit.exit.i.spi_sh_read.exit.i319.i_crit_edge
  %164 = phi i32 [ %.pr.i315.i, %spi_sh_read.exitthread-pre-split.i316.i ], [ %154, %spi_sh_clear_bit.exit.i.spi_sh_read.exit.i319.i_crit_edge ]
  %retval.0.i.i317.i = phi i32 [ %retval.0.i.ph.i314.i, %spi_sh_read.exitthread-pre-split.i316.i ], [ 0, %spi_sh_clear_bit.exit.i.spi_sh_read.exit.i319.i_crit_edge ]
  %or.i318.i = or i32 %retval.0.i.i317.i, 1
  %165 = zext i32 %164 to i64
  call void @__sanitizer_cov_trace_switch(i64 %165, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %164, label %spi_sh_read.exit.i319.i.spi_sh_set_bit.exit325.i_crit_edge [
    i32 8, label %if.then.i8.i322.i
    i32 32, label %if.then4.i10.i324.i
  ]

spi_sh_read.exit.i319.i.spi_sh_set_bit.exit325.i_crit_edge: ; preds = %spi_sh_read.exit.i319.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_set_bit.exit325.i

if.then.i8.i322.i:                                ; preds = %spi_sh_read.exit.i319.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i5.i320.i = trunc i32 %or.i318.i to i8
  %166 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i7.i321.i = getelementptr i8, ptr %167, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i321.i, i8 %conv.i5.i320.i) #6, !srcloc !105
  br label %spi_sh_set_bit.exit325.i

if.then4.i10.i324.i:                              ; preds = %spi_sh_read.exit.i319.i
  call void @__sanitizer_cov_trace_pc() #8
  %168 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i9.i323.i = getelementptr i8, ptr %169, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  call void @arm_heavy_mb() #6
  %170 = call i32 @llvm.bswap.i32(i32 %or.i318.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i9.i323.i, i32 %170) #6, !srcloc !107
  br label %spi_sh_set_bit.exit325.i

spi_sh_set_bit.exit325.i:                         ; preds = %if.then4.i10.i324.i, %if.then.i8.i322.i, %spi_sh_read.exit.i319.i.spi_sh_set_bit.exit325.i_crit_edge
  %171 = ptrtoint ptr %cr1.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %cr1.i, align 4
  %and89.i = and i32 %172, -129
  store i32 %and89.i, ptr %cr1.i, align 4
  %173 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %width.i.i.i, align 4
  %175 = zext i32 %174 to i64
  call void @__sanitizer_cov_trace_switch(i64 %175, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %174, label %spi_sh_set_bit.exit325.i.spi_sh_read.exit.i337.i_crit_edge [
    i32 8, label %if.then.i.i329.i
    i32 32, label %if.then4.i.i331.i
  ]

spi_sh_set_bit.exit325.i.spi_sh_read.exit.i337.i_crit_edge: ; preds = %spi_sh_set_bit.exit325.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_read.exit.i337.i

if.then.i.i329.i:                                 ; preds = %spi_sh_set_bit.exit325.i
  call void @__sanitizer_cov_trace_pc() #8
  %176 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i327.i = getelementptr i8, ptr %177, i32 8
  %178 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i327.i) #6, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %conv.i.i328.i = zext i8 %178 to i32
  br label %spi_sh_read.exitthread-pre-split.i334.i

if.then4.i.i331.i:                                ; preds = %spi_sh_set_bit.exit325.i
  call void @__sanitizer_cov_trace_pc() #8
  %179 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i.i330.i = getelementptr i8, ptr %180, i32 32
  %181 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i330.i) #6, !srcloc !102
  %182 = call i32 @llvm.bswap.i32(i32 %181) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %spi_sh_read.exitthread-pre-split.i334.i

spi_sh_read.exitthread-pre-split.i334.i:          ; preds = %if.then4.i.i331.i, %if.then.i.i329.i
  %retval.0.i.ph.i332.i = phi i32 [ %182, %if.then4.i.i331.i ], [ %conv.i.i328.i, %if.then.i.i329.i ]
  %183 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %.pr.i333.i = load i32, ptr %width.i.i.i, align 4
  br label %spi_sh_read.exit.i337.i

spi_sh_read.exit.i337.i:                          ; preds = %spi_sh_read.exitthread-pre-split.i334.i, %spi_sh_set_bit.exit325.i.spi_sh_read.exit.i337.i_crit_edge
  %184 = phi i32 [ %.pr.i333.i, %spi_sh_read.exitthread-pre-split.i334.i ], [ %174, %spi_sh_set_bit.exit325.i.spi_sh_read.exit.i337.i_crit_edge ]
  %retval.0.i.i335.i = phi i32 [ %retval.0.i.ph.i332.i, %spi_sh_read.exitthread-pre-split.i334.i ], [ 0, %spi_sh_set_bit.exit325.i.spi_sh_read.exit.i337.i_crit_edge ]
  %or.i336.i = or i32 %retval.0.i.i335.i, 128
  %185 = zext i32 %184 to i64
  call void @__sanitizer_cov_trace_switch(i64 %185, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %184, label %spi_sh_read.exit.i337.i.spi_sh_set_bit.exit343.i_crit_edge [
    i32 8, label %if.then.i8.i340.i
    i32 32, label %if.then4.i10.i342.i
  ]

spi_sh_read.exit.i337.i.spi_sh_set_bit.exit343.i_crit_edge: ; preds = %spi_sh_read.exit.i337.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_set_bit.exit343.i

if.then.i8.i340.i:                                ; preds = %spi_sh_read.exit.i337.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i5.i338.i = trunc i32 %or.i336.i to i8
  %186 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i7.i339.i = getelementptr i8, ptr %187, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i339.i, i8 %conv.i5.i338.i) #6, !srcloc !105
  br label %spi_sh_set_bit.exit343.i

if.then4.i10.i342.i:                              ; preds = %spi_sh_read.exit.i337.i
  call void @__sanitizer_cov_trace_pc() #8
  %188 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i9.i341.i = getelementptr i8, ptr %189, i32 32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  call void @arm_heavy_mb() #6
  %190 = call i32 @llvm.bswap.i32(i32 %or.i336.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i9.i341.i, i32 %190) #6, !srcloc !107
  br label %spi_sh_set_bit.exit343.i

spi_sh_set_bit.exit343.i:                         ; preds = %if.then4.i10.i342.i, %if.then.i8.i340.i, %spi_sh_read.exit.i337.i.spi_sh_set_bit.exit343.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 208) #6
  %191 = ptrtoint ptr %cr1.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %cr1.i, align 4
  %and99.i = and i32 %192, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99.i)
  %tobool100.not.i = icmp eq i32 %and99.i, 0
  br i1 %tobool100.not.i, label %if.then117.i, label %spi_sh_set_bit.exit343.i.spi_sh_send.exit_crit_edge

spi_sh_set_bit.exit343.i.spi_sh_send.exit_crit_edge: ; preds = %spi_sh_set_bit.exit343.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_send.exit

if.then117.i:                                     ; preds = %spi_sh_set_bit.exit343.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry118.i) #6
  %193 = call ptr @memset(ptr %__wq_entry118.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry118.i, i32 noundef 0) #6
  %call123399.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry118.i, i32 noundef 1) #6
  %194 = ptrtoint ptr %cr1.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %cr1.i, align 4
  %and126400.i = and i32 %195, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126400.i)
  %tobool127.not401.not.i = icmp eq i32 %and126400.i, 0
  br i1 %tobool127.not401.not.i, label %if.then117.i.if.end145.i_crit_edge, label %if.end157.thread.i

if.then117.i.if.end145.i_crit_edge:               ; preds = %if.then117.i
  br label %if.end145.i

if.end157.thread.i:                               ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @finish_wait(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry118.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry118.i) #6
  br label %spi_sh_send.exit

if.end145.i:                                      ; preds = %cleanup150.i.if.end145.i_crit_edge, %if.then117.i.if.end145.i_crit_edge
  %__ret119.1404.i = phi i32 [ %__ret119.1.i, %cleanup150.i.if.end145.i_crit_edge ], [ 300, %if.then117.i.if.end145.i_crit_edge ]
  %call123403.i = phi i32 [ %call123.i, %cleanup150.i.if.end145.i_crit_edge ], [ %call123399.i, %if.then117.i.if.end145.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123403.i)
  %tobool146.not.i = icmp eq i32 %call123403.i, 0
  br i1 %tobool146.not.i, label %cleanup150.i, label %if.end157.thread374.i

if.end157.thread374.i:                            ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry118.i) #6
  br label %spi_sh_send.exit

cleanup150.i:                                     ; preds = %if.end145.i
  %call149.i = call i32 @schedule_timeout(i32 noundef %__ret119.1404.i) #6
  %call123.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry118.i, i32 noundef 1) #6
  %196 = ptrtoint ptr %cr1.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %cr1.i, align 4
  %and126.i = and i32 %197, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126.i)
  %tobool127.not.i = icmp eq i32 %and126.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i)
  %tobool132.not.i = icmp eq i32 %call149.i, 0
  %spec.store.select182.i = select i1 %tobool132.not.i, i32 1, i32 %call149.i
  %__ret119.1.i = select i1 %tobool127.not.i, i32 %call149.i, i32 %spec.store.select182.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret119.1.i)
  %tobool139.not.i = icmp eq i32 %__ret119.1.i, 0
  %not.tobool127.not.i = xor i1 %tobool127.not.i, true
  %198 = select i1 %not.tobool127.not.i, i1 true, i1 %tobool139.not.i
  br i1 %198, label %if.end157.i, label %cleanup150.i.if.end145.i_crit_edge

cleanup150.i.if.end145.i_crit_edge:               ; preds = %cleanup150.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end145.i

if.end157.i:                                      ; preds = %cleanup150.i
  call void @finish_wait(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry118.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry118.i) #6
  br i1 %tobool139.not.i, label %land.lhs.true161.i, label %if.end157.i.spi_sh_send.exit_crit_edge

if.end157.i.spi_sh_send.exit_crit_edge:           ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_send.exit

land.lhs.true161.i:                               ; preds = %if.end157.i
  %199 = ptrtoint ptr %cr1.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %cr1.i, align 4
  %and163.i = and i32 %200, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163.i)
  %tobool164.not.i = icmp eq i32 %and163.i, 0
  br i1 %tobool164.not.i, label %land.lhs.true161.i.spi_sh_send.exit_crit_edge, label %land.lhs.true161.i.error.sink.split_crit_edge

land.lhs.true161.i.error.sink.split_crit_edge:    ; preds = %land.lhs.true161.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error.sink.split

land.lhs.true161.i.spi_sh_send.exit_crit_edge:    ; preds = %land.lhs.true161.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_send.exit

spi_sh_send.exit:                                 ; preds = %land.lhs.true161.i.spi_sh_send.exit_crit_edge, %if.end157.i.spi_sh_send.exit_crit_edge, %if.end157.thread374.i, %if.end157.thread.i, %spi_sh_set_bit.exit343.i.spi_sh_send.exit_crit_edge, %while.end.i.spi_sh_send.exit_crit_edge
  br i1 %cmp74, label %spi_sh_send.exit.error_crit_edge, label %spi_sh_send.exit.if.end78_crit_edge

spi_sh_send.exit.if.end78_crit_edge:              ; preds = %spi_sh_send.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

spi_sh_send.exit.error_crit_edge:                 ; preds = %spi_sh_send.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end78:                                         ; preds = %spi_sh_send.exit.if.end78_crit_edge, %do.end69.if.end78_crit_edge
  %rx_buf79 = getelementptr i8, ptr %.pn293, i32 -80
  %201 = ptrtoint ptr %rx_buf79 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %rx_buf79, align 4
  %tobool80.not = icmp eq ptr %202, null
  br i1 %tobool80.not, label %if.end78.if.end87_crit_edge, label %if.then81

if.end78.if.end87_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.then81:                                        ; preds = %if.end78
  %len.i173 = getelementptr i8, ptr %.pn293, i32 -76
  %203 = ptrtoint ptr %len.i173 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %len.i173, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %204)
  %cmp.i174 = icmp ugt i32 %204, 255
  %205 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %width.i.i.i, align 4
  br i1 %cmp.i174, label %if.then.i176, label %if.else.i

if.then.i176:                                     ; preds = %if.then81
  %207 = zext i32 %206 to i64
  call void @__sanitizer_cov_trace_switch(i64 %207, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %206, label %if.then.i176.if.end.i183_crit_edge [
    i32 8, label %if.then.i.i178
    i32 32, label %if.then4.i.i180
  ]

if.then.i176.if.end.i183_crit_edge:               ; preds = %if.then.i176
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i183

if.then.i.i178:                                   ; preds = %if.then.i176
  call void @__sanitizer_cov_trace_pc() #8
  %208 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i177 = getelementptr i8, ptr %209, i32 6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i177, i8 -1) #6, !srcloc !105
  br label %if.end.i183thread-pre-split

if.then4.i.i180:                                  ; preds = %if.then.i176
  call void @__sanitizer_cov_trace_pc() #8
  %210 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i.i179 = getelementptr i8, ptr %211, i32 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i179, i32 -16777216) #6, !srcloc !107
  br label %if.end.i183thread-pre-split

if.else.i:                                        ; preds = %if.then81
  %212 = zext i32 %206 to i64
  call void @__sanitizer_cov_trace_switch(i64 %212, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %206, label %if.else.i.if.end.i183_crit_edge [
    i32 8, label %if.then.i3.i
    i32 32, label %if.then4.i5.i
  ]

if.else.i.if.end.i183_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i183

if.then.i3.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i181 = trunc i32 %204 to i8
  %213 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %214, i32 6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i, i8 %conv.i.i181) #6, !srcloc !105
  br label %if.end.i183thread-pre-split

if.then4.i5.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %215 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i4.i = getelementptr i8, ptr %216, i32 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  call void @arm_heavy_mb() #6
  %217 = call i32 @llvm.bswap.i32(i32 %204) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i4.i, i32 %217) #6, !srcloc !107
  br label %if.end.i183thread-pre-split

if.end.i183thread-pre-split:                      ; preds = %if.then4.i5.i, %if.then.i3.i, %if.then4.i.i180, %if.then.i.i178
  %218 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %.pr = load i32, ptr %width.i.i.i, align 4
  br label %if.end.i183

if.end.i183:                                      ; preds = %if.end.i183thread-pre-split, %if.else.i.if.end.i183_crit_edge, %if.then.i176.if.end.i183_crit_edge
  %219 = phi i32 [ %.pr, %if.end.i183thread-pre-split ], [ %206, %if.else.i.if.end.i183_crit_edge ], [ %206, %if.then.i176.if.end.i183_crit_edge ]
  %220 = zext i32 %219 to i64
  call void @__sanitizer_cov_trace_switch(i64 %220, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %219, label %if.end.i183.spi_sh_read.exit.i.i194_crit_edge [
    i32 8, label %if.then.i.i.i186
    i32 32, label %if.then4.i.i.i188
  ]

if.end.i183.spi_sh_read.exit.i.i194_crit_edge:    ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_read.exit.i.i194

if.then.i.i.i186:                                 ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #8
  %221 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i184 = getelementptr i8, ptr %222, i32 2
  %223 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i184) #6, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %conv.i.i.i185 = zext i8 %223 to i32
  br label %spi_sh_read.exitthread-pre-split.i.i191

if.then4.i.i.i188:                                ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #8
  %224 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i.i.i187 = getelementptr i8, ptr %225, i32 8
  %226 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i.i187) #6, !srcloc !102
  %227 = call i32 @llvm.bswap.i32(i32 %226) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %spi_sh_read.exitthread-pre-split.i.i191

spi_sh_read.exitthread-pre-split.i.i191:          ; preds = %if.then4.i.i.i188, %if.then.i.i.i186
  %retval.0.i.ph.i.i189 = phi i32 [ %227, %if.then4.i.i.i188 ], [ %conv.i.i.i185, %if.then.i.i.i186 ]
  %228 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %.pr.i.i190 = load i32, ptr %width.i.i.i, align 4
  br label %spi_sh_read.exit.i.i194

spi_sh_read.exit.i.i194:                          ; preds = %spi_sh_read.exitthread-pre-split.i.i191, %if.end.i183.spi_sh_read.exit.i.i194_crit_edge
  %229 = phi i32 [ %.pr.i.i190, %spi_sh_read.exitthread-pre-split.i.i191 ], [ %219, %if.end.i183.spi_sh_read.exit.i.i194_crit_edge ]
  %retval.0.i.i.i192 = phi i32 [ %retval.0.i.ph.i.i189, %spi_sh_read.exitthread-pre-split.i.i191 ], [ 0, %if.end.i183.spi_sh_read.exit.i.i194_crit_edge ]
  %and.i.i193 = and i32 %retval.0.i.i.i192, -7
  %230 = zext i32 %229 to i64
  call void @__sanitizer_cov_trace_switch(i64 %230, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %229, label %spi_sh_read.exit.i.i194.spi_sh_clear_bit.exit.i200_crit_edge [
    i32 8, label %if.then.i8.i.i197
    i32 32, label %if.then4.i10.i.i199
  ]

spi_sh_read.exit.i.i194.spi_sh_clear_bit.exit.i200_crit_edge: ; preds = %spi_sh_read.exit.i.i194
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_clear_bit.exit.i200

if.then.i8.i.i197:                                ; preds = %spi_sh_read.exit.i.i194
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i5.i.i195 = trunc i32 %and.i.i193 to i8
  %231 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i7.i.i196 = getelementptr i8, ptr %232, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i.i196, i8 %conv.i5.i.i195) #6, !srcloc !105
  br label %spi_sh_clear_bit.exit.i200

if.then4.i10.i.i199:                              ; preds = %spi_sh_read.exit.i.i194
  call void @__sanitizer_cov_trace_pc() #8
  %233 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i9.i.i198 = getelementptr i8, ptr %234, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  call void @arm_heavy_mb() #6
  %235 = call i32 @llvm.bswap.i32(i32 %and.i.i193) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i9.i.i198, i32 %235) #6, !srcloc !107
  br label %spi_sh_clear_bit.exit.i200

spi_sh_clear_bit.exit.i200:                       ; preds = %if.then4.i10.i.i199, %if.then.i8.i.i197, %spi_sh_read.exit.i.i194.spi_sh_clear_bit.exit.i200_crit_edge
  %236 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %width.i.i.i, align 4
  %238 = zext i32 %237 to i64
  call void @__sanitizer_cov_trace_switch(i64 %238, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %237, label %spi_sh_clear_bit.exit.i200.spi_sh_read.exit.i17.i_crit_edge [
    i32 8, label %if.then.i.i10.i
    i32 32, label %if.then4.i.i12.i
  ]

spi_sh_clear_bit.exit.i200.spi_sh_read.exit.i17.i_crit_edge: ; preds = %spi_sh_clear_bit.exit.i200
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_read.exit.i17.i

if.then.i.i10.i:                                  ; preds = %spi_sh_clear_bit.exit.i200
  call void @__sanitizer_cov_trace_pc() #8
  %239 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i8.i = getelementptr i8, ptr %240, i32 2
  %241 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i8.i) #6, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %conv.i.i9.i = zext i8 %241 to i32
  br label %spi_sh_read.exitthread-pre-split.i15.i

if.then4.i.i12.i:                                 ; preds = %spi_sh_clear_bit.exit.i200
  call void @__sanitizer_cov_trace_pc() #8
  %242 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i.i11.i = getelementptr i8, ptr %243, i32 8
  %244 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i11.i) #6, !srcloc !102
  %245 = call i32 @llvm.bswap.i32(i32 %244) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %spi_sh_read.exitthread-pre-split.i15.i

spi_sh_read.exitthread-pre-split.i15.i:           ; preds = %if.then4.i.i12.i, %if.then.i.i10.i
  %retval.0.i.ph.i13.i = phi i32 [ %245, %if.then4.i.i12.i ], [ %conv.i.i9.i, %if.then.i.i10.i ]
  %246 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %.pr.i14.i = load i32, ptr %width.i.i.i, align 4
  br label %spi_sh_read.exit.i17.i

spi_sh_read.exit.i17.i:                           ; preds = %spi_sh_read.exitthread-pre-split.i15.i, %spi_sh_clear_bit.exit.i200.spi_sh_read.exit.i17.i_crit_edge
  %247 = phi i32 [ %.pr.i14.i, %spi_sh_read.exitthread-pre-split.i15.i ], [ %237, %spi_sh_clear_bit.exit.i200.spi_sh_read.exit.i17.i_crit_edge ]
  %retval.0.i.i16.i = phi i32 [ %retval.0.i.ph.i13.i, %spi_sh_read.exitthread-pre-split.i15.i ], [ 0, %spi_sh_clear_bit.exit.i200.spi_sh_read.exit.i17.i_crit_edge ]
  %or.i.i201 = or i32 %retval.0.i.i16.i, 1
  %248 = zext i32 %247 to i64
  call void @__sanitizer_cov_trace_switch(i64 %248, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %247, label %spi_sh_read.exit.i17.i.while.cond.i.i.preheader_crit_edge [
    i32 8, label %if.then.i8.i20.i
    i32 32, label %if.then4.i10.i22.i
  ]

spi_sh_read.exit.i17.i.while.cond.i.i.preheader_crit_edge: ; preds = %spi_sh_read.exit.i17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i.preheader

if.then.i8.i20.i:                                 ; preds = %spi_sh_read.exit.i17.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i5.i18.i = trunc i32 %or.i.i201 to i8
  %249 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i7.i19.i = getelementptr i8, ptr %250, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i19.i, i8 %conv.i5.i18.i) #6, !srcloc !105
  br label %while.cond.i.i.preheader

if.then4.i10.i22.i:                               ; preds = %spi_sh_read.exit.i17.i
  call void @__sanitizer_cov_trace_pc() #8
  %251 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i9.i21.i = getelementptr i8, ptr %252, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  call void @arm_heavy_mb() #6
  %253 = call i32 @llvm.bswap.i32(i32 %or.i.i201) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i9.i21.i, i32 %253) #6, !srcloc !107
  br label %while.cond.i.i.preheader

while.cond.i.i.preheader:                         ; preds = %if.then4.i10.i22.i, %if.then.i8.i20.i, %spi_sh_read.exit.i17.i.while.cond.i.i.preheader_crit_edge
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %while.cond.i.i.preheader
  %timeout.0.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ 100000, %while.cond.i.i.preheader ]
  %254 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %width.i.i.i, align 4
  %256 = zext i32 %255 to i64
  call void @__sanitizer_cov_trace_switch(i64 %256, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %255, label %while.cond.i.i.while.body.i.i_crit_edge [
    i32 8, label %if.then.i.i26.i
    i32 32, label %if.then4.i.i28.i
  ]

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

if.then.i.i26.i:                                  ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %257 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i24.i = getelementptr i8, ptr %258, i32 2
  %259 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i24.i) #6, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %conv.i.i25.i = zext i8 %259 to i32
  br label %spi_sh_read.exit.i31.i

if.then4.i.i28.i:                                 ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %260 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i.i27.i = getelementptr i8, ptr %261, i32 8
  %262 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i27.i) #6, !srcloc !102
  %263 = call i32 @llvm.bswap.i32(i32 %262) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %spi_sh_read.exit.i31.i

spi_sh_read.exit.i31.i:                           ; preds = %if.then4.i.i28.i, %if.then.i.i26.i
  %retval.0.i.i29.i = phi i32 [ %conv.i.i25.i, %if.then.i.i26.i ], [ %263, %if.then4.i.i28.i ]
  %and.i30.i = and i32 %retval.0.i.i29.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30.i)
  %tobool.not.i.i = icmp eq i32 %and.i30.i, 0
  br i1 %tobool.not.i.i, label %spi_sh_read.exit.i31.i.while.body.i.i_crit_edge, label %spi_sh_read.exit.i31.i.spi_sh_wait_write_buffer_empty.exit.i_crit_edge

spi_sh_read.exit.i31.i.spi_sh_wait_write_buffer_empty.exit.i_crit_edge: ; preds = %spi_sh_read.exit.i31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_wait_write_buffer_empty.exit.i

spi_sh_read.exit.i31.i.while.body.i.i_crit_edge:  ; preds = %spi_sh_read.exit.i31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %spi_sh_read.exit.i31.i.while.body.i.i_crit_edge, %while.cond.i.i.while.body.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %264 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %264(i32 noundef 2147480) #6
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  %cmp.i.i = icmp slt i32 %timeout.0.i.i, 0
  br i1 %cmp.i.i, label %while.body.i.i.spi_sh_wait_write_buffer_empty.exit.i_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

while.body.i.i.spi_sh_wait_write_buffer_empty.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_wait_write_buffer_empty.exit.i

spi_sh_wait_write_buffer_empty.exit.i:            ; preds = %while.body.i.i.spi_sh_wait_write_buffer_empty.exit.i_crit_edge, %spi_sh_read.exit.i31.i.spi_sh_wait_write_buffer_empty.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %cmp3121.i = icmp sgt i32 %204, 0
  br i1 %cmp3121.i, label %while.body.lr.ph.i204, label %spi_sh_wait_write_buffer_empty.exit.i.while.end.i221_crit_edge

spi_sh_wait_write_buffer_empty.exit.i.while.end.i221_crit_edge: ; preds = %spi_sh_wait_write_buffer_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i221

while.body.lr.ph.i204:                            ; preds = %spi_sh_wait_write_buffer_empty.exit.i
  %265 = ptrtoint ptr %rx_buf79 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %rx_buf79, align 4
  br label %while.body.i205

while.body.i205:                                  ; preds = %for.end71.i.while.body.i205_crit_edge, %while.body.lr.ph.i204
  %remain.0125.i = phi i32 [ %204, %while.body.lr.ph.i204 ], [ %sub.i219, %for.end71.i.while.body.i205_crit_edge ]
  %data.0122.i = phi ptr [ %266, %while.body.lr.ph.i204 ], [ %add.ptr.i220, %for.end71.i.while.body.i205_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %remain.0125.i)
  %cmp4.i = icmp ugt i32 %remain.0125.i, 31
  br i1 %cmp4.i, label %if.then5.i, label %while.body.i205.if.end61.thread.i_crit_edge

while.body.i205.if.end61.thread.i_crit_edge:      ; preds = %while.body.i205
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61.thread.i

if.then5.i:                                       ; preds = %while.body.i205
  %267 = ptrtoint ptr %cr1.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %cr1.i, align 4
  %and.i206 = and i32 %268, -17
  store i32 %and.i206, ptr %cr1.i, align 4
  %269 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %width.i.i.i, align 4
  %271 = zext i32 %270 to i64
  call void @__sanitizer_cov_trace_switch(i64 %271, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %270, label %if.then5.i.spi_sh_read.exit.i43.i_crit_edge [
    i32 8, label %if.then.i.i35.i
    i32 32, label %if.then4.i.i37.i
  ]

if.then5.i.spi_sh_read.exit.i43.i_crit_edge:      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_read.exit.i43.i

if.then.i.i35.i:                                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  %272 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i33.i = getelementptr i8, ptr %273, i32 8
  %274 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i33.i) #6, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %conv.i.i34.i = zext i8 %274 to i32
  br label %spi_sh_read.exitthread-pre-split.i40.i

if.then4.i.i37.i:                                 ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  %275 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i.i36.i = getelementptr i8, ptr %276, i32 32
  %277 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i36.i) #6, !srcloc !102
  %278 = call i32 @llvm.bswap.i32(i32 %277) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %spi_sh_read.exitthread-pre-split.i40.i

spi_sh_read.exitthread-pre-split.i40.i:           ; preds = %if.then4.i.i37.i, %if.then.i.i35.i
  %retval.0.i.ph.i38.i = phi i32 [ %278, %if.then4.i.i37.i ], [ %conv.i.i34.i, %if.then.i.i35.i ]
  %279 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %.pr.i39.i = load i32, ptr %width.i.i.i, align 4
  br label %spi_sh_read.exit.i43.i

spi_sh_read.exit.i43.i:                           ; preds = %spi_sh_read.exitthread-pre-split.i40.i, %if.then5.i.spi_sh_read.exit.i43.i_crit_edge
  %280 = phi i32 [ %.pr.i39.i, %spi_sh_read.exitthread-pre-split.i40.i ], [ %270, %if.then5.i.spi_sh_read.exit.i43.i_crit_edge ]
  %retval.0.i.i41.i = phi i32 [ %retval.0.i.ph.i38.i, %spi_sh_read.exitthread-pre-split.i40.i ], [ 0, %if.then5.i.spi_sh_read.exit.i43.i_crit_edge ]
  %or.i42.i = or i32 %retval.0.i.i41.i, 16
  %281 = zext i32 %280 to i64
  call void @__sanitizer_cov_trace_switch(i64 %281, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %280, label %spi_sh_read.exit.i43.i.spi_sh_set_bit.exit49.i_crit_edge [
    i32 8, label %if.then.i8.i46.i
    i32 32, label %if.then4.i10.i48.i
  ]

spi_sh_read.exit.i43.i.spi_sh_set_bit.exit49.i_crit_edge: ; preds = %spi_sh_read.exit.i43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_set_bit.exit49.i

if.then.i8.i46.i:                                 ; preds = %spi_sh_read.exit.i43.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i5.i44.i = trunc i32 %or.i42.i to i8
  %282 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i7.i45.i = getelementptr i8, ptr %283, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i45.i, i8 %conv.i5.i44.i) #6, !srcloc !105
  br label %spi_sh_set_bit.exit49.i

if.then4.i10.i48.i:                               ; preds = %spi_sh_read.exit.i43.i
  call void @__sanitizer_cov_trace_pc() #8
  %284 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i9.i47.i = getelementptr i8, ptr %285, i32 32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  call void @arm_heavy_mb() #6
  %286 = call i32 @llvm.bswap.i32(i32 %or.i42.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i9.i47.i, i32 %286) #6, !srcloc !107
  br label %spi_sh_set_bit.exit49.i

spi_sh_set_bit.exit49.i:                          ; preds = %if.then4.i10.i48.i, %if.then.i8.i46.i, %spi_sh_read.exit.i43.i.spi_sh_set_bit.exit49.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 244) #6
  %287 = ptrtoint ptr %cr1.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %cr1.i, align 4
  %and10.i207 = and i32 %288, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i207)
  %tobool.not.i208 = icmp eq i32 %and10.i207, 0
  br i1 %tobool.not.i208, label %if.then18.i, label %spi_sh_set_bit.exit49.i.if.end61.thread.i_crit_edge

spi_sh_set_bit.exit49.i.if.end61.thread.i_crit_edge: ; preds = %spi_sh_set_bit.exit49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61.thread.i

if.then18.i:                                      ; preds = %spi_sh_set_bit.exit49.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i172) #6
  %289 = call ptr @memset(ptr %__wq_entry.i172, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i172, i32 noundef 0) #6
  %call20112.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i172, i32 noundef 1) #6
  %290 = ptrtoint ptr %cr1.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %cr1.i, align 4
  %and23113.i = and i32 %291, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23113.i)
  %tobool24.not114.not.i = icmp eq i32 %and23113.i, 0
  br i1 %tobool24.not114.not.i, label %if.then18.i.if.end40.i_crit_edge, label %if.end47.thread.i

if.then18.i.if.end40.i_crit_edge:                 ; preds = %if.then18.i
  br label %if.end40.i

if.end47.thread.i:                                ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @finish_wait(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i172) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i172) #6
  br label %if.end61.thread.i

if.end40.i:                                       ; preds = %cleanup.i209.if.end40.i_crit_edge, %if.then18.i.if.end40.i_crit_edge
  %__ret19.1117.i = phi i32 [ %__ret19.1.i, %cleanup.i209.if.end40.i_crit_edge ], [ 12, %if.then18.i.if.end40.i_crit_edge ]
  %call20116.i = phi i32 [ %call20.i, %cleanup.i209.if.end40.i_crit_edge ], [ %call20112.i, %if.then18.i.if.end40.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20116.i)
  %tobool41.not.i = icmp eq i32 %call20116.i, 0
  br i1 %tobool41.not.i, label %cleanup.i209, label %if.end47.thread99.i

if.end47.thread99.i:                              ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i172) #6
  br label %if.end61.i212

cleanup.i209:                                     ; preds = %if.end40.i
  %call44.i = call i32 @schedule_timeout(i32 noundef %__ret19.1117.i) #6
  %call20.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i172, i32 noundef 1) #6
  %292 = ptrtoint ptr %cr1.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %cr1.i, align 4
  %and23.i = and i32 %293, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool28.not.i = icmp eq i32 %call44.i, 0
  %spec.store.select83.i = select i1 %tobool28.not.i, i32 1, i32 %call44.i
  %__ret19.1.i = select i1 %tobool24.not.i, i32 %call44.i, i32 %spec.store.select83.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret19.1.i)
  %tobool34.not.i = icmp eq i32 %__ret19.1.i, 0
  %not.tobool24.not.i = xor i1 %tobool24.not.i, true
  %294 = select i1 %not.tobool24.not.i, i1 true, i1 %tobool34.not.i
  br i1 %294, label %if.end47.i, label %cleanup.i209.if.end40.i_crit_edge

cleanup.i209.if.end40.i_crit_edge:                ; preds = %cleanup.i209
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

if.end47.i:                                       ; preds = %cleanup.i209
  call void @finish_wait(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i172) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i172) #6
  br i1 %tobool34.not.i, label %land.lhs.true50.i, label %if.end47.i.if.end61.i212_crit_edge

if.end47.i.if.end61.i212_crit_edge:               ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61.i212

land.lhs.true50.i:                                ; preds = %if.end47.i
  %295 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %width.i.i.i, align 4
  %297 = zext i32 %296 to i64
  call void @__sanitizer_cov_trace_switch(i64 %297, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %296, label %land.lhs.true50.i.if.end61.i212_crit_edge [
    i32 8, label %if.then.i53.i
    i32 32, label %if.then4.i55.i
  ]

land.lhs.true50.i.if.end61.i212_crit_edge:        ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61.i212

if.then.i53.i:                                    ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #8
  %298 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i51.i = getelementptr i8, ptr %299, i32 2
  %300 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i51.i) #6, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %conv.i52.i = zext i8 %300 to i32
  br label %spi_sh_read.exit.i211

if.then4.i55.i:                                   ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #8
  %301 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i54.i = getelementptr i8, ptr %302, i32 8
  %303 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i54.i) #6, !srcloc !102
  %304 = call i32 @llvm.bswap.i32(i32 %303) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %spi_sh_read.exit.i211

spi_sh_read.exit.i211:                            ; preds = %if.then4.i55.i, %if.then.i53.i
  %retval.0.i.i210 = phi i32 [ %conv.i52.i, %if.then.i53.i ], [ %304, %if.then4.i55.i ]
  %and52.i = and i32 %retval.0.i.i210, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %spi_sh_read.exit.i211.if.end61.i212_crit_edge, label %spi_sh_read.exit.i211.error.sink.split_crit_edge

spi_sh_read.exit.i211.error.sink.split_crit_edge: ; preds = %spi_sh_read.exit.i211
  call void @__sanitizer_cov_trace_pc() #8
  br label %error.sink.split

spi_sh_read.exit.i211.if.end61.i212_crit_edge:    ; preds = %spi_sh_read.exit.i211
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61.i212

if.end61.thread.i:                                ; preds = %if.end47.thread.i, %spi_sh_set_bit.exit49.i.if.end61.thread.i_crit_edge, %while.body.i205.if.end61.thread.i_crit_edge
  %305 = call i32 @llvm.smin.i32(i32 %remain.0125.i, i32 32) #6
  br label %while.cond.i58.preheader.preheader.i

if.end61.i212:                                    ; preds = %spi_sh_read.exit.i211.if.end61.i212_crit_edge, %land.lhs.true50.i.if.end61.i212_crit_edge, %if.end47.i.if.end61.i212_crit_edge, %if.end47.thread99.i
  %306 = call i32 @llvm.smin.i32(i32 %remain.0125.i, i32 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remain.0125.i)
  %cmp65119.i = icmp sgt i32 %remain.0125.i, 0
  br i1 %cmp65119.i, label %if.end61.i212.while.cond.i58.preheader.preheader.i_crit_edge, label %if.end61.i212.for.end71.i_crit_edge

if.end61.i212.for.end71.i_crit_edge:              ; preds = %if.end61.i212
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end71.i

if.end61.i212.while.cond.i58.preheader.preheader.i_crit_edge: ; preds = %if.end61.i212
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i58.preheader.preheader.i

while.cond.i58.preheader.preheader.i:             ; preds = %if.end61.i212.while.cond.i58.preheader.preheader.i_crit_edge, %if.end61.thread.i
  %307 = phi i32 [ %305, %if.end61.thread.i ], [ %306, %if.end61.i212.while.cond.i58.preheader.preheader.i_crit_edge ]
  %smax.i = call i32 @llvm.smax.i32(i32 %307, i32 1) #6
  br label %while.cond.i58.preheader.i

while.cond.i58.preheader.i:                       ; preds = %spi_sh_read.exit77.i.while.cond.i58.preheader.i_crit_edge, %while.cond.i58.preheader.preheader.i
  %i.0120.i = phi i32 [ %inc.i217, %spi_sh_read.exit77.i.while.cond.i58.preheader.i_crit_edge ], [ 0, %while.cond.i58.preheader.preheader.i ]
  br label %while.cond.i58.i

while.cond.i58.i:                                 ; preds = %while.body.i70.i.while.cond.i58.i_crit_edge, %while.cond.i58.preheader.i
  %timeout.0.i57.i = phi i32 [ %dec.i68.i, %while.body.i70.i.while.cond.i58.i_crit_edge ], [ 100000, %while.cond.i58.preheader.i ]
  %308 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %width.i.i.i, align 4
  %310 = zext i32 %309 to i64
  call void @__sanitizer_cov_trace_switch(i64 %310, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %309, label %while.cond.i58.i.if.end69.i214_crit_edge [
    i32 8, label %if.then.i.i61.i
    i32 32, label %if.then4.i.i63.i
  ]

while.cond.i58.i.if.end69.i214_crit_edge:         ; preds = %while.cond.i58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69.i214

if.then.i.i61.i:                                  ; preds = %while.cond.i58.i
  call void @__sanitizer_cov_trace_pc() #8
  %311 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i59.i = getelementptr i8, ptr %312, i32 2
  %313 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i59.i) #6, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %conv.i.i60.i = zext i8 %313 to i32
  br label %spi_sh_read.exit.i67.i

if.then4.i.i63.i:                                 ; preds = %while.cond.i58.i
  call void @__sanitizer_cov_trace_pc() #8
  %314 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i.i62.i = getelementptr i8, ptr %315, i32 8
  %316 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i62.i) #6, !srcloc !102
  %317 = call i32 @llvm.bswap.i32(i32 %316) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %spi_sh_read.exit.i67.i

spi_sh_read.exit.i67.i:                           ; preds = %if.then4.i.i63.i, %if.then.i.i61.i
  %retval.0.i.i64.i = phi i32 [ %conv.i.i60.i, %if.then.i.i61.i ], [ %317, %if.then4.i.i63.i ]
  %and.i65.i = and i32 %retval.0.i.i64.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i65.i)
  %tobool.not.i66.i = icmp eq i32 %and.i65.i, 0
  br i1 %tobool.not.i66.i, label %if.end69thread-pre-split.i, label %while.body.i70.i

while.body.i70.i:                                 ; preds = %spi_sh_read.exit.i67.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %318 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %318(i32 noundef 2147480) #6
  %dec.i68.i = add nsw i32 %timeout.0.i57.i, -1
  %cmp.i69.i = icmp slt i32 %timeout.0.i57.i, 0
  br i1 %cmp.i69.i, label %while.body.i70.i.for.end71.i_crit_edge, label %while.body.i70.i.while.cond.i58.i_crit_edge

while.body.i70.i.while.cond.i58.i_crit_edge:      ; preds = %while.body.i70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i58.i

while.body.i70.i.for.end71.i_crit_edge:           ; preds = %while.body.i70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end71.i

if.end69thread-pre-split.i:                       ; preds = %spi_sh_read.exit.i67.i
  call void @__sanitizer_cov_trace_pc() #8
  %319 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %.pr.i213 = load i32, ptr %width.i.i.i, align 4
  br label %if.end69.i214

if.end69.i214:                                    ; preds = %if.end69thread-pre-split.i, %while.cond.i58.i.if.end69.i214_crit_edge
  %320 = phi i32 [ %.pr.i213, %if.end69thread-pre-split.i ], [ %309, %while.cond.i58.i.if.end69.i214_crit_edge ]
  %321 = zext i32 %320 to i64
  call void @__sanitizer_cov_trace_switch(i64 %321, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %320, label %if.end69.i214.spi_sh_read.exit77.i_crit_edge [
    i32 8, label %if.then.i74.i
    i32 32, label %if.then4.i75.i
  ]

if.end69.i214.spi_sh_read.exit77.i_crit_edge:     ; preds = %if.end69.i214
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_read.exit77.i

if.then.i74.i:                                    ; preds = %if.end69.i214
  call void @__sanitizer_cov_trace_pc() #8
  %322 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %add.ptr, align 4
  %324 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %323) #6, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %conv.i73.i = zext i8 %324 to i32
  br label %spi_sh_read.exit77.i

if.then4.i75.i:                                   ; preds = %if.end69.i214
  call void @__sanitizer_cov_trace_pc() #8
  %325 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %add.ptr, align 4
  %327 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %326) #6, !srcloc !102
  %328 = call i32 @llvm.bswap.i32(i32 %327) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %spi_sh_read.exit77.i

spi_sh_read.exit77.i:                             ; preds = %if.then4.i75.i, %if.then.i74.i, %if.end69.i214.spi_sh_read.exit77.i_crit_edge
  %retval.0.i76.i = phi i32 [ %conv.i73.i, %if.then.i74.i ], [ %328, %if.then4.i75.i ], [ 0, %if.end69.i214.spi_sh_read.exit77.i_crit_edge ]
  %conv.i215 = trunc i32 %retval.0.i76.i to i8
  %arrayidx.i216 = getelementptr i8, ptr %data.0122.i, i32 %i.0120.i
  %329 = ptrtoint ptr %arrayidx.i216 to i32
  call void @__asan_store1_noabort(i32 %329)
  store i8 %conv.i215, ptr %arrayidx.i216, align 1
  %inc.i217 = add nuw nsw i32 %i.0120.i, 1
  %exitcond.not.i218 = icmp eq i32 %inc.i217, %smax.i
  br i1 %exitcond.not.i218, label %spi_sh_read.exit77.i.for.end71.i_crit_edge, label %spi_sh_read.exit77.i.while.cond.i58.preheader.i_crit_edge

spi_sh_read.exit77.i.while.cond.i58.preheader.i_crit_edge: ; preds = %spi_sh_read.exit77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i58.preheader.i

spi_sh_read.exit77.i.for.end71.i_crit_edge:       ; preds = %spi_sh_read.exit77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end71.i

for.end71.i:                                      ; preds = %spi_sh_read.exit77.i.for.end71.i_crit_edge, %while.body.i70.i.for.end71.i_crit_edge, %if.end61.i212.for.end71.i_crit_edge
  %330 = phi i32 [ %306, %if.end61.i212.for.end71.i_crit_edge ], [ %307, %while.body.i70.i.for.end71.i_crit_edge ], [ %307, %spi_sh_read.exit77.i.for.end71.i_crit_edge ]
  %sub.i219 = sub i32 %remain.0125.i, %330
  %add.ptr.i220 = getelementptr i8, ptr %data.0122.i, i32 %330
  %cmp3.i = icmp sgt i32 %sub.i219, 0
  br i1 %cmp3.i, label %for.end71.i.while.body.i205_crit_edge, label %for.end71.i.while.end.i221_crit_edge

for.end71.i.while.end.i221_crit_edge:             ; preds = %for.end71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i221

for.end71.i.while.body.i205_crit_edge:            ; preds = %for.end71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i205

while.end.i221:                                   ; preds = %for.end71.i.while.end.i221_crit_edge, %spi_sh_wait_write_buffer_empty.exit.i.while.end.i221_crit_edge
  %331 = ptrtoint ptr %len.i173 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %len.i173, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %332)
  %cmp73.i = icmp ugt i32 %332, 255
  br i1 %cmp73.i, label %if.then75.i, label %if.else76.i

if.then75.i:                                      ; preds = %while.end.i221
  call fastcc void @clear_fifo(ptr noundef %add.ptr) #6
  %333 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %width.i.i.i, align 4
  %335 = zext i32 %334 to i64
  call void @__sanitizer_cov_trace_switch(i64 %335, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %334, label %if.then75.i.if.end87_crit_edge [
    i32 8, label %if.then.i80.i
    i32 32, label %if.then4.i82.i
  ]

if.then75.i.if.end87_crit_edge:                   ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.then.i80.i:                                    ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #8
  %336 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i79.i = getelementptr i8, ptr %337, i32 6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i79.i, i8 1) #6, !srcloc !105
  br label %if.end87

if.then4.i82.i:                                   ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #8
  %338 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i81.i = getelementptr i8, ptr %339, i32 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i81.i, i32 16777216) #6, !srcloc !107
  br label %if.end87

if.else76.i:                                      ; preds = %while.end.i221
  %340 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %width.i.i.i, align 4
  %342 = zext i32 %341 to i64
  call void @__sanitizer_cov_trace_switch(i64 %342, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %341, label %if.else76.i.if.end87_crit_edge [
    i32 8, label %if.then.i86.i
    i32 32, label %if.then4.i88.i
  ]

if.else76.i.if.end87_crit_edge:                   ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.then.i86.i:                                    ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #8
  %343 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i85.i = getelementptr i8, ptr %344, i32 6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i85.i, i8 0) #6, !srcloc !105
  br label %if.end87

if.then4.i88.i:                                   ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #8
  %345 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i87.i = getelementptr i8, ptr %346, i32 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i87.i, i32 0) #6, !srcloc !107
  br label %if.end87

if.end87:                                         ; preds = %if.then4.i88.i, %if.then.i86.i, %if.else76.i.if.end87_crit_edge, %if.then4.i82.i, %if.then.i80.i, %if.then75.i.if.end87_crit_edge, %if.end78.if.end87_crit_edge
  %len88 = getelementptr i8, ptr %.pn293, i32 -76
  %347 = ptrtoint ptr %len88 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %len88, align 4
  %349 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %actual_length, align 4
  %add = add i32 %350, %348
  store i32 %add, ptr %actual_length, align 4
  %351 = ptrtoint ptr %.pn293 to i32
  call void @__asan_load4_noabort(i32 %351)
  %.pn = load ptr, ptr %.pn293, align 4
  %cmp29.not = icmp eq ptr %.pn, %add.ptr21
  br i1 %cmp29.not, label %if.end87.do.body95_crit_edge, label %if.end87.do.body33_crit_edge

if.end87.do.body33_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body33

if.end87.do.body95_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body95

do.body95:                                        ; preds = %if.end87.do.body95_crit_edge, %list_del_init.exit.do.body95_crit_edge
  %call103 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %status = getelementptr i8, ptr %2, i32 -4
  %352 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 0, ptr %status, align 4
  %complete = getelementptr i8, ptr %2, i32 -20
  %353 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %complete, align 4
  %tobool108.not = icmp eq ptr %354, null
  br i1 %tobool108.not, label %do.body95.if.end111_crit_edge, label %if.then109

do.body95.if.end111_crit_edge:                    ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

if.then109:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #8
  %context = getelementptr i8, ptr %2, i32 -16
  %355 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %context, align 4
  call void %354(ptr noundef %356) #6
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %do.body95.if.end111_crit_edge
  %357 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %358, %queue
  br i1 %cmp.i.not, label %if.end111.while.end_crit_edge, label %if.end111.while.body_crit_edge

if.end111.while.body_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end111.while.end_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end111.while.end_crit_edge, %do.body6.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call9, %do.body6.while.end_crit_edge ], [ %call103, %if.end111.while.end_crit_edge ]
  call fastcc void @clear_fifo(ptr noundef %add.ptr)
  %width.i.i223 = getelementptr i8, ptr %work, i32 144
  %359 = ptrtoint ptr %width.i.i223 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %width.i.i223, align 4
  %361 = zext i32 %360 to i64
  call void @__sanitizer_cov_trace_switch(i64 %361, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %360, label %while.end.spi_sh_read.exit.i231_crit_edge [
    i32 8, label %if.then.i.i226
    i32 32, label %if.then4.i.i228
  ]

while.end.spi_sh_read.exit.i231_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_read.exit.i231

if.then.i.i226:                                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %362 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i224 = getelementptr i8, ptr %363, i32 2
  %364 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i224) #6, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %conv.i.i225 = zext i8 %364 to i32
  br label %spi_sh_read.exitthread-pre-split.i

if.then4.i.i228:                                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %365 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i.i227 = getelementptr i8, ptr %366, i32 8
  %367 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i227) #6, !srcloc !102
  %368 = call i32 @llvm.bswap.i32(i32 %367) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %spi_sh_read.exitthread-pre-split.i

spi_sh_read.exitthread-pre-split.i:               ; preds = %if.then4.i.i228, %if.then.i.i226
  %retval.0.i.ph.i = phi i32 [ %368, %if.then4.i.i228 ], [ %conv.i.i225, %if.then.i.i226 ]
  %369 = ptrtoint ptr %width.i.i223 to i32
  call void @__asan_load4_noabort(i32 %369)
  %.pr.i229 = load i32, ptr %width.i.i223, align 4
  br label %spi_sh_read.exit.i231

spi_sh_read.exit.i231:                            ; preds = %spi_sh_read.exitthread-pre-split.i, %while.end.spi_sh_read.exit.i231_crit_edge
  %370 = phi i32 [ %.pr.i229, %spi_sh_read.exitthread-pre-split.i ], [ %360, %while.end.spi_sh_read.exit.i231_crit_edge ]
  %retval.0.i.i230 = phi i32 [ %retval.0.i.ph.i, %spi_sh_read.exitthread-pre-split.i ], [ 0, %while.end.spi_sh_read.exit.i231_crit_edge ]
  %or.i = or i32 %retval.0.i.i230, 2
  %371 = zext i32 %370 to i64
  call void @__sanitizer_cov_trace_switch(i64 %371, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %370, label %spi_sh_read.exit.i231.spi_sh_set_bit.exit_crit_edge [
    i32 8, label %if.then.i8.i
    i32 32, label %if.then4.i10.i
  ]

spi_sh_read.exit.i231.spi_sh_set_bit.exit_crit_edge: ; preds = %spi_sh_read.exit.i231
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_set_bit.exit

if.then.i8.i:                                     ; preds = %spi_sh_read.exit.i231
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i5.i = trunc i32 %or.i to i8
  %372 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %373, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i, i8 %conv.i5.i) #6, !srcloc !105
  br label %spi_sh_set_bit.exit

if.then4.i10.i:                                   ; preds = %spi_sh_read.exit.i231
  call void @__sanitizer_cov_trace_pc() #8
  %374 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i9.i = getelementptr i8, ptr %375, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  call void @arm_heavy_mb() #6
  %376 = call i32 @llvm.bswap.i32(i32 %or.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i9.i, i32 %376) #6, !srcloc !107
  br label %spi_sh_set_bit.exit

spi_sh_set_bit.exit:                              ; preds = %if.then4.i10.i, %if.then.i8.i, %spi_sh_read.exit.i231.spi_sh_set_bit.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %377 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %377(i32 noundef 21474800) #6
  %378 = ptrtoint ptr %width.i.i223 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %width.i.i223, align 4
  %380 = zext i32 %379 to i64
  call void @__sanitizer_cov_trace_switch(i64 %380, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %379, label %spi_sh_set_bit.exit.spi_sh_read.exit.i244_crit_edge [
    i32 8, label %if.then.i.i236
    i32 32, label %if.then4.i.i238
  ]

spi_sh_set_bit.exit.spi_sh_read.exit.i244_crit_edge: ; preds = %spi_sh_set_bit.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_read.exit.i244

if.then.i.i236:                                   ; preds = %spi_sh_set_bit.exit
  call void @__sanitizer_cov_trace_pc() #8
  %381 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i234 = getelementptr i8, ptr %382, i32 2
  %383 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i234) #6, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %conv.i.i235 = zext i8 %383 to i32
  br label %spi_sh_read.exitthread-pre-split.i241

if.then4.i.i238:                                  ; preds = %spi_sh_set_bit.exit
  call void @__sanitizer_cov_trace_pc() #8
  %384 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i.i237 = getelementptr i8, ptr %385, i32 8
  %386 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i237) #6, !srcloc !102
  %387 = call i32 @llvm.bswap.i32(i32 %386) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %spi_sh_read.exitthread-pre-split.i241

spi_sh_read.exitthread-pre-split.i241:            ; preds = %if.then4.i.i238, %if.then.i.i236
  %retval.0.i.ph.i239 = phi i32 [ %387, %if.then4.i.i238 ], [ %conv.i.i235, %if.then.i.i236 ]
  %388 = ptrtoint ptr %width.i.i223 to i32
  call void @__asan_load4_noabort(i32 %388)
  %.pr.i240 = load i32, ptr %width.i.i223, align 4
  br label %spi_sh_read.exit.i244

spi_sh_read.exit.i244:                            ; preds = %spi_sh_read.exitthread-pre-split.i241, %spi_sh_set_bit.exit.spi_sh_read.exit.i244_crit_edge
  %389 = phi i32 [ %.pr.i240, %spi_sh_read.exitthread-pre-split.i241 ], [ %379, %spi_sh_set_bit.exit.spi_sh_read.exit.i244_crit_edge ]
  %retval.0.i.i242 = phi i32 [ %retval.0.i.ph.i239, %spi_sh_read.exitthread-pre-split.i241 ], [ 0, %spi_sh_set_bit.exit.spi_sh_read.exit.i244_crit_edge ]
  %and.i243 = and i32 %retval.0.i.i242, -8
  %390 = zext i32 %389 to i64
  call void @__sanitizer_cov_trace_switch(i64 %390, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %389, label %spi_sh_read.exit.i244.spi_sh_clear_bit.exit_crit_edge [
    i32 8, label %if.then.i8.i247
    i32 32, label %if.then4.i10.i249
  ]

spi_sh_read.exit.i244.spi_sh_clear_bit.exit_crit_edge: ; preds = %spi_sh_read.exit.i244
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_clear_bit.exit

if.then.i8.i247:                                  ; preds = %spi_sh_read.exit.i244
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i5.i245 = trunc i32 %and.i243 to i8
  %391 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i7.i246 = getelementptr i8, ptr %392, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i246, i8 %conv.i5.i245) #6, !srcloc !105
  br label %spi_sh_clear_bit.exit

if.then4.i10.i249:                                ; preds = %spi_sh_read.exit.i244
  call void @__sanitizer_cov_trace_pc() #8
  %393 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i9.i248 = getelementptr i8, ptr %394, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  call void @arm_heavy_mb() #6
  %395 = call i32 @llvm.bswap.i32(i32 %and.i243) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i9.i248, i32 %395) #6, !srcloc !107
  br label %spi_sh_clear_bit.exit

spi_sh_clear_bit.exit:                            ; preds = %if.then4.i10.i249, %if.then.i8.i247, %spi_sh_read.exit.i244.spi_sh_clear_bit.exit_crit_edge
  call fastcc void @clear_fifo(ptr noundef %add.ptr)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0.lcssa) #6
  br label %cleanup

error.sink.split:                                 ; preds = %spi_sh_read.exit.i211.error.sink.split_crit_edge, %land.lhs.true161.i.error.sink.split_crit_edge, %land.lhs.true73.i.error.sink.split_crit_edge
  %.str.32.sink = phi ptr [ @.str.35, %spi_sh_read.exit.i211.error.sink.split_crit_edge ], [ @.str.32, %land.lhs.true73.i.error.sink.split_crit_edge ], [ @.str.32, %land.lhs.true161.i.error.sink.split_crit_edge ]
  %call82.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull %.str.32.sink) #9
  br label %error

error:                                            ; preds = %error.sink.split, %spi_sh_send.exit.error_crit_edge
  %ret.0 = phi i32 [ -110, %error.sink.split ], [ %retval1.0.i, %spi_sh_send.exit.error_crit_edge ]
  %status113 = getelementptr i8, ptr %2, i32 -4
  %396 = ptrtoint ptr %status113 to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 %ret.0, ptr %status113, align 4
  %complete114 = getelementptr i8, ptr %2, i32 -20
  %397 = ptrtoint ptr %complete114 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %complete114, align 4
  %tobool115.not = icmp eq ptr %398, null
  br i1 %tobool115.not, label %error.if.end119_crit_edge, label %if.then116

error.if.end119_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119

if.then116:                                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #8
  %context118 = getelementptr i8, ptr %2, i32 -16
  %399 = ptrtoint ptr %context118 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %context118, align 4
  call void %398(ptr noundef %400) #6
  br label %if.end119

if.end119:                                        ; preds = %if.then116, %error.if.end119_crit_edge
  %401 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %width.i.i.i, align 4
  %403 = zext i32 %402 to i64
  call void @__sanitizer_cov_trace_switch(i64 %403, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %402, label %if.end119.spi_sh_read.exit.i262_crit_edge [
    i32 8, label %if.then.i.i254
    i32 32, label %if.then4.i.i256
  ]

if.end119.spi_sh_read.exit.i262_crit_edge:        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_read.exit.i262

if.then.i.i254:                                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  %404 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i252 = getelementptr i8, ptr %405, i32 2
  %406 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i252) #6, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %conv.i.i253 = zext i8 %406 to i32
  br label %spi_sh_read.exitthread-pre-split.i259

if.then4.i.i256:                                  ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  %407 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i.i255 = getelementptr i8, ptr %408, i32 8
  %409 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i255) #6, !srcloc !102
  %410 = call i32 @llvm.bswap.i32(i32 %409) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %spi_sh_read.exitthread-pre-split.i259

spi_sh_read.exitthread-pre-split.i259:            ; preds = %if.then4.i.i256, %if.then.i.i254
  %retval.0.i.ph.i257 = phi i32 [ %410, %if.then4.i.i256 ], [ %conv.i.i253, %if.then.i.i254 ]
  %411 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %.pr.i258 = load i32, ptr %width.i.i.i, align 4
  br label %spi_sh_read.exit.i262

spi_sh_read.exit.i262:                            ; preds = %spi_sh_read.exitthread-pre-split.i259, %if.end119.spi_sh_read.exit.i262_crit_edge
  %412 = phi i32 [ %.pr.i258, %spi_sh_read.exitthread-pre-split.i259 ], [ %402, %if.end119.spi_sh_read.exit.i262_crit_edge ]
  %retval.0.i.i260 = phi i32 [ %retval.0.i.ph.i257, %spi_sh_read.exitthread-pre-split.i259 ], [ 0, %if.end119.spi_sh_read.exit.i262_crit_edge ]
  %and.i261 = and i32 %retval.0.i.i260, -8
  %413 = zext i32 %412 to i64
  call void @__sanitizer_cov_trace_switch(i64 %413, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %412, label %spi_sh_read.exit.i262.spi_sh_clear_bit.exit269_crit_edge [
    i32 8, label %if.then.i8.i265
    i32 32, label %if.then4.i10.i267
  ]

spi_sh_read.exit.i262.spi_sh_clear_bit.exit269_crit_edge: ; preds = %spi_sh_read.exit.i262
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_clear_bit.exit269

if.then.i8.i265:                                  ; preds = %spi_sh_read.exit.i262
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i5.i263 = trunc i32 %and.i261 to i8
  %414 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i7.i264 = getelementptr i8, ptr %415, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i264, i8 %conv.i5.i263) #6, !srcloc !105
  br label %spi_sh_clear_bit.exit269

if.then4.i10.i267:                                ; preds = %spi_sh_read.exit.i262
  call void @__sanitizer_cov_trace_pc() #8
  %416 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i9.i266 = getelementptr i8, ptr %417, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  call void @arm_heavy_mb() #6
  %418 = call i32 @llvm.bswap.i32(i32 %and.i261) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i9.i266, i32 %418) #6, !srcloc !107
  br label %spi_sh_clear_bit.exit269

spi_sh_clear_bit.exit269:                         ; preds = %if.then4.i10.i267, %if.then.i8.i265, %spi_sh_read.exit.i262.spi_sh_clear_bit.exit269_crit_edge
  call fastcc void @clear_fifo(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %spi_sh_clear_bit.exit269, %spi_sh_clear_bit.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_sh_irq(i32 noundef %irq, ptr noundef %_ss) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %width.i = getelementptr inbounds %struct.spi_sh_data, ptr %_ss, i32 0, i32 8
  %0 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %1, label %entry.if.end19_crit_edge [
    i32 8, label %if.then.i
    i32 32, label %if.then4.i
  ]

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %_ss to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_ss, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 2
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %conv.i = zext i8 %5 to i32
  br label %spi_sh_read.exit

if.then4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %_ss to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_ss, align 4
  %add.ptr6.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #6, !srcloc !102
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %spi_sh_read.exit

spi_sh_read.exit:                                 ; preds = %if.then4.i, %if.then.i
  %retval.0.i = phi i32 [ %conv.i, %if.then.i ], [ %9, %if.then4.i ]
  %and = and i32 %retval.0.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %spi_sh_read.exit.if.end_crit_edge, label %if.then

spi_sh_read.exit.if.end_crit_edge:                ; preds = %spi_sh_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %spi_sh_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %cr11 = getelementptr inbounds %struct.spi_sh_data, ptr %_ss, i32 0, i32 5
  %10 = ptrtoint ptr %cr11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cr11, align 4
  %or = or i32 %11, 128
  store i32 %or, ptr %cr11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %spi_sh_read.exit.if.end_crit_edge
  %and2 = and i32 %retval.0.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %cr15 = getelementptr inbounds %struct.spi_sh_data, ptr %_ss, i32 0, i32 5
  %12 = ptrtoint ptr %cr15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cr15, align 4
  %or6 = or i32 %13, 64
  store i32 %or6, ptr %cr15, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %and8 = and i32 %retval.0.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end13_crit_edge, label %if.then10

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %cr111 = getelementptr inbounds %struct.spi_sh_data, ptr %_ss, i32 0, i32 5
  %14 = ptrtoint ptr %cr111 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cr111, align 4
  %or12 = or i32 %15, 32
  store i32 %or12, ptr %cr111, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7.if.end13_crit_edge
  %and14 = and i32 %retval.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end19_crit_edge, label %if.then16

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %cr117 = getelementptr inbounds %struct.spi_sh_data, ptr %_ss, i32 0, i32 5
  %16 = ptrtoint ptr %cr117 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cr117, align 4
  %or18 = or i32 %17, 16
  store i32 %or18, ptr %cr117, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13.if.end19_crit_edge, %entry.if.end19_crit_edge
  %cr120 = getelementptr inbounds %struct.spi_sh_data, ptr %_ss, i32 0, i32 5
  %18 = ptrtoint ptr %cr120 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cr120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool21.not = icmp eq i32 %19, 0
  br i1 %tobool21.not, label %if.end19.if.end24_crit_edge, label %if.then22

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then22:                                        ; preds = %if.end19
  %20 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %width.i, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %21, label %if.then22.spi_sh_read.exit.i_crit_edge [
    i32 8, label %if.then.i.i
    i32 32, label %if.then4.i.i
  ]

if.then22.spi_sh_read.exit.i_crit_edge:           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_read.exit.i

if.then.i.i:                                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %_ss to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %_ss, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 8
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %conv.i.i = zext i8 %25 to i32
  br label %spi_sh_read.exitthread-pre-split.i

if.then4.i.i:                                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %_ss to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_ss, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %27, i32 32
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #6, !srcloc !102
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %spi_sh_read.exitthread-pre-split.i

spi_sh_read.exitthread-pre-split.i:               ; preds = %if.then4.i.i, %if.then.i.i
  %retval.0.i.ph.i = phi i32 [ %29, %if.then4.i.i ], [ %conv.i.i, %if.then.i.i ]
  %30 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr.i = load i32, ptr %width.i, align 4
  br label %spi_sh_read.exit.i

spi_sh_read.exit.i:                               ; preds = %spi_sh_read.exitthread-pre-split.i, %if.then22.spi_sh_read.exit.i_crit_edge
  %31 = phi i32 [ %.pr.i, %spi_sh_read.exitthread-pre-split.i ], [ %21, %if.then22.spi_sh_read.exit.i_crit_edge ]
  %retval.0.i.i = phi i32 [ %retval.0.i.ph.i, %spi_sh_read.exitthread-pre-split.i ], [ 0, %if.then22.spi_sh_read.exit.i_crit_edge ]
  %neg.i = xor i32 %19, -1
  %and.i = and i32 %retval.0.i.i, %neg.i
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %31, label %spi_sh_read.exit.i.spi_sh_clear_bit.exit_crit_edge [
    i32 8, label %if.then.i8.i
    i32 32, label %if.then4.i10.i
  ]

spi_sh_read.exit.i.spi_sh_clear_bit.exit_crit_edge: ; preds = %spi_sh_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_clear_bit.exit

if.then.i8.i:                                     ; preds = %spi_sh_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i5.i = trunc i32 %and.i to i8
  %33 = ptrtoint ptr %_ss to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %_ss, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i, i8 %conv.i5.i) #6, !srcloc !105
  br label %spi_sh_clear_bit.exit

if.then4.i10.i:                                   ; preds = %spi_sh_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %_ss to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %_ss, align 4
  %add.ptr6.i9.i = getelementptr i8, ptr %36, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %37 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i9.i, i32 %37) #6, !srcloc !107
  br label %spi_sh_clear_bit.exit

spi_sh_clear_bit.exit:                            ; preds = %if.then4.i10.i, %if.then.i8.i, %spi_sh_read.exit.i.spi_sh_clear_bit.exit_crit_edge
  %wait = getelementptr inbounds %struct.spi_sh_data, ptr %_ss, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %if.end24

if.end24:                                         ; preds = %spi_sh_clear_bit.exit, %if.end19.if.end24_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_sh_setup(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_sh_setup.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spi_sh_setup, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !99

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @spi_sh_setup.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.36) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %width.i = getelementptr inbounds %struct.spi_sh_data, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %5, label %do.end.spi_sh_write.exit_crit_edge [
    i32 8, label %if.then.i
    i32 32, label %if.then4.i
  ]

do.end.spi_sh_write.exit_crit_edge:               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_write.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 -2) #6, !srcloc !105
  br label %spi_sh_write.exitthread-pre-split

if.then4.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %add.ptr6.i = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 -33554432) #6, !srcloc !107
  br label %spi_sh_write.exitthread-pre-split

spi_sh_write.exitthread-pre-split:                ; preds = %if.then4.i, %if.then.i
  %11 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %width.i, align 4
  br label %spi_sh_write.exit

spi_sh_write.exit:                                ; preds = %spi_sh_write.exitthread-pre-split, %do.end.spi_sh_write.exit_crit_edge
  %12 = phi i32 [ %.pr, %spi_sh_write.exitthread-pre-split ], [ %5, %do.end.spi_sh_write.exit_crit_edge ]
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %12, label %spi_sh_write.exit.spi_sh_write.exit16_crit_edge [
    i32 8, label %if.then.i13
    i32 32, label %if.then4.i15
  ]

spi_sh_write.exit.spi_sh_write.exit16_crit_edge:  ; preds = %spi_sh_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_write.exit16

if.then.i13:                                      ; preds = %spi_sh_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %add.ptr.i12 = getelementptr i8, ptr %15, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12, i8 0) #6, !srcloc !105
  br label %spi_sh_write.exit16

if.then4.i15:                                     ; preds = %spi_sh_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %add.ptr6.i14 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i14, i32 0) #6, !srcloc !107
  br label %spi_sh_write.exit16

spi_sh_write.exit16:                              ; preds = %if.then4.i15, %if.then.i13, %spi_sh_write.exit.spi_sh_write.exit16_crit_edge
  %18 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %19, label %spi_sh_write.exit16.spi_sh_write.exit22_crit_edge [
    i32 8, label %if.then.i19
    i32 32, label %if.then4.i21
  ]

spi_sh_write.exit16.spi_sh_write.exit22_crit_edge: ; preds = %spi_sh_write.exit16
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_write.exit22

if.then.i19:                                      ; preds = %spi_sh_write.exit16
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %add.ptr.i18 = getelementptr i8, ptr %22, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i18, i8 0) #6, !srcloc !105
  br label %spi_sh_write.exit22

if.then4.i21:                                     ; preds = %spi_sh_write.exit16
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %add.ptr6.i20 = getelementptr i8, ptr %24, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i20, i32 0) #6, !srcloc !107
  br label %spi_sh_write.exit22

spi_sh_write.exit22:                              ; preds = %if.then4.i21, %if.then.i19, %spi_sh_write.exit16.spi_sh_write.exit22_crit_edge
  tail call fastcc void @clear_fifo(ptr noundef %3)
  %25 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %width.i, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %26, label %spi_sh_write.exit22.spi_sh_read.exit_crit_edge [
    i32 8, label %if.then.i25
    i32 32, label %if.then4.i27
  ]

spi_sh_write.exit22.spi_sh_read.exit_crit_edge:   ; preds = %spi_sh_write.exit22
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_read.exit

if.then.i25:                                      ; preds = %spi_sh_write.exit22
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  %add.ptr.i24 = getelementptr i8, ptr %29, i32 4
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i24) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %conv.i = zext i8 %30 to i32
  br label %spi_sh_read.exitthread-pre-split

if.then4.i27:                                     ; preds = %spi_sh_write.exit22
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  %add.ptr6.i26 = getelementptr i8, ptr %32, i32 16
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i26) #6, !srcloc !102
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %spi_sh_read.exitthread-pre-split

spi_sh_read.exitthread-pre-split:                 ; preds = %if.then4.i27, %if.then.i25
  %retval.0.i28.ph = phi i32 [ %34, %if.then4.i27 ], [ %conv.i, %if.then.i25 ]
  %35 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr37 = load i32, ptr %width.i, align 4
  br label %spi_sh_read.exit

spi_sh_read.exit:                                 ; preds = %spi_sh_read.exitthread-pre-split, %spi_sh_write.exit22.spi_sh_read.exit_crit_edge
  %36 = phi i32 [ %.pr37, %spi_sh_read.exitthread-pre-split ], [ %26, %spi_sh_write.exit22.spi_sh_read.exit_crit_edge ]
  %retval.0.i28 = phi i32 [ %retval.0.i28.ph, %spi_sh_read.exitthread-pre-split ], [ 0, %spi_sh_write.exit22.spi_sh_read.exit_crit_edge ]
  %or = or i32 %retval.0.i28, 7
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %36, label %spi_sh_read.exit.spi_sh_write.exit35_crit_edge [
    i32 8, label %if.then.i32
    i32 32, label %if.then4.i34
  ]

spi_sh_read.exit.spi_sh_write.exit35_crit_edge:   ; preds = %spi_sh_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_write.exit35

if.then.i32:                                      ; preds = %spi_sh_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i30 = trunc i32 %or to i8
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  %add.ptr.i31 = getelementptr i8, ptr %39, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i31, i8 %conv.i30) #6, !srcloc !105
  br label %spi_sh_write.exit35

if.then4.i34:                                     ; preds = %spi_sh_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  %add.ptr6.i33 = getelementptr i8, ptr %41, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %42 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i33, i32 %42) #6, !srcloc !107
  br label %spi_sh_write.exit35

spi_sh_write.exit35:                              ; preds = %if.then4.i34, %if.then.i32, %spi_sh_read.exit.spi_sh_write.exit35_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 2147480) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_sh_transfer(ptr nocapture noundef readonly %spi, ptr noundef %mesg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_sh_transfer.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spi_sh_transfer, %do.body5)) #6
          to label %if.then [label %do.body5], !srcloc !99

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @spi_sh_transfer.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.37) #6
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_sh_transfer.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spi_sh_transfer, %do.body24)) #6
          to label %if.then19 [label %do.body24], !srcloc !99

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @spi_sh_transfer.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.38, i32 noundef %5) #6
  br label %do.body24

do.body24:                                        ; preds = %if.then19, %do.body5
  %lock = getelementptr inbounds %struct.spi_sh_data, ptr %3, i32 0, i32 7
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %mesg, i32 0, i32 6
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %actual_length, align 4
  %status = getelementptr inbounds %struct.spi_message, ptr %mesg, i32 0, i32 7
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -115, ptr %status, align 4
  %width.i.i = getelementptr inbounds %struct.spi_sh_data, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width.i.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %9, label %do.body24.spi_sh_read.exit.i_crit_edge [
    i32 8, label %if.then.i.i
    i32 32, label %if.then4.i.i
  ]

do.body24.spi_sh_read.exit.i_crit_edge:           ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_read.exit.i

if.then.i.i:                                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 2
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %conv.i.i = zext i8 %13 to i32
  br label %spi_sh_read.exitthread-pre-split.i

if.then4.i.i:                                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %15, i32 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #6, !srcloc !102
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %spi_sh_read.exitthread-pre-split.i

spi_sh_read.exitthread-pre-split.i:               ; preds = %if.then4.i.i, %if.then.i.i
  %retval.0.i.ph.i = phi i32 [ %17, %if.then4.i.i ], [ %conv.i.i, %if.then.i.i ]
  %18 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr.i = load i32, ptr %width.i.i, align 4
  br label %spi_sh_read.exit.i

spi_sh_read.exit.i:                               ; preds = %spi_sh_read.exitthread-pre-split.i, %do.body24.spi_sh_read.exit.i_crit_edge
  %19 = phi i32 [ %.pr.i, %spi_sh_read.exitthread-pre-split.i ], [ %9, %do.body24.spi_sh_read.exit.i_crit_edge ]
  %retval.0.i.i = phi i32 [ %retval.0.i.ph.i, %spi_sh_read.exitthread-pre-split.i ], [ 0, %do.body24.spi_sh_read.exit.i_crit_edge ]
  %and.i = and i32 %retval.0.i.i, -2
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %19, label %spi_sh_read.exit.i.spi_sh_clear_bit.exit_crit_edge [
    i32 8, label %if.then.i8.i
    i32 32, label %if.then4.i10.i
  ]

spi_sh_read.exit.i.spi_sh_clear_bit.exit_crit_edge: ; preds = %spi_sh_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_clear_bit.exit

if.then.i8.i:                                     ; preds = %spi_sh_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i5.i = trunc i32 %and.i to i8
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %22, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i, i8 %conv.i5.i) #6, !srcloc !105
  br label %spi_sh_clear_bit.exit

if.then4.i10.i:                                   ; preds = %spi_sh_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %add.ptr6.i9.i = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i9.i, i32 %25) #6, !srcloc !107
  br label %spi_sh_clear_bit.exit

spi_sh_clear_bit.exit:                            ; preds = %if.then4.i10.i, %if.then.i8.i, %spi_sh_read.exit.i.spi_sh_clear_bit.exit_crit_edge
  %queue = getelementptr inbounds %struct.spi_message, ptr %mesg, i32 0, i32 8
  %queue32 = getelementptr inbounds %struct.spi_sh_data, ptr %3, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.spi_sh_data, ptr %3, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %27, ptr noundef %queue32) #6
  br i1 %call.i.i, label %if.end.i.i, label %spi_sh_clear_bit.exit.list_add_tail.exit_crit_edge

spi_sh_clear_bit.exit.list_add_tail.exit_crit_edge: ; preds = %spi_sh_clear_bit.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %spi_sh_clear_bit.exit
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %queue, ptr %prev.i, align 4
  %29 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %queue32, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.spi_message, ptr %mesg, i32 0, i32 8, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %queue, ptr %27, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %spi_sh_clear_bit.exit.list_add_tail.exit_crit_edge
  %ws = getelementptr inbounds %struct.spi_sh_data, ptr %3, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %32 = load ptr, ptr @system_wq, align 4
  %call.i.i45 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %ws) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call27) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_sh_cleanup(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_sh_cleanup.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spi_sh_cleanup, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !99

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @spi_sh_cleanup.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.39) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %width.i.i = getelementptr inbounds %struct.spi_sh_data, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width.i.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %5, label %do.end.spi_sh_read.exit.i_crit_edge [
    i32 8, label %if.then.i.i
    i32 32, label %if.then4.i.i
  ]

do.end.spi_sh_read.exit.i_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_read.exit.i

if.then.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 2
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %conv.i.i = zext i8 %9 to i32
  br label %spi_sh_read.exitthread-pre-split.i

if.then4.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %11, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #6, !srcloc !102
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %spi_sh_read.exitthread-pre-split.i

spi_sh_read.exitthread-pre-split.i:               ; preds = %if.then4.i.i, %if.then.i.i
  %retval.0.i.ph.i = phi i32 [ %13, %if.then4.i.i ], [ %conv.i.i, %if.then.i.i ]
  %14 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr.i = load i32, ptr %width.i.i, align 4
  br label %spi_sh_read.exit.i

spi_sh_read.exit.i:                               ; preds = %spi_sh_read.exitthread-pre-split.i, %do.end.spi_sh_read.exit.i_crit_edge
  %15 = phi i32 [ %.pr.i, %spi_sh_read.exitthread-pre-split.i ], [ %5, %do.end.spi_sh_read.exit.i_crit_edge ]
  %retval.0.i.i = phi i32 [ %retval.0.i.ph.i, %spi_sh_read.exitthread-pre-split.i ], [ 0, %do.end.spi_sh_read.exit.i_crit_edge ]
  %and.i = and i32 %retval.0.i.i, -8
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %15, label %spi_sh_read.exit.i.spi_sh_clear_bit.exit_crit_edge [
    i32 8, label %if.then.i8.i
    i32 32, label %if.then4.i10.i
  ]

spi_sh_read.exit.i.spi_sh_clear_bit.exit_crit_edge: ; preds = %spi_sh_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_clear_bit.exit

if.then.i8.i:                                     ; preds = %spi_sh_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i5.i = trunc i32 %and.i to i8
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %18, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i, i8 %conv.i5.i) #6, !srcloc !105
  br label %spi_sh_clear_bit.exit

if.then4.i10.i:                                   ; preds = %spi_sh_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  %add.ptr6.i9.i = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %21 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i9.i, i32 %21) #6, !srcloc !107
  br label %spi_sh_clear_bit.exit

spi_sh_clear_bit.exit:                            ; preds = %if.then4.i10.i, %if.then.i8.i, %spi_sh_read.exit.i.spi_sh_clear_bit.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clear_fifo(ptr nocapture noundef readonly %ss) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %width.i.i = getelementptr inbounds %struct.spi_sh_data, ptr %ss, i32 0, i32 8
  %0 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width.i.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %1, label %entry.spi_sh_read.exit.i_crit_edge [
    i32 8, label %if.then.i.i
    i32 32, label %if.then4.i.i
  ]

entry.spi_sh_read.exit.i_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_read.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ss, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 4
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %conv.i.i = zext i8 %5 to i32
  br label %spi_sh_read.exitthread-pre-split.i

if.then4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ss, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #6, !srcloc !102
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %spi_sh_read.exitthread-pre-split.i

spi_sh_read.exitthread-pre-split.i:               ; preds = %if.then4.i.i, %if.then.i.i
  %retval.0.i.ph.i = phi i32 [ %9, %if.then4.i.i ], [ %conv.i.i, %if.then.i.i ]
  %10 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr.i = load i32, ptr %width.i.i, align 4
  br label %spi_sh_read.exit.i

spi_sh_read.exit.i:                               ; preds = %spi_sh_read.exitthread-pre-split.i, %entry.spi_sh_read.exit.i_crit_edge
  %11 = phi i32 [ %.pr.i, %spi_sh_read.exitthread-pre-split.i ], [ %1, %entry.spi_sh_read.exit.i_crit_edge ]
  %retval.0.i.i = phi i32 [ %retval.0.i.ph.i, %spi_sh_read.exitthread-pre-split.i ], [ 0, %entry.spi_sh_read.exit.i_crit_edge ]
  %or.i = or i32 %retval.0.i.i, 128
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %11, label %spi_sh_read.exit.i.spi_sh_set_bit.exit_crit_edge [
    i32 8, label %if.then.i8.i
    i32 32, label %if.then4.i10.i
  ]

spi_sh_read.exit.i.spi_sh_set_bit.exit_crit_edge: ; preds = %spi_sh_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_set_bit.exit

if.then.i8.i:                                     ; preds = %spi_sh_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i5.i = trunc i32 %or.i to i8
  %13 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ss, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i, i8 %conv.i5.i) #6, !srcloc !105
  br label %spi_sh_set_bit.exit

if.then4.i10.i:                                   ; preds = %spi_sh_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ss, align 4
  %add.ptr6.i9.i = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i9.i, i32 %17) #6, !srcloc !107
  br label %spi_sh_set_bit.exit

spi_sh_set_bit.exit:                              ; preds = %if.then4.i10.i, %if.then.i8.i, %spi_sh_read.exit.i.spi_sh_set_bit.exit_crit_edge
  %18 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width.i.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %19, label %spi_sh_set_bit.exit.spi_sh_read.exit.i12_crit_edge [
    i32 8, label %if.then.i.i5
    i32 32, label %if.then4.i.i7
  ]

spi_sh_set_bit.exit.spi_sh_read.exit.i12_crit_edge: ; preds = %spi_sh_set_bit.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_read.exit.i12

if.then.i.i5:                                     ; preds = %spi_sh_set_bit.exit
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ss, align 4
  %add.ptr.i.i3 = getelementptr i8, ptr %22, i32 4
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %conv.i.i4 = zext i8 %23 to i32
  br label %spi_sh_read.exitthread-pre-split.i10

if.then4.i.i7:                                    ; preds = %spi_sh_set_bit.exit
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ss, align 4
  %add.ptr6.i.i6 = getelementptr i8, ptr %25, i32 16
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i6) #6, !srcloc !102
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %spi_sh_read.exitthread-pre-split.i10

spi_sh_read.exitthread-pre-split.i10:             ; preds = %if.then4.i.i7, %if.then.i.i5
  %retval.0.i.ph.i8 = phi i32 [ %27, %if.then4.i.i7 ], [ %conv.i.i4, %if.then.i.i5 ]
  %28 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr.i9 = load i32, ptr %width.i.i, align 4
  br label %spi_sh_read.exit.i12

spi_sh_read.exit.i12:                             ; preds = %spi_sh_read.exitthread-pre-split.i10, %spi_sh_set_bit.exit.spi_sh_read.exit.i12_crit_edge
  %29 = phi i32 [ %.pr.i9, %spi_sh_read.exitthread-pre-split.i10 ], [ %19, %spi_sh_set_bit.exit.spi_sh_read.exit.i12_crit_edge ]
  %retval.0.i.i11 = phi i32 [ %retval.0.i.ph.i8, %spi_sh_read.exitthread-pre-split.i10 ], [ 0, %spi_sh_set_bit.exit.spi_sh_read.exit.i12_crit_edge ]
  %and.i = and i32 %retval.0.i.i11, -129
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %29, label %spi_sh_read.exit.i12.spi_sh_clear_bit.exit_crit_edge [
    i32 8, label %if.then.i8.i15
    i32 32, label %if.then4.i10.i17
  ]

spi_sh_read.exit.i12.spi_sh_clear_bit.exit_crit_edge: ; preds = %spi_sh_read.exit.i12
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sh_clear_bit.exit

if.then.i8.i15:                                   ; preds = %spi_sh_read.exit.i12
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i5.i13 = trunc i32 %and.i to i8
  %31 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ss, align 4
  %add.ptr.i7.i14 = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i14, i8 %conv.i5.i13) #6, !srcloc !105
  br label %spi_sh_clear_bit.exit

if.then4.i10.i17:                                 ; preds = %spi_sh_read.exit.i12
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ss, align 4
  %add.ptr6.i9.i16 = getelementptr i8, ptr %34, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %35 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i9.i16, i32 %35) #6, !srcloc !107
  br label %spi_sh_clear_bit.exit

spi_sh_clear_bit.exit:                            ; preds = %if.then4.i10.i17, %if.then.i8.i15, %spi_sh_read.exit.i12.spi_sh_clear_bit.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !44, !45, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !64, !65, !67, !68, !69, !70, !72, !73, !75, !76, !77, !79, !80, !82, !83, !85, !86, !88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__initcall__kmod_spi_sh__245_507_spi_sh_driver_init6, !1, !"__initcall__kmod_spi_sh__245_507_spi_sh_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-sh.c", i32 507, i32 1}
!2 = !{ptr @__exitcall_spi_sh_driver_exit, !1, !"__exitcall_spi_sh_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description246, !4, !"__UNIQUE_ID_description246", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-sh.c", i32 509, i32 1}
!5 = !{ptr @__UNIQUE_ID_file247, !6, !"__UNIQUE_ID_file247", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-sh.c", i32 510, i32 1}
!7 = !{ptr @__UNIQUE_ID_license248, !6, !"__UNIQUE_ID_license248", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author249, !9, !"__UNIQUE_ID_author249", i1 false, i1 false}
!9 = !{!"../drivers/spi/spi-sh.c", i32 511, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias250, !11, !"__UNIQUE_ID_alias250", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-sh.c", i32 512, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-sh.c", i32 504, i32 11}
!14 = !{ptr @spi_sh_driver, !15, !"spi_sh_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-sh.c", i32 500, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-sh.c", i32 435, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @spi_sh_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @spi_sh_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-sh.c", i32 445, i32 3}
!26 = !{ptr @spi_sh_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @spi_sh_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-sh.c", i32 460, i32 3}
!30 = !{ptr @spi_sh_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @spi_sh_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/spi/spi-sh.c", i32 467, i32 3}
!34 = !{ptr @spi_sh_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @spi_sh_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @spi_sh_probe.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/spi/spi-sh.c", i32 471, i32 2}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @spi_sh_probe.__key.16, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/spi/spi-sh.c", i32 472, i32 2}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @spi_sh_probe.__key.18, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/spi/spi-sh.c", i32 473, i32 2}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/spi/spi-sh.c", i32 475, i32 40}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/spi/spi-sh.c", i32 477, i32 3}
!49 = !{ptr @spi_sh_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @spi_sh_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/spi/spi-sh.c", i32 489, i32 3}
!53 = !{ptr @spi_sh_probe._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @spi_sh_probe._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/spi/spi-sh.c", i32 282, i32 2}
!57 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @spi_sh_work.__UNIQUE_ID_ddebug238, !56, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/spi/spi-sh.c", i32 291, i32 4}
!61 = !{ptr @spi_sh_work.__UNIQUE_ID_ddebug239, !60, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/spi/spi-sh.c", i32 293, i32 4}
!64 = !{ptr @spi_sh_work.__UNIQUE_ID_ddebug240, !63, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/spi/spi-sh.c", i32 194, i32 5}
!67 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @spi_sh_send._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @spi_sh_send._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @spi_sh_send._entry.33, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../drivers/spi/spi-sh.c", i32 210, i32 4}
!72 = !{ptr @spi_sh_send._entry_ptr.34, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/spi/spi-sh.c", i32 247, i32 5}
!75 = !{ptr @spi_sh_receive._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @spi_sh_receive._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/spi/spi-sh.c", i32 343, i32 2}
!79 = !{ptr @spi_sh_setup.__UNIQUE_ID_ddebug241, !78, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/spi/spi-sh.c", i32 363, i32 2}
!82 = !{ptr @spi_sh_transfer.__UNIQUE_ID_ddebug242, !81, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/spi/spi-sh.c", i32 364, i32 2}
!85 = !{ptr @spi_sh_transfer.__UNIQUE_ID_ddebug243, !84, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/spi/spi-sh.c", i32 385, i32 2}
!88 = !{ptr @spi_sh_cleanup.__UNIQUE_ID_ddebug244, !87, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"branch_weights", i32 1, i32 2000}
!99 = !{i64 2148962806, i64 2148962811, i64 2148962824, i64 2148962868, i64 2148962902, i64 2148962923}
!100 = !{i64 4633257}
!101 = !{i64 2152172602}
!102 = !{i64 4633477}
!103 = !{i64 2152173826}
!104 = !{i64 2152174207}
!105 = !{i64 4632862}
!106 = !{i64 2152175181}
!107 = !{i64 4633059}
