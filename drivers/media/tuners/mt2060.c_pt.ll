; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/mt2060.c_pt.bc'
source_filename = "../drivers/media/tuners/mt2060.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mt2060_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_mt2060_attach\09\09\09\09"
module asm "\09.long\09__crc_mt2060_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt2060_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22mt2060_attach\22\09\09\09\09\09"
module asm "__kstrtabns_mt2060_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.mt2060_priv = type { ptr, ptr, ptr, %struct.mt2060_config, i8, i32, i16, i8, i8 }
%struct.mt2060_config = type { i8, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.mt2060_platform_data = type { i8, i16, i8, ptr }

@__param_str_debug = internal constant [13 x i8] c"mt2060.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [26 x i8] c"mt2060.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [55 x i8] c"mt2060.parm=debug:Turn on/off debugging (default:off).\00", section ".modinfo", align 1
@mt2060_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016MT2060: successfully identified (IF1 = %d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt2060_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/media/tuners/mt2060.c\00", [34 x i8] zeroinitializer }, align 32
@mt2060_attach._entry_ptr = internal global ptr @mt2060_attach._entry, section ".printk_index", align 4
@mt2060_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Microtune MT2060\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 48000000, i32 860000000, i32 50000, i32 0, i32 0, i32 0 }, ptr @mt2060_release, ptr @mt2060_init, ptr @mt2060_sleep, ptr null, ptr null, ptr @mt2060_set_params, ptr null, ptr null, ptr @mt2060_get_frequency, ptr null, ptr @mt2060_get_if_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_mt2060_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt2060_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_mt2060_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt2060_attach to i32), ptr @__kstrtab_mt2060_attach, ptr @__kstrtabns_mt2060_attach }, section "___ksymtab+mt2060_attach", align 4
@__initcall__kmod_mt2060__298_535_mt2060_driver_init6 = internal global ptr @mt2060_driver_init, section ".initcall6.init", align 4
@mt2060_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mt2060_probe, ptr @mt2060_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.38, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mt2060_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mt2060_driver_exit = internal global ptr @mt2060_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author299 = internal constant [28 x i8] c"mt2060.author=Olivier DANET\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [57 x i8] c"mt2060.description=Microtune MT2060 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [40 x i8] c"mt2060.file=drivers/media/tuners/mt2060\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [19 x i8] c"mt2060.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mt2060_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014mt2060 I2C read failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mt2060_readreg\00", [17 x i8] zeroinitializer }, align 32
@mt2060_readreg._entry_ptr = internal global ptr @mt2060_readreg._entry, section ".printk_index", align 4
@mt2060_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014mt2060 I2C write failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt2060_writereg\00", [16 x i8] zeroinitializer }, align 32
@mt2060_writereg._entry_ptr = internal global ptr @mt2060_writereg._entry, section ".printk_index", align 4
@mt2060_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017MT2060: IF1: %dMHz\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt2060_set_params\00", [46 x i8] zeroinitializer }, align 32
@mt2060_set_params._entry_ptr = internal global ptr @mt2060_set_params._entry, section ".printk_index", align 4
@mt2060_set_params._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@mt2060_set_params._entry_ptr.11 = internal global ptr @mt2060_set_params._entry.9, section ".printk_index", align 4
@mt2060_set_params._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017MT2060: PLL freq=%dkHz  f_lo1=%dkHz  f_lo2=%dkHz\00", [45 x i8] zeroinitializer }, align 32
@mt2060_set_params._entry_ptr.14 = internal global ptr @mt2060_set_params._entry.12, section ".printk_index", align 4
@mt2060_set_params._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mt2060_set_params._entry_ptr.16 = internal global ptr @mt2060_set_params._entry.15, section ".printk_index", align 4
@mt2060_set_params._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.8, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017MT2060: PLL div1=%d  num1=%d  div2=%d  num2=%d\00", [47 x i8] zeroinitializer }, align 32
@mt2060_set_params._entry_ptr.19 = internal global ptr @mt2060_set_params._entry.17, section ".printk_index", align 4
@mt2060_set_params._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mt2060_set_params._entry_ptr.21 = internal global ptr @mt2060_set_params._entry.20, section ".printk_index", align 4
@mt2060_set_params._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.8, ptr @.str.2, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017MT2060: PLL [1..5]: %2x %2x %2x %2x %2x\00", [54 x i8] zeroinitializer }, align 32
@mt2060_set_params._entry_ptr.24 = internal global ptr @mt2060_set_params._entry.22, section ".printk_index", align 4
@mt2060_set_params._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mt2060_set_params._entry_ptr.26 = internal global ptr @mt2060_set_params._entry.25, section ".printk_index", align 4
@mt2060_writeregs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014mt2060 I2C write failed (len=%i)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt2060_writeregs\00", [47 x i8] zeroinitializer }, align 32
@mt2060_writeregs._entry_ptr = internal global ptr @mt2060_writeregs._entry, section ".printk_index", align 4
@mt2060_config1 = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\01?t\00\08\93", [26 x i8] zeroinitializer }, align 32
@mt2060_config2 = internal global { [10 x i8], [22 x i8] } { [10 x i8] c"\09 \1E0\FF\80\FF\00,B", [22 x i8] zeroinitializer }, align 32
@mt2060_calibrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017MT2060: calibration was successful: %d\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt2060_calibrate\00", [47 x i8] zeroinitializer }, align 32
@mt2060_calibrate._entry_ptr = internal global ptr @mt2060_calibrate._entry, section ".printk_index", align 4
@mt2060_calibrate._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.30, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mt2060_calibrate._entry_ptr.32 = internal global ptr @mt2060_calibrate._entry.31, section ".printk_index", align 4
@mt2060_calibrate._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.30, ptr @.str.2, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017MT2060: FMCAL timed out\00", [38 x i8] zeroinitializer }, align 32
@mt2060_calibrate._entry_ptr.35 = internal global ptr @mt2060_calibrate._entry.33, section ".printk_index", align 4
@mt2060_calibrate._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.30, ptr @.str.2, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mt2060_calibrate._entry_ptr.37 = internal global ptr @mt2060_calibrate._entry.36, section ".printk_index", align 4
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mt2060\00", [25 x i8] zeroinitializer }, align 32
@mt2060_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mt2060\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mt2060_probe.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.39, ptr @.str.2, ptr @.str.10, i8 0, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt2060_probe\00", [19 x i8] zeroinitializer }, align 32
@mt2060_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.39, ptr @.str.2, i32 457, ptr @.str.41, ptr @.str.42 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cannot proceed without platform data\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt2060_probe._entry_ptr = internal global ptr @mt2060_probe._entry, section ".printk_index", align 4
@mt2060_probe.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.39, ptr @.str.2, ptr @.str.43, i8 0, i8 121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"chip id=%02x\0A\00", [18 x i8] zeroinitializer }, align 32
@mt2060_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.39, ptr @.str.2, i32 500, ptr @.str.46, ptr @.str.42 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Microtune MT2060 successfully identified\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt2060_probe._entry_ptr.47 = internal global ptr @mt2060_probe._entry.44, section ".printk_index", align 4
@mt2060_probe.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.39, ptr @.str.2, ptr @.str.48, i8 0, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@mt2060_remove.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.49, ptr @.str.2, ptr @.str.10, i8 0, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt2060_remove\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.50 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 21, i32 12 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 431, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"mt2060_tuner_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 386, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant [14 x i8] c"mt2060_driver\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 525, i32 26 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 48, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 76, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 254, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 255, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 256, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 257, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 106, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant [15 x i8] c"mt2060_config1\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 118, i32 11 }
@___asan_gen_.143 = private unnamed_addr constant [15 x i8] c"mt2060_config2\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 124, i32 11 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 315, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 317, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 527, i32 11 }
@___asan_gen_.170 = private unnamed_addr constant [16 x i8] c"mt2060_id_table\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 519, i32 35 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 454, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 457, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 484, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 500, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 508, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.204 = private constant [33 x i8] c"../drivers/media/tuners/mt2060.c\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 514, i32 2 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__exitcall_mt2060_driver_exit, ptr @__initcall__kmod_mt2060__298_535_mt2060_driver_init6, ptr @__ksymtab_mt2060_attach, ptr @__param_debug, ptr @mt2060_attach._entry, ptr @mt2060_attach._entry_ptr, ptr @mt2060_calibrate._entry, ptr @mt2060_calibrate._entry.31, ptr @mt2060_calibrate._entry.33, ptr @mt2060_calibrate._entry.36, ptr @mt2060_calibrate._entry_ptr, ptr @mt2060_calibrate._entry_ptr.32, ptr @mt2060_calibrate._entry_ptr.35, ptr @mt2060_calibrate._entry_ptr.37, ptr @mt2060_driver_exit, ptr @mt2060_probe._entry, ptr @mt2060_probe._entry.44, ptr @mt2060_probe._entry_ptr, ptr @mt2060_probe._entry_ptr.47, ptr @mt2060_readreg._entry, ptr @mt2060_readreg._entry_ptr, ptr @mt2060_set_params._entry, ptr @mt2060_set_params._entry.12, ptr @mt2060_set_params._entry.15, ptr @mt2060_set_params._entry.17, ptr @mt2060_set_params._entry.20, ptr @mt2060_set_params._entry.22, ptr @mt2060_set_params._entry.25, ptr @mt2060_set_params._entry.9, ptr @mt2060_set_params._entry_ptr, ptr @mt2060_set_params._entry_ptr.11, ptr @mt2060_set_params._entry_ptr.14, ptr @mt2060_set_params._entry_ptr.16, ptr @mt2060_set_params._entry_ptr.19, ptr @mt2060_set_params._entry_ptr.21, ptr @mt2060_set_params._entry_ptr.24, ptr @mt2060_set_params._entry_ptr.26, ptr @mt2060_writereg._entry, ptr @mt2060_writereg._entry_ptr, ptr @mt2060_writeregs._entry, ptr @mt2060_writeregs._entry_ptr, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mt2060_tuner_ops, ptr @mt2060_driver, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.18, ptr @.str.23, ptr @.str.27, ptr @.str.28, ptr @mt2060_config1, ptr @mt2060_config2, ptr @.str.29, ptr @.str.30, ptr @.str.34, ptr @.str.38, ptr @mt2060_id_table, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2060_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2060_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2060_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2060_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2060_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2060_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2060_set_params._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2060_set_params._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2060_set_params._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2060_set_params._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2060_set_params._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2060_set_params._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2060_set_params._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2060_writeregs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2060_config1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2060_config2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2060_calibrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2060_calibrate._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2060_calibrate._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2060_calibrate._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2060_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2060_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2060_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mt2060_attach(ptr noundef %fe, ptr noundef %i2c, ptr noundef %cfg, i16 noundef zeroext %if1) #0 align 64 {
entry:
  %id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id) #9
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %id, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 24) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cfg, ptr %call7.i.i, align 8
  %i2c2 = getelementptr inbounds %struct.mt2060_priv, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %i2c2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i2c, ptr %i2c2, align 4
  %if1_freq = getelementptr inbounds %struct.mt2060_priv, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %if1_freq to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %if1, ptr %if1_freq, align 4
  %i2c_max_regs = getelementptr inbounds %struct.mt2060_priv, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %i2c_max_regs to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %i2c_max_regs, align 2
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %6 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 %7(ptr noundef %fe, i32 noundef 1) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %call8 = call fastcc i32 @mt2060_readreg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 0, ptr noundef nonnull %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %9)
  %cmp12.not = icmp eq i8 %9, 99
  br i1 %cmp12.not, label %do.end, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

do.end:                                           ; preds = %if.end11
  %conv16 = zext i16 %if1 to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv16) #13
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %10 = call ptr @memcpy(ptr %tuner_ops, ptr @mt2060_tuner_ops, i32 220)
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %11 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  tail call fastcc void @mt2060_calibrate(ptr noundef nonnull %call7.i.i)
  %12 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool21.not = icmp eq ptr %13, null
  br i1 %tobool21.not, label %do.end.cleanup_crit_edge, label %if.then22

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then22:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call i32 %13(ptr noundef %fe, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %do.end.cleanup_crit_edge, %if.then14, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then10 ], [ null, %if.then14 ], [ null, %entry.cleanup_crit_edge ], [ %fe, %if.then22 ], [ %fe, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id) #9
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt2060_readreg(ptr nocapture noundef readonly %priv, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %val) unnamed_addr #0 align 64 {
entry:
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #9
  %0 = getelementptr inbounds i8, ptr %msg, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %conv = zext i8 %5 to i16
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %len, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %9 = load i8, ptr %3, align 1
  %conv4 = zext i8 %9 to i16
  %10 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv4, ptr %arrayinit.element, align 4
  %flags5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %11 = ptrtoint ptr %flags5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags5, align 2
  %len6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %12 = ptrtoint ptr %len6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %len6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 2) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %buf7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %14 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %reg, ptr %call7.i, align 8
  %arrayidx8 = getelementptr i8, ptr %call7.i, i32 1
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx8, align 1
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i, ptr %buf, align 4
  %17 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx8, ptr %buf7, align 4
  %i2c = getelementptr inbounds %struct.mt2060_priv, ptr %priv, i32 0, i32 1
  %18 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c, align 4
  %call13 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call13)
  %cmp.not = icmp eq i32 %call13, 2
  br i1 %cmp.not, label %if.end.if.end17_crit_edge, label %do.end

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #13
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.end.if.end17_crit_edge
  %rc.0 = phi i32 [ -121, %do.end ], [ 0, %if.end.if.end17_crit_edge ]
  %20 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx8, align 1
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %val, align 1
  call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end17 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt2060_calibrate(ptr nocapture noundef %priv) unnamed_addr #0 align 64 {
entry:
  %msg.i126 = alloca %struct.i2c_msg, align 4
  %msg.i108 = alloca %struct.i2c_msg, align 4
  %msg.i90 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  %b = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b) #9
  %0 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %b, align 1
  %call = tail call fastcc i32 @mt2060_writeregs(ptr noundef %priv, ptr noundef nonnull @mt2060_config1, i8 noundef zeroext 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @mt2060_writeregs(ptr noundef %priv, ptr noundef nonnull @mt2060_config2, i8 noundef zeroext 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  %clock_out = getelementptr inbounds %struct.mt2060_config, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %clock_out to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %clock_out, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %2, align 1
  %conv.i = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 2) #12
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end4.mt2060_writereg.exit_crit_edge, label %if.end.i

if.end4.mt2060_writereg.exit_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt2060_writereg.exit

if.end.i:                                         ; preds = %if.end4
  %shl = shl i8 %4, 6
  %or = or i8 %shl, 48
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 11, ptr %call7.i.i, align 8
  %arrayidx2.i = getelementptr i8, ptr %call7.i.i, i32 1
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %or, ptr %arrayidx2.i, align 1
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %buf.i, align 4
  %i2c.i = getelementptr inbounds %struct.mt2060_priv, ptr %priv, i32 0, i32 1
  %15 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c.i, align 4
  %call4.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i)
  %cmp.not.i = icmp eq i32 %call4.i, 1
  br i1 %cmp.not.i, label %if.end.i.if.end8.i_crit_edge, label %do.end.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end.i, %if.end.i.if.end8.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %mt2060_writereg.exit

mt2060_writereg.exit:                             ; preds = %if.end8.i, %if.end4.mt2060_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  %17 = getelementptr inbounds i8, ptr %msg.i90, i32 4
  %flags.i92 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i90, i32 0, i32 1
  %18 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %18)
  %b.promoted = load i8, ptr %b, align 1
  %buf.i96 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i90, i32 0, i32 3
  %i2c.i98 = getelementptr inbounds %struct.mt2060_priv, ptr %priv, i32 0, i32 1
  %19 = getelementptr inbounds i8, ptr %msg.i108, i32 4
  %flags.i110 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i108, i32 0, i32 1
  %buf.i114 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i108, i32 0, i32 3
  %20 = getelementptr inbounds i8, ptr %msg.i126, i32 4
  %flags.i128 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i126, i32 0, i32 1
  %buf.i132 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i126, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %mt2060_writereg.exit143.do.body_crit_edge, %mt2060_writereg.exit
  %21 = phi i8 [ %b.promoted, %mt2060_writereg.exit ], [ %52, %mt2060_writereg.exit143.do.body_crit_edge ]
  %i.0 = phi i32 [ 0, %mt2060_writereg.exit ], [ %inc, %mt2060_writereg.exit143.do.body_crit_edge ]
  %22 = or i8 %21, 64
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i90) #9
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %17, align 4
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  %conv.i91 = zext i8 %27 to i16
  %28 = ptrtoint ptr %msg.i90 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i91, ptr %msg.i90, align 4
  %29 = ptrtoint ptr %flags.i92 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %flags.i92, align 2
  store i16 2, ptr %17, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i94 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3264, i32 noundef 2) #12
  %tobool.not.i95 = icmp eq ptr %call7.i.i94, null
  br i1 %tobool.not.i95, label %do.body.mt2060_writereg.exit107_crit_edge, label %if.end.i101

do.body.mt2060_writereg.exit107_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt2060_writereg.exit107

if.end.i101:                                      ; preds = %do.body
  %31 = ptrtoint ptr %call7.i.i94 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 3, ptr %call7.i.i94, align 8
  %arrayidx2.i97 = getelementptr i8, ptr %call7.i.i94, i32 1
  %32 = ptrtoint ptr %arrayidx2.i97 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %22, ptr %arrayidx2.i97, align 1
  %33 = ptrtoint ptr %buf.i96 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i94, ptr %buf.i96, align 4
  %34 = ptrtoint ptr %i2c.i98 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c.i98, align 4
  %call4.i99 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i90, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i99)
  %cmp.not.i100 = icmp eq i32 %call4.i99, 1
  br i1 %cmp.not.i100, label %if.end.i101.if.end8.i105_crit_edge, label %do.end.i103

if.end.i101.if.end8.i105_crit_edge:               ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i105

do.end.i103:                                      ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  br label %if.end8.i105

if.end8.i105:                                     ; preds = %do.end.i103, %if.end.i101.if.end8.i105_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i94) #9
  br label %mt2060_writereg.exit107

mt2060_writereg.exit107:                          ; preds = %if.end8.i105, %do.body.mt2060_writereg.exit107_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i90) #9
  call void @msleep(i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0)
  %cmp = icmp eq i32 %i.0, 0
  br i1 %cmp, label %if.then12, label %mt2060_writereg.exit107.if.end19_crit_edge

mt2060_writereg.exit107.if.end19_crit_edge:       ; preds = %mt2060_writereg.exit107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then12:                                        ; preds = %mt2060_writereg.exit107
  %36 = or i8 %21, -64
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i108) #9
  %37 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %19, align 4
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 1
  %conv.i109 = zext i8 %41 to i16
  %42 = ptrtoint ptr %msg.i108 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i109, ptr %msg.i108, align 4
  %43 = ptrtoint ptr %flags.i110 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %flags.i110, align 2
  store i16 2, ptr %19, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i112 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3264, i32 noundef 2) #12
  %tobool.not.i113 = icmp eq ptr %call7.i.i112, null
  br i1 %tobool.not.i113, label %if.then12.mt2060_writereg.exit125_crit_edge, label %if.end.i119

if.then12.mt2060_writereg.exit125_crit_edge:      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt2060_writereg.exit125

if.end.i119:                                      ; preds = %if.then12
  %45 = ptrtoint ptr %call7.i.i112 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 3, ptr %call7.i.i112, align 8
  %arrayidx2.i115 = getelementptr i8, ptr %call7.i.i112, i32 1
  %46 = ptrtoint ptr %arrayidx2.i115 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %36, ptr %arrayidx2.i115, align 1
  %47 = ptrtoint ptr %buf.i114 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i.i112, ptr %buf.i114, align 4
  %48 = ptrtoint ptr %i2c.i98 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i2c.i98, align 4
  %call4.i117 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %msg.i108, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i117)
  %cmp.not.i118 = icmp eq i32 %call4.i117, 1
  br i1 %cmp.not.i118, label %if.end.i119.if.end8.i123_crit_edge, label %do.end.i121

if.end.i119.if.end8.i123_crit_edge:               ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i123

do.end.i121:                                      ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  br label %if.end8.i123

if.end8.i123:                                     ; preds = %do.end.i121, %if.end.i119.if.end8.i123_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i112) #9
  br label %mt2060_writereg.exit125

mt2060_writereg.exit125:                          ; preds = %if.end8.i123, %if.then12.mt2060_writereg.exit125_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i108) #9
  %50 = and i8 %36, 127
  call void @msleep(i32 noundef 20) #9
  br label %if.end19

if.end19:                                         ; preds = %mt2060_writereg.exit125, %mt2060_writereg.exit107.if.end19_crit_edge
  %51 = phi i8 [ %50, %mt2060_writereg.exit125 ], [ %22, %mt2060_writereg.exit107.if.end19_crit_edge ]
  %52 = and i8 %51, -65
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i126) #9
  %53 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %20, align 4
  %54 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %55, align 1
  %conv.i127 = zext i8 %57 to i16
  %58 = ptrtoint ptr %msg.i126 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv.i127, ptr %msg.i126, align 4
  %59 = ptrtoint ptr %flags.i128 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %flags.i128, align 2
  store i16 2, ptr %20, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %60 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i130 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3264, i32 noundef 2) #12
  %tobool.not.i131 = icmp eq ptr %call7.i.i130, null
  br i1 %tobool.not.i131, label %if.end19.mt2060_writereg.exit143_crit_edge, label %if.end.i137

if.end19.mt2060_writereg.exit143_crit_edge:       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt2060_writereg.exit143

if.end.i137:                                      ; preds = %if.end19
  %61 = ptrtoint ptr %call7.i.i130 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 3, ptr %call7.i.i130, align 8
  %arrayidx2.i133 = getelementptr i8, ptr %call7.i.i130, i32 1
  %62 = ptrtoint ptr %arrayidx2.i133 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %52, ptr %arrayidx2.i133, align 1
  %63 = ptrtoint ptr %buf.i132 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i.i130, ptr %buf.i132, align 4
  %64 = ptrtoint ptr %i2c.i98 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i2c.i98, align 4
  %call4.i135 = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %msg.i126, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i135)
  %cmp.not.i136 = icmp eq i32 %call4.i135, 1
  br i1 %cmp.not.i136, label %if.end.i137.if.end8.i141_crit_edge, label %do.end.i139

if.end.i137.if.end8.i141_crit_edge:               ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i141

do.end.i139:                                      ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  br label %if.end8.i141

if.end8.i141:                                     ; preds = %do.end.i139, %if.end.i137.if.end8.i141_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i130) #9
  br label %mt2060_writereg.exit143

mt2060_writereg.exit143:                          ; preds = %if.end8.i141, %if.end19.mt2060_writereg.exit143_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i126) #9
  call void @msleep(i32 noundef 20) #9
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %while.cond.preheader, label %mt2060_writereg.exit143.do.body_crit_edge

mt2060_writereg.exit143.do.body_crit_edge:        ; preds = %mt2060_writereg.exit143
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

while.cond.preheader:                             ; preds = %mt2060_writereg.exit143
  %66 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %52, ptr %b, align 1
  %call29 = call fastcc i32 @mt2060_readreg(ptr noundef %priv, i8 noundef zeroext 8, ptr noundef nonnull %b)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %land.rhs, label %while.cond.preheader.if.then38_crit_edge

while.cond.preheader.if.then38_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

land.rhs:                                         ; preds = %while.cond.preheader
  %67 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %b, align 1
  %69 = and i8 %68, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp34 = icmp eq i8 %69, 0
  br i1 %cmp34, label %while.body, label %land.rhs.if.then38_crit_edge

land.rhs.if.then38_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

while.body:                                       ; preds = %land.rhs
  call void @msleep(i32 noundef 20) #9
  %call29.1 = call fastcc i32 @mt2060_readreg(ptr noundef %priv, i8 noundef zeroext 8, ptr noundef nonnull %b)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.1)
  %cmp30.1 = icmp eq i32 %call29.1, 0
  br i1 %cmp30.1, label %land.rhs.1, label %while.body.if.then38_crit_edge

while.body.if.then38_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

land.rhs.1:                                       ; preds = %while.body
  %70 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %b, align 1
  %72 = and i8 %71, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp34.1 = icmp eq i8 %72, 0
  br i1 %cmp34.1, label %while.body.1, label %land.rhs.1.if.then38_crit_edge

land.rhs.1.if.then38_crit_edge:                   ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

while.body.1:                                     ; preds = %land.rhs.1
  call void @msleep(i32 noundef 20) #9
  %call29.2 = call fastcc i32 @mt2060_readreg(ptr noundef %priv, i8 noundef zeroext 8, ptr noundef nonnull %b)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.2)
  %cmp30.2 = icmp eq i32 %call29.2, 0
  br i1 %cmp30.2, label %land.rhs.2, label %while.body.1.if.then38_crit_edge

while.body.1.if.then38_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

land.rhs.2:                                       ; preds = %while.body.1
  %73 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %b, align 1
  %75 = and i8 %74, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp34.2 = icmp eq i8 %75, 0
  br i1 %cmp34.2, label %while.body.2, label %land.rhs.2.if.then38_crit_edge

land.rhs.2.if.then38_crit_edge:                   ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

while.body.2:                                     ; preds = %land.rhs.2
  call void @msleep(i32 noundef 20) #9
  %call29.3 = call fastcc i32 @mt2060_readreg(ptr noundef %priv, i8 noundef zeroext 8, ptr noundef nonnull %b)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.3)
  %cmp30.3 = icmp eq i32 %call29.3, 0
  br i1 %cmp30.3, label %land.rhs.3, label %while.body.2.if.then38_crit_edge

while.body.2.if.then38_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

land.rhs.3:                                       ; preds = %while.body.2
  %76 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %b, align 1
  %78 = and i8 %77, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp34.3 = icmp eq i8 %78, 0
  br i1 %cmp34.3, label %while.body.3, label %land.rhs.3.if.then38_crit_edge

land.rhs.3.if.then38_crit_edge:                   ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

while.body.3:                                     ; preds = %land.rhs.3
  call void @msleep(i32 noundef 20) #9
  %call29.4 = call fastcc i32 @mt2060_readreg(ptr noundef %priv, i8 noundef zeroext 8, ptr noundef nonnull %b)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.4)
  %cmp30.4 = icmp eq i32 %call29.4, 0
  br i1 %cmp30.4, label %land.rhs.4, label %while.body.3.if.then38_crit_edge

while.body.3.if.then38_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

land.rhs.4:                                       ; preds = %while.body.3
  %79 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %b, align 1
  %81 = and i8 %80, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp34.4 = icmp eq i8 %81, 0
  br i1 %cmp34.4, label %while.body.4, label %land.rhs.4.if.then38_crit_edge

land.rhs.4.if.then38_crit_edge:                   ; preds = %land.rhs.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

while.body.4:                                     ; preds = %land.rhs.4
  call void @msleep(i32 noundef 20) #9
  %call29.5 = call fastcc i32 @mt2060_readreg(ptr noundef %priv, i8 noundef zeroext 8, ptr noundef nonnull %b)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.5)
  %cmp30.5 = icmp eq i32 %call29.5, 0
  br i1 %cmp30.5, label %land.rhs.5, label %while.body.4.if.then38_crit_edge

while.body.4.if.then38_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

land.rhs.5:                                       ; preds = %while.body.4
  %82 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %b, align 1
  %84 = and i8 %83, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %cmp34.5 = icmp eq i8 %84, 0
  br i1 %cmp34.5, label %while.body.5, label %land.rhs.5.if.then38_crit_edge

land.rhs.5.if.then38_crit_edge:                   ; preds = %land.rhs.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

while.body.5:                                     ; preds = %land.rhs.5
  call void @msleep(i32 noundef 20) #9
  %call29.6 = call fastcc i32 @mt2060_readreg(ptr noundef %priv, i8 noundef zeroext 8, ptr noundef nonnull %b)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.6)
  %cmp30.6 = icmp eq i32 %call29.6, 0
  br i1 %cmp30.6, label %land.rhs.6, label %while.body.5.if.then38_crit_edge

while.body.5.if.then38_crit_edge:                 ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

land.rhs.6:                                       ; preds = %while.body.5
  %85 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %b, align 1
  %87 = and i8 %86, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp34.6 = icmp eq i8 %87, 0
  br i1 %cmp34.6, label %while.body.6, label %land.rhs.6.if.then38_crit_edge

land.rhs.6.if.then38_crit_edge:                   ; preds = %land.rhs.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

while.body.6:                                     ; preds = %land.rhs.6
  call void @msleep(i32 noundef 20) #9
  %call29.7 = call fastcc i32 @mt2060_readreg(ptr noundef %priv, i8 noundef zeroext 8, ptr noundef nonnull %b)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.7)
  %cmp30.7 = icmp eq i32 %call29.7, 0
  br i1 %cmp30.7, label %land.rhs.7, label %while.body.6.if.then38_crit_edge

while.body.6.if.then38_crit_edge:                 ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

land.rhs.7:                                       ; preds = %while.body.6
  %88 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %b, align 1
  %90 = and i8 %89, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %cmp34.7 = icmp eq i8 %90, 0
  br i1 %cmp34.7, label %while.body.7, label %land.rhs.7.if.then38_crit_edge

land.rhs.7.if.then38_crit_edge:                   ; preds = %land.rhs.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

while.body.7:                                     ; preds = %land.rhs.7
  call void @msleep(i32 noundef 20) #9
  %call29.8 = call fastcc i32 @mt2060_readreg(ptr noundef %priv, i8 noundef zeroext 8, ptr noundef nonnull %b)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.8)
  %cmp30.8 = icmp eq i32 %call29.8, 0
  br i1 %cmp30.8, label %land.rhs.8, label %while.body.7.if.then38_crit_edge

while.body.7.if.then38_crit_edge:                 ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

land.rhs.8:                                       ; preds = %while.body.7
  %91 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %b, align 1
  %93 = and i8 %92, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %cmp34.8 = icmp eq i8 %93, 0
  br i1 %cmp34.8, label %while.body.8, label %land.rhs.8.if.then38_crit_edge

land.rhs.8.if.then38_crit_edge:                   ; preds = %land.rhs.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

while.body.8:                                     ; preds = %land.rhs.8
  call void @msleep(i32 noundef 20) #9
  %call29.9 = call fastcc i32 @mt2060_readreg(ptr noundef %priv, i8 noundef zeroext 8, ptr noundef nonnull %b)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.9)
  %cmp30.9 = icmp eq i32 %call29.9, 0
  br i1 %cmp30.9, label %land.rhs.9, label %while.body.8.if.then38_crit_edge

while.body.8.if.then38_crit_edge:                 ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

land.rhs.9:                                       ; preds = %while.body.8
  %94 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %b, align 1
  %96 = and i8 %95, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %cmp34.9 = icmp eq i8 %96, 0
  br i1 %cmp34.9, label %do.body57, label %land.rhs.9.if.then38_crit_edge

land.rhs.9.if.then38_crit_edge:                   ; preds = %land.rhs.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

if.then38:                                        ; preds = %land.rhs.9.if.then38_crit_edge, %while.body.8.if.then38_crit_edge, %land.rhs.8.if.then38_crit_edge, %while.body.7.if.then38_crit_edge, %land.rhs.7.if.then38_crit_edge, %while.body.6.if.then38_crit_edge, %land.rhs.6.if.then38_crit_edge, %while.body.5.if.then38_crit_edge, %land.rhs.5.if.then38_crit_edge, %while.body.4.if.then38_crit_edge, %land.rhs.4.if.then38_crit_edge, %while.body.3.if.then38_crit_edge, %land.rhs.3.if.then38_crit_edge, %while.body.2.if.then38_crit_edge, %land.rhs.2.if.then38_crit_edge, %while.body.1.if.then38_crit_edge, %land.rhs.1.if.then38_crit_edge, %while.body.if.then38_crit_edge, %land.rhs.if.then38_crit_edge, %while.cond.preheader.if.then38_crit_edge
  %fmfreq = getelementptr inbounds %struct.mt2060_priv, ptr %priv, i32 0, i32 7
  %call39 = call fastcc i32 @mt2060_readreg(ptr noundef %priv, i8 noundef zeroext 7, ptr noundef %fmfreq)
  %97 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool41.not = icmp eq i32 %97, 0
  br i1 %tobool41.not, label %if.then38.cleanup_crit_edge, label %do.end45

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end45:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %fmfreq to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %fmfreq, align 2
  %conv47 = zext i8 %99 to i32
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %conv47) #13
  br label %cleanup.sink.split

do.body57:                                        ; preds = %land.rhs.9
  call void @msleep(i32 noundef 20) #9
  %100 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool58.not = icmp eq i32 %100, 0
  br i1 %tobool58.not, label %do.body57.cleanup_crit_edge, label %do.end62

do.body57.cleanup_crit_edge:                      ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end62:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #11
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end62, %do.end45
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body57.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2060_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mt2060_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt2060_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @mt2060_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt2060_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #9
  %2 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2060_init(ptr noundef %fe) #0 align 64 {
entry:
  %msg.i31 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %2 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %3(ptr noundef %fe, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sleep = getelementptr inbounds %struct.mt2060_priv, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %sleep to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sleep, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 196607, ptr %6, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %conv.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 2) #12
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %mt2060_writereg.exit.thread, label %if.end.i

mt2060_writereg.exit.thread:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  br label %err_i2c_gate_ctrl

if.end.i:                                         ; preds = %if.then4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 9, ptr %call7.i.i, align 8
  %arrayidx2.i = getelementptr i8, ptr %call7.i.i, i32 1
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 32, ptr %arrayidx2.i, align 1
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %buf.i, align 4
  %i2c.i = getelementptr inbounds %struct.mt2060_priv, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c.i, align 4
  %call4.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i)
  %cmp.not.i = icmp eq i32 %call4.i, 1
  br i1 %cmp.not.i, label %mt2060_writereg.exit.thread51, label %mt2060_writereg.exit

mt2060_writereg.exit.thread51:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  br label %if.end9

mt2060_writereg.exit:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  br label %err_i2c_gate_ctrl

if.end9:                                          ; preds = %mt2060_writereg.exit.thread51, %if.end.if.end9_crit_edge
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %clock_out = getelementptr inbounds %struct.mt2060_config, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %clock_out to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %clock_out, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i31) #9
  %24 = getelementptr inbounds i8, ptr %msg.i31, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 196607, ptr %24, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 1
  %conv.i32 = zext i8 %29 to i16
  %30 = ptrtoint ptr %msg.i31 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i32, ptr %msg.i31, align 4
  %flags.i33 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i33 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i33, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i35 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3264, i32 noundef 2) #12
  %tobool.not.i36 = icmp eq ptr %call7.i.i35, null
  br i1 %tobool.not.i36, label %if.end9.mt2060_writereg.exit48_crit_edge, label %if.end.i42

if.end9.mt2060_writereg.exit48_crit_edge:         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt2060_writereg.exit48

if.end.i42:                                       ; preds = %if.end9
  %shl = shl i8 %23, 6
  %or = or i8 %shl, 51
  %buf.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31, i32 0, i32 3
  %33 = ptrtoint ptr %call7.i.i35 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 11, ptr %call7.i.i35, align 8
  %arrayidx2.i38 = getelementptr i8, ptr %call7.i.i35, i32 1
  %34 = ptrtoint ptr %arrayidx2.i38 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %or, ptr %arrayidx2.i38, align 1
  %35 = ptrtoint ptr %buf.i37 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i35, ptr %buf.i37, align 4
  %i2c.i39 = getelementptr inbounds %struct.mt2060_priv, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %i2c.i39 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i2c.i39, align 4
  %call4.i40 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i31, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i40)
  %cmp.not.i41 = icmp eq i32 %call4.i40, 1
  br i1 %cmp.not.i41, label %if.end.i42.if.end8.i46_crit_edge, label %do.end.i44

if.end.i42.if.end8.i46_crit_edge:                 ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i46

do.end.i44:                                       ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  br label %if.end8.i46

if.end8.i46:                                      ; preds = %do.end.i44, %if.end.i42.if.end8.i46_crit_edge
  %rc.0.i45 = phi i32 [ -121, %do.end.i44 ], [ 0, %if.end.i42.if.end8.i46_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i35) #9
  br label %mt2060_writereg.exit48

mt2060_writereg.exit48:                           ; preds = %if.end8.i46, %if.end9.mt2060_writereg.exit48_crit_edge
  %retval.0.i47 = phi i32 [ %rc.0.i45, %if.end8.i46 ], [ -12, %if.end9.mt2060_writereg.exit48_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i31) #9
  br label %err_i2c_gate_ctrl

err_i2c_gate_ctrl:                                ; preds = %mt2060_writereg.exit48, %mt2060_writereg.exit, %mt2060_writereg.exit.thread
  %ret.0 = phi i32 [ -121, %mt2060_writereg.exit ], [ %retval.0.i47, %mt2060_writereg.exit48 ], [ -12, %mt2060_writereg.exit.thread ]
  %38 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool14.not = icmp eq ptr %39, null
  br i1 %tobool14.not, label %err_i2c_gate_ctrl.if.end19_crit_edge, label %if.then15

err_i2c_gate_ctrl.if.end19_crit_edge:             ; preds = %err_i2c_gate_ctrl
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then15:                                        ; preds = %err_i2c_gate_ctrl
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = call i32 %39(ptr noundef %fe, i32 noundef 0) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %err_i2c_gate_ctrl.if.end19_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2060_sleep(ptr noundef %fe) #0 align 64 {
entry:
  %msg.i31 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %2 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %3(ptr noundef %fe, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %clock_out = getelementptr inbounds %struct.mt2060_config, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %clock_out to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %clock_out, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 196607, ptr %8, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %conv.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 2) #12
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %mt2060_writereg.exit.thread, label %if.end.i

mt2060_writereg.exit.thread:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  br label %err_i2c_gate_ctrl

if.end.i:                                         ; preds = %if.end
  %shl = shl i8 %7, 6
  %or = or i8 %shl, 48
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 11, ptr %call7.i.i, align 8
  %arrayidx2.i = getelementptr i8, ptr %call7.i.i, i32 1
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %or, ptr %arrayidx2.i, align 1
  %19 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %buf.i, align 4
  %i2c.i = getelementptr inbounds %struct.mt2060_priv, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c.i, align 4
  %call4.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i)
  %cmp.not.i = icmp eq i32 %call4.i, 1
  br i1 %cmp.not.i, label %if.end7, label %mt2060_writereg.exit

mt2060_writereg.exit:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  br label %err_i2c_gate_ctrl

if.end7:                                          ; preds = %if.end.i
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  %sleep = getelementptr inbounds %struct.mt2060_priv, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %sleep to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sleep, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool8.not = icmp eq i8 %23, 0
  br i1 %tobool8.not, label %if.end7.err_i2c_gate_ctrl_crit_edge, label %if.then9

if.end7.err_i2c_gate_ctrl_crit_edge:              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_i2c_gate_ctrl

if.then9:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i31) #9
  %24 = getelementptr inbounds i8, ptr %msg.i31, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 196607, ptr %24, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 1
  %conv.i32 = zext i8 %29 to i16
  %30 = ptrtoint ptr %msg.i31 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i32, ptr %msg.i31, align 4
  %flags.i33 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i33 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i33, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i35 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3264, i32 noundef 2) #12
  %tobool.not.i36 = icmp eq ptr %call7.i.i35, null
  br i1 %tobool.not.i36, label %if.then9.mt2060_writereg.exit48_crit_edge, label %if.end.i42

if.then9.mt2060_writereg.exit48_crit_edge:        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt2060_writereg.exit48

if.end.i42:                                       ; preds = %if.then9
  %buf.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31, i32 0, i32 3
  %33 = ptrtoint ptr %call7.i.i35 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 9, ptr %call7.i.i35, align 8
  %arrayidx2.i38 = getelementptr i8, ptr %call7.i.i35, i32 1
  %34 = ptrtoint ptr %arrayidx2.i38 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -24, ptr %arrayidx2.i38, align 1
  %35 = ptrtoint ptr %buf.i37 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i35, ptr %buf.i37, align 4
  %36 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i2c.i, align 4
  %call4.i40 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i31, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i40)
  %cmp.not.i41 = icmp eq i32 %call4.i40, 1
  br i1 %cmp.not.i41, label %if.end.i42.if.end8.i46_crit_edge, label %do.end.i44

if.end.i42.if.end8.i46_crit_edge:                 ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i46

do.end.i44:                                       ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  br label %if.end8.i46

if.end8.i46:                                      ; preds = %do.end.i44, %if.end.i42.if.end8.i46_crit_edge
  %rc.0.i45 = phi i32 [ -121, %do.end.i44 ], [ 0, %if.end.i42.if.end8.i46_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i35) #9
  br label %mt2060_writereg.exit48

mt2060_writereg.exit48:                           ; preds = %if.end8.i46, %if.then9.mt2060_writereg.exit48_crit_edge
  %retval.0.i47 = phi i32 [ %rc.0.i45, %if.end8.i46 ], [ -12, %if.then9.mt2060_writereg.exit48_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i31) #9
  br label %err_i2c_gate_ctrl

err_i2c_gate_ctrl:                                ; preds = %mt2060_writereg.exit48, %if.end7.err_i2c_gate_ctrl_crit_edge, %mt2060_writereg.exit, %mt2060_writereg.exit.thread
  %ret.0 = phi i32 [ -121, %mt2060_writereg.exit ], [ %retval.0.i47, %mt2060_writereg.exit48 ], [ 0, %if.end7.err_i2c_gate_ctrl_crit_edge ], [ -12, %mt2060_writereg.exit.thread ]
  %38 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool14.not = icmp eq ptr %39, null
  br i1 %tobool14.not, label %err_i2c_gate_ctrl.if.end19_crit_edge, label %if.then15

err_i2c_gate_ctrl.if.end19_crit_edge:             ; preds = %err_i2c_gate_ctrl
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then15:                                        ; preds = %err_i2c_gate_ctrl
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = call i32 %39(ptr noundef %fe, i32 noundef 0) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %err_i2c_gate_ctrl.if.end19_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2060_set_params(ptr noundef %fe) #0 align 64 {
entry:
  %b = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #9
  %0 = getelementptr inbounds [8 x i8], ptr %b, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %b, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %b, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %b, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i8], ptr %b, i32 0, i32 5
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %5 = getelementptr inbounds i8, ptr %b, i32 2
  %6 = call ptr @memset(ptr %5, i32 255, i32 6)
  %7 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tuner_priv, align 4
  %if1_freq = getelementptr inbounds %struct.mt2060_priv, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %if1_freq to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %if1_freq, align 4
  %conv = zext i16 %10 to i32
  %11 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 12, ptr %b, align 1
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %0, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %13 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %14(ptr noundef %fe, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4 = call fastcc i32 @mt2060_writeregs(ptr noundef %8, ptr noundef nonnull %b, i8 noundef zeroext 2)
  %15 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dtv_property_cache, align 4
  %div = udiv i32 %16, 1000
  %mul = mul nuw nsw i32 %conv, 1000
  %add = add nuw nsw i32 %div, %mul
  %div5 = udiv i32 %add, 250
  %mul6 = mul nuw nsw i32 %div5, 250
  %sub = sub nsw i32 %mul6, %div
  %add8 = add nsw i32 %sub, -36125
  %17 = urem i32 %add8, 50
  %mul10 = sub nsw i32 %add8, %17
  %sub11 = sub nsw i32 %mul6, %mul10
  %18 = mul i32 %sub11, 1000
  %mul13 = add i32 %18, -36150000
  %frequency14 = getelementptr inbounds %struct.mt2060_priv, ptr %8, i32 0, i32 5
  %19 = ptrtoint ptr %frequency14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul13, ptr %frequency14, align 4
  %div16 = udiv i32 %add, 16000
  %and = and i32 %div5, 63
  %mul17 = shl i32 %mul10, 6
  %div18 = udiv i32 %mul17, 125
  %div19 = udiv i32 %mul17, 1024000
  %and20 = and i32 %div18, 8191
  call void @__sanitizer_cov_trace_const_cmp4(i32 95001000, i32 %16)
  %cmp = icmp ult i32 %16, 95001000
  br i1 %cmp, label %if.end.if.end68_crit_edge, label %if.else

if.end.if.end68_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 180001000, i32 %16)
  %cmp23 = icmp ult i32 %16, 180001000
  br i1 %cmp23, label %if.else.if.end68_crit_edge, label %if.else26

if.else.if.end68_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.else26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 260001000, i32 %16)
  %cmp27 = icmp ult i32 %16, 260001000
  br i1 %cmp27, label %if.else26.if.end68_crit_edge, label %if.else30

if.else26.if.end68_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.else30:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_const_cmp4(i32 335001000, i32 %16)
  %cmp31 = icmp ult i32 %16, 335001000
  br i1 %cmp31, label %if.else30.if.end68_crit_edge, label %if.else34

if.else30.if.end68_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.else34:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_const_cmp4(i32 425001000, i32 %16)
  %cmp35 = icmp ult i32 %16, 425001000
  br i1 %cmp35, label %if.else34.if.end68_crit_edge, label %if.else38

if.else34.if.end68_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.else38:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_const_cmp4(i32 480001000, i32 %16)
  %cmp39 = icmp ult i32 %16, 480001000
  br i1 %cmp39, label %if.else38.if.end68_crit_edge, label %if.else42

if.else38.if.end68_crit_edge:                     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.else42:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_const_cmp4(i32 570001000, i32 %16)
  %cmp43 = icmp ult i32 %16, 570001000
  br i1 %cmp43, label %if.else42.if.end68_crit_edge, label %if.else46

if.else42.if.end68_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.else46:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_const_cmp4(i32 645001000, i32 %16)
  %cmp47 = icmp ult i32 %16, 645001000
  br i1 %cmp47, label %if.else46.if.end68_crit_edge, label %if.else50

if.else46.if.end68_crit_edge:                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.else50:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_const_cmp4(i32 730001000, i32 %16)
  %cmp51 = icmp ult i32 %16, 730001000
  br i1 %cmp51, label %if.else50.if.end68_crit_edge, label %if.else54

if.else50.if.end68_crit_edge:                     ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.else54:                                        ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 810001000, i32 %16)
  %cmp55 = icmp ult i32 %16, 810001000
  %. = select i1 %cmp55, i32 32, i32 16
  br label %if.end68

if.end68:                                         ; preds = %if.else54, %if.else50.if.end68_crit_edge, %if.else46.if.end68_crit_edge, %if.else42.if.end68_crit_edge, %if.else38.if.end68_crit_edge, %if.else34.if.end68_crit_edge, %if.else30.if.end68_crit_edge, %if.else26.if.end68_crit_edge, %if.else.if.end68_crit_edge, %if.end.if.end68_crit_edge
  %lnaband.0 = phi i32 [ 176, %if.end.if.end68_crit_edge ], [ 160, %if.else.if.end68_crit_edge ], [ 144, %if.else26.if.end68_crit_edge ], [ 128, %if.else30.if.end68_crit_edge ], [ 112, %if.else34.if.end68_crit_edge ], [ 96, %if.else38.if.end68_crit_edge ], [ 80, %if.else42.if.end68_crit_edge ], [ 64, %if.else46.if.end68_crit_edge ], [ 48, %if.else50.if.end68_crit_edge ], [ %., %if.else54 ]
  %20 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %b, align 1
  %shr = lshr i32 %div5, 2
  %and71 = and i32 %shr, 15
  %or = or i32 %lnaband.0, %and71
  %conv72 = trunc i32 %or to i8
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv72, ptr %0, align 1
  %conv74 = trunc i32 %div16 to i8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv74, ptr %1, align 1
  %and76 = and i32 %div18, 15
  %and77 = shl nuw nsw i32 %div5, 4
  %shl = and i32 %and77, 48
  %or78 = or i32 %and76, %shl
  %conv79 = trunc i32 %or78 to i8
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv79, ptr %2, align 1
  %shr81 = lshr i32 %div18, 4
  %conv82 = trunc i32 %shr81 to i8
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv82, ptr %3, align 1
  %shr84 = lshr i32 %div18, 12
  %and85 = and i32 %shr84, 1
  %shl86 = shl nuw nsw i32 %div19, 1
  %or87 = or i32 %and85, %shl86
  %conv88 = trunc i32 %or87 to i8
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv88, ptr %4, align 1
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool90.not = icmp eq i32 %26, 0
  br i1 %tobool90.not, label %if.end68.do.end159_crit_edge, label %do.body102

if.end68.do.end159_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end159

do.body102:                                       ; preds = %if.end68
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv) #13
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #13
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool103.not = icmp eq i32 %.pr, 0
  br i1 %tobool103.not, label %do.body102.do.end159_crit_edge, label %do.body118

do.body102.do.end159_crit_edge:                   ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end159

do.body118:                                       ; preds = %do.body102
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %div, i32 noundef %mul6, i32 noundef %mul10) #13
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #13
  %.pr229 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr229)
  %tobool119.not = icmp eq i32 %.pr229, 0
  br i1 %tobool119.not, label %do.body118.do.end159_crit_edge, label %do.body134

do.body118.do.end159_crit_edge:                   ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end159

do.body134:                                       ; preds = %do.body118
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %div16, i32 noundef %and, i32 noundef %div19, i32 noundef %and20) #13
  %call130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #13
  %.pr231.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr231.pr)
  %tobool135.not = icmp eq i32 %.pr231.pr, 0
  br i1 %tobool135.not, label %do.body134.do.end159_crit_edge, label %do.end139

do.body134.do.end159_crit_edge:                   ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end159

do.end139:                                        ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #11
  %conv144 = and i32 %div16, 255
  %conv148 = and i32 %shr81, 255
  %conv150 = and i32 %or87, 255
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %or, i32 noundef %conv144, i32 noundef %or78, i32 noundef %conv148, i32 noundef %conv150) #13
  %call156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #13
  br label %do.end159

do.end159:                                        ; preds = %do.end139, %do.body134.do.end159_crit_edge, %do.body118.do.end159_crit_edge, %do.body102.do.end159_crit_edge, %if.end68.do.end159_crit_edge
  %call161 = call fastcc i32 @mt2060_writeregs(ptr noundef %8, ptr noundef nonnull %b, i8 noundef zeroext 6)
  %call164 = call fastcc i32 @mt2060_readreg(ptr noundef %8, i8 noundef zeroext 6, ptr noundef nonnull %b)
  %27 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %b, align 1
  %29 = and i8 %28, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %29)
  %cmp168 = icmp eq i8 %29, -120
  br i1 %cmp168, label %do.end159.do.end175_crit_edge, label %if.end171

do.end159.do.end175_crit_edge:                    ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end175

if.end171:                                        ; preds = %do.end159
  tail call void @msleep(i32 noundef 4) #9
  %call164.1 = call fastcc i32 @mt2060_readreg(ptr noundef %8, i8 noundef zeroext 6, ptr noundef nonnull %b)
  %30 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %b, align 1
  %32 = and i8 %31, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %32)
  %cmp168.1 = icmp eq i8 %32, -120
  br i1 %cmp168.1, label %if.end171.do.end175_crit_edge, label %if.end171.1

if.end171.do.end175_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end175

if.end171.1:                                      ; preds = %if.end171
  tail call void @msleep(i32 noundef 4) #9
  %call164.2 = call fastcc i32 @mt2060_readreg(ptr noundef %8, i8 noundef zeroext 6, ptr noundef nonnull %b)
  %33 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %b, align 1
  %35 = and i8 %34, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %35)
  %cmp168.2 = icmp eq i8 %35, -120
  br i1 %cmp168.2, label %if.end171.1.do.end175_crit_edge, label %if.end171.2

if.end171.1.do.end175_crit_edge:                  ; preds = %if.end171.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end175

if.end171.2:                                      ; preds = %if.end171.1
  tail call void @msleep(i32 noundef 4) #9
  %call164.3 = call fastcc i32 @mt2060_readreg(ptr noundef %8, i8 noundef zeroext 6, ptr noundef nonnull %b)
  %36 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %b, align 1
  %38 = and i8 %37, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %38)
  %cmp168.3 = icmp eq i8 %38, -120
  br i1 %cmp168.3, label %if.end171.2.do.end175_crit_edge, label %if.end171.3

if.end171.2.do.end175_crit_edge:                  ; preds = %if.end171.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end175

if.end171.3:                                      ; preds = %if.end171.2
  tail call void @msleep(i32 noundef 4) #9
  %call164.4 = call fastcc i32 @mt2060_readreg(ptr noundef %8, i8 noundef zeroext 6, ptr noundef nonnull %b)
  %39 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %b, align 1
  %41 = and i8 %40, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %41)
  %cmp168.4 = icmp eq i8 %41, -120
  br i1 %cmp168.4, label %if.end171.3.do.end175_crit_edge, label %if.end171.4

if.end171.3.do.end175_crit_edge:                  ; preds = %if.end171.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end175

if.end171.4:                                      ; preds = %if.end171.3
  tail call void @msleep(i32 noundef 4) #9
  %call164.5 = call fastcc i32 @mt2060_readreg(ptr noundef %8, i8 noundef zeroext 6, ptr noundef nonnull %b)
  %42 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %b, align 1
  %44 = and i8 %43, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %44)
  %cmp168.5 = icmp eq i8 %44, -120
  br i1 %cmp168.5, label %if.end171.4.do.end175_crit_edge, label %if.end171.5

if.end171.4.do.end175_crit_edge:                  ; preds = %if.end171.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end175

if.end171.5:                                      ; preds = %if.end171.4
  tail call void @msleep(i32 noundef 4) #9
  %call164.6 = call fastcc i32 @mt2060_readreg(ptr noundef %8, i8 noundef zeroext 6, ptr noundef nonnull %b)
  %45 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %b, align 1
  %47 = and i8 %46, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %47)
  %cmp168.6 = icmp eq i8 %47, -120
  br i1 %cmp168.6, label %if.end171.5.do.end175_crit_edge, label %if.end171.6

if.end171.5.do.end175_crit_edge:                  ; preds = %if.end171.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end175

if.end171.6:                                      ; preds = %if.end171.5
  tail call void @msleep(i32 noundef 4) #9
  %call164.7 = call fastcc i32 @mt2060_readreg(ptr noundef %8, i8 noundef zeroext 6, ptr noundef nonnull %b)
  %48 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %b, align 1
  %50 = and i8 %49, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %50)
  %cmp168.7 = icmp eq i8 %50, -120
  br i1 %cmp168.7, label %if.end171.6.do.end175_crit_edge, label %if.end171.7

if.end171.6.do.end175_crit_edge:                  ; preds = %if.end171.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end175

if.end171.7:                                      ; preds = %if.end171.6
  tail call void @msleep(i32 noundef 4) #9
  %call164.8 = call fastcc i32 @mt2060_readreg(ptr noundef %8, i8 noundef zeroext 6, ptr noundef nonnull %b)
  %51 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %b, align 1
  %53 = and i8 %52, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %53)
  %cmp168.8 = icmp eq i8 %53, -120
  br i1 %cmp168.8, label %if.end171.7.do.end175_crit_edge, label %if.end171.8

if.end171.7.do.end175_crit_edge:                  ; preds = %if.end171.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end175

if.end171.8:                                      ; preds = %if.end171.7
  tail call void @msleep(i32 noundef 4) #9
  %call164.9 = call fastcc i32 @mt2060_readreg(ptr noundef %8, i8 noundef zeroext 6, ptr noundef nonnull %b)
  %54 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %b, align 1
  %56 = and i8 %55, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %56)
  %cmp168.9 = icmp eq i8 %56, -120
  br i1 %cmp168.9, label %if.end171.8.do.end175_crit_edge, label %if.end171.9

if.end171.8.do.end175_crit_edge:                  ; preds = %if.end171.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end175

if.end171.9:                                      ; preds = %if.end171.8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msleep(i32 noundef 4) #9
  br label %do.end175

do.end175:                                        ; preds = %if.end171.9, %if.end171.8.do.end175_crit_edge, %if.end171.7.do.end175_crit_edge, %if.end171.6.do.end175_crit_edge, %if.end171.5.do.end175_crit_edge, %if.end171.4.do.end175_crit_edge, %if.end171.3.do.end175_crit_edge, %if.end171.2.do.end175_crit_edge, %if.end171.1.do.end175_crit_edge, %if.end171.do.end175_crit_edge, %do.end159.do.end175_crit_edge
  %57 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool178.not = icmp eq ptr %58, null
  br i1 %tobool178.not, label %do.end175.if.end183_crit_edge, label %if.then179

do.end175.if.end183_crit_edge:                    ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end183

if.then179:                                       ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #11
  %call182 = tail call i32 %58(ptr noundef %fe, i32 noundef 0) #9
  br label %if.end183

if.end183:                                        ; preds = %if.then179, %do.end175.if.end183_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt2060_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %frequency1 = getelementptr inbounds %struct.mt2060_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency1, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mt2060_get_if_frequency(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %frequency) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 36150000, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt2060_writeregs(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %buf, i8 noundef zeroext %len) unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
  %0 = getelementptr inbounds i8, ptr %msg, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %conv = zext i8 %5 to i16
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %8 = ptrtoint ptr %len1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %len1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 16) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %buf2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %10 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i, ptr %buf2, align 4
  %conv4 = zext i8 %len to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %len)
  %cmp56 = icmp ugt i8 %len, 1
  br i1 %cmp56, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %sub = add nsw i32 %conv4, -1
  %i2c_max_regs = getelementptr inbounds %struct.mt2060_priv, ptr %priv, i32 0, i32 4
  %arrayidx18 = getelementptr i8, ptr %call7.i, i32 1
  %i2c = getelementptr inbounds %struct.mt2060_priv, ptr %priv, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rem.057 = phi i32 [ %sub, %for.body.lr.ph ], [ %sub33, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %i2c_max_regs to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %i2c_max_regs, align 2
  %conv6 = zext i8 %12 to i32
  %13 = call i32 @llvm.umin.i32(i32 %rem.057, i32 %conv6)
  %14 = trunc i32 %13 to i16
  %conv9 = add nuw nsw i16 %14, 1
  %15 = ptrtoint ptr %len1 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv9, ptr %len1, align 4
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buf, align 1
  %18 = trunc i32 %rem.057 to i8
  %19 = xor i8 %18, -1
  %20 = add i8 %19, %len
  %conv16 = add i8 %20, %17
  %21 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv16, ptr %call7.i, align 8
  %sub22 = sub i32 %conv4, %rem.057
  %arrayidx23 = getelementptr i8, ptr %buf, i32 %sub22
  %22 = call ptr @memcpy(ptr %arrayidx18, ptr %arrayidx23, i32 %13)
  %23 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c, align 4
  %call24 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call24)
  %cmp25.not = icmp eq i32 %call24, 1
  br i1 %cmp25.not, label %for.inc, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %13) #13
  br label %for.end

for.inc:                                          ; preds = %for.body
  %25 = ptrtoint ptr %i2c_max_regs to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %i2c_max_regs, align 2
  %conv32 = zext i8 %26 to i32
  %sub33 = sub nsw i32 %rem.057, %conv32
  %cmp = icmp sgt i32 %sub33, 0
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end, %if.end.for.end_crit_edge
  %rc.0 = phi i32 [ -121, %do.end ], [ 0, %if.end.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2060_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %msg.i141 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  %chip_id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %chip_id) #9
  %2 = ptrtoint ptr %chip_id to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %chip_id, align 1, !annotation !125
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt2060_probe.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt2060_probe, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !126

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt2060_probe.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.end9, label %if.end11

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40) #13
  br label %do.body76

if.end11:                                         ; preds = %do.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #9
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %if.end11.do.body76_crit_edge, label %if.end16

if.end11.do.body76_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body76

if.end16:                                         ; preds = %if.end11
  %dvb_frontend = getelementptr inbounds %struct.mt2060_platform_data, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dvb_frontend, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr, align 2
  %conv = trunc i16 %6 to i8
  %config = getelementptr inbounds %struct.mt2060_priv, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %config to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %config, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 4
  %clock_out18 = getelementptr inbounds %struct.mt2060_priv, ptr %call.i, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %clock_out18 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %clock_out18, align 1
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %config, ptr %call.i, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %i2c = getelementptr inbounds %struct.mt2060_priv, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %i2c to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %i2c, align 4
  %if1 = getelementptr inbounds %struct.mt2060_platform_data, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %if1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %if1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool21.not = icmp eq i16 %16, 0
  %spec.select = select i1 %tobool21.not, i16 1220, i16 %16
  %if1_freq = getelementptr inbounds %struct.mt2060_priv, ptr %call.i, i32 0, i32 6
  %17 = ptrtoint ptr %if1_freq to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %spec.select, ptr %if1_freq, align 4
  %client25 = getelementptr inbounds %struct.mt2060_priv, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %client25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %client, ptr %client25, align 4
  %i2c_write_max = getelementptr inbounds %struct.mt2060_platform_data, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %i2c_write_max to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %i2c_write_max, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %bf.load)
  %tobool26.not = icmp ult i8 %bf.load, 8
  %bf.lshr = lshr i8 %bf.load, 3
  %sub = add nsw i8 %bf.lshr, -1
  %cond34 = select i1 %tobool26.not, i8 -1, i8 %sub
  %i2c_max_regs = getelementptr inbounds %struct.mt2060_priv, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %i2c_max_regs to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %cond34, ptr %i2c_max_regs, align 2
  %sleep = getelementptr inbounds %struct.mt2060_priv, ptr %call.i, i32 0, i32 8
  %21 = ptrtoint ptr %sleep to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %sleep, align 1
  %call36 = call fastcc i32 @mt2060_readreg(ptr noundef nonnull %call.i, i8 noundef zeroext 0, ptr noundef nonnull %chip_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %do.body40, label %if.end16.do.body76_crit_edge

if.end16.do.body76_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body76

do.body40:                                        ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt2060_probe.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt2060_probe, %if.then52)) #9
          to label %do.end57 [label %if.then52], !srcloc !126

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %chip_id, align 1
  %conv54 = zext i8 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt2060_probe.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %conv54) #9
  br label %do.end57

do.end57:                                         ; preds = %if.then52, %do.body40
  %24 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %chip_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %25)
  %cmp.not = icmp eq i8 %25, 99
  br i1 %cmp.not, label %if.end61, label %do.end57.do.body76_crit_edge

do.end57.do.body76_crit_edge:                     ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body76

if.end61:                                         ; preds = %do.end57
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %26 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 196607, ptr %26, align 4
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  %conv.i = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3264, i32 noundef 2) #12
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %mt2060_writereg.exit.thread, label %if.end.i

mt2060_writereg.exit.thread:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  br label %do.body76

if.end.i:                                         ; preds = %if.end61
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 9, ptr %call7.i.i, align 8
  %arrayidx2.i = getelementptr i8, ptr %call7.i.i, i32 1
  %36 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 32, ptr %arrayidx2.i, align 1
  %37 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i, ptr %buf.i, align 4
  %38 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c, align 4
  %call4.i = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i)
  %cmp.not.i = icmp eq i32 %call4.i, 1
  br i1 %cmp.not.i, label %if.end65, label %mt2060_writereg.exit

mt2060_writereg.exit:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  br label %do.body76

if.end65:                                         ; preds = %if.end.i
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call fastcc void @mt2060_calibrate(ptr noundef nonnull %call.i)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i141) #9
  %40 = getelementptr inbounds i8, ptr %msg.i141, i32 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 196607, ptr %40, align 4
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 1
  %conv.i142 = zext i8 %45 to i16
  %46 = ptrtoint ptr %msg.i141 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i142, ptr %msg.i141, align 4
  %flags.i143 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i141, i32 0, i32 1
  %47 = ptrtoint ptr %flags.i143 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %flags.i143, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i145 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3264, i32 noundef 2) #12
  %tobool.not.i146 = icmp eq ptr %call7.i.i145, null
  br i1 %tobool.not.i146, label %mt2060_writereg.exit158.thread, label %if.end.i152

mt2060_writereg.exit158.thread:                   ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i141) #9
  br label %do.body76

if.end.i152:                                      ; preds = %if.end65
  %buf.i147 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i141, i32 0, i32 3
  %49 = ptrtoint ptr %call7.i.i145 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 9, ptr %call7.i.i145, align 8
  %arrayidx2.i148 = getelementptr i8, ptr %call7.i.i145, i32 1
  %50 = ptrtoint ptr %arrayidx2.i148 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -24, ptr %arrayidx2.i148, align 1
  %51 = ptrtoint ptr %buf.i147 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i.i145, ptr %buf.i147, align 4
  %52 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i2c, align 4
  %call4.i150 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %msg.i141, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i150)
  %cmp.not.i151 = icmp eq i32 %call4.i150, 1
  br i1 %cmp.not.i151, label %do.end72, label %mt2060_writereg.exit158

mt2060_writereg.exit158:                          ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  call void @kfree(ptr noundef nonnull %call7.i.i145) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i141) #9
  br label %do.body76

do.end72:                                         ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call7.i.i145) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i141) #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.45) #13
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %4, i32 0, i32 1, i32 32
  %54 = call ptr @memcpy(ptr %tuner_ops, ptr @mt2060_tuner_ops, i32 220)
  %release = getelementptr inbounds %struct.dvb_frontend, ptr %4, i32 0, i32 1, i32 32, i32 1
  %55 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %release, align 4
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %4, i32 0, i32 4
  %56 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i, ptr %tuner_priv, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %57 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

do.body76:                                        ; preds = %mt2060_writereg.exit158, %mt2060_writereg.exit158.thread, %mt2060_writereg.exit, %mt2060_writereg.exit.thread, %do.end57.do.body76_crit_edge, %if.end16.do.body76_crit_edge, %if.end11.do.body76_crit_edge, %do.end9
  %ret.0 = phi i32 [ -121, %mt2060_writereg.exit ], [ -121, %mt2060_writereg.exit158 ], [ -22, %do.end9 ], [ -12, %if.end11.do.body76_crit_edge ], [ -19, %if.end16.do.body76_crit_edge ], [ -19, %do.end57.do.body76_crit_edge ], [ -12, %mt2060_writereg.exit.thread ], [ -12, %mt2060_writereg.exit158.thread ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt2060_probe.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt2060_probe, %if.then88)) #9
          to label %cleanup [label %if.then88], !srcloc !126

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt2060_probe.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.48, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then88, %do.body76, %do.end72
  %retval.0 = phi i32 [ 0, %do.end72 ], [ %ret.0, %if.then88 ], [ %ret.0, %do.body76 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %chip_id) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2060_remove(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt2060_remove.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt2060_remove, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !126

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt2060_remove.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !16, !18, !20, !22, !23, !25, !26, !28, !29, !30, !31, !33, !35, !36, !37, !38, !40, !41, !42, !43, !44, !45, !46, !48, !49, !50, !51, !52, !54, !55, !56, !57, !58, !60, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !75, !76, !78, !79, !80, !81, !82, !84, !86, !88, !90, !92, !93, !95, !96, !97, !98, !99, !101, !102, !104, !105, !106, !107, !109, !110, !112, !113}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/mt2060.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/mt2060.c", i32 23, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/mt2060.c", i32 431, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mt2060_attach._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @mt2060_attach._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__ksymtab_mt2060_attach, !12, !"__ksymtab_mt2060_attach", i1 false, i1 false}
!12 = !{!"../drivers/media/tuners/mt2060.c", i32 443, i32 1}
!13 = !{ptr @__initcall__kmod_mt2060__298_535_mt2060_driver_init6, !14, !"__initcall__kmod_mt2060__298_535_mt2060_driver_init6", i1 false, i1 false}
!14 = !{!"../drivers/media/tuners/mt2060.c", i32 535, i32 1}
!15 = !{ptr @__exitcall_mt2060_driver_exit, !14, !"__exitcall_mt2060_driver_exit", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_author299, !17, !"__UNIQUE_ID_author299", i1 false, i1 false}
!17 = !{!"../drivers/media/tuners/mt2060.c", i32 537, i32 1}
!18 = !{ptr @__UNIQUE_ID_description300, !19, !"__UNIQUE_ID_description300", i1 false, i1 false}
!19 = !{!"../drivers/media/tuners/mt2060.c", i32 538, i32 1}
!20 = !{ptr @__UNIQUE_ID_file301, !21, !"__UNIQUE_ID_file301", i1 false, i1 false}
!21 = !{!"../drivers/media/tuners/mt2060.c", i32 539, i32 1}
!22 = !{ptr @__UNIQUE_ID_license302, !21, !"__UNIQUE_ID_license302", i1 false, i1 false}
!23 = !{ptr @debug, !24, !"debug", i1 false, i1 false}
!24 = !{!"../drivers/media/tuners/mt2060.c", i32 21, i32 12}
!25 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/tuners/mt2060.c", i32 48, i32 3}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mt2060_readreg._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @mt2060_readreg._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @mt2060_tuner_ops, !32, !"mt2060_tuner_ops", i1 false, i1 false}
!32 = !{!"../drivers/media/tuners/mt2060.c", i32 386, i32 35}
!33 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/tuners/mt2060.c", i32 76, i32 3}
!35 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @mt2060_writereg._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @mt2060_writereg._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/tuners/mt2060.c", i32 254, i32 2}
!40 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mt2060_set_params._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @mt2060_set_params._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @mt2060_set_params._entry.9, !39, !"_entry", i1 false, i1 false}
!45 = !{ptr @mt2060_set_params._entry_ptr.11, !39, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/tuners/mt2060.c", i32 255, i32 2}
!48 = !{ptr @mt2060_set_params._entry.12, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @mt2060_set_params._entry_ptr.14, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @mt2060_set_params._entry.15, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @mt2060_set_params._entry_ptr.16, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/tuners/mt2060.c", i32 256, i32 2}
!54 = !{ptr @mt2060_set_params._entry.17, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mt2060_set_params._entry_ptr.19, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @mt2060_set_params._entry.20, !53, !"_entry", i1 false, i1 false}
!57 = !{ptr @mt2060_set_params._entry_ptr.21, !53, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/tuners/mt2060.c", i32 257, i32 2}
!60 = !{ptr @mt2060_set_params._entry.22, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @mt2060_set_params._entry_ptr.24, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @mt2060_set_params._entry.25, !59, !"_entry", i1 false, i1 false}
!63 = !{ptr @mt2060_set_params._entry_ptr.26, !59, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/tuners/mt2060.c", i32 106, i32 4}
!66 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @mt2060_writeregs._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @mt2060_writeregs._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/tuners/mt2060.c", i32 315, i32 3}
!71 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @mt2060_calibrate._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @mt2060_calibrate._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @mt2060_calibrate._entry.31, !70, !"_entry", i1 false, i1 false}
!75 = !{ptr @mt2060_calibrate._entry_ptr.32, !70, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/tuners/mt2060.c", i32 317, i32 3}
!78 = !{ptr @mt2060_calibrate._entry.33, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @mt2060_calibrate._entry_ptr.35, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @mt2060_calibrate._entry.36, !77, !"_entry", i1 false, i1 false}
!81 = !{ptr @mt2060_calibrate._entry_ptr.37, !77, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @mt2060_config1, !83, !"mt2060_config1", i1 false, i1 false}
!83 = !{!"../drivers/media/tuners/mt2060.c", i32 118, i32 11}
!84 = !{ptr @mt2060_config2, !85, !"mt2060_config2", i1 false, i1 false}
!85 = !{!"../drivers/media/tuners/mt2060.c", i32 124, i32 11}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/tuners/mt2060.c", i32 527, i32 11}
!88 = !{ptr @mt2060_driver, !89, !"mt2060_driver", i1 false, i1 false}
!89 = !{!"../drivers/media/tuners/mt2060.c", i32 525, i32 26}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/tuners/mt2060.c", i32 454, i32 2}
!92 = !{ptr @mt2060_probe.__UNIQUE_ID_ddebug294, !91, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/tuners/mt2060.c", i32 457, i32 3}
!95 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @mt2060_probe._entry, !94, !"_entry", i1 false, i1 false}
!98 = !{ptr @mt2060_probe._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/tuners/mt2060.c", i32 484, i32 2}
!101 = !{ptr @mt2060_probe.__UNIQUE_ID_ddebug295, !100, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/tuners/mt2060.c", i32 500, i32 2}
!104 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @mt2060_probe._entry.44, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @mt2060_probe._entry_ptr.47, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/tuners/mt2060.c", i32 508, i32 2}
!109 = !{ptr @mt2060_probe.__UNIQUE_ID_ddebug296, !108, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/tuners/mt2060.c", i32 514, i32 2}
!112 = !{ptr @mt2060_remove.__UNIQUE_ID_ddebug297, !111, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!113 = !{ptr @mt2060_id_table, !114, !"mt2060_id_table", i1 false, i1 false}
!114 = !{!"../drivers/media/tuners/mt2060.c", i32 519, i32 35}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{i8 0, i8 2}
!125 = !{!"auto-init"}
!126 = !{i64 2148963946, i64 2148963951, i64 2148963964, i64 2148964008, i64 2148964042, i64 2148964063}
