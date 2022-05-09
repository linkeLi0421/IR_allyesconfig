; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-axxia.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-axxia.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.axxia_i2c_dev = type { ptr, ptr, ptr, i32, i32, i32, %struct.completion, ptr, %struct.i2c_adapter, ptr, i32, i8, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@__initcall__kmod_i2c_axxia__296_834_axxia_i2c_driver_init6 = internal global ptr @axxia_i2c_driver_init, section ".initcall6.init", align 4
@axxia_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @axxia_i2c_probe, ptr @axxia_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @axxia_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_axxia_i2c_driver_exit = internal global ptr @axxia_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description297 = internal constant [43 x i8] c"i2c_axxia.description=Axxia I2C Bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [51 x i8] c"i2c_axxia.author=Anders Berg <anders.berg@lsi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [44 x i8] c"i2c_axxia.file=drivers/i2c/busses/i2c-axxia\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [25 x i8] c"i2c_axxia.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"axxia-i2c\00", [22 x i8] zeroinitializer }, align 32
@axxia_i2c_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lsi,api2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@axxia_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 754, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"missing clock\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"axxia_i2c_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/i2c/busses/i2c-axxia.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@axxia_i2c_probe._entry_ptr = internal global ptr @axxia_i2c_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@axxia_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 768, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@axxia_i2c_probe._entry_ptr.10 = internal global ptr @axxia_i2c_probe._entry.8, section ".printk_index", align 4
@axxia_i2c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 774, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to initialize\0A\00", [42 x i8] zeroinitializer }, align 32
@axxia_i2c_probe._entry_ptr.13 = internal global ptr @axxia_i2c_probe._entry.11, section ".printk_index", align 4
@axxia_i2c_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 781, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to claim IRQ%d\0A\00", [41 x i8] zeroinitializer }, align 32
@axxia_i2c_probe._entry_ptr.16 = internal global ptr @axxia_i2c_probe._entry.14, section ".printk_index", align 4
@axxia_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @axxia_i2c_xfer, ptr null, ptr null, ptr null, ptr @axxia_i2c_func, ptr @axxia_i2c_reg_slave, ptr @axxia_i2c_unreg_slave }, [36 x i8] zeroinitializer }, align 32
@axxia_i2c_recovery_info = internal global { %struct.i2c_bus_recovery_info, [44 x i8] } { %struct.i2c_bus_recovery_info { ptr @i2c_generic_scl_recovery, ptr @axxia_i2c_get_scl, ptr @axxia_i2c_set_scl, ptr @axxia_i2c_get_sda, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@axxia_i2c_quirks = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 0, i32 0, i16 255, i16 255, i16 0, i16 0 }, [40 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@axxia_i2c_init.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.4, ptr @.str.20, i8 0, i8 46, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2c_axxia\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"axxia_i2c_init\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rate=%uHz per_clk=%uMHz -> ratio=1:%u\0A\00", [57 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@axxia_i2c_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.4, i32 194, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Soft reset failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@axxia_i2c_init._entry_ptr = internal global ptr @axxia_i2c_init._entry, section ".printk_index", align 4
@axxia_i2c_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 379, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unexpected interrupt\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"axxia_i2c_isr\00", [18 x i8] zeroinitializer }, align 32
@axxia_i2c_isr._entry_ptr = internal global ptr @axxia_i2c_isr._entry, section ".printk_index", align 4
@axxia_i2c_isr.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.24, ptr @.str.4, ptr @.str.25, i8 0, i8 102, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error %#x, addr=%#x rx=%u/%u tx=%u/%u\0A\00", [57 x i8] zeroinitializer }, align 32
@axxia_i2c_slv_isr.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.26, ptr @.str.4, ptr @.str.27, i8 0, i8 85, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"axxia_i2c_slv_isr\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"slave irq status=0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@axxia_i2c_slv_fifo_event.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.28, ptr @.str.4, ptr @.str.29, i8 0, i8 80, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"axxia_i2c_slv_fifo_event\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"slave irq fifo_status=0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@axxia_i2c_xfer_seq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 509, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"busy after xfer\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"axxia_i2c_xfer_seq\00", [45 x i8] zeroinitializer }, align 32
@axxia_i2c_xfer_seq._entry_ptr = internal global ptr @axxia_i2c_xfer_seq._entry, section ".printk_index", align 4
@axxia_i2c_xfer_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.32, ptr @.str.4, i32 584, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"axxia_i2c_xfer_msg\00", [45 x i8] zeroinitializer }, align 32
@axxia_i2c_xfer_msg._entry_ptr = internal global ptr @axxia_i2c_xfer_msg._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967290]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967186, i64 4294967290]
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"axxia_i2c_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 825, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 829, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c"axxia_i2c_of_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 818, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 752, i32 43 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 754, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 762, i32 27 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 768, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 774, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 781, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [15 x i8] c"axxia_i2c_algo\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 721, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant [24 x i8] c"axxia_i2c_recovery_info\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 660, i32 37 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"axxia_i2c_quirks\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 728, i32 40 }
@___asan_gen_.94 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 87, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 186, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 194, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 379, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 402, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 343, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 320, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 509, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private constant [34 x i8] c"../drivers/i2c/busses/i2c-axxia.c\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 584, i32 3 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_axxia_i2c_driver_exit, ptr @__initcall__kmod_i2c_axxia__296_834_axxia_i2c_driver_init6, ptr @axxia_i2c_driver_exit, ptr @axxia_i2c_init._entry, ptr @axxia_i2c_init._entry_ptr, ptr @axxia_i2c_isr._entry, ptr @axxia_i2c_isr._entry_ptr, ptr @axxia_i2c_probe._entry, ptr @axxia_i2c_probe._entry.11, ptr @axxia_i2c_probe._entry.14, ptr @axxia_i2c_probe._entry.8, ptr @axxia_i2c_probe._entry_ptr, ptr @axxia_i2c_probe._entry_ptr.10, ptr @axxia_i2c_probe._entry_ptr.13, ptr @axxia_i2c_probe._entry_ptr.16, ptr @axxia_i2c_xfer_msg._entry, ptr @axxia_i2c_xfer_msg._entry_ptr, ptr @axxia_i2c_xfer_seq._entry, ptr @axxia_i2c_xfer_seq._entry_ptr, ptr @axxia_i2c_driver, ptr @.str, ptr @axxia_i2c_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @axxia_i2c_algo, ptr @axxia_i2c_recovery_info, ptr @axxia_i2c_quirks, ptr @init_completion.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axxia_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axxia_i2c_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axxia_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axxia_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axxia_i2c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axxia_i2c_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axxia_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axxia_i2c_recovery_info to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axxia_i2c_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axxia_i2c_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axxia_i2c_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axxia_i2c_xfer_seq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axxia_i2c_xfer_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @axxia_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @axxia_i2c_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @axxia_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @axxia_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axxia_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1472, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.axxia_i2c_dev, ptr %call.i, i32 0, i32 13
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call7, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call13 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  %i2c_clk = getelementptr inbounds %struct.axxia_i2c_dev, ptr %call.i, i32 0, i32 9
  %4 = ptrtoint ptr %i2c_clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call13, ptr %i2c_clk, align 8
  %cmp.i134 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134, label %do.end, label %if.end20

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  %5 = ptrtoint ptr %i2c_clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_clk, align 8
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2, ptr %call.i, align 8
  %dev23 = getelementptr inbounds %struct.axxia_i2c_dev, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %dev23 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %dev23, align 8
  %msg_complete = getelementptr inbounds %struct.axxia_i2c_dev, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %msg_complete to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %msg_complete, align 4
  %wait.i = getelementptr inbounds %struct.axxia_i2c_dev, ptr %call.i, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_completion.__key) #8
  %bus_clk_rate = getelementptr inbounds %struct.axxia_i2c_dev, ptr %call.i, i32 0, i32 10
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef %bus_clk_rate, i32 noundef 1, i32 noundef 0) #8
  %11 = ptrtoint ptr %bus_clk_rate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bus_clk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp26 = icmp eq i32 %12, 0
  br i1 %cmp26, label %if.then27, label %if.end20.if.end29_crit_edge

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then27:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %bus_clk_rate to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 100000, ptr %bus_clk_rate, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end20.if.end29_crit_edge
  %14 = ptrtoint ptr %i2c_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_clk, align 8
  %call.i135 = tail call i32 @clk_prepare(ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %tobool.not.i = icmp eq i32 %call.i135, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end29.do.end36_crit_edge

if.end29.do.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

if.end.i:                                         ; preds = %if.end29
  %call1.i = tail call i32 @clk_enable(ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end38, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %15) #8
  br label %do.end36

do.end36:                                         ; preds = %if.then3.i, %if.end29.do.end36_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i135, %if.end29.do.end36_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end38:                                         ; preds = %if.end.i
  tail call fastcc void @axxia_i2c_init(ptr noundef nonnull %call.i)
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 8
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %call.i136 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %17, ptr noundef nonnull @axxia_i2c_isr, ptr noundef null, i32 noundef 0, ptr noundef %19, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %tobool50.not = icmp eq i32 %call.i136, 0
  br i1 %tobool50.not, label %if.end57, label %do.end54

do.end54:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %21) #11
  br label %error_disable_clk

if.end57:                                         ; preds = %if.end38
  %adapter = getelementptr inbounds %struct.axxia_i2c_dev, ptr %call.i, i32 0, i32 8
  %driver_data.i.i = getelementptr inbounds %struct.axxia_i2c_dev, ptr %call.i, i32 0, i32 8, i32 9, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %name59 = getelementptr inbounds %struct.axxia_i2c_dev, ptr %call.i, i32 0, i32 8, i32 12
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 8
  %call61 = tail call i32 @strlcpy(ptr noundef %name59, ptr noundef %24, i32 noundef 48) #8
  %25 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %adapter, align 8
  %algo = getelementptr inbounds %struct.axxia_i2c_dev, ptr %call.i, i32 0, i32 8, i32 2
  %26 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @axxia_i2c_algo, ptr %algo, align 8
  %bus_recovery_info = getelementptr inbounds %struct.axxia_i2c_dev, ptr %call.i, i32 0, i32 8, i32 16
  %27 = ptrtoint ptr %bus_recovery_info to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @axxia_i2c_recovery_info, ptr %bus_recovery_info, align 4
  %quirks = getelementptr inbounds %struct.axxia_i2c_dev, ptr %call.i, i32 0, i32 8, i32 17
  %28 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @axxia_i2c_quirks, ptr %quirks, align 8
  %parent = getelementptr inbounds %struct.axxia_i2c_dev, ptr %call.i, i32 0, i32 8, i32 9, i32 1
  %29 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev, ptr %parent, align 8
  %30 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node, align 8
  %of_node73 = getelementptr inbounds %struct.axxia_i2c_dev, ptr %call.i, i32 0, i32 8, i32 9, i32 27
  %32 = ptrtoint ptr %of_node73 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %of_node73, align 8
  %driver_data.i.i137 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %33 = ptrtoint ptr %driver_data.i.i137 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %driver_data.i.i137, align 4
  %call75 = tail call i32 @i2c_add_adapter(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end57.cleanup_crit_edge, label %if.end57.error_disable_clk_crit_edge

if.end57.error_disable_clk_crit_edge:             ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_disable_clk

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

error_disable_clk:                                ; preds = %if.end57.error_disable_clk_crit_edge, %do.end54
  %ret.0 = phi i32 [ %call.i136, %do.end54 ], [ %call75, %if.end57.error_disable_clk_crit_edge ]
  %34 = ptrtoint ptr %i2c_clk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c_clk, align 8
  tail call void @clk_disable(ptr noundef %35) #8
  tail call void @clk_unprepare(ptr noundef %35) #8
  br label %cleanup

cleanup:                                          ; preds = %error_disable_clk, %if.end57.cleanup_crit_edge, %do.end36, %do.end, %if.end6.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then4 ], [ %7, %do.end ], [ %retval.0.i.ph, %do.end36 ], [ %ret.0, %error_disable_clk ], [ -12, %entry.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ 0, %if.end57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axxia_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %i2c_clk = getelementptr inbounds %struct.axxia_i2c_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %i2c_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_clk, align 8
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %adapter = getelementptr inbounds %struct.axxia_i2c_dev, ptr %1, i32 0, i32 8
  tail call void @i2c_del_adapter(ptr noundef %adapter) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @axxia_i2c_init(ptr nocapture noundef readonly %idev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_clk = getelementptr inbounds %struct.axxia_i2c_dev, ptr %idev, i32 0, i32 9
  %0 = ptrtoint ptr %i2c_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c_clk, align 8
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #8
  %bus_clk_rate = getelementptr inbounds %struct.axxia_i2c_dev, ptr %idev, i32 0, i32 10
  %2 = ptrtoint ptr %bus_clk_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus_clk_rate, align 4
  %div = udiv i32 %call, %3
  %4 = ptrtoint ptr %i2c_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_clk, align 8
  %call2 = tail call i32 @clk_get_rate(ptr noundef %5) #8
  %div3 = udiv i32 %call2, 1000000
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axxia_i2c_init.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@axxia_i2c_init, %do.body9)) #8
          to label %if.then [label %do.body9], !srcloc !93

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.axxia_i2c_dev, ptr %idev, i32 0, i32 7
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %8 = ptrtoint ptr %bus_clk_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bus_clk_rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @axxia_i2c_init.__UNIQUE_ID_ddebug288, ptr noundef %7, ptr noundef nonnull @.str.20, i32 noundef %9, i32 noundef %div3, i32 noundef %div) #8
  br label %do.body9

do.body9:                                         ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %idev, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #8, !srcloc !95
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %12, 10
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %do.body9
  %13 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %idev, align 8
  %add.ptr14 = getelementptr i8, ptr %14, i32 36
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #8, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool18.not = icmp eq i32 %16, 0
  br i1 %tobool18.not, label %while.cond.do.body25_crit_edge, label %while.body

while.cond.do.body25_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %17
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end22, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

do.end22:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev23 = getelementptr inbounds %struct.axxia_i2c_dev, ptr %idev, i32 0, i32 7
  %18 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev23, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.21) #11
  br label %do.body25

do.body25:                                        ; preds = %do.end22, %while.cond.do.body25_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %idev, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 16777216) #8, !srcloc !95
  %22 = ptrtoint ptr %bus_clk_rate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bus_clk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100001, i32 %23)
  %cmp31 = icmp ult i32 %23, 100001
  br i1 %cmp31, label %if.then32, label %if.else

if.then32:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  %div331 = lshr i32 %div, 1
  %narrow32 = mul nuw nsw i32 %div3, 250
  %mul.i = zext i32 %narrow32 to i64
  %24 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i, i32 0) #12, !srcloc !99
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %24, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %24, 1
  %25 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #12, !srcloc !100
  br label %do.body43

if.else:                                          ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  %div38 = udiv i32 %div, 3
  %mul39 = shl i32 %div, 1
  %div40 = udiv i32 %mul39, 3
  %narrow = mul nuw nsw i32 %div3, 100
  %mul.i4 = zext i32 %narrow to i64
  %26 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i4, i32 0) #12, !srcloc !99
  %asmresult.i.i.i.i5 = extractvalue { i64, i32 } %26, 0
  %asmresult4.i.i.i.i6 = extractvalue { i64, i32 } %26, 1
  %27 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i4, i64 %asmresult.i.i.i.i5, i32 %asmresult4.i.i.i.i6) #12, !srcloc !100
  br label %do.body43

do.body43:                                        ; preds = %if.else, %if.then32
  %.sink = phi { i64, i32 } [ %25, %if.then32 ], [ %27, %if.else ]
  %t_low.0 = phi i32 [ %div331, %if.then32 ], [ %div40, %if.else ]
  %t_high.0 = phi i32 [ %div331, %if.then32 ], [ %div38, %if.else ]
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %.sink, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %conv1.i = trunc i64 %div1581.i.i.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  %28 = tail call i32 @llvm.bswap.i32(i32 %t_high.0)
  %29 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %idev, align 8
  %add.ptr47 = getelementptr i8, ptr %30, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %28) #8, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @arm_heavy_mb() #8
  %31 = tail call i32 @llvm.bswap.i32(i32 %t_low.0)
  %32 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %idev, align 8
  %add.ptr52 = getelementptr i8, ptr %33, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %31) #8, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  tail call void @arm_heavy_mb() #8
  %34 = tail call i32 @llvm.bswap.i32(i32 %conv1.i)
  %35 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %idev, align 8
  %add.ptr57 = getelementptr i8, ptr %36, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %34) #8, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %conv.i10 = zext i32 %div3 to i64
  %mul.i11 = mul nuw nsw i64 %conv.i10, 300
  %37 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i11, i32 0) #12, !srcloc !99
  %asmresult.i.i.i.i12 = extractvalue { i64, i32 } %37, 0
  %asmresult4.i.i.i.i13 = extractvalue { i64, i32 } %37, 1
  %38 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i11, i64 %asmresult.i.i.i.i12, i32 %asmresult4.i.i.i.i13) #12, !srcloc !100
  %asmresult10.i.i.i.i14 = extractvalue { i64, i32 } %38, 0
  %div1581.i.i.i15 = lshr i64 %asmresult10.i.i.i.i14, 9
  %conv1.i16 = trunc i64 %div1581.i.i.i15 to i32
  %39 = tail call i32 @llvm.bswap.i32(i32 %conv1.i16)
  %40 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %idev, align 8
  %add.ptr63 = getelementptr i8, ptr %41, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %39) #8, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  tail call void @arm_heavy_mb() #8
  %mul.i18 = mul nuw nsw i64 %conv.i10, 50
  %42 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i18, i32 0) #12, !srcloc !99
  %asmresult.i.i.i.i19 = extractvalue { i64, i32 } %42, 0
  %asmresult4.i.i.i.i20 = extractvalue { i64, i32 } %42, 1
  %43 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i18, i64 %asmresult.i.i.i.i19, i32 %asmresult4.i.i.i.i20) #12, !srcloc !100
  %asmresult10.i.i.i.i21 = extractvalue { i64, i32 } %43, 0
  %div1581.i.i.i22 = lshr i64 %asmresult10.i.i.i.i21, 9
  %conv1.i23 = trunc i64 %div1581.i.i.i22 to i32
  %44 = tail call i32 @llvm.bswap.i32(i32 %conv1.i23)
  %45 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %idev, align 8
  %add.ptr69 = getelementptr i8, ptr %46, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 %44) #8, !srcloc !95
  %mul.i25 = mul nuw nsw i64 %conv.i10, 25000000
  %47 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i25, i32 0) #12, !srcloc !99
  %asmresult.i.i.i.i26 = extractvalue { i64, i32 } %47, 0
  %asmresult4.i.i.i.i27 = extractvalue { i64, i32 } %47, 1
  %48 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i25, i64 %asmresult.i.i.i.i26, i32 %asmresult4.i.i.i.i27) #12, !srcloc !100
  %asmresult10.i.i.i.i28 = extractvalue { i64, i32 } %48, 0
  %div1581.i.i.i29 = lshr i64 %asmresult10.i.i.i.i28, 9
  %conv1.i30 = trunc i64 %div1581.i.i.i29 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %conv1.i30)
  %cmp7233 = icmp ult i32 %conv1.i30, 32768
  br i1 %cmp7233, label %do.body43.for.end_crit_edge, label %do.body43.if.end74_crit_edge

do.body43.if.end74_crit_edge:                     ; preds = %do.body43
  br label %if.end74

do.body43.for.end_crit_edge:                      ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end74:                                         ; preds = %if.end74.if.end74_crit_edge, %do.body43.if.end74_crit_edge
  %tmo_clk.035 = phi i32 [ %shr, %if.end74.if.end74_crit_edge ], [ %conv1.i30, %do.body43.if.end74_crit_edge ]
  %prescale.034 = phi i32 [ %inc, %if.end74.if.end74_crit_edge ], [ 0, %do.body43.if.end74_crit_edge ]
  %shr = lshr i32 %tmo_clk.035, 1
  %inc = add nuw nsw i32 %prescale.034, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %prescale.034)
  %cmp71 = icmp ugt i32 %prescale.034, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %tmo_clk.035)
  %cmp72 = icmp ult i32 %tmo_clk.035, 65536
  %or.cond = select i1 %cmp71, i1 true, i1 %cmp72
  br i1 %or.cond, label %if.end74.for.end_crit_edge, label %if.end74.if.end74_crit_edge

if.end74.if.end74_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.end74.for.end_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end74.for.end_crit_edge, %do.body43.for.end_crit_edge
  %prescale.0.lcssa = phi i32 [ 0, %do.body43.for.end_crit_edge ], [ %inc, %if.end74.for.end_crit_edge ]
  %tmo_clk.0.lcssa = phi i32 [ %conv1.i30, %do.body43.for.end_crit_edge ], [ %shr, %if.end74.for.end_crit_edge ]
  %49 = tail call i32 @llvm.umin.i32(i32 %tmo_clk.0.lcssa, i32 32767)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void @arm_heavy_mb() #8
  %50 = tail call i32 @llvm.bswap.i32(i32 %prescale.0.lcssa)
  %51 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %idev, align 8
  %add.ptr82 = getelementptr i8, ptr %52, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 %50) #8, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  %or = or i32 %49, 32768
  %53 = tail call i32 @llvm.bswap.i32(i32 %or)
  %54 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %idev, align 8
  %add.ptr88 = getelementptr i8, ptr %55, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 %53) #8, !srcloc !95
  %56 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %idev, align 8
  %add.ptr.i = getelementptr i8, ptr %57, i32 72
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %59 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %idev, align 8
  %add.ptr3.i = getelementptr i8, ptr %60, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 0) #8, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %61 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %idev, align 8
  %add.ptr93 = getelementptr i8, ptr %62, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 16777216) #8, !srcloc !95
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axxia_i2c_isr(i32 noundef %irq, ptr noundef %_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_dev, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !96
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @axxia_i2c_slv_isr(ptr noundef %_dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %and3 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_dev, align 8
  %add.ptr10 = getelementptr i8, ptr %5, i32 76
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #8, !srcloc !96
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  %msg = getelementptr inbounds %struct.axxia_i2c_dev, ptr %_dev, i32 0, i32 1
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %msg, align 4
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.axxia_i2c_dev, ptr %_dev, i32 0, i32 7
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.23) #11
  br label %do.body130

if.end16:                                         ; preds = %if.end6
  %msg_r = getelementptr inbounds %struct.axxia_i2c_dev, ptr %_dev, i32 0, i32 2
  %12 = ptrtoint ptr %msg_r to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msg_r, align 8
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags.i, align 2
  %16 = and i16 %15, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool18.not = icmp eq i16 %16, 0
  %and19 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %or.cond = select i1 %tobool18.not, i1 true, i1 %tobool20.not
  br i1 %or.cond, label %if.end16.if.end23_crit_edge, label %if.then21

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @axxia_i2c_empty_rx_fifo(ptr noundef %_dev)
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end16.if.end23_crit_edge
  %17 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %msg, align 4
  %flags.i181 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i181 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags.i181, align 2
  %21 = and i16 %20, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool26.not = icmp ne i16 %21, 0
  %and28 = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %or.cond180 = select i1 %tobool26.not, i1 true, i1 %tobool29.not
  br i1 %or.cond180, label %if.end23.if.end34_crit_edge, label %if.then30

if.end23.if.end34_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then30:                                        ; preds = %if.end23
  %22 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %_dev, align 8
  %add.ptr.i = getelementptr i8, ptr %23, i32 64
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !96
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %sub.i = sub i32 8, %25
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 2
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %len.i, align 4
  %conv.i = zext i16 %27 to i32
  %msg_xfrd.i = getelementptr inbounds %struct.axxia_i2c_dev, ptr %_dev, i32 0, i32 3
  %28 = ptrtoint ptr %msg_xfrd.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msg_xfrd.i, align 4
  %sub3.i = sub i32 %conv.i, %29
  %30 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %sub3.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp1129.i = icmp sgt i32 %30, 0
  br i1 %cmp1129.i, label %do.body.lr.ph.i, label %if.then30.axxia_i2c_fill_tx_fifo.exit_crit_edge

if.then30.axxia_i2c_fill_tx_fifo.exit_crit_edge:  ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %axxia_i2c_fill_tx_fifo.exit

do.body.lr.ph.i:                                  ; preds = %if.then30
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %bytes_to_transfer.030.i = phi i32 [ %30, %do.body.lr.ph.i ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %dec.i = add nsw i32 %bytes_to_transfer.030.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buf.i, align 4
  %33 = ptrtoint ptr %msg_xfrd.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %msg_xfrd.i, align 4
  %inc.i = add i32 %34, 1
  store i32 %inc.i, ptr %msg_xfrd.i, align 4
  %arrayidx.i = getelementptr i8, ptr %32, i32 %34
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i, align 1
  %conv14.i = zext i8 %36 to i32
  %37 = shl nuw i32 %conv14.i, 24
  %38 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %_dev, align 8
  %add.ptr16.i = getelementptr i8, ptr %39, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %37) #8, !srcloc !95
  %cmp11.i = icmp ugt i32 %bytes_to_transfer.030.i, 1
  br i1 %cmp11.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.axxia_i2c_fill_tx_fifo.exit_crit_edge

do.body.i.axxia_i2c_fill_tx_fifo.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %axxia_i2c_fill_tx_fifo.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

axxia_i2c_fill_tx_fifo.exit:                      ; preds = %do.body.i.axxia_i2c_fill_tx_fifo.exit_crit_edge, %if.then30.axxia_i2c_fill_tx_fifo.exit_crit_edge
  %40 = add i32 %30, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i)
  %cmp = icmp eq i32 %40, %conv.i
  br i1 %cmp, label %if.then32, label %axxia_i2c_fill_tx_fifo.exit.if.end34_crit_edge

axxia_i2c_fill_tx_fifo.exit.if.end34_crit_edge:   ; preds = %axxia_i2c_fill_tx_fifo.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then32:                                        ; preds = %axxia_i2c_fill_tx_fifo.exit
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %_dev, align 8
  %add.ptr.i182 = getelementptr i8, ptr %42, i32 72
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i182) #8, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %44 = and i32 %43, -1048577
  %45 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %_dev, align 8
  %add.ptr3.i = getelementptr i8, ptr %46, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %44) #8, !srcloc !95
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %axxia_i2c_fill_tx_fifo.exit.if.end34_crit_edge, %if.end23.if.end34_crit_edge
  %and35 = and i32 %7, 368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else97, label %if.then39, !prof !115

if.then39:                                        ; preds = %if.end34
  tail call fastcc void @i2c_int_disable(ptr noundef %_dev, i32 noundef -1)
  %and40 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.else, label %if.then42

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  %msg_err = getelementptr inbounds %struct.axxia_i2c_dev, ptr %_dev, i32 0, i32 5
  %47 = ptrtoint ptr %msg_err to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -11, ptr %msg_err, align 4
  br label %do.body51

if.else:                                          ; preds = %if.then39
  %and43 = and i32 %7, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %msg_err48 = getelementptr inbounds %struct.axxia_i2c_dev, ptr %_dev, i32 0, i32 5
  br i1 %tobool44.not, label %if.else47, label %if.then45

if.then45:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %msg_err48 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -6, ptr %msg_err48, align 4
  br label %do.body51

if.else47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %msg_err48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -5, ptr %msg_err48, align 4
  br label %do.body51

do.body51:                                        ; preds = %if.else47, %if.then45, %if.then42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axxia_i2c_isr.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@axxia_i2c_isr, %do.end96)) #8
          to label %if.then63 [label %do.end96], !srcloc !93

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #10
  %dev64 = getelementptr inbounds %struct.axxia_i2c_dev, ptr %_dev, i32 0, i32 7
  %50 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev64, align 8
  %52 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %msg, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %53, align 4
  %conv = zext i16 %55 to i32
  %56 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %_dev, align 8
  %add.ptr69 = getelementptr i8, ptr %57, i32 84
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #8, !srcloc !96
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  %60 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %_dev, align 8
  %add.ptr76 = getelementptr i8, ptr %61, i32 44
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #8, !srcloc !96
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %64 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %_dev, align 8
  %add.ptr83 = getelementptr i8, ptr %65, i32 80
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83) #8, !srcloc !96
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  %68 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %_dev, align 8
  %add.ptr90 = getelementptr i8, ptr %69, i32 48
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #8, !srcloc !96
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @axxia_i2c_isr.__UNIQUE_ID_ddebug295, ptr noundef %51, ptr noundef nonnull @.str.25, i32 noundef %7, i32 noundef %conv, i32 noundef %59, i32 noundef %63, i32 noundef %67, i32 noundef %71) #8
  br label %do.end96

do.end96:                                         ; preds = %if.then63, %do.body51
  %msg_complete = getelementptr inbounds %struct.axxia_i2c_dev, ptr %_dev, i32 0, i32 6
  tail call void @complete(ptr noundef %msg_complete) #8
  br label %do.body130

if.else97:                                        ; preds = %if.end34
  %and98 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.else102, label %if.then100

if.then100:                                       ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %_dev, align 8
  %add.ptr.i183 = getelementptr i8, ptr %73, i32 72
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i183) #8, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %and.i184 = and i32 %74, -2147483648
  %75 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %_dev, align 8
  %add.ptr3.i185 = getelementptr i8, ptr %76, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i185, i32 %and.i184) #8, !srcloc !95
  %msg_complete101 = getelementptr inbounds %struct.axxia_i2c_dev, ptr %_dev, i32 0, i32 6
  tail call void @complete(ptr noundef %msg_complete101) #8
  br label %do.body130

if.else102:                                       ; preds = %if.else97
  %and103 = and i32 %7, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.else120, label %if.then105

if.then105:                                       ; preds = %if.else102
  %last = getelementptr inbounds %struct.axxia_i2c_dev, ptr %_dev, i32 0, i32 11
  %77 = ptrtoint ptr %last to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %last, align 8, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool106.not = icmp eq i8 %78, 0
  %79 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %_dev, align 8
  %add.ptr.i186 = getelementptr i8, ptr %80, i32 72
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i186) #8, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %neg.i = select i1 %tobool106.not, i32 -2147483648, i32 0
  %and.i187 = and i32 %81, %neg.i
  %82 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %_dev, align 8
  %add.ptr3.i188 = getelementptr i8, ptr %83, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i188, i32 %and.i187) #8, !srcloc !95
  %84 = ptrtoint ptr %msg_r to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %msg_r, align 8
  %flags.i189 = getelementptr inbounds %struct.i2c_msg, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %flags.i189 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %flags.i189, align 2
  %88 = and i16 %87, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %tobool110.not = icmp eq i16 %88, 0
  br i1 %tobool110.not, label %if.then105.if.end118_crit_edge, label %land.lhs.true111

if.then105.if.end118_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

land.lhs.true111:                                 ; preds = %if.then105
  %msg_xfrd_r = getelementptr inbounds %struct.axxia_i2c_dev, ptr %_dev, i32 0, i32 4
  %89 = ptrtoint ptr %msg_xfrd_r to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %msg_xfrd_r, align 8
  %len = getelementptr inbounds %struct.i2c_msg, ptr %85, i32 0, i32 2
  %91 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %len, align 4
  %conv113 = zext i16 %92 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %conv113)
  %cmp114 = icmp ult i32 %90, %conv113
  br i1 %cmp114, label %if.then116, label %land.lhs.true111.if.end118_crit_edge

land.lhs.true111.if.end118_crit_edge:             ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.then116:                                       ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @axxia_i2c_empty_rx_fifo(ptr noundef %_dev)
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %land.lhs.true111.if.end118_crit_edge, %if.then105.if.end118_crit_edge
  %msg_complete119 = getelementptr inbounds %struct.axxia_i2c_dev, ptr %_dev, i32 0, i32 6
  tail call void @complete(ptr noundef %msg_complete119) #8
  br label %do.body130

if.else120:                                       ; preds = %if.else102
  %and121 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.else120.do.body130_crit_edge, label %if.then123

if.else120.do.body130_crit_edge:                  ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body130

if.then123:                                       ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #10
  %msg_err124 = getelementptr inbounds %struct.axxia_i2c_dev, ptr %_dev, i32 0, i32 5
  %93 = ptrtoint ptr %msg_err124 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -110, ptr %msg_err124, align 4
  %94 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %_dev, align 8
  %add.ptr.i190 = getelementptr i8, ptr %95, i32 72
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i190) #8, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %and.i191 = and i32 %96, -2147483648
  %97 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %_dev, align 8
  %add.ptr3.i192 = getelementptr i8, ptr %98, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i192, i32 %and.i191) #8, !srcloc !95
  %msg_complete125 = getelementptr inbounds %struct.axxia_i2c_dev, ptr %_dev, i32 0, i32 6
  tail call void @complete(ptr noundef %msg_complete125) #8
  br label %do.body130

do.body130:                                       ; preds = %if.then123, %if.else120.do.body130_crit_edge, %if.end118, %if.then100, %do.end96, %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %99 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %_dev, align 8
  %add.ptr134 = getelementptr i8, ptr %100, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 16777216) #8, !srcloc !95
  br label %cleanup

cleanup:                                          ; preds = %do.body130, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body130 ], [ %ret.0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_int_disable(ptr nocapture noundef readonly %idev, i32 noundef %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idev, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 72
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !96
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %neg = xor i32 %mask, -1
  %and = and i32 %3, %neg
  %4 = tail call i32 @llvm.bswap.i32(i32 %and)
  %5 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %idev, align 8
  %add.ptr3 = getelementptr i8, ptr %6, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #8, !srcloc !95
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @axxia_i2c_slv_isr(ptr nocapture noundef readonly %idev) unnamed_addr #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idev, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 116
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !96
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %val, align 1, !annotation !123
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axxia_i2c_slv_isr.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@axxia_i2c_slv_isr, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !93

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.axxia_i2c_dev, ptr %idev, i32 0, i32 7
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @axxia_i2c_slv_isr.__UNIQUE_ID_ddebug294, ptr noundef %6, ptr noundef nonnull @.str.27, i32 noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.end.if.end9_crit_edge, label %if.then8

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @axxia_i2c_slv_fifo_event(ptr noundef %idev)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.end.if.end9_crit_edge
  %and10 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end19_crit_edge, label %if.then12

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %slave = getelementptr inbounds %struct.axxia_i2c_dev, ptr %idev, i32 0, i32 12
  %7 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %slave, align 4
  %slave_cb.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %slave_cb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %slave_cb.i, align 8
  %call.i = call i32 %10(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %val) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val, align 1
  %conv = zext i8 %12 to i32
  %13 = shl nuw i32 %conv, 24
  %14 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %idev, align 8
  %add.ptr18 = getelementptr i8, ptr %15, i32 104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %13) #8, !srcloc !95
  br label %if.end19

if.end19:                                         ; preds = %if.then12, %if.end9.if.end19_crit_edge
  %and20 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end31_crit_edge, label %if.then22

if.end19.if.end31_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %slave23 = getelementptr inbounds %struct.axxia_i2c_dev, ptr %idev, i32 0, i32 12
  %16 = ptrtoint ptr %slave23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %slave23, align 4
  %slave_cb.i1 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %slave_cb.i1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slave_cb.i1, align 8
  %call.i2 = call i32 %19(ptr noundef %17, i32 noundef 2, ptr noundef nonnull %val) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %val, align 1
  %conv28 = zext i8 %21 to i32
  %22 = shl nuw i32 %conv28, 24
  %23 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %idev, align 8
  %add.ptr30 = getelementptr i8, ptr %24, i32 104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %22) #8, !srcloc !95
  br label %if.end31

if.end31:                                         ; preds = %if.then22, %if.end19.if.end31_crit_edge
  %and32 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.do.body38_crit_edge, label %if.then34

if.end31.do.body38_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body38

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %slave35 = getelementptr inbounds %struct.axxia_i2c_dev, ptr %idev, i32 0, i32 12
  %25 = ptrtoint ptr %slave35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %slave35, align 4
  %slave_cb.i3 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %slave_cb.i3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %slave_cb.i3, align 8
  %call.i4 = call i32 %28(ptr noundef %26, i32 noundef 4, ptr noundef nonnull %val) #8
  br label %do.body38

do.body38:                                        ; preds = %if.then34, %if.end31.do.body38_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %idev, align 8
  %add.ptr42 = getelementptr i8, ptr %30, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 33554432) #8, !srcloc !95
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @axxia_i2c_empty_rx_fifo(ptr noundef %idev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_r = getelementptr inbounds %struct.axxia_i2c_dev, ptr %idev, i32 0, i32 2
  %0 = ptrtoint ptr %msg_r to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg_r, align 8
  %2 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idev, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 68
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !96
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  %len = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %len, align 4
  %conv = zext i16 %7 to i32
  %msg_xfrd_r = getelementptr inbounds %struct.axxia_i2c_dev, ptr %idev, i32 0, i32 4
  %8 = ptrtoint ptr %msg_xfrd_r to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_xfrd_r, align 8
  %sub = sub i32 %conv, %9
  %10 = tail call i32 @llvm.umin.i32(i32 %5, i32 %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp44 = icmp sgt i32 %10, 0
  br i1 %cmp44, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 1
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %dec5.in = phi i32 [ %10, %while.body.lr.ph ], [ %dec5, %cleanup.while.body_crit_edge ]
  %dec5 = add nsw i32 %dec5.in, -1
  %11 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %idev, align 8
  %add.ptr9 = getelementptr i8, ptr %12, i32 60
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #8, !srcloc !96
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %15 = ptrtoint ptr %msg_xfrd_r to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_xfrd_r, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp14 = icmp eq i32 %16, 0
  br i1 %cmp14, label %land.lhs.true, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %while.body
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %flags.i, align 2
  %19 = and i16 %18, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not = icmp eq i16 %19, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %20 = add i32 %14, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %20)
  %21 = icmp ult i32 %20, -32
  br i1 %21, label %cleanup.thread, label %if.end

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %msg_err = getelementptr inbounds %struct.axxia_i2c_dev, ptr %idev, i32 0, i32 5
  %22 = ptrtoint ptr %msg_err to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -71, ptr %msg_err, align 4
  %23 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %idev, align 8
  %add.ptr.i = getelementptr i8, ptr %24, i32 72
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %and.i = and i32 %25, -2147483648
  %26 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %idev, align 8
  %add.ptr3.i = getelementptr i8, ptr %27, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %and.i) #8, !srcloc !95
  %msg_complete = getelementptr inbounds %struct.axxia_i2c_dev, ptr %idev, i32 0, i32 6
  tail call void @complete(ptr noundef %msg_complete) #8
  br label %while.end

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %28 = trunc i32 %14 to i16
  %conv22 = add nuw nsw i16 %28, 1
  %29 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv22, ptr %len, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %len, align 4
  %conv25 = zext i16 %31 to i32
  %32 = tail call i32 @llvm.bswap.i32(i32 %conv25)
  %33 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %idev, align 8
  %add.ptr27 = getelementptr i8, ptr %34, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %32) #8, !srcloc !95
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %conv29 = trunc i32 %14 to i8
  %35 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf, align 4
  %37 = ptrtoint ptr %msg_xfrd_r to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msg_xfrd_r, align 8
  %inc = add i32 %38, 1
  store i32 %inc, ptr %msg_xfrd_r, align 8
  %arrayidx = getelementptr i8, ptr %36, i32 %38
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv29, ptr %arrayidx, align 1
  %cmp4 = icmp ugt i32 %dec5.in, 1
  br i1 %cmp4, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @axxia_i2c_slv_fifo_event(ptr nocapture noundef readonly %idev) unnamed_addr #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idev, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 108
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !96
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %val, align 1, !annotation !123
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axxia_i2c_slv_fifo_event.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@axxia_i2c_slv_fifo_event, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !93

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.axxia_i2c_dev, ptr %idev, i32 0, i32 7
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @axxia_i2c_slv_fifo_event.__UNIQUE_ID_ddebug293, ptr noundef %6, ptr noundef nonnull @.str.29, i32 noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.end.if.end23_crit_edge, label %if.then8

do.end.if.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then8:                                         ; preds = %do.end
  %and9 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then8.if.end13_crit_edge, label %if.then11

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %slave = getelementptr inbounds %struct.axxia_i2c_dev, ptr %idev, i32 0, i32 12
  %7 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %slave, align 4
  %slave_cb.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %slave_cb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %slave_cb.i, align 8
  %call.i = call i32 %10(ptr noundef %8, i32 noundef 1, ptr noundef nonnull %val) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then8.if.end13_crit_edge
  %11 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %idev, align 8
  %add.ptr17 = getelementptr i8, ptr %12, i32 104
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #8, !srcloc !96
  %14 = lshr i32 %13, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  %conv = trunc i32 %14 to i8
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %val, align 1
  %slave21 = getelementptr inbounds %struct.axxia_i2c_dev, ptr %idev, i32 0, i32 12
  %16 = ptrtoint ptr %slave21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %slave21, align 4
  %slave_cb.i59 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %slave_cb.i59 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slave_cb.i59, align 8
  %call.i60 = call i32 %19(ptr noundef %17, i32 noundef 3, ptr noundef nonnull %val) #8
  br label %if.end23

if.end23:                                         ; preds = %if.end13, %do.end.if.end23_crit_edge
  %and24 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end36_crit_edge, label %if.then26

if.end23.if.end36_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %idev, align 8
  %add.ptr30 = getelementptr i8, ptr %21, i32 104
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #8, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  %slave34 = getelementptr inbounds %struct.axxia_i2c_dev, ptr %idev, i32 0, i32 12
  %23 = ptrtoint ptr %slave34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %slave34, align 4
  %slave_cb.i61 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %slave_cb.i61 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %slave_cb.i61, align 8
  %call.i62 = call i32 %26(ptr noundef %24, i32 noundef 4, ptr noundef nonnull %val) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then26, %if.end23.if.end36_crit_edge
  %and37 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end47_crit_edge, label %if.then39

if.end36.if.end47_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %idev, align 8
  %add.ptr43 = getelementptr i8, ptr %28, i32 104
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #8, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  br label %if.end47

if.end47:                                         ; preds = %if.then39, %if.end36.if.end47_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axxia_i2c_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %msg_err = getelementptr inbounds %struct.axxia_i2c_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %msg_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %msg_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num)
  %cmp.i = icmp eq i32 %num, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %3 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flags.i.i, align 2
  %5 = and i16 %4, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i, label %land.lhs.true1.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %arrayidx2.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 1
  %flags.i34.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %6 = ptrtoint ptr %flags.i34.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i34.i, align 2
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool4.not.i = icmp eq i16 %8, 0
  br i1 %tobool4.not.i, label %land.lhs.true1.i.if.end_crit_edge, label %land.lhs.true5.i

land.lhs.true1.i.if.end_crit_edge:                ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true5.i:                                 ; preds = %land.lhs.true1.i
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %len.i, align 4
  %11 = add i16 %10, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %11)
  %12 = icmp ult i16 %11, 8
  br i1 %12, label %land.lhs.true15.i, label %land.lhs.true5.i.if.end_crit_edge

land.lhs.true5.i.if.end_crit_edge:                ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true15.i:                                ; preds = %land.lhs.true5.i
  %len17.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %13 = ptrtoint ptr %len17.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %len17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp19.not.i = icmp eq i16 %14, 0
  br i1 %cmp19.not.i, label %land.lhs.true15.i.if.end_crit_edge, label %axxia_i2c_sequence_ok.exit

land.lhs.true15.i.if.end_crit_edge:               ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

axxia_i2c_sequence_ok.exit:                       ; preds = %land.lhs.true15.i
  %15 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %msgs, align 4
  %17 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %18)
  %cmp26.i = icmp eq i16 %16, %18
  br i1 %cmp26.i, label %if.then, label %axxia_i2c_sequence_ok.exit.if.end_crit_edge

axxia_i2c_sequence_ok.exit.if.end_crit_edge:      ; preds = %axxia_i2c_sequence_ok.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %axxia_i2c_sequence_ok.exit
  %19 = ptrtoint ptr %flags.i34.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags.i34.i, align 2
  %21 = and i16 %20, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i27 = icmp eq i16 %21, 0
  br i1 %tobool.not.i27, label %cond.false.i, label %if.then.cond.end.i_crit_edge

if.then.cond.end.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %len17.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %len17.i, align 4
  %conv.i = zext i16 %23 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then.cond.end.i_crit_edge
  %cond.i = phi i32 [ %conv.i, %cond.false.i ], [ 32, %if.then.cond.end.i_crit_edge ]
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %flags.i.i, align 2
  %26 = and i16 %25, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.not.i.i = icmp eq i16 %26, 0
  %27 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %msgs, align 4
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = lshr i16 %28, 7
  %30 = and i16 %29, 6
  %31 = and i16 %25, 1
  %32 = or i16 %31, %30
  %33 = or i16 %32, 240
  %34 = zext i16 %33 to i32
  %conv6.i.i = zext i16 %28 to i32
  %phi.bo.i.i = shl i32 %conv6.i.i, 24
  br label %axxia_i2c_set_addr.exit.i

if.else.i.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i = zext i16 %28 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 1
  %35 = and i16 %25, 1
  %36 = zext i16 %35 to i32
  %shl.i.masked.i.i = and i32 %shl.i.i.i, 254
  %conv9.i.i = or i32 %shl.i.masked.i.i, %36
  br label %axxia_i2c_set_addr.exit.i

axxia_i2c_set_addr.exit.i:                        ; preds = %if.else.i.i, %if.then.i.i
  %addr_1.1.i.i = phi i32 [ %34, %if.then.i.i ], [ %conv9.i.i, %if.else.i.i ]
  %addr_2.0.i.i = phi i32 [ %phi.bo.i.i, %if.then.i.i ], [ 0, %if.else.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %37 = tail call i32 @llvm.bswap.i32(i32 %addr_1.1.i.i) #8
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %37) #8, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 8
  %add.ptr15.i.i = getelementptr i8, ptr %41, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.i, i32 %addr_2.0.i.i) #8, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  tail call void @arm_heavy_mb() #8
  %42 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %len.i, align 4
  %conv5.i = zext i16 %43 to i32
  %44 = tail call i32 @llvm.bswap.i32(i32 %conv5.i) #8
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %46, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %44) #8, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %47 = tail call i32 @llvm.bswap.i32(i32 %cond.i) #8
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  %add.ptr10.i = getelementptr i8, ptr %49, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %47) #8, !srcloc !95
  %msg.i = getelementptr inbounds %struct.axxia_i2c_dev, ptr %1, i32 0, i32 1
  %50 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %msgs, ptr %msg.i, align 4
  %msg_r.i = getelementptr inbounds %struct.axxia_i2c_dev, ptr %1, i32 0, i32 2
  %51 = ptrtoint ptr %msg_r.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %arrayidx2.i, ptr %msg_r.i, align 8
  %msg_xfrd.i = getelementptr inbounds %struct.axxia_i2c_dev, ptr %1, i32 0, i32 3
  %52 = ptrtoint ptr %msg_xfrd.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %msg_xfrd.i, align 4
  %msg_xfrd_r.i = getelementptr inbounds %struct.axxia_i2c_dev, ptr %1, i32 0, i32 4
  %53 = ptrtoint ptr %msg_xfrd_r.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %msg_xfrd_r.i, align 8
  %last.i = getelementptr inbounds %struct.axxia_i2c_dev, ptr %1, i32 0, i32 11
  %54 = ptrtoint ptr %last.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %last.i, align 8
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 8
  %add.ptr.i85.i = getelementptr i8, ptr %56, i32 64
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85.i) #8, !srcloc !96
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %sub.i.i = sub i32 8, %58
  %59 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %len.i, align 4
  %conv.i.i = zext i16 %60 to i32
  %61 = ptrtoint ptr %msg_xfrd.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %msg_xfrd.i, align 4
  %sub3.i.i = sub i32 %conv.i.i, %62
  %63 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %sub3.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp1129.i.i = icmp sgt i32 %63, 0
  br i1 %cmp1129.i.i, label %do.body.lr.ph.i.i, label %axxia_i2c_set_addr.exit.i.axxia_i2c_fill_tx_fifo.exit.i_crit_edge

axxia_i2c_set_addr.exit.i.axxia_i2c_fill_tx_fifo.exit.i_crit_edge: ; preds = %axxia_i2c_set_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %axxia_i2c_fill_tx_fifo.exit.i

do.body.lr.ph.i.i:                                ; preds = %axxia_i2c_set_addr.exit.i
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.lr.ph.i.i
  %bytes_to_transfer.030.i.i = phi i32 [ %63, %do.body.lr.ph.i.i ], [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %bytes_to_transfer.030.i.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %64 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buf.i.i, align 4
  %66 = ptrtoint ptr %msg_xfrd.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %msg_xfrd.i, align 4
  %inc.i.i = add i32 %67, 1
  store i32 %inc.i.i, ptr %msg_xfrd.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %65, i32 %67
  %68 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i.i, align 1
  %conv14.i.i = zext i8 %69 to i32
  %70 = shl nuw i32 %conv14.i.i, 24
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 8
  %add.ptr16.i.i = getelementptr i8, ptr %72, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.i, i32 %70) #8, !srcloc !95
  %cmp11.i.i = icmp ugt i32 %bytes_to_transfer.030.i.i, 1
  br i1 %cmp11.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %do.body.i.i.axxia_i2c_fill_tx_fifo.exit.i_crit_edge

do.body.i.i.axxia_i2c_fill_tx_fifo.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %axxia_i2c_fill_tx_fifo.exit.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

axxia_i2c_fill_tx_fifo.exit.i:                    ; preds = %do.body.i.i.axxia_i2c_fill_tx_fifo.exit.i_crit_edge, %axxia_i2c_set_addr.exit.i.axxia_i2c_fill_tx_fifo.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  tail call void @arm_heavy_mb() #8
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 8
  %add.ptr18.i = getelementptr i8, ptr %74, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 167772160) #8, !srcloc !95
  %msg_complete.i = getelementptr inbounds %struct.axxia_i2c_dev, ptr %1, i32 0, i32 6
  %75 = ptrtoint ptr %msg_complete.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %msg_complete.i, align 4
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 8
  %add.ptr.i86.i = getelementptr i8, ptr %77, i32 72
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i86.i) #8, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  tail call void @arm_heavy_mb() #8
  %79 = or i32 %78, 1881473024
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 8
  %add.ptr3.i.i = getelementptr i8, ptr %81, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %79) #8, !srcloc !95
  %call21.i = tail call i32 @wait_for_completion_timeout(ptr noundef %msg_complete.i, i32 noundef 25) #8
  %82 = ptrtoint ptr %msg_err to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %msg_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %83)
  %cmp.i29 = icmp eq i32 %83, -6
  br i1 %cmp.i29, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %axxia_i2c_fill_tx_fifo.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %84 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -25, %84
  br label %do.body.i88.i

do.body.i88.i:                                    ; preds = %if.end.i.i.do.body.i88.i_crit_edge, %if.then.i
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 8
  %add.ptr.i87.i = getelementptr i8, ptr %86, i32 40
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87.i) #8, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %88 = and i32 %87, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.i.i = icmp eq i32 %88, 0
  br i1 %cmp.i.i, label %do.body.i88.i.if.end37.i_crit_edge, label %if.end.i.i

do.body.i88.i.if.end37.i_crit_edge:               ; preds = %do.body.i88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

if.end.i.i:                                       ; preds = %do.body.i88.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 100, i32 noundef 2) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %89 = load volatile i32, ptr @jiffies, align 128
  %sub.i89.i = add i32 %add.neg.i.i, %89
  %cmp3.i.i = icmp slt i32 %sub.i89.i, 0
  br i1 %cmp3.i.i, label %if.end.i.i.do.body.i88.i_crit_edge, label %if.then25.i

if.end.i.i.do.body.i88.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i88.i

if.then25.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @axxia_i2c_init(ptr noundef %1) #8
  br label %if.end37.i

if.else.i:                                        ; preds = %axxia_i2c_fill_tx_fifo.exit.i
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 8
  %add.ptr28.i = getelementptr i8, ptr %91, i32 40
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i) #8, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %93 = and i32 %92, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool31.not.i = icmp eq i32 %93, 0
  br i1 %tobool31.not.i, label %if.else.i.if.end37.i_crit_edge, label %do.end35.i

if.else.i.if.end37.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

do.end35.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.axxia_i2c_dev, ptr %1, i32 0, i32 7
  %94 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %95, ptr noundef nonnull @.str.30) #11
  br label %if.end37.i

if.end37.i:                                       ; preds = %do.end35.i, %if.else.i.if.end37.i_crit_edge, %if.then25.i, %do.body.i88.i.if.end37.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp38.i = icmp eq i32 %call21.i, 0
  br i1 %cmp38.i, label %if.then40.i, label %if.end37.i.if.end44.i_crit_edge

if.end37.i.if.end44.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

if.then40.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %msg_err to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 -110, ptr %msg_err, align 4
  %adapter.i = getelementptr inbounds %struct.axxia_i2c_dev, ptr %1, i32 0, i32 8
  %call42.i = tail call i32 @i2c_recover_bus(ptr noundef %adapter.i) #8
  tail call fastcc void @axxia_i2c_init(ptr noundef %1) #8
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then40.i, %if.end37.i.if.end44.i_crit_edge
  %97 = ptrtoint ptr %msg_err to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %msg_err, align 4
  %99 = zext i32 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values)
  switch i32 %98, label %if.then52.i [
    i32 0, label %if.end44.i.axxia_i2c_xfer_seq.exit_crit_edge
    i32 -6, label %if.end44.i.axxia_i2c_xfer_seq.exit_crit_edge82
  ], !prof !143

if.end44.i.axxia_i2c_xfer_seq.exit_crit_edge82:   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %axxia_i2c_xfer_seq.exit

if.end44.i.axxia_i2c_xfer_seq.exit_crit_edge:     ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %axxia_i2c_xfer_seq.exit

if.then52.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @axxia_i2c_init(ptr noundef %1) #8
  br label %axxia_i2c_xfer_seq.exit

axxia_i2c_xfer_seq.exit:                          ; preds = %if.then52.i, %if.end44.i.axxia_i2c_xfer_seq.exit_crit_edge, %if.end44.i.axxia_i2c_xfer_seq.exit_crit_edge82
  %100 = ptrtoint ptr %msg_err to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %msg_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.not = icmp eq i32 %101, 0
  %. = select i1 %tobool.not, i32 2, i32 %101
  br label %cleanup

if.end:                                           ; preds = %axxia_i2c_sequence_ok.exit.if.end_crit_edge, %land.lhs.true15.i.if.end_crit_edge, %land.lhs.true5.i.if.end_crit_edge, %land.lhs.true1.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 8
  %add.ptr.i30 = getelementptr i8, ptr %103, i32 72
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #8, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  tail call void @arm_heavy_mb() #8
  %105 = or i32 %104, -2147483648
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %1, align 8
  %add.ptr3.i = getelementptr i8, ptr %107, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %105) #8, !srcloc !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp376 = icmp sgt i32 %num, 0
  br i1 %cmp376, label %for.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %sub = add nsw i32 %num, -1
  %msg1.i = getelementptr inbounds %struct.axxia_i2c_dev, ptr %1, i32 0, i32 1
  %msg_r.i31 = getelementptr inbounds %struct.axxia_i2c_dev, ptr %1, i32 0, i32 2
  %msg_xfrd.i32 = getelementptr inbounds %struct.axxia_i2c_dev, ptr %1, i32 0, i32 3
  %msg_xfrd_r.i33 = getelementptr inbounds %struct.axxia_i2c_dev, ptr %1, i32 0, i32 4
  %last2.i = getelementptr inbounds %struct.axxia_i2c_dev, ptr %1, i32 0, i32 11
  %msg_complete.i34 = getelementptr inbounds %struct.axxia_i2c_dev, ptr %1, i32 0, i32 6
  %dev.i74 = getelementptr inbounds %struct.axxia_i2c_dev, ptr %1, i32 0, i32 7
  %adapter.i75 = getelementptr inbounds %struct.axxia_i2c_dev, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %axxia_i2c_xfer_msg.exit.for.body_crit_edge, %for.body.lr.ph
  %i.077 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %axxia_i2c_xfer_msg.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.077
  call void @__sanitizer_cov_trace_cmp4(i32 %i.077, i32 %sub)
  %cmp4 = icmp eq i32 %i.077, %sub
  %frombool.i = zext i1 %cmp4 to i8
  %108 = ptrtoint ptr %msg1.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %arrayidx, ptr %msg1.i, align 4
  %109 = ptrtoint ptr %msg_r.i31 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %arrayidx, ptr %msg_r.i31, align 8
  %110 = ptrtoint ptr %msg_xfrd.i32 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %msg_xfrd.i32, align 4
  %111 = ptrtoint ptr %msg_xfrd_r.i33 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %msg_xfrd_r.i33, align 8
  %112 = ptrtoint ptr %last2.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %frombool.i, ptr %last2.i, align 8
  %113 = ptrtoint ptr %msg_complete.i34 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %msg_complete.i34, align 4
  %flags.i.i.i35 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.077, i32 1
  %114 = ptrtoint ptr %flags.i.i.i35 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %flags.i.i.i35, align 2
  %116 = and i16 %115, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %tobool.not.i.i36 = icmp eq i16 %116, 0
  %117 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %arrayidx, align 4
  br i1 %tobool.not.i.i36, label %if.else.i.i44, label %if.then.i.i39

if.then.i.i39:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %119 = lshr i16 %118, 7
  %120 = and i16 %119, 6
  %121 = and i16 %115, 1
  %122 = or i16 %121, %120
  %123 = or i16 %122, 240
  %124 = zext i16 %123 to i32
  %conv6.i.i37 = zext i16 %118 to i32
  %phi.bo.i.i38 = shl i32 %conv6.i.i37, 24
  br label %axxia_i2c_set_addr.exit.i50

if.else.i.i44:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i40 = zext i16 %118 to i32
  %shl.i.i.i41 = shl nuw nsw i32 %conv.i.i.i40, 1
  %125 = and i16 %115, 1
  %126 = zext i16 %125 to i32
  %shl.i.masked.i.i42 = and i32 %shl.i.i.i41, 254
  %conv9.i.i43 = or i32 %shl.i.masked.i.i42, %126
  br label %axxia_i2c_set_addr.exit.i50

axxia_i2c_set_addr.exit.i50:                      ; preds = %if.else.i.i44, %if.then.i.i39
  %addr_1.1.i.i45 = phi i32 [ %124, %if.then.i.i39 ], [ %conv9.i.i43, %if.else.i.i44 ]
  %addr_2.0.i.i46 = phi i32 [ %phi.bo.i.i38, %if.then.i.i39 ], [ 0, %if.else.i.i44 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %127 = tail call i32 @llvm.bswap.i32(i32 %addr_1.1.i.i45) #8
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %1, align 8
  %add.ptr.i.i47 = getelementptr i8, ptr %129, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i47, i32 %127) #8, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %130 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %1, align 8
  %add.ptr15.i.i48 = getelementptr i8, ptr %131, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.i48, i32 %addr_2.0.i.i46) #8, !srcloc !95
  %132 = ptrtoint ptr %flags.i.i.i35 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %flags.i.i.i35, align 2
  %134 = and i16 %133, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %134)
  %tobool4.not.i49 = icmp eq i16 %134, 0
  br i1 %tobool4.not.i49, label %if.else.i55, label %if.then.i51

if.then.i51:                                      ; preds = %axxia_i2c_set_addr.exit.i50
  %135 = and i16 %133, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %135)
  %tobool6.not.i = icmp eq i16 %135, 0
  br i1 %tobool6.not.i, label %cond.false.i54, label %if.then.i51.do.body.i_crit_edge

if.then.i51.do.body.i_crit_edge:                  ; preds = %if.then.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

cond.false.i54:                                   ; preds = %if.then.i51
  call void @__sanitizer_cov_trace_pc() #10
  %len.i52 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.077, i32 2
  %136 = ptrtoint ptr %len.i52 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %len.i52, align 4
  %conv.i53 = zext i16 %137 to i32
  br label %do.body.i

if.else.i55:                                      ; preds = %axxia_i2c_set_addr.exit.i50
  call void @__sanitizer_cov_trace_pc() #10
  %len7.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.077, i32 2
  %138 = ptrtoint ptr %len7.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %len7.i, align 4
  %conv8.i = zext i16 %139 to i32
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i55, %cond.false.i54, %if.then.i51.do.body.i_crit_edge
  %tx_xfer.0.i = phi i32 [ %conv8.i, %if.else.i55 ], [ 0, %if.then.i51.do.body.i_crit_edge ], [ 0, %cond.false.i54 ]
  %rx_xfer.0.i = phi i32 [ 0, %if.else.i55 ], [ 32, %if.then.i51.do.body.i_crit_edge ], [ %conv.i53, %cond.false.i54 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %140 = tail call i32 @llvm.bswap.i32(i32 %rx_xfer.0.i) #8
  %141 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %1, align 8
  %add.ptr.i56 = getelementptr i8, ptr %142, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %140) #8, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %143 = tail call i32 @llvm.bswap.i32(i32 %tx_xfer.0.i) #8
  %144 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %1, align 8
  %add.ptr13.i = getelementptr i8, ptr %145, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %143) #8, !srcloc !95
  %146 = ptrtoint ptr %flags.i.i.i35 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %flags.i.i.i35, align 2
  %148 = and i16 %147, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %148)
  %tobool15.not.i = icmp eq i16 %148, 0
  br i1 %tobool15.not.i, label %if.else17.i, label %do.body.i.if.end23.i_crit_edge

do.body.i.if.end23.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.else17.i:                                      ; preds = %do.body.i
  %149 = ptrtoint ptr %msg1.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %msg1.i, align 4
  %151 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %1, align 8
  %add.ptr.i141.i = getelementptr i8, ptr %152, i32 64
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i141.i) #8, !srcloc !96
  %154 = tail call i32 @llvm.bswap.i32(i32 %153) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %sub.i.i57 = sub i32 8, %154
  %len.i.i = getelementptr inbounds %struct.i2c_msg, ptr %150, i32 0, i32 2
  %155 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %len.i.i, align 4
  %conv.i.i58 = zext i16 %156 to i32
  %157 = ptrtoint ptr %msg_xfrd.i32 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %msg_xfrd.i32, align 4
  %sub3.i.i59 = sub i32 %conv.i.i58, %158
  %159 = tail call i32 @llvm.umin.i32(i32 %sub.i.i57, i32 %sub3.i.i59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp1129.i.i60 = icmp sgt i32 %159, 0
  br i1 %cmp1129.i.i60, label %do.body.lr.ph.i.i62, label %if.else17.i.axxia_i2c_fill_tx_fifo.exit.i71_crit_edge

if.else17.i.axxia_i2c_fill_tx_fifo.exit.i71_crit_edge: ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %axxia_i2c_fill_tx_fifo.exit.i71

do.body.lr.ph.i.i62:                              ; preds = %if.else17.i
  %buf.i.i61 = getelementptr inbounds %struct.i2c_msg, ptr %150, i32 0, i32 3
  br label %do.body.i.i70

do.body.i.i70:                                    ; preds = %do.body.i.i70.do.body.i.i70_crit_edge, %do.body.lr.ph.i.i62
  %bytes_to_transfer.030.i.i63 = phi i32 [ %159, %do.body.lr.ph.i.i62 ], [ %dec.i.i64, %do.body.i.i70.do.body.i.i70_crit_edge ]
  %dec.i.i64 = add nsw i32 %bytes_to_transfer.030.i.i63, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %160 = ptrtoint ptr %buf.i.i61 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %buf.i.i61, align 4
  %162 = ptrtoint ptr %msg_xfrd.i32 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %msg_xfrd.i32, align 4
  %inc.i.i65 = add i32 %163, 1
  store i32 %inc.i.i65, ptr %msg_xfrd.i32, align 4
  %arrayidx.i.i66 = getelementptr i8, ptr %161, i32 %163
  %164 = ptrtoint ptr %arrayidx.i.i66 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx.i.i66, align 1
  %conv14.i.i67 = zext i8 %165 to i32
  %166 = shl nuw i32 %conv14.i.i67, 24
  %167 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %1, align 8
  %add.ptr16.i.i68 = getelementptr i8, ptr %168, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.i68, i32 %166) #8, !srcloc !95
  %cmp11.i.i69 = icmp ugt i32 %bytes_to_transfer.030.i.i63, 1
  br i1 %cmp11.i.i69, label %do.body.i.i70.do.body.i.i70_crit_edge, label %do.body.i.i70.axxia_i2c_fill_tx_fifo.exit.i71_crit_edge

do.body.i.i70.axxia_i2c_fill_tx_fifo.exit.i71_crit_edge: ; preds = %do.body.i.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %axxia_i2c_fill_tx_fifo.exit.i71

do.body.i.i70.do.body.i.i70_crit_edge:            ; preds = %do.body.i.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i70

axxia_i2c_fill_tx_fifo.exit.i71:                  ; preds = %do.body.i.i70.axxia_i2c_fill_tx_fifo.exit.i71_crit_edge, %if.else17.i.axxia_i2c_fill_tx_fifo.exit.i71_crit_edge
  %169 = add i32 %159, %158
  call void @__sanitizer_cov_trace_cmp4(i32 %169, i32 %conv.i.i58)
  %cmp.not.i = icmp eq i32 %169, %conv.i.i58
  %spec.select.i = select i1 %cmp.not.i, i32 368, i32 4464
  br label %if.end23.i

if.end23.i:                                       ; preds = %axxia_i2c_fill_tx_fifo.exit.i71, %do.body.i.if.end23.i_crit_edge
  %int_mask.0.i = phi i32 [ 8560, %do.body.i.if.end23.i_crit_edge ], [ %spec.select.i, %axxia_i2c_fill_tx_fifo.exit.i71 ]
  %170 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %1, align 8
  %add.ptr25.i = getelementptr i8, ptr %171, i32 12
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i) #8, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  %173 = and i32 %172, -8454144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  tail call void @arm_heavy_mb() #8
  %174 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %1, align 8
  %add.ptr32.i = getelementptr i8, ptr %175, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 %173) #8, !srcloc !95
  %176 = ptrtoint ptr %msg_err to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %msg_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool33.not.i = icmp eq i32 %177, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %if.end23.i.out.i_crit_edge

if.end23.i.out.i_crit_edge:                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end35.i:                                       ; preds = %if.end23.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %178 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %1, align 8
  %add.ptr49.i = getelementptr i8, ptr %179, i32 40
  br i1 %cmp4, label %do.body45.i, label %do.body38.i

do.body38.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i, i32 134217728) #8, !srcloc !95
  br label %do.body52.i

do.body45.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i, i32 150994944) #8, !srcloc !95
  br label %do.body52.i

do.body52.i:                                      ; preds = %do.body45.i, %do.body38.i
  %.sink.i = phi i32 [ 2048, %do.body38.i ], [ 1024, %do.body45.i ]
  %or43.i = or i32 %.sink.i, %int_mask.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  tail call void @arm_heavy_mb() #8
  %180 = or i32 %173, 8388608
  %181 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %1, align 8
  %add.ptr57.i = getelementptr i8, ptr %182, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57.i, i32 %180) #8, !srcloc !95
  %183 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %1, align 8
  %add.ptr.i142.i = getelementptr i8, ptr %184, i32 72
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i142.i) #8, !srcloc !96
  %186 = tail call i32 @llvm.bswap.i32(i32 %185) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  tail call void @arm_heavy_mb() #8
  %or.i.i = or i32 %186, %or43.i
  %187 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  %188 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %1, align 8
  %add.ptr3.i.i73 = getelementptr i8, ptr %189, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i73, i32 %187) #8, !srcloc !95
  %call60.i = tail call i32 @wait_for_completion_timeout(ptr noundef %msg_complete.i34, i32 noundef 25) #8
  %190 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %1, align 8
  %add.ptr.i143.i = getelementptr i8, ptr %191, i32 72
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i143.i) #8, !srcloc !96
  %193 = tail call i32 @llvm.bswap.i32(i32 %192) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %neg.i.i = xor i32 %or43.i, -1
  %and.i.i = and i32 %193, %neg.i.i
  %194 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #8
  %195 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %1, align 8
  %add.ptr3.i144.i = getelementptr i8, ptr %196, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i144.i, i32 %194) #8, !srcloc !95
  %197 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %1, align 8
  %add.ptr64.i = getelementptr i8, ptr %198, i32 40
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.i) #8, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %200 = and i32 %199, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool69.not.i = icmp eq i32 %200, 0
  br i1 %tobool69.not.i, label %do.body52.i.if.end74.i_crit_edge, label %do.end73.i

do.body52.i.if.end74.i_crit_edge:                 ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74.i

do.end73.i:                                       ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #10
  %201 = ptrtoint ptr %dev.i74 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dev.i74, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %202, ptr noundef nonnull @.str.30) #11
  br label %if.end74.i

if.end74.i:                                       ; preds = %do.end73.i, %do.body52.i.if.end74.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %cmp75.i = icmp eq i32 %call60.i, 0
  br i1 %cmp75.i, label %if.then77.i, label %if.end74.i.outthread-pre-split.i_crit_edge

if.end74.i.outthread-pre-split.i_crit_edge:       ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %outthread-pre-split.i

if.then77.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #10
  %203 = ptrtoint ptr %msg_err to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 -110, ptr %msg_err, align 4
  %call79.i = tail call i32 @i2c_recover_bus(ptr noundef %adapter.i75) #8
  tail call fastcc void @axxia_i2c_init(ptr noundef %1) #8
  br label %outthread-pre-split.i

outthread-pre-split.i:                            ; preds = %if.then77.i, %if.end74.i.outthread-pre-split.i_crit_edge
  %204 = ptrtoint ptr %msg_err to i32
  call void @__asan_load4_noabort(i32 %204)
  %.pr.i = load i32, ptr %msg_err, align 4
  br label %out.i

out.i:                                            ; preds = %outthread-pre-split.i, %if.end23.i.out.i_crit_edge
  %205 = phi i32 [ %.pr.i, %outthread-pre-split.i ], [ %177, %if.end23.i.out.i_crit_edge ]
  %206 = zext i32 %205 to i64
  call void @__sanitizer_cov_trace_switch(i64 %206, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %205, label %if.then93.i [
    i32 0, label %out.i.axxia_i2c_xfer_msg.exit_crit_edge
    i32 -6, label %out.i.axxia_i2c_xfer_msg.exit_crit_edge83
    i32 -110, label %out.i.axxia_i2c_xfer_msg.exit_crit_edge84
  ], !prof !150

out.i.axxia_i2c_xfer_msg.exit_crit_edge84:        ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %axxia_i2c_xfer_msg.exit

out.i.axxia_i2c_xfer_msg.exit_crit_edge83:        ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %axxia_i2c_xfer_msg.exit

out.i.axxia_i2c_xfer_msg.exit_crit_edge:          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %axxia_i2c_xfer_msg.exit

if.then93.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @axxia_i2c_init(ptr noundef %1) #8
  br label %axxia_i2c_xfer_msg.exit

axxia_i2c_xfer_msg.exit:                          ; preds = %if.then93.i, %out.i.axxia_i2c_xfer_msg.exit_crit_edge, %out.i.axxia_i2c_xfer_msg.exit_crit_edge83, %out.i.axxia_i2c_xfer_msg.exit_crit_edge84
  %207 = ptrtoint ptr %msg_err to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %msg_err, align 4
  %inc = add nuw nsw i32 %i.077, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %cmp = icmp eq i32 %208, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %num)
  %cmp3 = icmp slt i32 %inc, %num
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  br i1 %or.cond, label %axxia_i2c_xfer_msg.exit.for.body_crit_edge, label %for.end.loopexit

axxia_i2c_xfer_msg.exit.for.body_crit_edge:       ; preds = %axxia_i2c_xfer_msg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.loopexit:                                 ; preds = %axxia_i2c_xfer_msg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %phi.sel = select i1 %cmp, i32 %inc, i32 %208
  br label %cleanup

cleanup:                                          ; preds = %for.end.loopexit, %if.end.cleanup_crit_edge, %axxia_i2c_xfer_seq.exit
  %retval.0 = phi i32 [ %., %axxia_i2c_xfer_seq.exit ], [ 0, %if.end.cleanup_crit_edge ], [ %phi.sel, %for.end.loopexit ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @axxia_i2c_func(ptr nocapture noundef readnone %adap) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 268369931
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axxia_i2c_reg_slave(ptr noundef %slave) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %slave1 = getelementptr inbounds %struct.axxia_i2c_dev, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %slave1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %slave1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %slave, ptr %slave1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 50331648) #8, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  %add.ptr7 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 50331648) #8, !srcloc !95
  %11 = ptrtoint ptr %slave to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %slave, align 8
  %13 = and i16 %12, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool8.not = icmp eq i16 %13, 0
  %spec.select = select i1 %tobool8.not, i32 67108864, i32 201326592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %add.ptr15 = getelementptr i8, ptr %15, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 16777216) #8, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 8
  %add.ptr20 = getelementptr i8, ptr %17, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %spec.select) #8, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 1
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr, align 2
  %conv24 = zext i16 %19 to i32
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv24)
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 8
  %add.ptr26 = getelementptr i8, ptr %22, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %20) #8, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 8
  %add.ptr33 = getelementptr i8, ptr %24, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 1023410176) #8, !srcloc !95
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axxia_i2c_unreg_slave(ptr nocapture noundef readonly %slave) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 16777216) #8, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %add.ptr5 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 16777216) #8, !srcloc !95
  %irq = getelementptr inbounds %struct.axxia_i2c_dev, ptr %3, i32 0, i32 13
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 8
  tail call void @synchronize_irq(i32 noundef %9) #8
  %slave6 = getelementptr inbounds %struct.axxia_i2c_dev, ptr %3, i32 0, i32 12
  %10 = ptrtoint ptr %slave6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %slave6, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_recover_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_generic_scl_recovery(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axxia_i2c_get_scl(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  %5 = lshr i32 %4, 24
  %.lobit = and i32 %5, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @axxia_i2c_set_scl(ptr nocapture noundef readonly %adap, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %and = and i32 %4, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %5 = or i32 %and, 67108864
  %6 = select i1 %tobool.not, i32 %5, i32 %and
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %add.ptr5 = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %6) #8, !srcloc !95
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axxia_i2c_get_sda(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !162
  %5 = lshr i32 %4, 25
  %.lobit = and i32 %5, 1
  ret i32 %.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !74, !76, !77, !78, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__initcall__kmod_i2c_axxia__296_834_axxia_i2c_driver_init6, !1, !"__initcall__kmod_i2c_axxia__296_834_axxia_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-axxia.c", i32 834, i32 1}
!2 = !{ptr @__exitcall_axxia_i2c_driver_exit, !1, !"__exitcall_axxia_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description297, !4, !"__UNIQUE_ID_description297", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-axxia.c", i32 836, i32 1}
!5 = !{ptr @__UNIQUE_ID_author298, !6, !"__UNIQUE_ID_author298", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-axxia.c", i32 837, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-axxia.c", i32 838, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-axxia.c", i32 829, i32 11}
!12 = !{ptr @axxia_i2c_driver, !13, !"axxia_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-axxia.c", i32 825, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-axxia.c", i32 752, i32 43}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-axxia.c", i32 754, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @axxia_i2c_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @axxia_i2c_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/i2c/busses/i2c-axxia.c", i32 762, i32 27}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/busses/i2c-axxia.c", i32 768, i32 3}
!28 = !{ptr @axxia_i2c_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @axxia_i2c_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-axxia.c", i32 774, i32 3}
!32 = !{ptr @axxia_i2c_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @axxia_i2c_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-axxia.c", i32 781, i32 3}
!36 = !{ptr @axxia_i2c_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @axxia_i2c_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @init_completion.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../include/linux/completion.h", i32 87, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/i2c/busses/i2c-axxia.c", i32 186, i32 2}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @axxia_i2c_init.__UNIQUE_ID_ddebug288, !42, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/i2c/busses/i2c-axxia.c", i32 194, i32 4}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @axxia_i2c_init._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @axxia_i2c_init._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/i2c/busses/i2c-axxia.c", i32 379, i32 3}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @axxia_i2c_isr._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @axxia_i2c_isr._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/i2c/busses/i2c-axxia.c", i32 402, i32 3}
!58 = !{ptr @axxia_i2c_isr.__UNIQUE_ID_ddebug295, !57, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/i2c/busses/i2c-axxia.c", i32 343, i32 2}
!61 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @axxia_i2c_slv_isr.__UNIQUE_ID_ddebug294, !60, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/i2c/busses/i2c-axxia.c", i32 320, i32 2}
!65 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @axxia_i2c_slv_fifo_event.__UNIQUE_ID_ddebug293, !64, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!67 = !{ptr @axxia_i2c_algo, !68, !"axxia_i2c_algo", i1 false, i1 false}
!68 = !{!"../drivers/i2c/busses/i2c-axxia.c", i32 721, i32 35}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/i2c/busses/i2c-axxia.c", i32 509, i32 3}
!71 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @axxia_i2c_xfer_seq._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @axxia_i2c_xfer_seq._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/i2c/busses/i2c-axxia.c", i32 584, i32 3}
!76 = !{ptr @axxia_i2c_xfer_msg._entry, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @axxia_i2c_xfer_msg._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @axxia_i2c_recovery_info, !79, !"axxia_i2c_recovery_info", i1 false, i1 false}
!79 = !{!"../drivers/i2c/busses/i2c-axxia.c", i32 660, i32 37}
!80 = !{ptr @axxia_i2c_quirks, !81, !"axxia_i2c_quirks", i1 false, i1 false}
!81 = !{!"../drivers/i2c/busses/i2c-axxia.c", i32 728, i32 40}
!82 = !{ptr @axxia_i2c_of_match, !83, !"axxia_i2c_of_match", i1 false, i1 false}
!83 = !{!"../drivers/i2c/busses/i2c-axxia.c", i32 818, i32 34}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i64 2148743350, i64 2148743355, i64 2148743368, i64 2148743412, i64 2148743446, i64 2148743467}
!94 = !{i64 2155588282}
!95 = !{i64 6885301}
!96 = !{i64 6885719}
!97 = !{i64 2155588951}
!98 = !{i64 2155591073}
!99 = !{i64 1166525, i64 1166552, i64 1166574, i64 1166602}
!100 = !{i64 1166933, i64 1166960, i64 1166993, i64 1167014, i64 1167041, i64 1167067}
!101 = !{i64 2155591477}
!102 = !{i64 2155591882}
!103 = !{i64 2155592286}
!104 = !{i64 2155592712}
!105 = !{i64 2155593185}
!106 = !{i64 2155593650}
!107 = !{i64 2155594217}
!108 = !{i64 2155584144}
!109 = !{i64 2155584374}
!110 = !{i64 2155594762}
!111 = !{i64 2155610326}
!112 = !{i64 2155610981}
!113 = !{i64 2155598561}
!114 = !{i64 2155600473}
!115 = !{!"branch_weights", i32 2000, i32 1}
!116 = !{i64 2155616523}
!117 = !{i64 2155617014}
!118 = !{i64 2155617505}
!119 = !{i64 2155617996}
!120 = !{i8 0, i8 2}
!121 = !{i64 2155618390}
!122 = !{i64 2155605856}
!123 = !{!"auto-init"}
!124 = !{i64 2155608530}
!125 = !{i64 2155609006}
!126 = !{i64 2155609588}
!127 = !{i64 2155595452}
!128 = !{i64 2155597639}
!129 = !{i64 2155597878}
!130 = !{i64 2155601208}
!131 = !{i64 2155604219}
!132 = !{i64 2155604792}
!133 = !{i64 2155605365}
!134 = !{i64 2155618859}
!135 = !{i64 2155619265}
!136 = !{i64 2155620742}
!137 = !{i64 2155621161}
!138 = !{i64 2155621596}
!139 = !{i64 2155585073}
!140 = !{i64 2155585302}
!141 = !{i64 2155619964}
!142 = !{i64 2155622327}
!143 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!144 = !{i64 2155624285}
!145 = !{i64 2155624695}
!146 = !{i64 2155625647}
!147 = !{i64 2155625881}
!148 = !{i64 2155627372}
!149 = !{i64 2155628170}
!150 = !{!"branch_weights", i32 1, i32 8000, i32 2, i32 1}
!151 = !{i64 2155633296}
!152 = !{i64 2155634070}
!153 = !{i64 2155634901}
!154 = !{i64 2155635371}
!155 = !{i64 2155635785}
!156 = !{i64 2155636540}
!157 = !{i64 2155637067}
!158 = !{i64 2155637639}
!159 = !{i64 2155630273}
!160 = !{i64 2155630846}
!161 = !{i64 2155631229}
!162 = !{i64 2155631895}
