; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/it913x.c_pt.bc'
source_filename = "../drivers/media/tuners/it913x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
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
%struct.it913x_platform_data = type { ptr, ptr, i8 }
%struct.it913x_dev = type { ptr, ptr, ptr, i8, i16, i8, i8, i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }

@__initcall__kmod_it913x__304_453_it913x_driver_init6 = internal global ptr @it913x_driver_init, section ".initcall6.init", align 4
@it913x_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @it913x_probe, ptr @it913x_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @it913x_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_it913x_driver_exit = internal global ptr @it913x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description305 = internal constant [51 x i8] c"it913x.description=ITE IT913X silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author306 = internal constant [45 x i8] c"it913x.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [40 x i8] c"it913x.file=drivers/media/tuners/it913x\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [19 x i8] c"it913x.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"it913x\00", [25 x i8] zeroinitializer }, align 32
@it913x_id_table = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"it9133ax-tuner\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"it9133bx-tuner\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@it913x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 391, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kzalloc() failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"it913x_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/media/tuners/it913x.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@it913x_probe._entry_ptr = internal global ptr @it913x_probe._entry, section ".printk_index", align 4
@it913x_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"ITE IT913X\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 174000000, i32 862000000, i32 0, i32 0, i32 0, i32 0 }, ptr null, ptr @it913x_init, ptr @it913x_sleep, ptr null, ptr null, ptr @it913x_set_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AX\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BX\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"??\00", [29 x i8] zeroinitializer }, align 32
@it913x_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 414, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ITE IT913X %s successfully attached\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@it913x_probe._entry_ptr.12 = internal global ptr @it913x_probe._entry.9, section ".printk_index", align 4
@it913x_probe.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 0, i8 103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"chip_ver %u, role %u\0A\00", [42 x i8] zeroinitializer }, align 32
@it913x_probe.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.14, i8 0, i8 104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed %d\0A\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@it913x_init.nv = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0 \18\10\0C\08\06\04\02", [23 x i8] zeroinitializer }, align 32
@it913x_init.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"it913x_init\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"role %u\0A\00", [23 x i8] zeroinitializer }, align 32
@it913x_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 64, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unknown clock identifier %d\0A\00", [35 x i8] zeroinitializer }, align 32
@it913x_init._entry_ptr = internal global ptr @it913x_init._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@it913x_init.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.3, ptr @.str.18, i8 0, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"r_fbc_m_bdry took %u ms, val %u\0A\00", [63 x i8] zeroinitializer }, align 32
@it913x_init.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.3, ptr @.str.19, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fn_min %u\0A\00", [21 x i8] zeroinitializer }, align 32
@it913x_init.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.3, ptr @.str.20, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"p_tsm_init_mode took %u ms, val %u\0A\00", [60 x i8] zeroinitializer }, align 32
@it913x_init.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.3, ptr @.str.14, i8 0, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@it913x_sleep.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.3, ptr @.str.16, i8 0, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"it913x_sleep\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [2 x i8], [30 x i8] } zeroinitializer, align 32
@it913x_sleep.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.3, ptr @.str.23, i8 0, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"role %u, len %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"?\1F?>\00\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\01\00", [30 x i8] zeroinitializer }, align 32
@it913x_sleep.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.3, ptr @.str.14, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@it913x_set_params.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"it913x_set_params\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"role=%u, frequency %u, bandwidth_hz %u\0A\00", [56 x i8] zeroinitializer }, align 32
@it913x_set_params.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.3, ptr @.str.31, i8 0, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"t_cal_freq %u, pre_lo_freq %u\0A\00", [33 x i8] zeroinitializer }, align 32
@it913x_set_params.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.3, ptr @.str.14, i8 0, i8 90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@it913x_remove.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"it913x_remove\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"it913x_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 443, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 445, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"it913x_id_table\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 436, i32 40 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 391, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"it913x_tuner_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 367, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 407, i32 18 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 409, i32 18 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 411, i32 18 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 413, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 415, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 418, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [3 x i8] c"nv\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 33, i32 18 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 36, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 64, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 90, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 97, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 117, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 154, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 158, i32 50 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 171, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 174, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 179, i32 49 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 184, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 189, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 197, i32 49 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 218, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 284, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private constant [33 x i8] c"../drivers/media/tuners/it913x.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 427, i32 2 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__exitcall_it913x_driver_exit, ptr @__initcall__kmod_it913x__304_453_it913x_driver_init6, ptr @it913x_driver_exit, ptr @it913x_init._entry, ptr @it913x_init._entry_ptr, ptr @it913x_probe._entry, ptr @it913x_probe._entry.9, ptr @it913x_probe._entry_ptr, ptr @it913x_probe._entry_ptr.12, ptr @it913x_driver, ptr @.str, ptr @it913x_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @it913x_tuner_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @it913x_init.nv, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it913x_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it913x_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it913x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it913x_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it913x_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it913x_init.nv to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it913x_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @it913x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @it913x_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @it913x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @it913x_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @it913x_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %fe1 = getelementptr inbounds %struct.it913x_platform_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fe1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fe1, align 4
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %4 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %id_entry, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 28) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @it913x_probe.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@it913x_probe, %if.then67)) #6
          to label %cleanup [label %if.then67], !srcloc !106

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pdev, ptr %call7.i.i, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %regmap5 = getelementptr inbounds %struct.it913x_dev, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %regmap5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %regmap5, align 4
  %11 = ptrtoint ptr %fe1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fe1, align 4
  %fe7 = getelementptr inbounds %struct.it913x_dev, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %fe7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %fe7, align 8
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %driver_data, align 4
  %conv = trunc i32 %15 to i8
  %chip_ver = getelementptr inbounds %struct.it913x_dev, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %chip_ver to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %chip_ver, align 4
  %bf.shl = shl i8 %conv, 6
  %bf.clear = and i8 %bf.load, 15
  %bf.set = or i8 %bf.clear, %bf.shl
  %role = getelementptr inbounds %struct.it913x_platform_data, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %role to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load8 = load i8, ptr %role, align 4
  %18 = lshr i8 %bf.load8, 2
  %bf.shl13 = and i8 %18, 48
  %bf.set15 = or i8 %bf.shl13, %bf.set
  store i8 %bf.set15, ptr %chip_ver, align 4
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 1, i32 32
  %20 = call ptr @memcpy(ptr %tuner_ops, ptr @it913x_tuner_ops, i32 220)
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %bf.load17 = load i8, ptr %chip_ver, align 4
  %bf.lshr18 = lshr i8 %bf.load17, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.lshr18)
  %switch.selectcmp = icmp eq i8 %bf.lshr18, 2
  %switch.select = select i1 %switch.selectcmp, ptr @.str.7, ptr @.str.8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.lshr18)
  %switch.selectcmp100 = icmp eq i8 %bf.lshr18, 1
  %switch.select101 = select i1 %switch.selectcmp100, ptr @.str.6, ptr %switch.select
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull %switch.select101) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @it913x_probe.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@it913x_probe, %if.then41)) #6
          to label %cleanup [label %if.then41], !srcloc !106

if.then41:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %chip_ver to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load44 = load i8, ptr %chip_ver, align 4
  %bf.lshr45 = lshr i8 %bf.load44, 6
  %conv46 = zext i8 %bf.lshr45 to i32
  %bf.lshr49 = lshr i8 %bf.load44, 4
  %bf.clear50 = and i8 %bf.lshr49, 3
  %conv51 = zext i8 %bf.clear50 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @it913x_probe.__UNIQUE_ID_ddebug301, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %conv46, i32 noundef %conv51) #6
  br label %cleanup

if.then67:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @it913x_probe.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef -12) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %if.then41, %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then41 ], [ -12, %if.then67 ], [ -12, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @it913x_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %fe1 = getelementptr inbounds %struct.it913x_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fe1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fe1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @it913x_remove.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@it913x_remove, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !106

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @it913x_remove.__UNIQUE_ID_ddebug303, ptr noundef %dev5, ptr noundef nonnull @.str.33) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 1, i32 32
  %4 = call ptr @memset(ptr %tuner_ops, i32 0, i32 220)
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @it913x_init(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  %utmp = alloca i32, align 4
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp) #6
  %4 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %utmp, align 4, !annotation !107
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #6
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %buf, align 1, !annotation !107
  %6 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !107
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @it913x_init.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@it913x_init, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !106

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %role = getelementptr inbounds %struct.it913x_dev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %role to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %role, align 4
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 3
  %conv = zext i8 %bf.clear to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @it913x_init.__UNIQUE_ID_ddebug290, ptr noundef %dev4, ptr noundef nonnull @.str.16, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.it913x_dev, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 8449100, i32 noundef 104) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.do.body167_crit_edge

do.end.do.body167_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body167

if.end8:                                          ; preds = %do.end
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 100000, i32 noundef 2) #6
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call10 = call i32 @regmap_read(ptr noundef %12, i32 noundef 8449158, ptr noundef nonnull %utmp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.do.body167_crit_edge

if.end8.do.body167_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body167

if.end13:                                         ; preds = %if.end8
  %13 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %utmp, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %do.end22 [
    i32 0, label %if.end13.sw.epilog_crit_edge
    i32 1, label %sw.bb15
  ]

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %dev23 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.17, i32 noundef %14) #10
  br label %do.body167

sw.epilog:                                        ; preds = %sw.bb15, %if.end13.sw.epilog_crit_edge
  %.sink255 = phi i8 [ 1, %sw.bb15 ], [ 0, %if.end13.sw.epilog_crit_edge ]
  %.sink254 = phi i16 [ 640, %sw.bb15 ], [ 2000, %if.end13.sw.epilog_crit_edge ]
  %.sink = phi i8 [ 1, %sw.bb15 ], [ 3, %if.end13.sw.epilog_crit_edge ]
  %iqik_m_cal.0 = phi i32 [ 6, %sw.bb15 ], [ 16, %if.end13.sw.epilog_crit_edge ]
  %clk_mode17 = getelementptr inbounds %struct.it913x_dev, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %clk_mode17 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink255, ptr %clk_mode17, align 1
  %xtal18 = getelementptr inbounds %struct.it913x_dev, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %xtal18 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %.sink254, ptr %xtal18, align 2
  %fdiv19 = getelementptr inbounds %struct.it913x_dev, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %fdiv19 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink, ptr %fdiv19, align 4
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call25 = call i32 @regmap_read(ptr noundef %20, i32 noundef 8449283, ptr noundef nonnull %utmp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.else, label %sw.epilog.do.body167_crit_edge

sw.epilog.do.body167_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body167

if.else:                                          ; preds = %sw.epilog
  %21 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %utmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %22)
  %cmp = icmp ult i32 %22, 9
  br i1 %cmp, label %if.then29, label %if.else.if.end32_crit_edge

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [9 x i8], ptr @it913x_init.nv, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 1
  %phi.cast = zext i8 %24 to i32
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.else.if.end32_crit_edge
  %nv_val.0 = phi i32 [ %phi.cast, %if.then29 ], [ 2, %if.else.if.end32_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %25, 5
  br label %while.cond

while.cond:                                       ; preds = %if.end42.while.cond_crit_edge, %if.end32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp34 = icmp sgt i32 %sub, -1
  br i1 %cmp34, label %while.body, label %while.cond.do.body51_crit_edge

while.cond.do.body51_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body51

while.body:                                       ; preds = %while.cond
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call39 = call i32 @regmap_bulk_read(ptr noundef %28, i32 noundef 8449315, ptr noundef nonnull %buf, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %while.body.do.body167_crit_edge

while.body.do.body167_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body167

if.end42:                                         ; preds = %while.body
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %6, align 1
  %conv44 = zext i8 %30 to i32
  %shl = shl nuw nsw i32 %conv44, 8
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %buf, align 1
  %conv46 = zext i8 %32 to i32
  %or = or i32 %shl, %conv46
  %33 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or, ptr %utmp, align 4
  %tobool48.not = icmp eq i32 %or, 0
  br i1 %tobool48.not, label %if.end42.while.cond_crit_edge, label %if.end42.do.body51_crit_edge

if.end42.do.body51_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body51

if.end42.while.cond_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

do.body51:                                        ; preds = %if.end42.do.body51_crit_edge, %while.cond.do.body51_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @it913x_init.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@it913x_init, %if.then63)) #6
          to label %do.end71 [label %if.then63], !srcloc !106

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #8
  %dev64 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %call65 = call i32 @jiffies_to_msecs(i32 noundef %34) #6
  %call66 = call i32 @jiffies_to_msecs(i32 noundef %add) #6
  %sub67.neg = add i32 %call65, 50
  %sub68 = sub i32 %sub67.neg, %call66
  %35 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %utmp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @it913x_init.__UNIQUE_ID_ddebug291, ptr noundef %dev64, ptr noundef nonnull @.str.18, i32 noundef %sub68, i32 noundef %36) #6
  br label %do.end71

do.end71:                                         ; preds = %if.then63, %do.body51
  %xtal72 = getelementptr inbounds %struct.it913x_dev, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %xtal72 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %xtal72, align 2
  %conv73 = zext i16 %38 to i32
  %39 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %utmp, align 4
  %mul = mul i32 %40, %conv73
  %fn_min = getelementptr inbounds %struct.it913x_dev, ptr %1, i32 0, i32 7
  %fdiv74 = getelementptr inbounds %struct.it913x_dev, ptr %1, i32 0, i32 5
  %41 = ptrtoint ptr %fdiv74 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %fdiv74, align 4
  %conv75 = zext i8 %42 to i32
  %mul77 = mul nuw nsw i32 %nv_val.0, %conv75
  %div = udiv i32 %mul, %mul77
  %mul80 = mul i32 %div, 1000
  %43 = ptrtoint ptr %fn_min to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mul80, ptr %fn_min, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @it913x_init.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@it913x_init, %if.then93)) #6
          to label %do.end98 [label %if.then93], !srcloc !106

if.then93:                                        ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #8
  %dev94 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %44 = ptrtoint ptr %fn_min to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fn_min, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @it913x_init.__UNIQUE_ID_ddebug292, ptr noundef %dev94, ptr noundef nonnull @.str.19, i32 noundef %45) #6
  br label %do.end98

do.end98:                                         ; preds = %if.then93, %do.end71
  %chip_ver = getelementptr inbounds %struct.it913x_dev, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %chip_ver to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load99 = load i8, ptr %chip_ver, align 4
  %bf.lshr100.mask = and i8 %bf.load99, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr100.mask)
  %cmp102 = icmp eq i8 %bf.lshr100.mask, 64
  br i1 %cmp102, label %if.then104, label %if.else144

if.then104:                                       ; preds = %do.end98
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %add106 = add i32 %47, 5
  br label %while.cond107

while.cond107:                                    ; preds = %if.end118.while.cond107_crit_edge, %if.then104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %sub108 = sub i32 %add106, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub108)
  %cmp109 = icmp sgt i32 %sub108, -1
  br i1 %cmp109, label %while.body113, label %while.cond107.do.body123_crit_edge

while.cond107.do.body123_crit_edge:               ; preds = %while.cond107
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body123

while.body113:                                    ; preds = %while.cond107
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  %call115 = call i32 @regmap_read(ptr noundef %50, i32 noundef 8449154, ptr noundef nonnull %utmp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end118, label %while.body113.do.body167_crit_edge

while.body113.do.body167_crit_edge:               ; preds = %while.body113
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body167

if.end118:                                        ; preds = %while.body113
  %51 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %utmp, align 4
  %tobool119.not = icmp eq i32 %52, 0
  br i1 %tobool119.not, label %if.end118.while.cond107_crit_edge, label %if.end118.do.body123_crit_edge

if.end118.do.body123_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body123

if.end118.while.cond107_crit_edge:                ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond107

do.body123:                                       ; preds = %if.end118.do.body123_crit_edge, %while.cond107.do.body123_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @it913x_init.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@it913x_init, %if.then135)) #6
          to label %if.end145 [label %if.then135], !srcloc !106

if.then135:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #8
  %dev136 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %call137 = call i32 @jiffies_to_msecs(i32 noundef %53) #6
  %call138 = call i32 @jiffies_to_msecs(i32 noundef %add106) #6
  %sub139.neg = add i32 %call137, 50
  %sub140 = sub i32 %sub139.neg, %call138
  %54 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %utmp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @it913x_init.__UNIQUE_ID_ddebug293, ptr noundef %dev136, ptr noundef nonnull @.str.20, i32 noundef %sub140, i32 noundef %55) #6
  br label %if.end145

if.else144:                                       ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 50) #6
  br label %if.end145

if.end145:                                        ; preds = %if.else144, %if.then135, %do.body123
  %56 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap, align 4
  %call148 = call i32 @regmap_write(ptr noundef %57, i32 noundef 8449409, i32 noundef %iqik_m_cal.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end151, label %if.end145.do.body167_crit_edge

if.end145.do.body167_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body167

if.end151:                                        ; preds = %if.end145
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap, align 4
  %call153 = call i32 @regmap_write(ptr noundef %59, i32 noundef 8449111, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.end156, label %if.end151.do.body167_crit_edge

if.end151.do.body167_crit_edge:                   ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body167

if.end156:                                        ; preds = %if.end151
  %60 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap, align 4
  %call158 = call i32 @regmap_write(ptr noundef %61, i32 noundef 8449112, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.end161, label %if.end156.do.body167_crit_edge

if.end156.do.body167_crit_edge:                   ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body167

if.end161:                                        ; preds = %if.end156
  %62 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap, align 4
  %call163 = call i32 @regmap_write(ptr noundef %63, i32 noundef 8449088, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.end166, label %if.end161.do.body167_crit_edge

if.end161.do.body167_crit_edge:                   ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body167

if.end166:                                        ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #8
  %active = getelementptr inbounds %struct.it913x_dev, ptr %1, i32 0, i32 8
  %64 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %active, align 4
  br label %cleanup

do.body167:                                       ; preds = %if.end161.do.body167_crit_edge, %if.end156.do.body167_crit_edge, %if.end151.do.body167_crit_edge, %if.end145.do.body167_crit_edge, %while.body113.do.body167_crit_edge, %while.body.do.body167_crit_edge, %sw.epilog.do.body167_crit_edge, %do.end22, %if.end8.do.body167_crit_edge, %do.end.do.body167_crit_edge
  %ret.0 = phi i32 [ %call5, %do.end.do.body167_crit_edge ], [ %call10, %if.end8.do.body167_crit_edge ], [ -22, %do.end22 ], [ %call25, %sw.epilog.do.body167_crit_edge ], [ %call148, %if.end145.do.body167_crit_edge ], [ %call153, %if.end151.do.body167_crit_edge ], [ %call158, %if.end156.do.body167_crit_edge ], [ %call163, %if.end161.do.body167_crit_edge ], [ %call115, %while.body113.do.body167_crit_edge ], [ %call39, %while.body.do.body167_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @it913x_init.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@it913x_init, %if.then179)) #6
          to label %cleanup [label %if.then179], !srcloc !106

if.then179:                                       ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #8
  %dev180 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @it913x_init.__UNIQUE_ID_ddebug294, ptr noundef %dev180, ptr noundef nonnull @.str.14, i32 noundef %ret.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then179, %do.body167, %if.end166
  %retval.0 = phi i32 [ 0, %if.end166 ], [ %ret.0, %if.then179 ], [ %ret.0, %do.body167 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @it913x_sleep(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @it913x_sleep.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@it913x_sleep, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !106

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %role = getelementptr inbounds %struct.it913x_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %role to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %role, align 4
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 3
  %conv = zext i8 %bf.clear to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @it913x_sleep.__UNIQUE_ID_ddebug295, ptr noundef %dev4, ptr noundef nonnull @.str.16, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %active = getelementptr inbounds %struct.it913x_dev, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %active, align 4
  %regmap = getelementptr inbounds %struct.it913x_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call5 = tail call i32 @regmap_bulk_write(ptr noundef %7, i32 noundef 8449088, ptr noundef nonnull @.str.22, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.do.body69_crit_edge

do.end.do.body69_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body69

if.end8:                                          ; preds = %do.end
  %role9 = getelementptr inbounds %struct.it913x_dev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %role9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load10 = load i8, ptr %role9, align 4
  %9 = and i8 %bf.load10, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %9)
  %cmp = icmp eq i8 %9, 16
  %. = select i1 %cmp, i32 4, i32 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @it913x_sleep.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@it913x_sleep, %if.then29)) #6
          to label %do.end38 [label %if.then29], !srcloc !106

if.then29:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %dev30 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %role9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load32 = load i8, ptr %role9, align 4
  %bf.lshr33 = lshr i8 %bf.load32, 4
  %bf.clear34 = and i8 %bf.lshr33, 3
  %conv35 = zext i8 %bf.clear34 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @it913x_sleep.__UNIQUE_ID_ddebug296, ptr noundef %dev30, ptr noundef nonnull @.str.23, i32 noundef %conv35, i32 noundef %.) #6
  br label %do.end38

do.end38:                                         ; preds = %if.then29, %if.end8
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call40 = tail call i32 @regmap_bulk_write(ptr noundef %12, i32 noundef 8449026, ptr noundef nonnull @.str.24, i32 noundef %.) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %do.end38.do.body69_crit_edge

do.end38.do.body69_crit_edge:                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body69

if.end43:                                         ; preds = %do.end38
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call45 = tail call i32 @regmap_bulk_write(ptr noundef %14, i32 noundef 8449042, ptr noundef nonnull @.str.25, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end43.do.body69_crit_edge

if.end43.do.body69_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body69

if.end48:                                         ; preds = %if.end43
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call50 = tail call i32 @regmap_bulk_write(ptr noundef %16, i32 noundef 8449047, ptr noundef nonnull @.str.26, i32 noundef 9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end48.do.body69_crit_edge

if.end48.do.body69_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body69

if.end53:                                         ; preds = %if.end48
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call55 = tail call i32 @regmap_bulk_write(ptr noundef %18, i32 noundef 8449058, ptr noundef nonnull @.str.27, i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end53.do.body69_crit_edge

if.end53.do.body69_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body69

if.end58:                                         ; preds = %if.end53
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call60 = tail call i32 @regmap_bulk_write(ptr noundef %20, i32 noundef 8449056, ptr noundef nonnull @.str.22, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end58.do.body69_crit_edge

if.end58.do.body69_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body69

if.end63:                                         ; preds = %if.end58
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call65 = tail call i32 @regmap_bulk_write(ptr noundef %22, i32 noundef 8449087, ptr noundef nonnull @.str.28, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end63.cleanup_crit_edge, label %if.end63.do.body69_crit_edge

if.end63.do.body69_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body69

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body69:                                        ; preds = %if.end63.do.body69_crit_edge, %if.end58.do.body69_crit_edge, %if.end53.do.body69_crit_edge, %if.end48.do.body69_crit_edge, %if.end43.do.body69_crit_edge, %do.end38.do.body69_crit_edge, %do.end.do.body69_crit_edge
  %ret.0 = phi i32 [ %call5, %do.end.do.body69_crit_edge ], [ %call40, %do.end38.do.body69_crit_edge ], [ %call45, %if.end43.do.body69_crit_edge ], [ %call50, %if.end48.do.body69_crit_edge ], [ %call55, %if.end53.do.body69_crit_edge ], [ %call60, %if.end58.do.body69_crit_edge ], [ %call65, %if.end63.do.body69_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @it913x_sleep.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@it913x_sleep, %if.then81)) #6
          to label %cleanup [label %if.then81], !srcloc !106

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #8
  %dev82 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @it913x_sleep.__UNIQUE_ID_ddebug297, ptr noundef %dev82, ptr noundef nonnull @.str.14, i32 noundef %ret.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then81, %do.body69, %if.end63.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end63.cleanup_crit_edge ], [ %ret.0, %if.then81 ], [ %ret.0, %do.body69 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @it913x_set_params(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  %utmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp) #6
  %4 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %utmp, align 4, !annotation !107
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @it913x_set_params.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@it913x_set_params, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !106

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %role = getelementptr inbounds %struct.it913x_dev, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %role to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %role, align 4
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 3
  %conv = zext i8 %bf.clear to i32
  %6 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dtv_property_cache, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %8 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bandwidth_hz, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @it913x_set_params.__UNIQUE_ID_ddebug298, ptr noundef %dev4, ptr noundef nonnull @.str.30, i32 noundef %conv, i32 noundef %7, i32 noundef %9) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %active = getelementptr inbounds %struct.it913x_dev, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %active, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not = icmp eq i8 %11, 0
  br i1 %tobool5.not, label %do.end.do.body256_crit_edge, label %if.end7

do.end.do.body256_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body256

if.end7:                                          ; preds = %do.end
  %12 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 74000001, i32 %13)
  %cmp = icmp ult i32 %13, 74000001
  br i1 %cmp, label %if.end7.if.end53_crit_edge, label %if.else

if.end7.if.end53_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 111000001, i32 %13)
  %cmp12 = icmp ult i32 %13, 111000001
  br i1 %cmp12, label %if.else.if.end53_crit_edge, label %if.else15

if.else.if.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 148000001, i32 %13)
  %cmp17 = icmp ult i32 %13, 148000001
  br i1 %cmp17, label %if.else15.if.end53_crit_edge, label %if.else20

if.else15.if.end53_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.else20:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_const_cmp4(i32 222000001, i32 %13)
  %cmp22 = icmp ult i32 %13, 222000001
  br i1 %cmp22, label %if.else20.if.end53_crit_edge, label %if.else25

if.else20.if.end53_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.else25:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_const_cmp4(i32 296000001, i32 %13)
  %cmp27 = icmp ult i32 %13, 296000001
  br i1 %cmp27, label %if.else25.if.end53_crit_edge, label %if.else30

if.else25.if.end53_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.else30:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_const_cmp4(i32 445000001, i32 %13)
  %cmp32 = icmp ult i32 %13, 445000001
  br i1 %cmp32, label %if.else30.if.end53_crit_edge, label %if.else35

if.else30.if.end53_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.else35:                                        ; preds = %if.else30
  %fn_min = getelementptr inbounds %struct.it913x_dev, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %fn_min to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fn_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp37.not = icmp ugt i32 %13, %15
  br i1 %cmp37.not, label %if.else40, label %if.else35.if.end53_crit_edge

if.else35.if.end53_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.else40:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 950000001, i32 %13)
  %cmp42 = icmp ult i32 %13, 950000001
  %. = select i1 %cmp42, i32 4, i32 2
  %.355 = select i1 %cmp42, i32 57344, i32 0
  br label %if.end53

if.end53:                                         ; preds = %if.else40, %if.else35.if.end53_crit_edge, %if.else30.if.end53_crit_edge, %if.else25.if.end53_crit_edge, %if.else20.if.end53_crit_edge, %if.else15.if.end53_crit_edge, %if.else.if.end53_crit_edge, %if.end7.if.end53_crit_edge
  %n_div.0 = phi i32 [ 48, %if.end7.if.end53_crit_edge ], [ 32, %if.else.if.end53_crit_edge ], [ 24, %if.else15.if.end53_crit_edge ], [ 16, %if.else20.if.end53_crit_edge ], [ 12, %if.else25.if.end53_crit_edge ], [ 8, %if.else30.if.end53_crit_edge ], [ 6, %if.else35.if.end53_crit_edge ], [ %., %if.else40 ]
  %n.0 = phi i32 [ 0, %if.end7.if.end53_crit_edge ], [ 8192, %if.else.if.end53_crit_edge ], [ 16384, %if.else15.if.end53_crit_edge ], [ 24576, %if.else20.if.end53_crit_edge ], [ 32768, %if.else25.if.end53_crit_edge ], [ 40960, %if.else30.if.end53_crit_edge ], [ 49152, %if.else35.if.end53_crit_edge ], [ %.355, %if.else40 ]
  %regmap = getelementptr inbounds %struct.it913x_dev, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call54 = call i32 @regmap_read(ptr noundef %17, i32 noundef 8449409, ptr noundef nonnull %utmp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end53.do.body256_crit_edge

if.end53.do.body256_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body256

if.end57:                                         ; preds = %if.end53
  %18 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %utmp, align 4
  %mul = mul i32 %19, %n_div.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %19)
  %cmp60 = icmp ult i32 %19, 32
  br i1 %cmp60, label %if.then62, label %if.else75

if.then62:                                        ; preds = %if.end57
  %clk_mode = getelementptr inbounds %struct.it913x_dev, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %clk_mode to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %clk_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp64 = icmp eq i8 %21, 0
  br i1 %cmp64, label %if.then66, label %if.else70

if.then66:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  %conv67 = and i32 %mul, 65534
  %mul68 = mul nuw nsw i32 %conv67, 9
  %22 = lshr i32 %mul68, 5
  %conv69 = trunc i32 %22 to i16
  br label %if.end93

if.else70:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  %23 = trunc i32 %mul to i16
  %24 = lshr exact i16 %23, 1
  br label %if.end93

if.else75:                                        ; preds = %if.end57
  %25 = trunc i32 %mul to i16
  %conv77 = sub i16 64, %25
  %clk_mode78 = getelementptr inbounds %struct.it913x_dev, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %clk_mode78 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %clk_mode78, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp80 = icmp eq i8 %27, 0
  br i1 %cmp80, label %if.then82, label %if.else87

if.then82:                                        ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #8
  %conv83 = zext i16 %conv77 to i32
  %mul84 = mul nuw nsw i32 %conv83, 9
  %28 = lshr i32 %mul84, 5
  %29 = trunc i32 %28 to i16
  %conv86 = xor i16 %29, -1
  br label %if.end93

if.else87:                                        ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #8
  %30 = lshr exact i16 %conv77, 1
  %neg90 = xor i16 %30, -1
  br label %if.end93

if.end93:                                         ; preds = %if.else87, %if.then82, %if.else70, %if.then66
  %iqik_m_cal.0 = phi i16 [ %conv69, %if.then66 ], [ %24, %if.else70 ], [ %conv86, %if.then82 ], [ %neg90, %if.else87 ]
  %31 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dtv_property_cache, align 4
  %div = udiv i32 %32, 1000
  %mul96 = mul nuw nsw i32 %div, %n_div.0
  %fdiv = getelementptr inbounds %struct.it913x_dev, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %fdiv to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %fdiv, align 4
  %conv97 = zext i8 %34 to i32
  %mul98 = mul i32 %mul96, %conv97
  %xtal = getelementptr inbounds %struct.it913x_dev, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %xtal to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %xtal, align 2
  %conv99 = zext i16 %36 to i32
  %div100 = udiv i32 %mul98, %conv99
  %mul103 = mul i32 %div100, %conv99
  %37 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %mul103, ptr %utmp, align 4
  %sub104 = sub i32 %mul98, %mul103
  %38 = lshr i16 %36, 1
  %39 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub104, i32 %39)
  %cmp108.not = icmp uge i32 %sub104, %39
  %inc = zext i1 %cmp108.not to i32
  %spec.select = add i32 %div100, %n.0
  %add = add i32 %spec.select, %inc
  %conv113 = zext i16 %iqik_m_cal.0 to i32
  %add114 = add i32 %add, %conv113
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @it913x_set_params.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@it913x_set_params, %if.then127)) #6
          to label %do.end131 [label %if.then127], !srcloc !106

if.then127:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  %dev128 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @it913x_set_params.__UNIQUE_ID_ddebug299, ptr noundef %dev128, ptr noundef nonnull @.str.31, i32 noundef %add114, i32 noundef %add) #6
  br label %do.end131

do.end131:                                        ; preds = %if.then127, %if.end93
  %40 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 440000001, i32 %41)
  %cmp133 = icmp ult i32 %41, 440000001
  br i1 %cmp133, label %do.end131.if.end191_crit_edge, label %if.else136

do.end131.if.end191_crit_edge:                    ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end191

if.else136:                                       ; preds = %do.end131
  call void @__sanitizer_cov_trace_const_cmp4(i32 484000001, i32 %41)
  %cmp138 = icmp ult i32 %41, 484000001
  br i1 %cmp138, label %if.else136.if.end191_crit_edge, label %if.else141

if.else136.if.end191_crit_edge:                   ; preds = %if.else136
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end191

if.else141:                                       ; preds = %if.else136
  call void @__sanitizer_cov_trace_const_cmp4(i32 533000001, i32 %41)
  %cmp143 = icmp ult i32 %41, 533000001
  br i1 %cmp143, label %if.else141.if.end191_crit_edge, label %if.else146

if.else141.if.end191_crit_edge:                   ; preds = %if.else141
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end191

if.else146:                                       ; preds = %if.else141
  call void @__sanitizer_cov_trace_const_cmp4(i32 587000001, i32 %41)
  %cmp148 = icmp ult i32 %41, 587000001
  br i1 %cmp148, label %if.else146.if.end191_crit_edge, label %if.else151

if.else146.if.end191_crit_edge:                   ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end191

if.else151:                                       ; preds = %if.else146
  call void @__sanitizer_cov_trace_const_cmp4(i32 645000001, i32 %41)
  %cmp153 = icmp ult i32 %41, 645000001
  br i1 %cmp153, label %if.else151.if.end191_crit_edge, label %if.else156

if.else151.if.end191_crit_edge:                   ; preds = %if.else151
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end191

if.else156:                                       ; preds = %if.else151
  call void @__sanitizer_cov_trace_const_cmp4(i32 710000001, i32 %41)
  %cmp158 = icmp ult i32 %41, 710000001
  br i1 %cmp158, label %if.else156.if.end191_crit_edge, label %if.else161

if.else156.if.end191_crit_edge:                   ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end191

if.else161:                                       ; preds = %if.else156
  call void @__sanitizer_cov_trace_const_cmp4(i32 782000001, i32 %41)
  %cmp163 = icmp ult i32 %41, 782000001
  br i1 %cmp163, label %if.else161.if.end191_crit_edge, label %if.else166

if.else161.if.end191_crit_edge:                   ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end191

if.else166:                                       ; preds = %if.else161
  call void @__sanitizer_cov_trace_const_cmp4(i32 860000001, i32 %41)
  %cmp168 = icmp ult i32 %41, 860000001
  br i1 %cmp168, label %if.else166.if.end191_crit_edge, label %if.else171

if.else166.if.end191_crit_edge:                   ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end191

if.else171:                                       ; preds = %if.else166
  call void @__sanitizer_cov_trace_const_cmp4(i32 1492000001, i32 %41)
  %cmp173 = icmp ult i32 %41, 1492000001
  br i1 %cmp173, label %if.else171.if.end191_crit_edge, label %if.else176

if.else171.if.end191_crit_edge:                   ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end191

if.else176:                                       ; preds = %if.else171
  call void @__sanitizer_cov_trace_const_cmp4(i32 1685000001, i32 %41)
  %cmp178 = icmp ult i32 %41, 1685000001
  br i1 %cmp178, label %if.else176.if.end191_crit_edge, label %if.else176.do.body256_crit_edge

if.else176.do.body256_crit_edge:                  ; preds = %if.else176
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body256

if.else176.if.end191_crit_edge:                   ; preds = %if.else176
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end191

if.end191:                                        ; preds = %if.else176.if.end191_crit_edge, %if.else171.if.end191_crit_edge, %if.else166.if.end191_crit_edge, %if.else161.if.end191_crit_edge, %if.else156.if.end191_crit_edge, %if.else151.if.end191_crit_edge, %if.else146.if.end191_crit_edge, %if.else141.if.end191_crit_edge, %if.else136.if.end191_crit_edge, %do.end131.if.end191_crit_edge
  %l_band.0 = phi i32 [ 160, %do.end131.if.end191_crit_edge ], [ 168, %if.else136.if.end191_crit_edge ], [ 168, %if.else141.if.end191_crit_edge ], [ 168, %if.else146.if.end191_crit_edge ], [ 168, %if.else151.if.end191_crit_edge ], [ 168, %if.else156.if.end191_crit_edge ], [ 168, %if.else161.if.end191_crit_edge ], [ 168, %if.else166.if.end191_crit_edge ], [ 168, %if.else171.if.end191_crit_edge ], [ 168, %if.else176.if.end191_crit_edge ]
  %lna_band.0 = phi i32 [ 0, %do.end131.if.end191_crit_edge ], [ 1, %if.else136.if.end191_crit_edge ], [ 2, %if.else141.if.end191_crit_edge ], [ 3, %if.else146.if.end191_crit_edge ], [ 4, %if.else151.if.end191_crit_edge ], [ 5, %if.else156.if.end191_crit_edge ], [ 6, %if.else161.if.end191_crit_edge ], [ 7, %if.else166.if.end191_crit_edge ], [ 0, %if.else171.if.end191_crit_edge ], [ 1, %if.else176.if.end191_crit_edge ]
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %call194 = call i32 @regmap_write(ptr noundef %43, i32 noundef 8449542, i32 noundef %lna_band.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %if.end197, label %if.end191.do.body256_crit_edge

if.end191.do.body256_crit_edge:                   ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body256

if.end197:                                        ; preds = %if.end191
  %bandwidth_hz198 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %44 = ptrtoint ptr %bandwidth_hz198 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bandwidth_hz198, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000001, i32 %45)
  %cmp199 = icmp ult i32 %45, 5000001
  br i1 %cmp199, label %if.end197.if.end215_crit_edge, label %if.else202

if.end197.if.end215_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end215

if.else202:                                       ; preds = %if.end197
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000001, i32 %45)
  %cmp204 = icmp ult i32 %45, 6000001
  br i1 %cmp204, label %if.else202.if.end215_crit_edge, label %if.else207

if.else202.if.end215_crit_edge:                   ; preds = %if.else202
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end215

if.else207:                                       ; preds = %if.else202
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000001, i32 %45)
  %cmp209 = icmp ult i32 %45, 7000001
  %.356 = select i1 %cmp209, i32 4, i32 6
  br label %if.end215

if.end215:                                        ; preds = %if.else207, %if.else202.if.end215_crit_edge, %if.end197.if.end215_crit_edge
  %u8tmp.0 = phi i32 [ 0, %if.end197.if.end215_crit_edge ], [ 2, %if.else202.if.end215_crit_edge ], [ %.356, %if.else207 ]
  %46 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap, align 4
  %call218 = call i32 @regmap_write(ptr noundef %47, i32 noundef 8449110, i32 noundef %u8tmp.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %if.end221, label %if.end215.do.body256_crit_edge

if.end215.do.body256_crit_edge:                   ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body256

if.end221:                                        ; preds = %if.end215
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %call225 = call i32 @regmap_write(ptr noundef %49, i32 noundef 8449100, i32 noundef %l_band.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225)
  %tobool226.not = icmp eq i32 %call225, 0
  br i1 %tobool226.not, label %if.end228, label %if.end221.do.body256_crit_edge

if.end221.do.body256_crit_edge:                   ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body256

if.end228:                                        ; preds = %if.end221
  %50 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap, align 4
  %and = and i32 %add114, 255
  %call231 = call i32 @regmap_write(ptr noundef %51, i32 noundef 8449101, i32 noundef %and) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %tobool232.not = icmp eq i32 %call231, 0
  br i1 %tobool232.not, label %if.end234, label %if.end228.do.body256_crit_edge

if.end228.do.body256_crit_edge:                   ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body256

if.end234:                                        ; preds = %if.end228
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap, align 4
  %shr236 = lshr i32 %add114, 8
  %and237 = and i32 %shr236, 255
  %call238 = call i32 @regmap_write(ptr noundef %53, i32 noundef 8449102, i32 noundef %and237) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %if.end241, label %if.end234.do.body256_crit_edge

if.end234.do.body256_crit_edge:                   ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body256

if.end241:                                        ; preds = %if.end234
  %54 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap, align 4
  %and244 = and i32 %add, 255
  %call245 = call i32 @regmap_write(ptr noundef %55, i32 noundef 8388894, i32 noundef %and244) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245)
  %tobool246.not = icmp eq i32 %call245, 0
  br i1 %tobool246.not, label %if.end248, label %if.end241.do.body256_crit_edge

if.end241.do.body256_crit_edge:                   ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body256

if.end248:                                        ; preds = %if.end241
  %56 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap, align 4
  %shr250 = lshr i32 %add, 8
  %and251 = and i32 %shr250, 255
  %call252 = call i32 @regmap_write(ptr noundef %57, i32 noundef 8388895, i32 noundef %and251) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call252)
  %tobool253.not = icmp eq i32 %call252, 0
  br i1 %tobool253.not, label %if.end248.cleanup_crit_edge, label %if.end248.do.body256_crit_edge

if.end248.do.body256_crit_edge:                   ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body256

if.end248.cleanup_crit_edge:                      ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body256:                                       ; preds = %if.end248.do.body256_crit_edge, %if.end241.do.body256_crit_edge, %if.end234.do.body256_crit_edge, %if.end228.do.body256_crit_edge, %if.end221.do.body256_crit_edge, %if.end215.do.body256_crit_edge, %if.end191.do.body256_crit_edge, %if.else176.do.body256_crit_edge, %if.end53.do.body256_crit_edge, %do.end.do.body256_crit_edge
  %ret.0 = phi i32 [ %call54, %if.end53.do.body256_crit_edge ], [ %call194, %if.end191.do.body256_crit_edge ], [ %call218, %if.end215.do.body256_crit_edge ], [ %call225, %if.end221.do.body256_crit_edge ], [ %call231, %if.end228.do.body256_crit_edge ], [ %call238, %if.end234.do.body256_crit_edge ], [ %call245, %if.end241.do.body256_crit_edge ], [ %call252, %if.end248.do.body256_crit_edge ], [ -22, %do.end.do.body256_crit_edge ], [ -22, %if.else176.do.body256_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @it913x_set_params.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@it913x_set_params, %if.then268)) #6
          to label %cleanup [label %if.then268], !srcloc !106

if.then268:                                       ; preds = %do.body256
  call void @__sanitizer_cov_trace_pc() #8
  %dev269 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @it913x_set_params.__UNIQUE_ID_ddebug300, ptr noundef %dev269, ptr noundef nonnull @.str.14, i32 noundef %ret.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then268, %do.body256, %if.end248.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end248.cleanup_crit_edge ], [ %ret.0, %if.then268 ], [ %ret.0, %do.body256 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !31, !32, !33, !35, !36, !38, !39, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57, !59, !60, !62, !64, !65, !67, !69, !70, !72, !74, !76, !78, !80, !82, !84, !85, !86, !88, !89, !91, !93, !94, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__initcall__kmod_it913x__304_453_it913x_driver_init6, !1, !"__initcall__kmod_it913x__304_453_it913x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/it913x.c", i32 453, i32 1}
!2 = !{ptr @__exitcall_it913x_driver_exit, !1, !"__exitcall_it913x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description305, !4, !"__UNIQUE_ID_description305", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/it913x.c", i32 455, i32 1}
!5 = !{ptr @__UNIQUE_ID_author306, !6, !"__UNIQUE_ID_author306", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/it913x.c", i32 456, i32 1}
!7 = !{ptr @__UNIQUE_ID_file307, !8, !"__UNIQUE_ID_file307", i1 false, i1 false}
!8 = !{!"../drivers/media/tuners/it913x.c", i32 457, i32 1}
!9 = !{ptr @__UNIQUE_ID_license308, !8, !"__UNIQUE_ID_license308", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/tuners/it913x.c", i32 445, i32 11}
!12 = !{ptr @it913x_driver, !13, !"it913x_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/tuners/it913x.c", i32 443, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/tuners/it913x.c", i32 391, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @it913x_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @it913x_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/tuners/it913x.c", i32 407, i32 18}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/tuners/it913x.c", i32 409, i32 18}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/tuners/it913x.c", i32 411, i32 18}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/tuners/it913x.c", i32 413, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @it913x_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @it913x_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/tuners/it913x.c", i32 415, i32 2}
!35 = !{ptr @it913x_probe.__UNIQUE_ID_ddebug301, !34, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/tuners/it913x.c", i32 418, i32 2}
!38 = !{ptr @it913x_probe.__UNIQUE_ID_ddebug302, !37, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!39 = !{ptr @it913x_tuner_ops, !40, !"it913x_tuner_ops", i1 false, i1 false}
!40 = !{!"../drivers/media/tuners/it913x.c", i32 367, i32 35}
!41 = !{ptr @it913x_init.nv, !42, !"nv", i1 false, i1 false}
!42 = !{!"../drivers/media/tuners/it913x.c", i32 33, i32 18}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/tuners/it913x.c", i32 36, i32 2}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @it913x_init.__UNIQUE_ID_ddebug290, !44, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/tuners/it913x.c", i32 64, i32 3}
!49 = !{ptr @it913x_init._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @it913x_init._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/tuners/it913x.c", i32 90, i32 2}
!53 = !{ptr @it913x_init.__UNIQUE_ID_ddebug291, !52, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/tuners/it913x.c", i32 97, i32 2}
!56 = !{ptr @it913x_init.__UNIQUE_ID_ddebug292, !55, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/tuners/it913x.c", i32 117, i32 3}
!59 = !{ptr @it913x_init.__UNIQUE_ID_ddebug293, !58, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!60 = !{ptr @it913x_init.__UNIQUE_ID_ddebug294, !61, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!61 = !{!"../drivers/media/tuners/it913x.c", i32 144, i32 2}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/tuners/it913x.c", i32 154, i32 2}
!64 = !{ptr @it913x_sleep.__UNIQUE_ID_ddebug295, !63, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/tuners/it913x.c", i32 158, i32 50}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/tuners/it913x.c", i32 171, i32 2}
!69 = !{ptr @it913x_sleep.__UNIQUE_ID_ddebug296, !68, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/tuners/it913x.c", i32 174, i32 4}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/tuners/it913x.c", i32 179, i32 49}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/tuners/it913x.c", i32 184, i32 4}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/tuners/it913x.c", i32 189, i32 4}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/tuners/it913x.c", i32 197, i32 49}
!80 = !{ptr @it913x_sleep.__UNIQUE_ID_ddebug297, !81, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!81 = !{!"../drivers/media/tuners/it913x.c", i32 203, i32 2}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/tuners/it913x.c", i32 218, i32 2}
!84 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @it913x_set_params.__UNIQUE_ID_ddebug298, !83, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/tuners/it913x.c", i32 284, i32 2}
!88 = !{ptr @it913x_set_params.__UNIQUE_ID_ddebug299, !87, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!89 = !{ptr @it913x_set_params.__UNIQUE_ID_ddebug300, !90, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!90 = !{!"../drivers/media/tuners/it913x.c", i32 363, i32 2}
!91 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/tuners/it913x.c", i32 427, i32 2}
!93 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @it913x_remove.__UNIQUE_ID_ddebug303, !92, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!95 = !{ptr @it913x_id_table, !96, !"it913x_id_table", i1 false, i1 false}
!96 = !{!"../drivers/media/tuners/it913x.c", i32 436, i32 40}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i64 2148272700, i64 2148272705, i64 2148272718, i64 2148272762, i64 2148272796, i64 2148272817}
!107 = !{!"auto-init"}
!108 = !{i8 0, i8 2}
