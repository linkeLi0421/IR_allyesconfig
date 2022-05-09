; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/stv6110x.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/stv6110x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+stv6110x_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_stv6110x_attach\09\09\09\09"
module asm "\09.long\09__crc_stv6110x_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stv6110x_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22stv6110x_attach\22\09\09\09\09\09"
module asm "__kstrtabns_stv6110x_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.stv6110x_devctl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.stv6110x_state = type { ptr, ptr, ptr, [8 x i8], ptr }
%struct.stv6110x_config = type { i8, i32, i8, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@__param_str_verbose = internal constant [17 x i8] c"stv6110x.verbose\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@verbose = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype290 = internal constant [30 x i8] c"stv6110x.parmtype=verbose:int\00", section ".modinfo", align 1
@__UNIQUE_ID_verbose291 = internal constant [42 x i8] c"stv6110x.parm=verbose:Set Verbosity level\00", section ".modinfo", align 1
@stv6110x_ctl = internal global { %struct.stv6110x_devctl, [52 x i8] } { %struct.stv6110x_devctl { ptr @stv6110x_init, ptr @stv6110x_sleep, ptr @stv6110x_set_mode, ptr @stv6110x_set_frequency, ptr @stv6110x_get_frequency, ptr @stv6110x_set_bandwidth, ptr @stv6110x_get_bandwidth, ptr @stv6110x_set_bbgain, ptr @stv6110x_get_bbgain, ptr @stv6110x_set_refclock, ptr @stv6110x_get_status }, [52 x i8] zeroinitializer }, align 32
@stv6110x_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"STV6110(A) Silicon Tuner\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 0, i32 0, i32 0 }, ptr @stv6110x_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@stv6110x_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 469, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Attaching STV6110x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stv6110x_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/dvb-frontends/stv6110x.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stv6110x_attach._entry_ptr = internal global ptr @stv6110x_attach._entry, section ".printk_index", align 4
@__kstrtab_stv6110x_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_stv6110x_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_stv6110x_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stv6110x_attach to i32), ptr @__kstrtab_stv6110x_attach, ptr @__kstrtabns_stv6110x_attach }, section "___ksymtab+stv6110x_attach", align 4
@__initcall__kmod_stv6110x__293_490_stv6110x_driver_init6 = internal global ptr @stv6110x_driver_init, section ".initcall6.init", align 4
@stv6110x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @stv6110x_probe, ptr @stv6110x_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.18, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @stv6110x_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_stv6110x_driver_exit = internal global ptr @stv6110x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [29 x i8] c"stv6110x.author=Manu Abraham\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [44 x i8] c"stv6110x.description=STV6110x Silicon tuner\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [51 x i8] c"stv6110x.file=drivers/media/dvb-frontends/stv6110x\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [21 x i8] c"stv6110x.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@stv6110x_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: Initialization failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stv6110x_init\00", [18 x i8] zeroinitializer }, align 32
@stv6110x_init._entry_ptr = internal global ptr @stv6110x_init._entry, section ".printk_index", align 4
@stv6110x_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015%s: Initialization failed\0A\00", [35 x i8] zeroinitializer }, align 32
@stv6110x_init._entry_ptr.9 = internal global ptr @stv6110x_init._entry.7, section ".printk_index", align 4
@stv6110x_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: Initialization failed\0A\00", [35 x i8] zeroinitializer }, align 32
@stv6110x_init._entry_ptr.12 = internal global ptr @stv6110x_init._entry.10, section ".printk_index", align 4
@stv6110x_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: Initialization failed\0A\00", [35 x i8] zeroinitializer }, align 32
@stv6110x_init._entry_ptr.15 = internal global ptr @stv6110x_init._entry.13, section ".printk_index", align 4
@stv6110x_write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: i2c wr: len=%d is too big!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stv6110x_write_regs\00", [44 x i8] zeroinitializer }, align 32
@stv6110x_write_regs._entry_ptr = internal global ptr @stv6110x_write_regs._entry, section ".printk_index", align 4
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"stv6110x\00", [23 x i8] zeroinitializer }, align 32
@stv6110x_write_regs._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013%s: I/O Error\0A\00", [47 x i8] zeroinitializer }, align 32
@stv6110x_write_regs._entry_ptr.21 = internal global ptr @stv6110x_write_regs._entry.19, section ".printk_index", align 4
@stv6110x_write_regs._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\015%s: I/O Error\0A\00", [47 x i8] zeroinitializer }, align 32
@stv6110x_write_regs._entry_ptr.24 = internal global ptr @stv6110x_write_regs._entry.22, section ".printk_index", align 4
@stv6110x_write_regs._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.17, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016%s: I/O Error\0A\00", [47 x i8] zeroinitializer }, align 32
@stv6110x_write_regs._entry_ptr.27 = internal global ptr @stv6110x_write_regs._entry.25, section ".printk_index", align 4
@stv6110x_write_regs._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.17, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: I/O Error\0A\00", [47 x i8] zeroinitializer }, align 32
@stv6110x_write_regs._entry_ptr.30 = internal global ptr @stv6110x_write_regs._entry.28, section ".printk_index", align 4
@stv6110x_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.31, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stv6110x_set_mode\00", [46 x i8] zeroinitializer }, align 32
@stv6110x_set_mode._entry_ptr = internal global ptr @stv6110x_set_mode._entry, section ".printk_index", align 4
@stv6110x_set_mode._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.31, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stv6110x_set_mode._entry_ptr.33 = internal global ptr @stv6110x_set_mode._entry.32, section ".printk_index", align 4
@stv6110x_set_mode._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.31, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stv6110x_set_mode._entry_ptr.35 = internal global ptr @stv6110x_set_mode._entry.34, section ".printk_index", align 4
@stv6110x_set_mode._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.31, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stv6110x_set_mode._entry_ptr.37 = internal global ptr @stv6110x_set_mode._entry.36, section ".printk_index", align 4
@stv6110x_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.38, ptr @.str.2, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stv6110x_read_reg\00", [46 x i8] zeroinitializer }, align 32
@stv6110x_read_reg._entry_ptr = internal global ptr @stv6110x_read_reg._entry, section ".printk_index", align 4
@stv6110x_read_reg._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.38, ptr @.str.2, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stv6110x_read_reg._entry_ptr.40 = internal global ptr @stv6110x_read_reg._entry.39, section ".printk_index", align 4
@stv6110x_read_reg._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.38, ptr @.str.2, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stv6110x_read_reg._entry_ptr.42 = internal global ptr @stv6110x_read_reg._entry.41, section ".printk_index", align 4
@stv6110x_read_reg._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.38, ptr @.str.2, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stv6110x_read_reg._entry_ptr.44 = internal global ptr @stv6110x_read_reg._entry.43, section ".printk_index", align 4
@stv6110x_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"stv6110x\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@stv6110x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 429, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Probed STV6110x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv6110x_probe\00", [17 x i8] zeroinitializer }, align 32
@stv6110x_probe._entry_ptr = internal global ptr @stv6110x_probe._entry, section ".printk_index", align 4
@stv6110x_get_devctl.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stv6110x_get_devctl\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.50 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 2, i64 4, i64 8]
@___asan_gen_.52 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 26, i32 21 }
@___asan_gen_.55 = private unnamed_addr constant [13 x i8] c"stv6110x_ctl\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 380, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant [13 x i8] c"stv6110x_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 371, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 469, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [16 x i8] c"stv6110x_driver\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 480, i32 26 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 101, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 65, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 79, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 298, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 43, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [18 x i8] c"stv6110x_id_table\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 474, i32 35 }
@___asan_gen_.178 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 429, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private constant [42 x i8] c"../drivers/media/dvb-frontends/stv6110x.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 404, i32 2 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__UNIQUE_ID_verbose291, ptr @__UNIQUE_ID_verbosetype290, ptr @__exitcall_stv6110x_driver_exit, ptr @__initcall__kmod_stv6110x__293_490_stv6110x_driver_init6, ptr @__ksymtab_stv6110x_attach, ptr @__param_verbose, ptr @stv6110x_attach._entry, ptr @stv6110x_attach._entry_ptr, ptr @stv6110x_driver_exit, ptr @stv6110x_init._entry, ptr @stv6110x_init._entry.10, ptr @stv6110x_init._entry.13, ptr @stv6110x_init._entry.7, ptr @stv6110x_init._entry_ptr, ptr @stv6110x_init._entry_ptr.12, ptr @stv6110x_init._entry_ptr.15, ptr @stv6110x_init._entry_ptr.9, ptr @stv6110x_probe._entry, ptr @stv6110x_probe._entry_ptr, ptr @stv6110x_read_reg._entry, ptr @stv6110x_read_reg._entry.39, ptr @stv6110x_read_reg._entry.41, ptr @stv6110x_read_reg._entry.43, ptr @stv6110x_read_reg._entry_ptr, ptr @stv6110x_read_reg._entry_ptr.40, ptr @stv6110x_read_reg._entry_ptr.42, ptr @stv6110x_read_reg._entry_ptr.44, ptr @stv6110x_set_mode._entry, ptr @stv6110x_set_mode._entry.32, ptr @stv6110x_set_mode._entry.34, ptr @stv6110x_set_mode._entry.36, ptr @stv6110x_set_mode._entry_ptr, ptr @stv6110x_set_mode._entry_ptr.33, ptr @stv6110x_set_mode._entry_ptr.35, ptr @stv6110x_set_mode._entry_ptr.37, ptr @stv6110x_write_regs._entry, ptr @stv6110x_write_regs._entry.19, ptr @stv6110x_write_regs._entry.22, ptr @stv6110x_write_regs._entry.25, ptr @stv6110x_write_regs._entry.28, ptr @stv6110x_write_regs._entry_ptr, ptr @stv6110x_write_regs._entry_ptr.21, ptr @stv6110x_write_regs._entry_ptr.24, ptr @stv6110x_write_regs._entry_ptr.27, ptr @stv6110x_write_regs._entry_ptr.30, ptr @verbose, ptr @stv6110x_ctl, ptr @stv6110x_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @stv6110x_driver, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.38, ptr @stv6110x_id_table, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110x_ctl to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110x_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110x_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110x_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110x_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110x_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110x_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110x_write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110x_write_regs._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110x_write_regs._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110x_write_regs._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110x_write_regs._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110x_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110x_set_mode._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110x_set_mode._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110x_set_mode._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110x_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110x_read_reg._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110x_read_reg._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110x_read_reg._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110x_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @stv6110x_attach(ptr noundef %fe, ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %fe, ptr %call7.i.i, align 8
  %i2c1 = getelementptr inbounds %struct.stv6110x_state, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %i2c1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %i2c1, align 4
  %config2 = getelementptr inbounds %struct.stv6110x_state, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %config2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %config, ptr %config2, align 8
  %devctl = getelementptr inbounds %struct.stv6110x_state, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %devctl to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @stv6110x_ctl, ptr %devctl, align 4
  %regs.i = getelementptr inbounds %struct.stv6110x_state, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 509430697044338206, ptr %regs.i, align 4
  %clk_div.i = getelementptr inbounds %struct.stv6110x_config, ptr %config, i32 0, i32 2
  %6 = ptrtoint ptr %clk_div.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %clk_div.i, align 4
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %sw.bb.i [
    i8 0, label %if.end.sw.bb23.i_crit_edge
    i8 2, label %sw.bb5.i
    i8 4, label %sw.bb14.i
    i8 8, label %if.end.sw.bb23.i_crit_edge17
  ]

if.end.sw.bb23.i_crit_edge17:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb23.i

if.end.sw.bb23.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb23.i

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.stv6110x_state, ptr %call7.i.i, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %11 = and i8 %10, 63
  store i8 %11, ptr %arrayidx.i, align 1
  br label %stv6110x_setup_divider.exit

sw.bb5.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx7.i = getelementptr %struct.stv6110x_state, ptr %call7.i.i, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx7.i, align 1
  %14 = and i8 %13, 63
  %15 = or i8 %14, 64
  store i8 %15, ptr %arrayidx7.i, align 1
  br label %stv6110x_setup_divider.exit

sw.bb14.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx16.i = getelementptr %struct.stv6110x_state, ptr %call7.i.i, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx16.i, align 1
  %18 = and i8 %17, 63
  %19 = or i8 %18, -128
  store i8 %19, ptr %arrayidx16.i, align 1
  br label %stv6110x_setup_divider.exit

sw.bb23.i:                                        ; preds = %if.end.sw.bb23.i_crit_edge, %if.end.sw.bb23.i_crit_edge17
  %arrayidx25.i = getelementptr %struct.stv6110x_state, ptr %call7.i.i, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx25.i, align 1
  %22 = or i8 %21, -64
  store i8 %22, ptr %arrayidx25.i, align 1
  br label %stv6110x_setup_divider.exit

stv6110x_setup_divider.exit:                      ; preds = %sw.bb23.i, %sw.bb14.i, %sw.bb5.i, %sw.bb.i
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %tuner_ops.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %23 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %tuner_priv.i, align 4
  %24 = call ptr @memcpy(ptr %tuner_ops.i, ptr @stv6110x_ops, i32 220)
  %25 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %26, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str) #11
  %27 = ptrtoint ptr %devctl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %devctl, align 4
  br label %cleanup

cleanup:                                          ; preds = %stv6110x_setup_divider.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %28, %stv6110x_setup_divider.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stv6110x_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @stv6110x_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stv6110x_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @stv6110x_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv6110x_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i = alloca [64 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %regs = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 3
  %config1.i = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %config1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config1.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i) #7
  %4 = getelementptr inbounds i8, ptr %buf.i, i32 1
  %5 = getelementptr inbounds i8, ptr %buf.i, i32 9
  %6 = call ptr @memset(ptr %5, i32 255, i32 55)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 655359, ptr %7, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %3, align 4
  %conv.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %buf5.i, align 4
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %buf.i, align 1
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %regs, align 1
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %16, ptr %4, align 1
  %i2c.i = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c.i, align 4
  %call15.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15.i)
  %cmp16.not.i = icmp eq i32 %call15.i, 1
  br i1 %cmp16.not.i, label %stv6110x_write_regs.exit, label %do.body19.i

do.body19.i:                                      ; preds = %entry
  %20 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp20.not.i = icmp eq i32 %20, 0
  br i1 %cmp20.not.i, label %do.body.thread, label %do.body

do.body.thread:                                   ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i) #7
  br label %cleanup

stv6110x_write_regs.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i) #7
  br label %cleanup

do.body:                                          ; preds = %do.body19.i
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17) #11
  %.pr = load i32, ptr @verbose, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp1.not = icmp eq i32 %.pr, 0
  br i1 %cmp1.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %stv6110x_write_regs.exit, %do.body.thread
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %stv6110x_write_regs.exit ], [ -1, %do.body.thread ], [ -1, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv6110x_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i.i.i = alloca [64 x i8], align 1
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  %regs.i = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %regs.i, align 4
  %4 = and i8 %3, -8
  store i8 %4, ptr %regs.i, align 4
  %config1.i.i.i = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %config1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %config1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i.i) #7
  %7 = getelementptr inbounds i8, ptr %buf.i.i.i, i32 2
  %8 = call ptr @memset(ptr %7, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  %9 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 196607, ptr %9, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %6, align 4
  %conv.i.i.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf5.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf.i.i.i, ptr %buf5.i.i.i, align 4
  %16 = getelementptr inbounds i8, ptr %buf.i.i.i, i32 1
  %17 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %buf.i.i.i, align 1
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %4, ptr %16, align 1
  %i2c.i.i.i = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c.i.i.i, align 4
  %call15.i.i.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15.i.i.i)
  %cmp16.not.i.i.i = icmp eq i32 %call15.i.i.i, 1
  br i1 %cmp16.not.i.i.i, label %stv6110x_write_reg.exit.i, label %do.body19.i.i.i

do.body19.i.i.i:                                  ; preds = %if.then
  %21 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp20.not.i.i.i = icmp eq i32 %21, 0
  br i1 %cmp20.not.i.i.i, label %do.body.thread.i, label %do.body.i

do.body.thread.i:                                 ; preds = %do.body19.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i.i) #7
  br label %return

stv6110x_write_reg.exit.i:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i.i) #7
  br label %return

do.body.i:                                        ; preds = %do.body19.i.i.i
  %call29.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17) #11
  %.pr.i = load i32, ptr @verbose, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp48.not.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp48.not.i, label %do.body.i.return_crit_edge, label %do.end.i

do.body.i.return_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call54.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.31) #11
  br label %return

return:                                           ; preds = %do.end.i, %do.body.i.return_crit_edge, %stv6110x_write_reg.exit.i, %do.body.thread.i, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ -5, %do.end.i ], [ 0, %stv6110x_write_reg.exit.i ], [ -5, %do.body.thread.i ], [ -5, %do.body.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv6110x_set_mode(ptr nocapture noundef readonly %fe, i32 noundef %mode) #0 align 64 {
entry:
  %buf.i.i = alloca [64 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %mode, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb20
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regs = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %regs, align 4
  %5 = and i8 %4, -8
  store i8 %5, ptr %regs, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regs21 = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %regs21 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %regs21, align 4
  %8 = or i8 %7, 7
  store i8 %8, ptr %regs21, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %sw.bb, %entry.sw.epilog_crit_edge
  %regs45 = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %regs45 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %regs45, align 4
  %config1.i.i = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i) #7
  %13 = getelementptr inbounds i8, ptr %buf.i.i, i32 2
  %14 = call ptr @memset(ptr %13, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %15 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 196607, ptr %15, align 4
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %12, align 4
  %conv.i.i = zext i8 %18 to i16
  %19 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %flags.i.i, align 2
  %buf5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %buf5.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf.i.i, ptr %buf5.i.i, align 4
  %22 = getelementptr inbounds i8, ptr %buf.i.i, i32 1
  %23 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %buf.i.i, align 1
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %10, ptr %22, align 1
  %i2c.i.i = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c.i.i, align 4
  %call15.i.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15.i.i)
  %cmp16.not.i.i = icmp eq i32 %call15.i.i, 1
  br i1 %cmp16.not.i.i, label %stv6110x_write_reg.exit, label %do.body19.i.i

do.body19.i.i:                                    ; preds = %sw.epilog
  %27 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp20.not.i.i = icmp eq i32 %27, 0
  br i1 %cmp20.not.i.i, label %do.body.thread, label %do.body

do.body.thread:                                   ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i) #7
  br label %cleanup

stv6110x_write_reg.exit:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i) #7
  br label %cleanup

do.body:                                          ; preds = %do.body19.i.i
  %call29.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17) #11
  %.pr = load i32, ptr @verbose, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp48.not = icmp eq i32 %.pr, 0
  br i1 %cmp48.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.31) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %stv6110x_write_reg.exit, %do.body.thread
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %stv6110x_write_reg.exit ], [ -5, %do.body.thread ], [ -5, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv6110x_set_frequency(ptr nocapture noundef readonly %fe, i32 noundef %frequency) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i276 = alloca [64 x i8], align 1
  %msg.i.i277 = alloca %struct.i2c_msg, align 4
  %buf.i.i261 = alloca [64 x i8], align 1
  %msg.i.i262 = alloca %struct.i2c_msg, align 4
  %buf.i.i246 = alloca [64 x i8], align 1
  %msg.i.i247 = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [64 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %regs = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %regs, align 4
  %4 = and i8 %3, 7
  %config = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %config, align 4
  %refclk = getelementptr inbounds %struct.stv6110x_config, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %refclk, align 4
  %div = udiv i32 %8, 1000000
  %div.tr = trunc i32 %div to i8
  %9 = shl i8 %div.tr, 3
  %10 = or i8 %9, %4
  %conv1 = xor i8 %10, -128
  store i8 %conv1, ptr %regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023001, i32 %frequency)
  %cmp = icmp ult i32 %frequency, 1023001
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx6 = getelementptr %struct.stv6110x_state, ptr %1, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx6, align 1
  %13 = and i8 %12, -49
  %14 = or i8 %13, 16
  store i8 %14, ptr %arrayidx6, align 1
  br label %if.end78

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1300001, i32 %frequency)
  %cmp21 = icmp ult i32 %frequency, 1300001
  br i1 %cmp21, label %if.then23, label %if.else40

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx25 = getelementptr %struct.stv6110x_state, ptr %1, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx25, align 1
  %17 = or i8 %16, 48
  store i8 %17, ptr %arrayidx25, align 1
  br label %if.end78

if.else40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 2046001, i32 %frequency)
  %cmp41 = icmp ult i32 %frequency, 2046001
  %arrayidx45 = getelementptr %struct.stv6110x_state, ptr %1, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx45, align 1
  %20 = and i8 %19, -49
  br i1 %cmp41, label %if.then43, label %if.else60

if.then43:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx45, align 1
  br label %if.end78

if.else60:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #9
  %22 = or i8 %20, 32
  %23 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx45, align 1
  br label %if.end78

if.end78:                                         ; preds = %if.else60, %if.then43, %if.then23, %if.then
  %pVal.0 = phi i32 [ 40, %if.then ], [ 40, %if.then23 ], [ 20, %if.then43 ], [ 20, %if.else60 ]
  %24 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %refclk, align 4
  %div84 = udiv i32 %25, 100000
  %div111245 = lshr i32 %div84, 1
  %div86244.1 = lshr i32 %div84, 2
  %sub87.1 = sub nsw i32 %div86244.1, %pVal.0
  %26 = tail call i32 @llvm.abs.i32(i32 %sub87.1, i1 true)
  %sub92.1 = sub nsw i32 %div111245, %pVal.0
  %27 = tail call i32 @llvm.abs.i32(i32 %sub92.1, i1 true)
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %27)
  %cmp101.1 = icmp ult i32 %26, %27
  %rDivOpt.1.1 = zext i1 %cmp101.1 to i32
  %add109.1 = select i1 %cmp101.1, i32 2, i32 1
  %div111245.1 = lshr i32 %div84, %add109.1
  %div86244.2 = lshr i32 %div84, 3
  %sub87.2 = sub nsw i32 %div86244.2, %pVal.0
  %28 = tail call i32 @llvm.abs.i32(i32 %sub87.2, i1 true)
  %sub92.2 = sub nsw i32 %div111245.1, %pVal.0
  %29 = tail call i32 @llvm.abs.i32(i32 %sub92.2, i1 true)
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %29)
  %cmp101.2 = icmp ult i32 %28, %29
  %rDivOpt.1.2 = select i1 %cmp101.2, i32 2, i32 %rDivOpt.1.1
  %add109.2 = add nuw nsw i32 %rDivOpt.1.2, 1
  %div111245.2 = lshr i32 %div84, %add109.2
  %div86244.3 = lshr i32 %div84, 4
  %sub87.3 = sub nsw i32 %div86244.3, %pVal.0
  %30 = tail call i32 @llvm.abs.i32(i32 %sub87.3, i1 true)
  %sub92.3 = sub nsw i32 %div111245.2, %pVal.0
  %31 = tail call i32 @llvm.abs.i32(i32 %sub92.3, i1 true)
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %31)
  %cmp101.3 = icmp ult i32 %30, %31
  %rDivOpt.1.3 = select i1 %cmp101.3, i32 3, i32 %rDivOpt.1.2
  %add112 = add nuw nsw i32 %rDivOpt.1.3, 1
  %mul = shl i32 %frequency, %add112
  %mul114 = mul i32 %mul, %pVal.0
  %div117 = udiv i32 %25, 1000
  %div118 = udiv i32 %mul114, %div117
  %add119 = add i32 %div118, 5
  %div120 = udiv i32 %add119, 10
  %arrayidx122 = getelementptr %struct.stv6110x_state, ptr %1, i32 0, i32 3, i32 3
  %32 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx122, align 1
  %34 = and i8 %33, 48
  %rDivOpt.0.tr = trunc i32 %rDivOpt.1.3 to i8
  %35 = shl nuw i8 %rDivOpt.0.tr, 6
  %conv127 = or i8 %34, %35
  %shr = lshr i32 %div120, 8
  %36 = trunc i32 %shr to i8
  %conv137 = or i8 %conv127, %36
  store i8 %conv137, ptr %arrayidx122, align 1
  %arrayidx141 = getelementptr %struct.stv6110x_state, ptr %1, i32 0, i32 3, i32 2
  %conv147 = trunc i32 %div120 to i8
  %37 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv147, ptr %arrayidx141, align 2
  %arrayidx151 = getelementptr %struct.stv6110x_state, ptr %1, i32 0, i32 3, i32 5
  %38 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx151, align 1
  %40 = or i8 %39, 4
  store i8 %40, ptr %arrayidx151, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i) #7
  %41 = getelementptr inbounds i8, ptr %buf.i.i, i32 2
  %42 = call ptr @memset(ptr %41, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %43 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 196607, ptr %43, align 4
  %45 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %6, align 4
  %conv.i.i = zext i8 %46 to i16
  %47 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %flags.i.i, align 2
  %buf5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %buf5.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %buf.i.i, ptr %buf5.i.i, align 4
  %50 = getelementptr inbounds i8, ptr %buf.i.i, i32 1
  %51 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %buf.i.i, align 1
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv1, ptr %50, align 1
  %i2c.i.i = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 1
  %53 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i2c.i.i, align 4
  %call15.i.i = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15.i.i)
  %cmp16.not.i.i = icmp eq i32 %call15.i.i, 1
  br i1 %cmp16.not.i.i, label %if.end78.stv6110x_write_reg.exit_crit_edge, label %do.body19.i.i

if.end78.stv6110x_write_reg.exit_crit_edge:       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv6110x_write_reg.exit

do.body19.i.i:                                    ; preds = %if.end78
  %55 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp20.not.i.i = icmp eq i32 %55, 0
  br i1 %cmp20.not.i.i, label %do.body19.i.i.stv6110x_write_reg.exit_crit_edge, label %do.end27.i.i

do.body19.i.i.stv6110x_write_reg.exit_crit_edge:  ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv6110x_write_reg.exit

do.end27.i.i:                                     ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call29.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17) #11
  br label %stv6110x_write_reg.exit

stv6110x_write_reg.exit:                          ; preds = %do.end27.i.i, %do.body19.i.i.stv6110x_write_reg.exit_crit_edge, %if.end78.stv6110x_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i) #7
  %56 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx122, align 1
  %58 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %config, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i246) #7
  %60 = getelementptr inbounds i8, ptr %buf.i.i246, i32 2
  %61 = call ptr @memset(ptr %60, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i247) #7
  %62 = getelementptr inbounds i8, ptr %msg.i.i247, i32 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 196607, ptr %62, align 4
  %64 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %59, align 4
  %conv.i.i249 = zext i8 %65 to i16
  %66 = ptrtoint ptr %msg.i.i247 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv.i.i249, ptr %msg.i.i247, align 4
  %flags.i.i250 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i247, i32 0, i32 1
  %67 = ptrtoint ptr %flags.i.i250 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 0, ptr %flags.i.i250, align 2
  %buf5.i.i251 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i247, i32 0, i32 3
  %68 = ptrtoint ptr %buf5.i.i251 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %buf.i.i246, ptr %buf5.i.i251, align 4
  %69 = getelementptr inbounds i8, ptr %buf.i.i246, i32 1
  %70 = ptrtoint ptr %buf.i.i246 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 3, ptr %buf.i.i246, align 1
  %71 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %57, ptr %69, align 1
  %72 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i2c.i.i, align 4
  %call15.i.i253 = call i32 @i2c_transfer(ptr noundef %73, ptr noundef nonnull %msg.i.i247, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15.i.i253)
  %cmp16.not.i.i254 = icmp eq i32 %call15.i.i253, 1
  br i1 %cmp16.not.i.i254, label %stv6110x_write_reg.exit.stv6110x_write_reg.exit260_crit_edge, label %do.body19.i.i256

stv6110x_write_reg.exit.stv6110x_write_reg.exit260_crit_edge: ; preds = %stv6110x_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv6110x_write_reg.exit260

do.body19.i.i256:                                 ; preds = %stv6110x_write_reg.exit
  %74 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp20.not.i.i255 = icmp eq i32 %74, 0
  br i1 %cmp20.not.i.i255, label %do.body19.i.i256.stv6110x_write_reg.exit260_crit_edge, label %do.end27.i.i258

do.body19.i.i256.stv6110x_write_reg.exit260_crit_edge: ; preds = %do.body19.i.i256
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv6110x_write_reg.exit260

do.end27.i.i258:                                  ; preds = %do.body19.i.i256
  call void @__sanitizer_cov_trace_pc() #9
  %call29.i.i257 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17) #11
  br label %stv6110x_write_reg.exit260

stv6110x_write_reg.exit260:                       ; preds = %do.end27.i.i258, %do.body19.i.i256.stv6110x_write_reg.exit260_crit_edge, %stv6110x_write_reg.exit.stv6110x_write_reg.exit260_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i247) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i246) #7
  %75 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx141, align 2
  %77 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %config, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i261) #7
  %79 = getelementptr inbounds i8, ptr %buf.i.i261, i32 2
  %80 = call ptr @memset(ptr %79, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i262) #7
  %81 = getelementptr inbounds i8, ptr %msg.i.i262, i32 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 196607, ptr %81, align 4
  %83 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %78, align 4
  %conv.i.i264 = zext i8 %84 to i16
  %85 = ptrtoint ptr %msg.i.i262 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv.i.i264, ptr %msg.i.i262, align 4
  %flags.i.i265 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i262, i32 0, i32 1
  %86 = ptrtoint ptr %flags.i.i265 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %flags.i.i265, align 2
  %buf5.i.i266 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i262, i32 0, i32 3
  %87 = ptrtoint ptr %buf5.i.i266 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %buf.i.i261, ptr %buf5.i.i266, align 4
  %88 = getelementptr inbounds i8, ptr %buf.i.i261, i32 1
  %89 = ptrtoint ptr %buf.i.i261 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 2, ptr %buf.i.i261, align 1
  %90 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %76, ptr %88, align 1
  %91 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %i2c.i.i, align 4
  %call15.i.i268 = call i32 @i2c_transfer(ptr noundef %92, ptr noundef nonnull %msg.i.i262, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15.i.i268)
  %cmp16.not.i.i269 = icmp eq i32 %call15.i.i268, 1
  br i1 %cmp16.not.i.i269, label %stv6110x_write_reg.exit260.stv6110x_write_reg.exit275_crit_edge, label %do.body19.i.i271

stv6110x_write_reg.exit260.stv6110x_write_reg.exit275_crit_edge: ; preds = %stv6110x_write_reg.exit260
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv6110x_write_reg.exit275

do.body19.i.i271:                                 ; preds = %stv6110x_write_reg.exit260
  %93 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp20.not.i.i270 = icmp eq i32 %93, 0
  br i1 %cmp20.not.i.i270, label %do.body19.i.i271.stv6110x_write_reg.exit275_crit_edge, label %do.end27.i.i273

do.body19.i.i271.stv6110x_write_reg.exit275_crit_edge: ; preds = %do.body19.i.i271
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv6110x_write_reg.exit275

do.end27.i.i273:                                  ; preds = %do.body19.i.i271
  call void @__sanitizer_cov_trace_pc() #9
  %call29.i.i272 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17) #11
  br label %stv6110x_write_reg.exit275

stv6110x_write_reg.exit275:                       ; preds = %do.end27.i.i273, %do.body19.i.i271.stv6110x_write_reg.exit275_crit_edge, %stv6110x_write_reg.exit260.stv6110x_write_reg.exit275_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i262) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i261) #7
  %94 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx151, align 1
  %96 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %config, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i276) #7
  %98 = getelementptr inbounds i8, ptr %buf.i.i276, i32 2
  %99 = call ptr @memset(ptr %98, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i277) #7
  %100 = getelementptr inbounds i8, ptr %msg.i.i277, i32 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 196607, ptr %100, align 4
  %102 = ptrtoint ptr %97 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %97, align 4
  %conv.i.i279 = zext i8 %103 to i16
  %104 = ptrtoint ptr %msg.i.i277 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv.i.i279, ptr %msg.i.i277, align 4
  %flags.i.i280 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i277, i32 0, i32 1
  %105 = ptrtoint ptr %flags.i.i280 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 0, ptr %flags.i.i280, align 2
  %buf5.i.i281 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i277, i32 0, i32 3
  %106 = ptrtoint ptr %buf5.i.i281 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %buf.i.i276, ptr %buf5.i.i281, align 4
  %107 = getelementptr inbounds i8, ptr %buf.i.i276, i32 1
  %108 = ptrtoint ptr %buf.i.i276 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 5, ptr %buf.i.i276, align 1
  %109 = ptrtoint ptr %107 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %95, ptr %107, align 1
  %110 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %i2c.i.i, align 4
  %call15.i.i283 = call i32 @i2c_transfer(ptr noundef %111, ptr noundef nonnull %msg.i.i277, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15.i.i283)
  %cmp16.not.i.i284 = icmp eq i32 %call15.i.i283, 1
  br i1 %cmp16.not.i.i284, label %stv6110x_write_reg.exit275.stv6110x_write_reg.exit290_crit_edge, label %do.body19.i.i286

stv6110x_write_reg.exit275.stv6110x_write_reg.exit290_crit_edge: ; preds = %stv6110x_write_reg.exit275
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv6110x_write_reg.exit290

do.body19.i.i286:                                 ; preds = %stv6110x_write_reg.exit275
  %112 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp20.not.i.i285 = icmp eq i32 %112, 0
  br i1 %cmp20.not.i.i285, label %do.body19.i.i286.stv6110x_write_reg.exit290_crit_edge, label %do.end27.i.i288

do.body19.i.i286.stv6110x_write_reg.exit290_crit_edge: ; preds = %do.body19.i.i286
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv6110x_write_reg.exit290

do.end27.i.i288:                                  ; preds = %do.body19.i.i286
  call void @__sanitizer_cov_trace_pc() #9
  %call29.i.i287 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17) #11
  br label %stv6110x_write_reg.exit290

stv6110x_write_reg.exit290:                       ; preds = %do.end27.i.i288, %do.body19.i.i286.stv6110x_write_reg.exit290_crit_edge, %stv6110x_write_reg.exit275.stv6110x_write_reg.exit290_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i277) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i276) #7
  %113 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  br label %for.body173

for.body173:                                      ; preds = %if.end183.for.body173_crit_edge, %stv6110x_write_reg.exit290
  %i.0294 = phi i8 [ 0, %stv6110x_write_reg.exit290 ], [ %inc185, %if.end183.for.body173_crit_edge ]
  %114 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %config, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %116 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 5, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %117 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %118 = call ptr @memset(ptr %113, i32 255, i32 16)
  %119 = ptrtoint ptr %115 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %115, align 4
  %conv.i = zext i8 %120 to i16
  %121 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %conv.i, ptr %msg.i, align 4
  %122 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 0, ptr %flags.i, align 2
  %123 = ptrtoint ptr %113 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 1, ptr %113, align 4
  %124 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %b0.i, ptr %buf.i, align 4
  %125 = load i8, ptr %115, align 4
  %conv6.i = zext i8 %125 to i16
  %126 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv6.i, ptr %arrayinit.element.i, align 4
  %127 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 1, ptr %flags7.i, align 2
  %128 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 1, ptr %len8.i, align 4
  %129 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %b1.i, ptr %buf9.i, align 4
  %130 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %i2c.i.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %131, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end60.i, label %do.body.i

do.body.i:                                        ; preds = %for.body173
  %132 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp13.not.i = icmp eq i32 %132, 0
  br i1 %cmp13.not.i, label %do.body.i.stv6110x_read_reg.exit_crit_edge, label %do.end.i

do.body.i.stv6110x_read_reg.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv6110x_read_reg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.38) #11
  br label %stv6110x_read_reg.exit

if.end60.i:                                       ; preds = %for.body173
  call void @__sanitizer_cov_trace_pc() #9
  %133 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %b1.i, align 1
  %135 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %arrayidx151, align 1
  br label %stv6110x_read_reg.exit

stv6110x_read_reg.exit:                           ; preds = %if.end60.i, %do.end.i, %do.body.i.stv6110x_read_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %136 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx151, align 1
  %138 = and i8 %137, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool.not = icmp eq i8 %138, 0
  br i1 %tobool.not, label %stv6110x_read_reg.exit.for.end186_crit_edge, label %if.end183

stv6110x_read_reg.exit.for.end186_crit_edge:      ; preds = %stv6110x_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end186

if.end183:                                        ; preds = %stv6110x_read_reg.exit
  call void @msleep(i32 noundef 1) #7
  %inc185 = add nuw nsw i8 %i.0294, 1
  %cmp171 = icmp ult i8 %i.0294, 9
  br i1 %cmp171, label %if.end183.for.body173_crit_edge, label %if.end183.for.end186_crit_edge

if.end183.for.end186_crit_edge:                   ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end186

if.end183.for.body173_crit_edge:                  ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body173

for.end186:                                       ; preds = %if.end183.for.end186_crit_edge, %stv6110x_read_reg.exit.for.end186_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv6110x_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #0 align 64 {
entry:
  %b0.i35 = alloca [1 x i8], align 1
  %b1.i36 = alloca [1 x i8], align 1
  %msg.i37 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %arrayidx = getelementptr %struct.stv6110x_state, ptr %1, i32 0, i32 3, i32 3
  %config1.i = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %config1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config1.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %4 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %3, align 4
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = load i8, ptr %3, align 4
  %conv6.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv6.i, ptr %arrayinit.element.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len8.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i, ptr %buf9.i, align 4
  %i2c.i = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end60.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  %21 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp13.not.i = icmp eq i32 %21, 0
  br i1 %cmp13.not.i, label %do.body.i.stv6110x_read_reg.exit_crit_edge, label %do.end.i

do.body.i.stv6110x_read_reg.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv6110x_read_reg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.38) #11
  br label %stv6110x_read_reg.exit

if.end60.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx, align 1
  br label %stv6110x_read_reg.exit

stv6110x_read_reg.exit:                           ; preds = %if.end60.i, %do.end.i, %do.body.i.stv6110x_read_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %arrayidx2 = getelementptr %struct.stv6110x_state, ptr %1, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %config1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %config1.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i35) #7
  %27 = ptrtoint ptr %b0.i35 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 2, ptr %b0.i35, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i36) #7
  %28 = ptrtoint ptr %b1.i36 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %b1.i36, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i37) #7
  %29 = getelementptr inbounds i8, ptr %msg.i37, i32 4
  %30 = call ptr @memset(ptr %29, i32 255, i32 16)
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %26, align 4
  %conv.i39 = zext i8 %32 to i16
  %33 = ptrtoint ptr %msg.i37 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i39, ptr %msg.i37, align 4
  %flags.i40 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i37, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i40 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i40, align 2
  %35 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %29, align 4
  %buf.i42 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i37, i32 0, i32 3
  %36 = ptrtoint ptr %buf.i42 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %b0.i35, ptr %buf.i42, align 4
  %arrayinit.element.i43 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i37, i32 1
  %37 = load i8, ptr %26, align 4
  %conv6.i44 = zext i8 %37 to i16
  %38 = ptrtoint ptr %arrayinit.element.i43 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv6.i44, ptr %arrayinit.element.i43, align 4
  %flags7.i45 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i37, i32 1, i32 1
  %39 = ptrtoint ptr %flags7.i45 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %flags7.i45, align 2
  %len8.i46 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i37, i32 1, i32 2
  %40 = ptrtoint ptr %len8.i46 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %len8.i46, align 4
  %buf9.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i37, i32 1, i32 3
  %41 = ptrtoint ptr %buf9.i47 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %b1.i36, ptr %buf9.i47, align 4
  %42 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i2c.i, align 4
  %call.i49 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msg.i37, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i49)
  %cmp.not.i50 = icmp eq i32 %call.i49, 2
  br i1 %cmp.not.i50, label %if.end60.i55, label %do.body.i52

do.body.i52:                                      ; preds = %stv6110x_read_reg.exit
  %44 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp13.not.i51 = icmp eq i32 %44, 0
  br i1 %cmp13.not.i51, label %do.body.i52.stv6110x_read_reg.exit56_crit_edge, label %do.end.i54

do.body.i52.stv6110x_read_reg.exit56_crit_edge:   ; preds = %do.body.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv6110x_read_reg.exit56

do.end.i54:                                       ; preds = %do.body.i52
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.38) #11
  br label %stv6110x_read_reg.exit56

if.end60.i55:                                     ; preds = %stv6110x_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %b1.i36 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %b1.i36, align 1
  %47 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx2, align 1
  br label %stv6110x_read_reg.exit56

stv6110x_read_reg.exit56:                         ; preds = %if.end60.i55, %do.end.i54, %do.body.i52.stv6110x_read_reg.exit56_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i37) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i36) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i35) #7
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx, align 1
  %50 = and i8 %49, 15
  %and = zext i8 %50 to i32
  %shl = shl nuw nsw i32 %and, 8
  %51 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx2, align 2
  %conv8 = zext i8 %52 to i32
  %or = or i32 %shl, %conv8
  %53 = ptrtoint ptr %config1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %config1.i, align 4
  %refclk = getelementptr inbounds %struct.stv6110x_config, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %refclk, align 4
  %div = udiv i32 %56, 1000
  %mul = mul i32 %or, %div
  %57 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %mul, ptr %frequency, align 4
  %58 = load i8, ptr %arrayidx, align 1
  %conv13 = zext i8 %58 to i32
  %59 = lshr i32 %conv13, 6
  %60 = lshr i32 %conv13, 4
  %and20 = and i32 %60, 1
  %add = add nuw nsw i32 %and20, %59
  %div2234 = lshr i32 %mul, %add
  %shr23 = lshr i32 %div2234, 2
  store i32 %shr23, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv6110x_set_bandwidth(ptr nocapture noundef readonly %fe, i32 noundef %bandwidth) #0 align 64 {
entry:
  %buf.i.i108 = alloca [64 x i8], align 1
  %msg.i.i109 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i93 = alloca [64 x i8], align 1
  %msg.i.i94 = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [64 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72000001, i32 %bandwidth)
  %cmp = icmp ugt i32 %bandwidth, 72000001
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.stv6110x_state, ptr %1, i32 0, i32 3, i32 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 4
  %4 = or i8 %3, 31
  store i8 %4, ptr %arrayidx, align 4
  br label %if.end24

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %bandwidth)
  %cmp4 = icmp ult i32 %bandwidth, 10000000
  %arrayidx8 = getelementptr %struct.stv6110x_state, ptr %1, i32 0, i32 3, i32 4
  %5 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx8, align 4
  %7 = and i8 %6, -32
  br i1 %cmp4, label %if.then6, label %if.else15

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx8, align 4
  br label %if.end24

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %div = udiv i32 %bandwidth, 2000000
  %9 = trunc i32 %div to i8
  %10 = add nsw i8 %9, -5
  %conv21 = or i8 %7, %10
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv21, ptr %arrayidx8, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else15, %if.then6, %if.then
  %arrayidx26 = getelementptr %struct.stv6110x_state, ptr %1, i32 0, i32 3, i32 4
  %12 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx26, align 4
  %14 = and i8 %13, -65
  store i8 %14, ptr %arrayidx26, align 4
  %arrayidx34 = getelementptr %struct.stv6110x_state, ptr %1, i32 0, i32 3, i32 5
  %15 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx34, align 1
  %17 = or i8 %16, 2
  store i8 %17, ptr %arrayidx34, align 1
  %config1.i.i = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %config1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i) #7
  %20 = getelementptr inbounds i8, ptr %buf.i.i, i32 2
  %21 = call ptr @memset(ptr %20, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %22 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 196607, ptr %22, align 4
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %19, align 4
  %conv.i.i = zext i8 %25 to i16
  %26 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i.i, align 2
  %buf5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %buf5.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %buf.i.i, ptr %buf5.i.i, align 4
  %29 = getelementptr inbounds i8, ptr %buf.i.i, i32 1
  %30 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 4, ptr %buf.i.i, align 1
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %14, ptr %29, align 1
  %i2c.i.i = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c.i.i, align 4
  %call15.i.i = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15.i.i)
  %cmp16.not.i.i = icmp eq i32 %call15.i.i, 1
  br i1 %cmp16.not.i.i, label %if.end24.stv6110x_write_reg.exit_crit_edge, label %do.body19.i.i

if.end24.stv6110x_write_reg.exit_crit_edge:       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv6110x_write_reg.exit

do.body19.i.i:                                    ; preds = %if.end24
  %34 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp20.not.i.i = icmp eq i32 %34, 0
  br i1 %cmp20.not.i.i, label %do.body19.i.i.stv6110x_write_reg.exit_crit_edge, label %do.end27.i.i

do.body19.i.i.stv6110x_write_reg.exit_crit_edge:  ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv6110x_write_reg.exit

do.end27.i.i:                                     ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call29.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17) #11
  br label %stv6110x_write_reg.exit

stv6110x_write_reg.exit:                          ; preds = %do.end27.i.i, %do.body19.i.i.stv6110x_write_reg.exit_crit_edge, %if.end24.stv6110x_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i) #7
  %35 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx34, align 1
  %37 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %config1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i93) #7
  %39 = getelementptr inbounds i8, ptr %buf.i.i93, i32 2
  %40 = call ptr @memset(ptr %39, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i94) #7
  %41 = getelementptr inbounds i8, ptr %msg.i.i94, i32 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 196607, ptr %41, align 4
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %38, align 4
  %conv.i.i96 = zext i8 %44 to i16
  %45 = ptrtoint ptr %msg.i.i94 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i.i96, ptr %msg.i.i94, align 4
  %flags.i.i97 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i94, i32 0, i32 1
  %46 = ptrtoint ptr %flags.i.i97 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %flags.i.i97, align 2
  %buf5.i.i98 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i94, i32 0, i32 3
  %47 = ptrtoint ptr %buf5.i.i98 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %buf.i.i93, ptr %buf5.i.i98, align 4
  %48 = getelementptr inbounds i8, ptr %buf.i.i93, i32 1
  %49 = ptrtoint ptr %buf.i.i93 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 5, ptr %buf.i.i93, align 1
  %50 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %36, ptr %48, align 1
  %51 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i2c.i.i, align 4
  %call15.i.i100 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %msg.i.i94, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15.i.i100)
  %cmp16.not.i.i101 = icmp eq i32 %call15.i.i100, 1
  br i1 %cmp16.not.i.i101, label %stv6110x_write_reg.exit.stv6110x_write_reg.exit107_crit_edge, label %do.body19.i.i103

stv6110x_write_reg.exit.stv6110x_write_reg.exit107_crit_edge: ; preds = %stv6110x_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv6110x_write_reg.exit107

do.body19.i.i103:                                 ; preds = %stv6110x_write_reg.exit
  %53 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp20.not.i.i102 = icmp eq i32 %53, 0
  br i1 %cmp20.not.i.i102, label %do.body19.i.i103.stv6110x_write_reg.exit107_crit_edge, label %do.end27.i.i105

do.body19.i.i103.stv6110x_write_reg.exit107_crit_edge: ; preds = %do.body19.i.i103
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv6110x_write_reg.exit107

do.end27.i.i105:                                  ; preds = %do.body19.i.i103
  call void @__sanitizer_cov_trace_pc() #9
  %call29.i.i104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17) #11
  br label %stv6110x_write_reg.exit107

stv6110x_write_reg.exit107:                       ; preds = %do.end27.i.i105, %do.body19.i.i103.stv6110x_write_reg.exit107_crit_edge, %stv6110x_write_reg.exit.stv6110x_write_reg.exit107_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i94) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i93) #7
  %54 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end58.for.body_crit_edge, %stv6110x_write_reg.exit107
  %i.0123 = phi i8 [ 0, %stv6110x_write_reg.exit107 ], [ %inc, %if.end58.for.body_crit_edge ]
  %55 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %config1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %57 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 5, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %58 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %59 = call ptr @memset(ptr %54, i32 255, i32 16)
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %56, align 4
  %conv.i = zext i8 %61 to i16
  %62 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.i, ptr %msg.i, align 4
  %63 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %flags.i, align 2
  %64 = ptrtoint ptr %54 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 1, ptr %54, align 4
  %65 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %b0.i, ptr %buf.i, align 4
  %66 = load i8, ptr %56, align 4
  %conv6.i = zext i8 %66 to i16
  %67 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv6.i, ptr %arrayinit.element.i, align 4
  %68 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 1, ptr %flags7.i, align 2
  %69 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 1, ptr %len8.i, align 4
  %70 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %b1.i, ptr %buf9.i, align 4
  %71 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i2c.i.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %72, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end60.i, label %do.body.i

do.body.i:                                        ; preds = %for.body
  %73 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp13.not.i = icmp eq i32 %73, 0
  br i1 %cmp13.not.i, label %do.body.i.stv6110x_read_reg.exit_crit_edge, label %do.end.i

do.body.i.stv6110x_read_reg.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv6110x_read_reg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.38) #11
  br label %stv6110x_read_reg.exit

if.end60.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %b1.i, align 1
  %76 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %arrayidx34, align 1
  br label %stv6110x_read_reg.exit

stv6110x_read_reg.exit:                           ; preds = %if.end60.i, %do.end.i, %do.body.i.stv6110x_read_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %77 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx34, align 1
  %79 = and i8 %78, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not = icmp eq i8 %79, 0
  br i1 %tobool.not, label %stv6110x_read_reg.exit.for.end_crit_edge, label %if.end58

stv6110x_read_reg.exit.for.end_crit_edge:         ; preds = %stv6110x_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end58:                                         ; preds = %stv6110x_read_reg.exit
  call void @msleep(i32 noundef 1) #7
  %inc = add nuw nsw i8 %i.0123, 1
  %cmp47 = icmp ult i8 %i.0123, 9
  br i1 %cmp47, label %if.end58.for.body_crit_edge, label %if.end58.for.end_crit_edge

if.end58.for.end_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end58.for.body_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end58.for.end_crit_edge, %stv6110x_read_reg.exit.for.end_crit_edge
  %80 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx26, align 4
  %82 = or i8 %81, 64
  store i8 %82, ptr %arrayidx26, align 4
  %83 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %config1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i108) #7
  %85 = getelementptr inbounds i8, ptr %buf.i.i108, i32 2
  %86 = call ptr @memset(ptr %85, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i109) #7
  %87 = getelementptr inbounds i8, ptr %msg.i.i109, i32 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 196607, ptr %87, align 4
  %89 = ptrtoint ptr %84 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %84, align 4
  %conv.i.i111 = zext i8 %90 to i16
  %91 = ptrtoint ptr %msg.i.i109 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv.i.i111, ptr %msg.i.i109, align 4
  %flags.i.i112 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i109, i32 0, i32 1
  %92 = ptrtoint ptr %flags.i.i112 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %flags.i.i112, align 2
  %buf5.i.i113 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i109, i32 0, i32 3
  %93 = ptrtoint ptr %buf5.i.i113 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %buf.i.i108, ptr %buf5.i.i113, align 4
  %94 = getelementptr inbounds i8, ptr %buf.i.i108, i32 1
  %95 = ptrtoint ptr %buf.i.i108 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 4, ptr %buf.i.i108, align 1
  %96 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %82, ptr %94, align 1
  %97 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %i2c.i.i, align 4
  %call15.i.i115 = call i32 @i2c_transfer(ptr noundef %98, ptr noundef nonnull %msg.i.i109, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15.i.i115)
  %cmp16.not.i.i116 = icmp eq i32 %call15.i.i115, 1
  br i1 %cmp16.not.i.i116, label %for.end.stv6110x_write_reg.exit122_crit_edge, label %do.body19.i.i118

for.end.stv6110x_write_reg.exit122_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv6110x_write_reg.exit122

do.body19.i.i118:                                 ; preds = %for.end
  %99 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp20.not.i.i117 = icmp eq i32 %99, 0
  br i1 %cmp20.not.i.i117, label %do.body19.i.i118.stv6110x_write_reg.exit122_crit_edge, label %do.end27.i.i120

do.body19.i.i118.stv6110x_write_reg.exit122_crit_edge: ; preds = %do.body19.i.i118
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv6110x_write_reg.exit122

do.end27.i.i120:                                  ; preds = %do.body19.i.i118
  call void @__sanitizer_cov_trace_pc() #9
  %call29.i.i119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17) #11
  br label %stv6110x_write_reg.exit122

stv6110x_write_reg.exit122:                       ; preds = %do.end27.i.i120, %do.body19.i.i118.stv6110x_write_reg.exit122_crit_edge, %for.end.stv6110x_write_reg.exit122_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i109) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i108) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv6110x_get_bandwidth(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %bandwidth) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %arrayidx = getelementptr %struct.stv6110x_state, ptr %1, i32 0, i32 3, i32 4
  %config1.i = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %config1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config1.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %4 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %3, align 4
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = load i8, ptr %3, align 4
  %conv6.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv6.i, ptr %arrayinit.element.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len8.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i, ptr %buf9.i, align 4
  %i2c.i = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end60.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  %21 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp13.not.i = icmp eq i32 %21, 0
  br i1 %cmp13.not.i, label %do.body.i.stv6110x_read_reg.exit_crit_edge, label %do.end.i

do.body.i.stv6110x_read_reg.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv6110x_read_reg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.38) #11
  br label %stv6110x_read_reg.exit

if.end60.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx, align 1
  br label %stv6110x_read_reg.exit

stv6110x_read_reg.exit:                           ; preds = %if.end60.i, %do.end.i, %do.body.i.stv6110x_read_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx, align 4
  %27 = and i8 %26, 31
  %narrow = add nuw nsw i8 %27, 5
  %add = zext i8 %narrow to i32
  %mul = mul nuw nsw i32 %add, 2000000
  %28 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul, ptr %bandwidth, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv6110x_set_bbgain(ptr nocapture noundef readonly %fe, i32 noundef %gain) #0 align 64 {
entry:
  %buf.i.i = alloca [64 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %arrayidx = getelementptr %struct.stv6110x_state, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, -16
  %div9 = lshr i32 %gain, 1
  %5 = trunc i32 %div9 to i8
  %conv1 = or i8 %4, %5
  store i8 %conv1, ptr %arrayidx, align 1
  %config1.i.i = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i) #7
  %8 = getelementptr inbounds i8, ptr %buf.i.i, i32 2
  %9 = call ptr @memset(ptr %8, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %10 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 196607, ptr %10, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %7, align 4
  %conv.i.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i.i, align 2
  %buf5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf5.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i.i, ptr %buf5.i.i, align 4
  %17 = getelementptr inbounds i8, ptr %buf.i.i, i32 1
  %18 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %buf.i.i, align 1
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv1, ptr %17, align 1
  %i2c.i.i = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c.i.i, align 4
  %call15.i.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15.i.i)
  %cmp16.not.i.i = icmp eq i32 %call15.i.i, 1
  br i1 %cmp16.not.i.i, label %entry.stv6110x_write_reg.exit_crit_edge, label %do.body19.i.i

entry.stv6110x_write_reg.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv6110x_write_reg.exit

do.body19.i.i:                                    ; preds = %entry
  %22 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp20.not.i.i = icmp eq i32 %22, 0
  br i1 %cmp20.not.i.i, label %do.body19.i.i.stv6110x_write_reg.exit_crit_edge, label %do.end27.i.i

do.body19.i.i.stv6110x_write_reg.exit_crit_edge:  ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv6110x_write_reg.exit

do.end27.i.i:                                     ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call29.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17) #11
  br label %stv6110x_write_reg.exit

stv6110x_write_reg.exit:                          ; preds = %do.end27.i.i, %do.body19.i.i.stv6110x_write_reg.exit_crit_edge, %entry.stv6110x_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv6110x_get_bbgain(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %gain) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %arrayidx = getelementptr %struct.stv6110x_state, ptr %1, i32 0, i32 3, i32 1
  %config1.i = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %config1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config1.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %4 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %3, align 4
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = load i8, ptr %3, align 4
  %conv6.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv6.i, ptr %arrayinit.element.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len8.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i, ptr %buf9.i, align 4
  %i2c.i = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end60.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  %21 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp13.not.i = icmp eq i32 %21, 0
  br i1 %cmp13.not.i, label %do.body.i.stv6110x_read_reg.exit_crit_edge, label %do.end.i

do.body.i.stv6110x_read_reg.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv6110x_read_reg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.38) #11
  br label %stv6110x_read_reg.exit

if.end60.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx, align 1
  br label %stv6110x_read_reg.exit

stv6110x_read_reg.exit:                           ; preds = %if.end60.i, %do.end.i, %do.body.i.stv6110x_read_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx, align 1
  %27 = shl i8 %26, 1
  %28 = and i8 %27, 30
  %mul = zext i8 %28 to i32
  %29 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul, ptr %gain, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv6110x_set_refclock(ptr nocapture noundef readonly %fe, i32 noundef %refclock) #0 align 64 {
entry:
  %buf.i.i = alloca [64 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = zext i32 %refclock to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %refclock, label %sw.bb [
    i32 0, label %entry.sw.bb22_crit_edge
    i32 2, label %sw.bb4
    i32 4, label %sw.bb13
    i32 8, label %entry.sw.bb22_crit_edge42
  ]

entry.sw.bb22_crit_edge42:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb22

entry.sw.bb22_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb22

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.stv6110x_state, ptr %1, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %5 = and i8 %4, 63
  store i8 %5, ptr %arrayidx, align 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx6 = getelementptr %struct.stv6110x_state, ptr %1, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx6, align 1
  %8 = and i8 %7, 63
  %9 = or i8 %8, 64
  store i8 %9, ptr %arrayidx6, align 1
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15 = getelementptr %struct.stv6110x_state, ptr %1, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx15, align 1
  %12 = and i8 %11, 63
  %13 = or i8 %12, -128
  store i8 %13, ptr %arrayidx15, align 1
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry.sw.bb22_crit_edge, %entry.sw.bb22_crit_edge42
  %arrayidx24 = getelementptr %struct.stv6110x_state, ptr %1, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx24, align 1
  %16 = or i8 %15, -64
  store i8 %16, ptr %arrayidx24, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb22, %sw.bb13, %sw.bb4, %sw.bb
  %arrayidx32 = getelementptr %struct.stv6110x_state, ptr %1, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx32, align 1
  %config1.i.i = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %config1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i) #7
  %21 = getelementptr inbounds i8, ptr %buf.i.i, i32 2
  %22 = call ptr @memset(ptr %21, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %23 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 196607, ptr %23, align 4
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %20, align 4
  %conv.i.i = zext i8 %26 to i16
  %27 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %flags.i.i, align 2
  %buf5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %buf5.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %buf.i.i, ptr %buf5.i.i, align 4
  %30 = getelementptr inbounds i8, ptr %buf.i.i, i32 1
  %31 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %buf.i.i, align 1
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %18, ptr %30, align 1
  %i2c.i.i = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c.i.i, align 4
  %call15.i.i = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15.i.i)
  %cmp16.not.i.i = icmp eq i32 %call15.i.i, 1
  br i1 %cmp16.not.i.i, label %sw.epilog.stv6110x_write_reg.exit_crit_edge, label %do.body19.i.i

sw.epilog.stv6110x_write_reg.exit_crit_edge:      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv6110x_write_reg.exit

do.body19.i.i:                                    ; preds = %sw.epilog
  %35 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp20.not.i.i = icmp eq i32 %35, 0
  br i1 %cmp20.not.i.i, label %do.body19.i.i.stv6110x_write_reg.exit_crit_edge, label %do.end27.i.i

do.body19.i.i.stv6110x_write_reg.exit_crit_edge:  ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv6110x_write_reg.exit

do.end27.i.i:                                     ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call29.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17) #11
  br label %stv6110x_write_reg.exit

stv6110x_write_reg.exit:                          ; preds = %do.end27.i.i, %do.body19.i.i.stv6110x_write_reg.exit_crit_edge, %sw.epilog.stv6110x_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv6110x_get_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %status) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %arrayidx = getelementptr %struct.stv6110x_state, ptr %1, i32 0, i32 3, i32 5
  %config1.i = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %config1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config1.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %4 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 5, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %3, align 4
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = load i8, ptr %3, align 4
  %conv6.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv6.i, ptr %arrayinit.element.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len8.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i, ptr %buf9.i, align 4
  %i2c.i = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end60.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  %21 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp13.not.i = icmp eq i32 %21, 0
  br i1 %cmp13.not.i, label %do.body.i.stv6110x_read_reg.exit_crit_edge, label %do.end.i

do.body.i.stv6110x_read_reg.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv6110x_read_reg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.38) #11
  br label %stv6110x_read_reg.exit

if.end60.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx, align 1
  br label %stv6110x_read_reg.exit

stv6110x_read_reg.exit:                           ; preds = %if.end60.i, %do.end.i, %do.body.i.stv6110x_read_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx, align 1
  %27 = and i8 %26, 1
  %28 = zext i8 %27 to i32
  %29 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %status, align 4
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stv6110x_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  store ptr null, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv6110x_probe(ptr nocapture noundef %client, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 24) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %frontend = getelementptr inbounds %struct.stv6110x_config, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %frontend, align 4
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %call7.i.i, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %i2c = getelementptr inbounds %struct.stv6110x_state, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %i2c to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %i2c, align 4
  %config2 = getelementptr inbounds %struct.stv6110x_state, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %config2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %config2, align 8
  %devctl = getelementptr inbounds %struct.stv6110x_state, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %devctl to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @stv6110x_ctl, ptr %devctl, align 4
  %regs.i = getelementptr inbounds %struct.stv6110x_state, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 509430697044338206, ptr %regs.i, align 4
  %clk_div.i = getelementptr inbounds %struct.stv6110x_config, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %clk_div.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %clk_div.i, align 4
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %13, label %sw.bb.i [
    i8 0, label %if.end.sw.bb23.i_crit_edge
    i8 2, label %sw.bb5.i
    i8 4, label %sw.bb14.i
    i8 8, label %if.end.sw.bb23.i_crit_edge19
  ]

if.end.sw.bb23.i_crit_edge19:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb23.i

if.end.sw.bb23.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb23.i

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.stv6110x_state, ptr %call7.i.i, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  %17 = and i8 %16, 63
  store i8 %17, ptr %arrayidx.i, align 1
  br label %stv6110x_setup_divider.exit

sw.bb5.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx7.i = getelementptr %struct.stv6110x_state, ptr %call7.i.i, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx7.i, align 1
  %20 = and i8 %19, 63
  %21 = or i8 %20, 64
  store i8 %21, ptr %arrayidx7.i, align 1
  br label %stv6110x_setup_divider.exit

sw.bb14.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx16.i = getelementptr %struct.stv6110x_state, ptr %call7.i.i, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx16.i, align 1
  %24 = and i8 %23, 63
  %25 = or i8 %24, -128
  store i8 %25, ptr %arrayidx16.i, align 1
  br label %stv6110x_setup_divider.exit

sw.bb23.i:                                        ; preds = %if.end.sw.bb23.i_crit_edge, %if.end.sw.bb23.i_crit_edge19
  %arrayidx25.i = getelementptr %struct.stv6110x_state, ptr %call7.i.i, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx25.i, align 1
  %28 = or i8 %27, -64
  store i8 %28, ptr %arrayidx25.i, align 1
  br label %stv6110x_setup_divider.exit

stv6110x_setup_divider.exit:                      ; preds = %sw.bb23.i, %sw.bb14.i, %sw.bb5.i, %sw.bb.i
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %4, i32 0, i32 4
  %29 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %tuner_priv.i, align 4
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call7.i.i, align 8
  %tuner_ops.i = getelementptr inbounds %struct.dvb_frontend, ptr %31, i32 0, i32 1, i32 32
  %32 = call ptr @memcpy(ptr %tuner_ops.i, ptr @stv6110x_ops, i32 220)
  %33 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c, align 4
  %dev4 = getelementptr inbounds %struct.i2c_adapter, ptr %34, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev4, ptr noundef nonnull @.str.45) #11
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %get_devctl = getelementptr inbounds %struct.stv6110x_config, ptr %1, i32 0, i32 4
  %36 = ptrtoint ptr %get_devctl to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @stv6110x_get_devctl, ptr %get_devctl, align 4
  br label %cleanup

cleanup:                                          ; preds = %stv6110x_setup_divider.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %stv6110x_setup_divider.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv6110x_remove(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tuner_priv.i, align 4
  store ptr null, ptr %tuner_priv.i, align 4
  tail call void @kfree(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @stv6110x_get_devctl(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stv6110x_get_devctl.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stv6110x_get_devctl, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !107

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stv6110x_get_devctl.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.48) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %devctl = getelementptr inbounds %struct.stv6110x_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %devctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devctl, align 4
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !13, !15, !17, !18, !20, !22, !24, !25, !27, !28, !30, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !49, !50, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !65, !66, !67, !68, !69, !70, !71, !72, !73, !75, !76, !77, !78, !79, !80, !81, !82, !83, !85, !87, !89, !90, !91, !92, !94, !95, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__param_verbose, !1, !"__param_verbose", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/stv6110x.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_verbosetype290, !1, !"__UNIQUE_ID_verbosetype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_verbose291, !4, !"__UNIQUE_ID_verbose291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/stv6110x.c", i32 28, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/stv6110x.c", i32 469, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @stv6110x_attach._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @stv6110x_attach._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__ksymtab_stv6110x_attach, !14, !"__ksymtab_stv6110x_attach", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/stv6110x.c", i32 472, i32 1}
!15 = !{ptr @__initcall__kmod_stv6110x__293_490_stv6110x_driver_init6, !16, !"__initcall__kmod_stv6110x__293_490_stv6110x_driver_init6", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/stv6110x.c", i32 490, i32 1}
!17 = !{ptr @__exitcall_stv6110x_driver_exit, !16, !"__exitcall_stv6110x_driver_exit", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_author294, !19, !"__UNIQUE_ID_author294", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/stv6110x.c", i32 492, i32 1}
!20 = !{ptr @__UNIQUE_ID_description295, !21, !"__UNIQUE_ID_description295", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/stv6110x.c", i32 493, i32 1}
!22 = !{ptr @__UNIQUE_ID_file296, !23, !"__UNIQUE_ID_file296", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/stv6110x.c", i32 494, i32 1}
!24 = !{ptr @__UNIQUE_ID_license297, !23, !"__UNIQUE_ID_license297", i1 false, i1 false}
!25 = !{ptr @verbose, !26, !"verbose", i1 false, i1 false}
!26 = !{!"../drivers/media/dvb-frontends/stv6110x.c", i32 26, i32 21}
!27 = !{ptr @__param_str_verbose, !1, !"__param_str_verbose", i1 false, i1 false}
!28 = !{ptr @stv6110x_ctl, !29, !"stv6110x_ctl", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/stv6110x.c", i32 380, i32 31}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/stv6110x.c", i32 101, i32 3}
!32 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @stv6110x_init._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @stv6110x_init._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @stv6110x_init._entry.7, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @stv6110x_init._entry_ptr.9, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @stv6110x_init._entry.10, !31, !"_entry", i1 false, i1 false}
!40 = !{ptr @stv6110x_init._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @stv6110x_init._entry.13, !31, !"_entry", i1 false, i1 false}
!43 = !{ptr @stv6110x_init._entry_ptr.15, !31, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-frontends/stv6110x.c", i32 65, i32 3}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @stv6110x_write_regs._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @stv6110x_write_regs._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/stv6110x.c", i32 79, i32 3}
!52 = !{ptr @stv6110x_write_regs._entry.19, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @stv6110x_write_regs._entry_ptr.21, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @stv6110x_write_regs._entry.22, !51, !"_entry", i1 false, i1 false}
!56 = !{ptr @stv6110x_write_regs._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @stv6110x_write_regs._entry.25, !51, !"_entry", i1 false, i1 false}
!59 = !{ptr @stv6110x_write_regs._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @stv6110x_write_regs._entry.28, !51, !"_entry", i1 false, i1 false}
!62 = !{ptr @stv6110x_write_regs._entry_ptr.30, !51, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/dvb-frontends/stv6110x.c", i32 298, i32 3}
!65 = !{ptr @stv6110x_set_mode._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @stv6110x_set_mode._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @stv6110x_set_mode._entry.32, !64, !"_entry", i1 false, i1 false}
!68 = !{ptr @stv6110x_set_mode._entry_ptr.33, !64, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @stv6110x_set_mode._entry.34, !64, !"_entry", i1 false, i1 false}
!70 = !{ptr @stv6110x_set_mode._entry_ptr.35, !64, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @stv6110x_set_mode._entry.36, !64, !"_entry", i1 false, i1 false}
!72 = !{ptr @stv6110x_set_mode._entry_ptr.37, !64, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/dvb-frontends/stv6110x.c", i32 43, i32 3}
!75 = !{ptr @stv6110x_read_reg._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @stv6110x_read_reg._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @stv6110x_read_reg._entry.39, !74, !"_entry", i1 false, i1 false}
!78 = !{ptr @stv6110x_read_reg._entry_ptr.40, !74, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @stv6110x_read_reg._entry.41, !74, !"_entry", i1 false, i1 false}
!80 = !{ptr @stv6110x_read_reg._entry_ptr.42, !74, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @stv6110x_read_reg._entry.43, !74, !"_entry", i1 false, i1 false}
!82 = !{ptr @stv6110x_read_reg._entry_ptr.44, !74, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @stv6110x_ops, !84, !"stv6110x_ops", i1 false, i1 false}
!84 = !{!"../drivers/media/dvb-frontends/stv6110x.c", i32 371, i32 35}
!85 = !{ptr @stv6110x_driver, !86, !"stv6110x_driver", i1 false, i1 false}
!86 = !{!"../drivers/media/dvb-frontends/stv6110x.c", i32 480, i32 26}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/dvb-frontends/stv6110x.c", i32 429, i32 2}
!89 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @stv6110x_probe._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @stv6110x_probe._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/dvb-frontends/stv6110x.c", i32 404, i32 2}
!94 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @stv6110x_get_devctl.__UNIQUE_ID_ddebug292, !93, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!96 = !{ptr @stv6110x_id_table, !97, !"stv6110x_id_table", i1 false, i1 false}
!97 = !{!"../drivers/media/dvb-frontends/stv6110x.c", i32 474, i32 35}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{i64 2148702777, i64 2148702782, i64 2148702795, i64 2148702839, i64 2148702873, i64 2148702894}
