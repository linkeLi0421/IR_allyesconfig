; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/lgdt3306a.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/lgdt3306a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+lgdt3306a_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_lgdt3306a_attach\09\09\09\09"
module asm "\09.long\09__crc_lgdt3306a_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lgdt3306a_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22lgdt3306a_attach\22\09\09\09\09\09"
module asm "__kstrtabns_lgdt3306a_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
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
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.lgdt3306a_state = type { ptr, ptr, %struct.dvb_frontend, i32, i32, i32, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.lgdt3306a_config = type { i8, i16, i16, i8, i32, i32, i32, i32, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }

@__param_str_debug = internal constant [16 x i8] c"lgdt3306a.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [29 x i8] c"lgdt3306a.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [63 x i8] c"lgdt3306a.parm=debug:set debug level (info=1, reg=2 (or-able))\00", section ".modinfo", align 1
@__param_str_forced_manual = internal constant [24 x i8] c"lgdt3306a.forced_manual\00", align 1
@forced_manual = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_forced_manual = internal constant %struct.kernel_param { ptr @__param_str_forced_manual, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @forced_manual } }, section "__param", align 4
@__UNIQUE_ID_forced_manualtype292 = internal constant [37 x i8] c"lgdt3306a.parmtype=forced_manual:int\00", section ".modinfo", align 1
@__UNIQUE_ID_forced_manual293 = internal constant [93 x i8] c"lgdt3306a.parm=forced_manual:if set, QAM64 and QAM256 will only lock to modulation specified\00", section ".modinfo", align 1
@lgdt3306a_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017lgdt3306a: (%d-%04x)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lgdt3306a_attach\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/dvb-frontends/lgdt3306a.c\00", [56 x i8] zeroinitializer }, align 32
@lgdt3306a_attach._entry_ptr = internal global ptr @lgdt3306a_attach._entry, section ".printk_index", align 4
@lgdt3306a_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"LG Electronics LGDT3306A VSB/QAM Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 858000000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 2203648 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", ptr null, ptr @lgdt3306a_release, ptr null, ptr @lgdt3306a_init, ptr @lgdt3306a_fe_sleep, ptr null, ptr null, ptr null, ptr @lgdt3306a_tune, ptr @lgdt3306a_get_frontend_algo, ptr @lgdt3306a_set_parameters, ptr @lgdt3306a_get_tune_settings, ptr @lgdt3306a_get_frontend, ptr @lgdt3306a_read_status, ptr @lgdt3306a_read_ber, ptr @lgdt3306a_read_signal_strength, ptr @lgdt3306a_read_snr, ptr @lgdt3306a_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lgdt3306a_i2c_gate_ctrl, ptr @lgdt3306a_ts_bus_ctrl, ptr null, ptr @lgdt3306a_search, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@lgdt3306a_attach._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013lgdt3306a: error %d on line %d\0A\00", [62 x i8] zeroinitializer }, align 32
@lgdt3306a_attach._entry_ptr.5 = internal global ptr @lgdt3306a_attach._entry.3, section ".printk_index", align 4
@lgdt3306a_attach._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014lgdt3306a: expected 0x74, got 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@lgdt3306a_attach._entry_ptr.8 = internal global ptr @lgdt3306a_attach._entry.6, section ".printk_index", align 4
@lgdt3306a_attach._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_attach._entry_ptr.10 = internal global ptr @lgdt3306a_attach._entry.9, section ".printk_index", align 4
@lgdt3306a_attach._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 1833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014lgdt3306a: expected 0xc6, got 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@lgdt3306a_attach._entry_ptr.13 = internal global ptr @lgdt3306a_attach._entry.11, section ".printk_index", align 4
@lgdt3306a_attach._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_attach._entry_ptr.15 = internal global ptr @lgdt3306a_attach._entry.14, section ".printk_index", align 4
@lgdt3306a_attach._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 1843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014lgdt3306a: expected 0x03, got 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@lgdt3306a_attach._entry_ptr.18 = internal global ptr @lgdt3306a_attach._entry.16, section ".printk_index", align 4
@lgdt3306a_attach._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 1858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014lgdt3306a: unable to detect LGDT3306A hardware\0A\00", [46 x i8] zeroinitializer }, align 32
@lgdt3306a_attach._entry_ptr.21 = internal global ptr @lgdt3306a_attach._entry.19, section ".printk_index", align 4
@__kstrtab_lgdt3306a_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_lgdt3306a_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_lgdt3306a_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lgdt3306a_attach to i32), ptr @__kstrtab_lgdt3306a_attach, ptr @__kstrtabns_lgdt3306a_attach }, section "___ksymtab+lgdt3306a_attach", align 4
@__initcall__kmod_lgdt3306a__294_2260_lgdt3306a_driver_init6 = internal global ptr @lgdt3306a_driver_init, section ".initcall6.init", align 4
@lgdt3306a_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lgdt3306a_probe, ptr @lgdt3306a_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.23, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lgdt3306a_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lgdt3306a_driver_exit = internal global ptr @lgdt3306a_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [77 x i8] c"lgdt3306a.description=LG Electronics LGDT3306A ATSC/QAM-B Demodulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [55 x i8] c"lgdt3306a.author=Fred Richter <frichter@hauppauge.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [53 x i8] c"lgdt3306a.file=drivers/media/dvb-frontends/lgdt3306a\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [22 x i8] c"lgdt3306a.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version299 = internal constant [22 x i8] c"lgdt3306a.version=0.2\00", section ".modinfo", align 1
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lgdt3306a\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.2\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.23, ptr @.str.24 }, section "__modver", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lgdt3306a_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013lgdt3306a: error (addr %02x reg %04x error (ret == %i)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lgdt3306a_read_reg\00", [45 x i8] zeroinitializer }, align 32
@lgdt3306a_read_reg._entry_ptr = internal global ptr @lgdt3306a_read_reg._entry, section ".printk_index", align 4
@lgdt3306a_read_reg._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017lgdt3306a: reg: 0x%04x, val: 0x%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@lgdt3306a_read_reg._entry_ptr.29 = internal global ptr @lgdt3306a_read_reg._entry.27, section ".printk_index", align 4
@lgdt3306a_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017lgdt3306a: \0A\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lgdt3306a_sleep\00", [16 x i8] zeroinitializer }, align 32
@lgdt3306a_sleep._entry_ptr = internal global ptr @lgdt3306a_sleep._entry, section ".printk_index", align 4
@lgdt3306a_sleep._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.31, ptr @.str.2, i32 796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_sleep._entry_ptr.33 = internal global ptr @lgdt3306a_sleep._entry.32, section ".printk_index", align 4
@lgdt3306a_sleep._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.31, ptr @.str.2, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_sleep._entry_ptr.35 = internal global ptr @lgdt3306a_sleep._entry.34, section ".printk_index", align 4
@lgdt3306a_mpeg_tristate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017lgdt3306a: (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lgdt3306a_mpeg_tristate\00", [40 x i8] zeroinitializer }, align 32
@lgdt3306a_mpeg_tristate._entry_ptr = internal global ptr @lgdt3306a_mpeg_tristate._entry, section ".printk_index", align 4
@lgdt3306a_mpeg_tristate._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.37, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_mpeg_tristate._entry_ptr.39 = internal global ptr @lgdt3306a_mpeg_tristate._entry.38, section ".printk_index", align 4
@lgdt3306a_mpeg_tristate._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.37, ptr @.str.2, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_mpeg_tristate._entry_ptr.41 = internal global ptr @lgdt3306a_mpeg_tristate._entry.40, section ".printk_index", align 4
@lgdt3306a_mpeg_tristate._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.37, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_mpeg_tristate._entry_ptr.43 = internal global ptr @lgdt3306a_mpeg_tristate._entry.42, section ".printk_index", align 4
@lgdt3306a_mpeg_tristate._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.37, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_mpeg_tristate._entry_ptr.45 = internal global ptr @lgdt3306a_mpeg_tristate._entry.44, section ".printk_index", align 4
@lgdt3306a_mpeg_tristate._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.37, ptr @.str.2, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_mpeg_tristate._entry_ptr.47 = internal global ptr @lgdt3306a_mpeg_tristate._entry.46, section ".printk_index", align 4
@lgdt3306a_mpeg_tristate._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.37, ptr @.str.2, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_mpeg_tristate._entry_ptr.49 = internal global ptr @lgdt3306a_mpeg_tristate._entry.48, section ".printk_index", align 4
@lgdt3306a_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.50, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lgdt3306a_write_reg\00", [44 x i8] zeroinitializer }, align 32
@lgdt3306a_write_reg._entry_ptr = internal global ptr @lgdt3306a_write_reg._entry, section ".printk_index", align 4
@lgdt3306a_write_reg._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013lgdt3306a: error (addr %02x %02x <- %02x, err = %i)\0A\00", [41 x i8] zeroinitializer }, align 32
@lgdt3306a_write_reg._entry_ptr.53 = internal global ptr @lgdt3306a_write_reg._entry.51, section ".printk_index", align 4
@lgdt3306a_set_reg_bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017lgdt3306a: reg: 0x%04x, bit: %d, level: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lgdt3306a_set_reg_bit\00", [42 x i8] zeroinitializer }, align 32
@lgdt3306a_set_reg_bit._entry_ptr = internal global ptr @lgdt3306a_set_reg_bit._entry, section ".printk_index", align 4
@lgdt3306a_set_reg_bit._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.55, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_reg_bit._entry_ptr.57 = internal global ptr @lgdt3306a_set_reg_bit._entry.56, section ".printk_index", align 4
@lgdt3306a_set_reg_bit._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.55, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_reg_bit._entry_ptr.59 = internal global ptr @lgdt3306a_set_reg_bit._entry.58, section ".printk_index", align 4
@lgdt3306a_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.60, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lgdt3306a_power\00", [16 x i8] zeroinitializer }, align 32
@lgdt3306a_power._entry_ptr = internal global ptr @lgdt3306a_power._entry, section ".printk_index", align 4
@lgdt3306a_power._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.60, ptr @.str.2, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_power._entry_ptr.62 = internal global ptr @lgdt3306a_power._entry.61, section ".printk_index", align 4
@lgdt3306a_power._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.60, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_power._entry_ptr.64 = internal global ptr @lgdt3306a_power._entry.63, section ".printk_index", align 4
@lgdt3306a_power._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.60, ptr @.str.2, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_power._entry_ptr.66 = internal global ptr @lgdt3306a_power._entry.65, section ".printk_index", align 4
@lgdt3306a_power._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.60, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_power._entry_ptr.68 = internal global ptr @lgdt3306a_power._entry.67, section ".printk_index", align 4
@regval2 = internal global { [164 x i8], [60 x i8] } zeroinitializer, align 32
@lgdt3306a_DumpRegs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.69, ptr @.str.2, i32 2113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lgdt3306a_DumpRegs\00", [45 x i8] zeroinitializer }, align 32
@lgdt3306a_DumpRegs._entry_ptr = internal global ptr @lgdt3306a_DumpRegs._entry, section ".printk_index", align 4
@regtab = internal constant { [164 x i16], [88 x i8] } { [164 x i16] [i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 61, i16 64, i16 65, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 80, i16 112, i16 113, i16 115, i16 117, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 127, i16 128, i16 133, i16 136, i16 137, i16 140, i16 141, i16 142, i16 143, i16 144, i16 145, i16 156, i16 157, i16 161, i16 162, i16 163, i16 166, i16 244, i16 245, i16 246, i16 247, i16 248, i16 249, i16 250, i16 251, i16 252, i16 253, i16 254, i16 255, i16 4096, i16 4101, i16 4105, i16 4106, i16 4122, i16 4150, i16 4156, i16 4157, i16 4159, i16 4189, i16 4191, i16 4192, i16 4193, i16 4197, i16 4198, i16 4200, i16 4206, i16 4207, i16 4210, i16 4211, i16 4212, i16 4224, i16 4225, i16 4265, i16 4279, i16 8479, i16 8490, i16 8482, i16 8491, i16 8492, i16 8493, i16 8501, i16 8513, i16 8546, i16 8563, i16 8569, i16 8570, i16 8574, i16 8575, i16 8576, i16 8577, i16 8581, i16 8593, i16 8601, i16 8602, i16 8609, i16 10309, i16 10310, i16 10311, i16 10313, i16 10314, i16 12288, i16 12289, i16 12337, i16 12338, i16 12457, i16 12458], [88 x i8] zeroinitializer }, align 32
@regval1 = internal global { [164 x i8], [60 x i8] } zeroinitializer, align 32
@lgdt3306a_DumpRegs._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.2, i32 2118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017lgdt3306a:  %04X = %02X\0A\00", [37 x i8] zeroinitializer }, align 32
@lgdt3306a_DumpRegs._entry_ptr.72 = internal global ptr @lgdt3306a_DumpRegs._entry.70, section ".printk_index", align 4
@lgdt3306a_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.73, ptr @.str.2, i32 1788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lgdt3306a_release\00", [46 x i8] zeroinitializer }, align 32
@lgdt3306a_release._entry_ptr = internal global ptr @lgdt3306a_release._entry, section ".printk_index", align 4
@lgdt3306a_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.74, ptr @.str.2, i32 820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lgdt3306a_init\00", [17 x i8] zeroinitializer }, align 32
@lgdt3306a_init._entry_ptr = internal global ptr @lgdt3306a_init._entry, section ".printk_index", align 4
@lgdt3306a_init._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.74, ptr @.str.2, i32 824, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_init._entry_ptr.76 = internal global ptr @lgdt3306a_init._entry.75, section ".printk_index", align 4
@lgdt3306a_init._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.74, ptr @.str.2, i32 829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_init._entry_ptr.78 = internal global ptr @lgdt3306a_init._entry.77, section ".printk_index", align 4
@lgdt3306a_init._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.74, ptr @.str.2, i32 834, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_init._entry_ptr.80 = internal global ptr @lgdt3306a_init._entry.79, section ".printk_index", align 4
@lgdt3306a_init._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.74, ptr @.str.2, i32 841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_init._entry_ptr.82 = internal global ptr @lgdt3306a_init._entry.81, section ".printk_index", align 4
@lgdt3306a_init._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.74, ptr @.str.2, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_init._entry_ptr.84 = internal global ptr @lgdt3306a_init._entry.83, section ".printk_index", align 4
@lgdt3306a_init._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.74, ptr @.str.2, i32 855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_init._entry_ptr.86 = internal global ptr @lgdt3306a_init._entry.85, section ".printk_index", align 4
@lgdt3306a_init._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.74, ptr @.str.2, i32 862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_init._entry_ptr.88 = internal global ptr @lgdt3306a_init._entry.87, section ".printk_index", align 4
@lgdt3306a_init._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.74, ptr @.str.2, i32 868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_init._entry_ptr.90 = internal global ptr @lgdt3306a_init._entry.89, section ".printk_index", align 4
@lgdt3306a_init._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.74, ptr @.str.2, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_init._entry_ptr.92 = internal global ptr @lgdt3306a_init._entry.91, section ".printk_index", align 4
@lgdt3306a_init._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.74, ptr @.str.2, i32 876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_init._entry_ptr.94 = internal global ptr @lgdt3306a_init._entry.93, section ".printk_index", align 4
@lgdt3306a_init._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.74, ptr @.str.2, i32 881, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_init._entry_ptr.96 = internal global ptr @lgdt3306a_init._entry.95, section ".printk_index", align 4
@lgdt3306a_init._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.74, ptr @.str.2, i32 886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_init._entry_ptr.98 = internal global ptr @lgdt3306a_init._entry.97, section ".printk_index", align 4
@lgdt3306a_init._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.74, ptr @.str.2, i32 892, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_init._entry_ptr.100 = internal global ptr @lgdt3306a_init._entry.99, section ".printk_index", align 4
@lgdt3306a_init._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.74, ptr @.str.2, i32 897, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_init._entry_ptr.102 = internal global ptr @lgdt3306a_init._entry.101, section ".printk_index", align 4
@lgdt3306a_init._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.74, ptr @.str.2, i32 900, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_init._entry_ptr.104 = internal global ptr @lgdt3306a_init._entry.103, section ".printk_index", align 4
@lgdt3306a_init._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.74, ptr @.str.2, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_init._entry_ptr.106 = internal global ptr @lgdt3306a_init._entry.105, section ".printk_index", align 4
@lgdt3306a_init._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.74, ptr @.str.2, i32 910, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_init._entry_ptr.108 = internal global ptr @lgdt3306a_init._entry.107, section ".printk_index", align 4
@lgdt3306a_init._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.74, ptr @.str.2, i32 913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013lgdt3306a: Bad xtalMHz=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@lgdt3306a_init._entry_ptr.111 = internal global ptr @lgdt3306a_init._entry.109, section ".printk_index", align 4
@lgdt3306a_init._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.74, ptr @.str.2, i32 966, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_init._entry_ptr.113 = internal global ptr @lgdt3306a_init._entry.112, section ".printk_index", align 4
@lgdt3306a_set_inversion_auto._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.114, ptr @.str.2, i32 707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lgdt3306a_set_inversion_auto\00", [35 x i8] zeroinitializer }, align 32
@lgdt3306a_set_inversion_auto._entry_ptr = internal global ptr @lgdt3306a_set_inversion_auto._entry, section ".printk_index", align 4
@lgdt3306a_set_inversion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.115, ptr @.str.2, i32 696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lgdt3306a_set_inversion\00", [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_inversion._entry_ptr = internal global ptr @lgdt3306a_set_inversion._entry, section ".printk_index", align 4
@lgdt3306a_set_vsb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.116, ptr @.str.2, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lgdt3306a_set_vsb\00", [46 x i8] zeroinitializer }, align 32
@lgdt3306a_set_vsb._entry_ptr = internal global ptr @lgdt3306a_set_vsb._entry, section ".printk_index", align 4
@lgdt3306a_set_vsb._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.116, ptr @.str.2, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_vsb._entry_ptr.118 = internal global ptr @lgdt3306a_set_vsb._entry.117, section ".printk_index", align 4
@lgdt3306a_set_vsb._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.116, ptr @.str.2, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_vsb._entry_ptr.120 = internal global ptr @lgdt3306a_set_vsb._entry.119, section ".printk_index", align 4
@lgdt3306a_set_vsb._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.116, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_vsb._entry_ptr.122 = internal global ptr @lgdt3306a_set_vsb._entry.121, section ".printk_index", align 4
@lgdt3306a_set_vsb._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.116, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_vsb._entry_ptr.124 = internal global ptr @lgdt3306a_set_vsb._entry.123, section ".printk_index", align 4
@lgdt3306a_set_vsb._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.116, ptr @.str.2, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_vsb._entry_ptr.126 = internal global ptr @lgdt3306a_set_vsb._entry.125, section ".printk_index", align 4
@lgdt3306a_set_vsb._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.116, ptr @.str.2, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_vsb._entry_ptr.128 = internal global ptr @lgdt3306a_set_vsb._entry.127, section ".printk_index", align 4
@lgdt3306a_set_vsb._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.116, ptr @.str.2, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_vsb._entry_ptr.130 = internal global ptr @lgdt3306a_set_vsb._entry.129, section ".printk_index", align 4
@lgdt3306a_set_vsb._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.116, ptr @.str.2, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017lgdt3306a: complete\0A\00", [41 x i8] zeroinitializer }, align 32
@lgdt3306a_set_vsb._entry_ptr.133 = internal global ptr @lgdt3306a_set_vsb._entry.131, section ".printk_index", align 4
@lgdt3306a_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.134, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lgdt3306a_soft_reset\00", [43 x i8] zeroinitializer }, align 32
@lgdt3306a_soft_reset._entry_ptr = internal global ptr @lgdt3306a_soft_reset._entry, section ".printk_index", align 4
@lgdt3306a_soft_reset._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.134, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_soft_reset._entry_ptr.136 = internal global ptr @lgdt3306a_soft_reset._entry.135, section ".printk_index", align 4
@lgdt3306a_soft_reset._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.134, ptr @.str.2, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_soft_reset._entry_ptr.138 = internal global ptr @lgdt3306a_soft_reset._entry.137, section ".printk_index", align 4
@lgdt3306a_mpeg_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.139, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lgdt3306a_mpeg_mode\00", [44 x i8] zeroinitializer }, align 32
@lgdt3306a_mpeg_mode._entry_ptr = internal global ptr @lgdt3306a_mpeg_mode._entry, section ".printk_index", align 4
@lgdt3306a_mpeg_mode._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.139, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_mpeg_mode._entry_ptr.141 = internal global ptr @lgdt3306a_mpeg_mode._entry.140, section ".printk_index", align 4
@lgdt3306a_mpeg_mode._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.139, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_mpeg_mode._entry_ptr.143 = internal global ptr @lgdt3306a_mpeg_mode._entry.142, section ".printk_index", align 4
@lgdt3306a_mpeg_mode._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.139, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_mpeg_mode._entry_ptr.145 = internal global ptr @lgdt3306a_mpeg_mode._entry.144, section ".printk_index", align 4
@lgdt3306a_mpeg_mode._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.139, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_mpeg_mode._entry_ptr.147 = internal global ptr @lgdt3306a_mpeg_mode._entry.146, section ".printk_index", align 4
@lgdt3306a_tune._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.2, i32 1736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017lgdt3306a: re_tune=%u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lgdt3306a_tune\00", [17 x i8] zeroinitializer }, align 32
@lgdt3306a_tune._entry_ptr = internal global ptr @lgdt3306a_tune._entry, section ".printk_index", align 4
@lgdt3306a_set_parameters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.2, i32 981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017lgdt3306a: (%d, %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lgdt3306a_set_parameters\00", [39 x i8] zeroinitializer }, align 32
@lgdt3306a_set_parameters._entry_ptr = internal global ptr @lgdt3306a_set_parameters._entry, section ".printk_index", align 4
@lgdt3306a_set_parameters._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.151, ptr @.str.2, i32 985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017lgdt3306a:  (already set, skipping ...)\0A\00", [53 x i8] zeroinitializer }, align 32
@lgdt3306a_set_parameters._entry_ptr.154 = internal global ptr @lgdt3306a_set_parameters._entry.152, section ".printk_index", align 4
@lgdt3306a_set_parameters._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.151, ptr @.str.2, i32 992, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_parameters._entry_ptr.156 = internal global ptr @lgdt3306a_set_parameters._entry.155, section ".printk_index", align 4
@lgdt3306a_set_parameters._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.151, ptr @.str.2, i32 1007, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_parameters._entry_ptr.158 = internal global ptr @lgdt3306a_set_parameters._entry.157, section ".printk_index", align 4
@lgdt3306a_set_parameters._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.151, ptr @.str.2, i32 1011, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_parameters._entry_ptr.160 = internal global ptr @lgdt3306a_set_parameters._entry.159, section ".printk_index", align 4
@lgdt3306a_set_parameters._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.151, ptr @.str.2, i32 1015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_parameters._entry_ptr.162 = internal global ptr @lgdt3306a_set_parameters._entry.161, section ".printk_index", align 4
@lgdt3306a_set_parameters._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.151, ptr @.str.2, i32 1021, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_parameters._entry_ptr.164 = internal global ptr @lgdt3306a_set_parameters._entry.163, section ".printk_index", align 4
@lgdt3306a_set_parameters._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.151, ptr @.str.2, i32 1027, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_parameters._entry_ptr.166 = internal global ptr @lgdt3306a_set_parameters._entry.165, section ".printk_index", align 4
@lgdt3306a_set_parameters._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.151, ptr @.str.2, i32 1031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_parameters._entry_ptr.168 = internal global ptr @lgdt3306a_set_parameters._entry.167, section ".printk_index", align 4
@lgdt3306a_set_parameters._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.151, ptr @.str.2, i32 1035, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_parameters._entry_ptr.170 = internal global ptr @lgdt3306a_set_parameters._entry.169, section ".printk_index", align 4
@lgdt3306a_set_modulation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.171, ptr @.str.2, i32 645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lgdt3306a_set_modulation\00", [39 x i8] zeroinitializer }, align 32
@lgdt3306a_set_modulation._entry_ptr = internal global ptr @lgdt3306a_set_modulation._entry, section ".printk_index", align 4
@lgdt3306a_set_modulation._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.171, ptr @.str.2, i32 659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_modulation._entry_ptr.173 = internal global ptr @lgdt3306a_set_modulation._entry.172, section ".printk_index", align 4
@lgdt3306a_set_qam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.175, ptr @.str.2, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017lgdt3306a: modulation=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lgdt3306a_set_qam\00", [46 x i8] zeroinitializer }, align 32
@lgdt3306a_set_qam._entry_ptr = internal global ptr @lgdt3306a_set_qam._entry, section ".printk_index", align 4
@lgdt3306a_set_qam._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.175, ptr @.str.2, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_qam._entry_ptr.177 = internal global ptr @lgdt3306a_set_qam._entry.176, section ".printk_index", align 4
@lgdt3306a_set_qam._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.175, ptr @.str.2, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_qam._entry_ptr.179 = internal global ptr @lgdt3306a_set_qam._entry.178, section ".printk_index", align 4
@lgdt3306a_set_qam._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.175, ptr @.str.2, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_qam._entry_ptr.181 = internal global ptr @lgdt3306a_set_qam._entry.180, section ".printk_index", align 4
@lgdt3306a_set_qam._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.175, ptr @.str.2, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_qam._entry_ptr.183 = internal global ptr @lgdt3306a_set_qam._entry.182, section ".printk_index", align 4
@lgdt3306a_set_qam._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.175, ptr @.str.2, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_qam._entry_ptr.185 = internal global ptr @lgdt3306a_set_qam._entry.184, section ".printk_index", align 4
@lgdt3306a_set_qam._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.175, ptr @.str.2, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_qam._entry_ptr.187 = internal global ptr @lgdt3306a_set_qam._entry.186, section ".printk_index", align 4
@lgdt3306a_set_qam._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.175, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_qam._entry_ptr.189 = internal global ptr @lgdt3306a_set_qam._entry.188, section ".printk_index", align 4
@lgdt3306a_set_qam._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.175, ptr @.str.2, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_qam._entry_ptr.191 = internal global ptr @lgdt3306a_set_qam._entry.190, section ".printk_index", align 4
@lgdt3306a_set_qam._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.175, ptr @.str.2, i32 620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_qam._entry_ptr.193 = internal global ptr @lgdt3306a_set_qam._entry.192, section ".printk_index", align 4
@lgdt3306a_set_qam._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.175, ptr @.str.2, i32 627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_qam._entry_ptr.195 = internal global ptr @lgdt3306a_set_qam._entry.194, section ".printk_index", align 4
@lgdt3306a_set_qam._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.175, ptr @.str.2, i32 632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_qam._entry_ptr.197 = internal global ptr @lgdt3306a_set_qam._entry.196, section ".printk_index", align 4
@lgdt3306a_set_qam._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.175, ptr @.str.2, i32 635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_set_qam._entry_ptr.199 = internal global ptr @lgdt3306a_set_qam._entry.198, section ".printk_index", align 4
@lgdt3306a_agc_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.200, ptr @.str.2, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lgdt3306a_agc_setup\00", [44 x i8] zeroinitializer }, align 32
@lgdt3306a_agc_setup._entry_ptr = internal global ptr @lgdt3306a_agc_setup._entry, section ".printk_index", align 4
@lgdt3306a_set_if._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.202, ptr @.str.2, i32 737, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014lgdt3306a: IF=%d KHz is not supported, 3250 assumed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lgdt3306a_set_if\00", [47 x i8] zeroinitializer }, align 32
@lgdt3306a_set_if._entry_ptr = internal global ptr @lgdt3306a_set_if._entry, section ".printk_index", align 4
@lgdt3306a_set_if._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.202, ptr @.str.2, i32 767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017lgdt3306a: if_freq=%d KHz->[%04x]\0A\00", [59 x i8] zeroinitializer }, align 32
@lgdt3306a_set_if._entry_ptr.205 = internal global ptr @lgdt3306a_set_if._entry.203, section ".printk_index", align 4
@lgdt3306a_mpeg_mode_polarity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.207, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017lgdt3306a: edge=%d, valid=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lgdt3306a_mpeg_mode_polarity\00", [35 x i8] zeroinitializer }, align 32
@lgdt3306a_mpeg_mode_polarity._entry_ptr = internal global ptr @lgdt3306a_mpeg_mode_polarity._entry, section ".printk_index", align 4
@lgdt3306a_mpeg_mode_polarity._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.207, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_mpeg_mode_polarity._entry_ptr.209 = internal global ptr @lgdt3306a_mpeg_mode_polarity._entry.208, section ".printk_index", align 4
@lgdt3306a_mpeg_mode_polarity._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.207, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_mpeg_mode_polarity._entry_ptr.211 = internal global ptr @lgdt3306a_mpeg_mode_polarity._entry.210, section ".printk_index", align 4
@lgdt3306a_get_tune_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.212, ptr @.str.2, i32 1755, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lgdt3306a_get_tune_settings\00", [36 x i8] zeroinitializer }, align 32
@lgdt3306a_get_tune_settings._entry_ptr = internal global ptr @lgdt3306a_get_tune_settings._entry, section ".printk_index", align 4
@lgdt3306a_get_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.214, ptr @.str.2, i32 1052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017lgdt3306a: (%u, %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lgdt3306a_get_frontend\00", [41 x i8] zeroinitializer }, align 32
@lgdt3306a_get_frontend._entry_ptr = internal global ptr @lgdt3306a_get_frontend._entry, section ".printk_index", align 4
@lgdt3306a_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.216, ptr @.str.2, i32 1575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017lgdt3306a: strength=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lgdt3306a_read_status\00", [42 x i8] zeroinitializer }, align 32
@lgdt3306a_read_status._entry_ptr = internal global ptr @lgdt3306a_read_status._entry, section ".printk_index", align 4
@lgdt3306a_read_status._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.216, ptr @.str.2, i32 1577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017lgdt3306a: fe->ops.tuner_ops.get_rf_strength() failed\0A\00", [39 x i8] zeroinitializer }, align 32
@lgdt3306a_read_status._entry_ptr.219 = internal global ptr @lgdt3306a_read_status._entry.217, section ".printk_index", align 4
@lgdt3306a_neverlock_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.221, ptr @.str.2, i32 1414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017lgdt3306a: NL_LOCK(%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lgdt3306a_neverlock_poll\00", [39 x i8] zeroinitializer }, align 32
@lgdt3306a_neverlock_poll._entry_ptr = internal global ptr @lgdt3306a_neverlock_poll._entry, section ".printk_index", align 4
@lgdt3306a_neverlock_poll._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.221, ptr @.str.2, i32 1418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017lgdt3306a: NLLockStatus=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@lgdt3306a_neverlock_poll._entry_ptr.224 = internal global ptr @lgdt3306a_neverlock_poll._entry.222, section ".printk_index", align 4
@lgdt3306a_check_neverlock_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.226, ptr @.str.2, i32 1272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017lgdt3306a: NeverLock=%d\00", [38 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"lgdt3306a_check_neverlock_status\00", [63 x i8] zeroinitializer }, align 32
@lgdt3306a_check_neverlock_status._entry_ptr = internal global ptr @lgdt3306a_check_neverlock_status._entry, section ".printk_index", align 4
@lgdt3306a_qam_lock_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.228, ptr @.str.2, i32 1546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017lgdt3306a: no fec lock!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lgdt3306a_qam_lock_poll\00", [40 x i8] zeroinitializer }, align 32
@lgdt3306a_qam_lock_poll._entry_ptr = internal global ptr @lgdt3306a_qam_lock_poll._entry, section ".printk_index", align 4
@lgdt3306a_qam_lock_poll._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.228, ptr @.str.2, i32 1554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017lgdt3306a: cnt=%d errors=%d snr=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@lgdt3306a_qam_lock_poll._entry_ptr.231 = internal global ptr @lgdt3306a_qam_lock_poll._entry.229, section ".printk_index", align 4
@lgdt3306a_qam_lock_poll._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.228, ptr @.str.2, i32 1560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017lgdt3306a: not locked!\0A\00", [38 x i8] zeroinitializer }, align 32
@lgdt3306a_qam_lock_poll._entry_ptr.234 = internal global ptr @lgdt3306a_qam_lock_poll._entry.232, section ".printk_index", align 4
@lgdt3306a_fec_lock_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.236, ptr @.str.2, i32 1394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017lgdt3306a: locked(%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lgdt3306a_fec_lock_poll\00", [40 x i8] zeroinitializer }, align 32
@lgdt3306a_fec_lock_poll._entry_ptr = internal global ptr @lgdt3306a_fec_lock_poll._entry, section ".printk_index", align 4
@lgdt3306a_fec_lock_poll._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.236, ptr @.str.2, i32 1398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017lgdt3306a: not locked\0A\00", [39 x i8] zeroinitializer }, align 32
@lgdt3306a_fec_lock_poll._entry_ptr.239 = internal global ptr @lgdt3306a_fec_lock_poll._entry.237, section ".printk_index", align 4
@lgdt3306a_check_lock_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.241, ptr @.str.2, i32 1197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017lgdt3306a: SYNC_LOCK=%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lgdt3306a_check_lock_status\00", [36 x i8] zeroinitializer }, align 32
@lgdt3306a_check_lock_status._entry_ptr = internal global ptr @lgdt3306a_check_lock_status._entry, section ".printk_index", align 4
@lgdt3306a_check_lock_status._entry.242 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.241, ptr @.str.2, i32 1211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017lgdt3306a: AGC_LOCK=%x\0A\00", [38 x i8] zeroinitializer }, align 32
@lgdt3306a_check_lock_status._entry_ptr.244 = internal global ptr @lgdt3306a_check_lock_status._entry.242, section ".printk_index", align 4
@lgdt3306a_check_lock_status._entry.245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.241, ptr @.str.2, i32 1229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017lgdt3306a: TR_LOCK=%x\0A\00", [39 x i8] zeroinitializer }, align 32
@lgdt3306a_check_lock_status._entry_ptr.247 = internal global ptr @lgdt3306a_check_lock_status._entry.245, section ".printk_index", align 4
@lgdt3306a_check_lock_status._entry.248 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.241, ptr @.str.2, i32 1247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017lgdt3306a: FEC_LOCK=%x\0A\00", [38 x i8] zeroinitializer }, align 32
@lgdt3306a_check_lock_status._entry_ptr.250 = internal global ptr @lgdt3306a_check_lock_status._entry.248, section ".printk_index", align 4
@lgdt3306a_check_lock_status._entry.251 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.241, ptr @.str.2, i32 1253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014lgdt3306a: UNKNOWN whatLock=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@lgdt3306a_check_lock_status._entry_ptr.253 = internal global ptr @lgdt3306a_check_lock_status._entry.251, section ".printk_index", align 4
@lgdt3306a_check_oper_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.254, ptr @.str.255, ptr @.str.2, i32 1154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017lgdt3306a: VSB\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lgdt3306a_check_oper_mode\00", [38 x i8] zeroinitializer }, align 32
@lgdt3306a_check_oper_mode._entry_ptr = internal global ptr @lgdt3306a_check_oper_mode._entry, section ".printk_index", align 4
@lgdt3306a_check_oper_mode._entry.256 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.255, ptr @.str.2, i32 1163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017lgdt3306a: QAM256\0A\00", [43 x i8] zeroinitializer }, align 32
@lgdt3306a_check_oper_mode._entry_ptr.258 = internal global ptr @lgdt3306a_check_oper_mode._entry.256, section ".printk_index", align 4
@lgdt3306a_check_oper_mode._entry.259 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.255, ptr @.str.2, i32 1166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017lgdt3306a: QAM64\0A\00", [44 x i8] zeroinitializer }, align 32
@lgdt3306a_check_oper_mode._entry_ptr.261 = internal global ptr @lgdt3306a_check_oper_mode._entry.259, section ".printk_index", align 4
@lgdt3306a_check_oper_mode._entry.262 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.263, ptr @.str.255, ptr @.str.2, i32 1170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\014lgdt3306a: UNKNOWN\0A\00", [42 x i8] zeroinitializer }, align 32
@lgdt3306a_check_oper_mode._entry_ptr.264 = internal global ptr @lgdt3306a_check_oper_mode._entry.262, section ".printk_index", align 4
@lgdt3306a_vsb_lock_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.265, ptr @.str.266, ptr @.str.2, i32 1516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017lgdt3306a: no sync lock!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lgdt3306a_vsb_lock_poll\00", [40 x i8] zeroinitializer }, align 32
@lgdt3306a_vsb_lock_poll._entry_ptr = internal global ptr @lgdt3306a_vsb_lock_poll._entry, section ".printk_index", align 4
@lgdt3306a_vsb_lock_poll._entry.267 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.266, ptr @.str.2, i32 1527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_vsb_lock_poll._entry_ptr.268 = internal global ptr @lgdt3306a_vsb_lock_poll._entry.267, section ".printk_index", align 4
@lgdt3306a_vsb_lock_poll._entry.269 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.266, ptr @.str.2, i32 1533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_vsb_lock_poll._entry_ptr.270 = internal global ptr @lgdt3306a_vsb_lock_poll._entry.269, section ".printk_index", align 4
@lgdt3306a_sync_lock_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.271, ptr @.str.2, i32 1373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lgdt3306a_sync_lock_poll\00", [39 x i8] zeroinitializer }, align 32
@lgdt3306a_sync_lock_poll._entry_ptr = internal global ptr @lgdt3306a_sync_lock_poll._entry, section ".printk_index", align 4
@lgdt3306a_sync_lock_poll._entry.272 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.271, ptr @.str.2, i32 1377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_sync_lock_poll._entry_ptr.273 = internal global ptr @lgdt3306a_sync_lock_poll._entry.272, section ".printk_index", align 4
@lgdt3306a_pre_monitoring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.274, ptr @.str.275, ptr @.str.2, i32 1306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\017lgdt3306a: snrRef=%d mainStrong=%d aiccrejStatus=%d currChDiffACQ=0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lgdt3306a_pre_monitoring\00", [39 x i8] zeroinitializer }, align 32
@lgdt3306a_pre_monitoring._entry_ptr = internal global ptr @lgdt3306a_pre_monitoring._entry, section ".printk_index", align 4
@lgdt3306a_monitor_vsb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.276, ptr @.str.277, ptr @.str.2, i32 1101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017lgdt3306a: snrRef=%d maxPowerMan=0x%x nCombDet=%d fbDlyCir=0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lgdt3306a_monitor_vsb\00", [42 x i8] zeroinitializer }, align 32
@lgdt3306a_monitor_vsb._entry_ptr = internal global ptr @lgdt3306a_monitor_vsb._entry, section ".printk_index", align 4
@lgdt3306a_calculate_snr_x100._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.278, ptr @.str.2, i32 1492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lgdt3306a_calculate_snr_x100\00", [35 x i8] zeroinitializer }, align 32
@lgdt3306a_calculate_snr_x100._entry_ptr = internal global ptr @lgdt3306a_calculate_snr_x100._entry, section ".printk_index", align 4
@lgdt3306a_calculate_snr_x100._entry.279 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.278, ptr @.str.2, i32 1493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_calculate_snr_x100._entry_ptr.280 = internal global ptr @lgdt3306a_calculate_snr_x100._entry.279, section ".printk_index", align 4
@lgdt3306a_calculate_snr_x100._entry.281 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.278, ptr @.str.2, i32 1494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_calculate_snr_x100._entry_ptr.282 = internal global ptr @lgdt3306a_calculate_snr_x100._entry.281, section ".printk_index", align 4
@lgdt3306a_calculate_snr_x100._entry.283 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.278, ptr @.str.2, i32 1495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_calculate_snr_x100._entry_ptr.284 = internal global ptr @lgdt3306a_calculate_snr_x100._entry.283, section ".printk_index", align 4
@lgdt3306a_calculate_snr_x100._entry.285 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.286, ptr @.str.278, ptr @.str.2, i32 1501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017lgdt3306a: mse=%u, pwr=%u, snr_x100=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@lgdt3306a_calculate_snr_x100._entry_ptr.287 = internal global ptr @lgdt3306a_calculate_snr_x100._entry.285, section ".printk_index", align 4
@valx_x10 = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 10, i32 11, i32 13, i32 15, i32 17, i32 20, i32 25, i32 33, i32 41, i32 50, i32 59, i32 73, i32 87, i32 100], [40 x i8] zeroinitializer }, align 32
@log10x_x1000 = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 0, i32 41, i32 114, i32 176, i32 230, i32 301, i32 398, i32 518, i32 613, i32 699, i32 771, i32 863, i32 939, i32 1000], [40 x i8] zeroinitializer }, align 32
@lgdt3306a_read_ber._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.288, ptr @.str.2, i32 1704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lgdt3306a_read_ber\00", [45 x i8] zeroinitializer }, align 32
@lgdt3306a_read_ber._entry_ptr = internal global ptr @lgdt3306a_read_ber._entry, section ".printk_index", align 4
@lgdt3306a_read_ber._entry.289 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.288, ptr @.str.2, i32 1705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_read_ber._entry_ptr.290 = internal global ptr @lgdt3306a_read_ber._entry.289, section ".printk_index", align 4
@lgdt3306a_read_ber._entry.291 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.288, ptr @.str.2, i32 1706, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_read_ber._entry_ptr.292 = internal global ptr @lgdt3306a_read_ber._entry.291, section ".printk_index", align 4
@lgdt3306a_read_ber._entry.293 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.288, ptr @.str.2, i32 1707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_read_ber._entry_ptr.294 = internal global ptr @lgdt3306a_read_ber._entry.293, section ".printk_index", align 4
@lgdt3306a_read_ber._entry.295 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.296, ptr @.str.288, ptr @.str.2, i32 1709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017lgdt3306a: ber=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@lgdt3306a_read_ber._entry_ptr.297 = internal global ptr @lgdt3306a_read_ber._entry.295, section ".printk_index", align 4
@lgdt3306a_read_signal_strength._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.298, ptr @.str.2, i32 1658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"lgdt3306a_read_signal_strength\00", [33 x i8] zeroinitializer }, align 32
@lgdt3306a_read_signal_strength._entry_ptr = internal global ptr @lgdt3306a_read_signal_strength._entry, section ".printk_index", align 4
@lgdt3306a_read_signal_strength._entry.299 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.298, ptr @.str.2, i32 1671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_read_signal_strength._entry_ptr.300 = internal global ptr @lgdt3306a_read_signal_strength._entry.299, section ".printk_index", align 4
@lgdt3306a_read_signal_strength._entry.301 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.302, ptr @.str.298, ptr @.str.2, i32 1687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017lgdt3306a: strength=%u\0A\00", [38 x i8] zeroinitializer }, align 32
@lgdt3306a_read_signal_strength._entry_ptr.303 = internal global ptr @lgdt3306a_read_signal_strength._entry.301, section ".printk_index", align 4
@lgdt3306a_read_ucblocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.304, ptr @.str.2, i32 1722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lgdt3306a_read_ucblocks\00", [40 x i8] zeroinitializer }, align 32
@lgdt3306a_read_ucblocks._entry_ptr = internal global ptr @lgdt3306a_read_ucblocks._entry, section ".printk_index", align 4
@lgdt3306a_read_ucblocks._entry.305 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.306, ptr @.str.304, ptr @.str.2, i32 1723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017lgdt3306a: ucblocks=%u\0A\00", [38 x i8] zeroinitializer }, align 32
@lgdt3306a_read_ucblocks._entry_ptr.307 = internal global ptr @lgdt3306a_read_ucblocks._entry.305, section ".printk_index", align 4
@lgdt3306a_i2c_gate_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.308, ptr @.str.309, ptr @.str.2, i32 779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017lgdt3306a: deny_i2c_rptr=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lgdt3306a_i2c_gate_ctrl\00", [40 x i8] zeroinitializer }, align 32
@lgdt3306a_i2c_gate_ctrl._entry_ptr = internal global ptr @lgdt3306a_i2c_gate_ctrl._entry, section ".printk_index", align 4
@lgdt3306a_i2c_gate_ctrl._entry.310 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.309, ptr @.str.2, i32 782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3306a_i2c_gate_ctrl._entry_ptr.311 = internal global ptr @lgdt3306a_i2c_gate_ctrl._entry.310, section ".printk_index", align 4
@lgdt3306a_ts_bus_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.312, ptr @.str.313, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017lgdt3306a: acquire=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lgdt3306a_ts_bus_ctrl\00", [42 x i8] zeroinitializer }, align 32
@lgdt3306a_ts_bus_ctrl._entry_ptr = internal global ptr @lgdt3306a_ts_bus_ctrl._entry, section ".printk_index", align 4
@lgdt3306a_search._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.314, ptr @.str.315, ptr @.str.2, i32 1780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017lgdt3306a: failed (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lgdt3306a_search\00", [47 x i8] zeroinitializer }, align 32
@lgdt3306a_search._entry_ptr = internal global ptr @lgdt3306a_search._entry, section ".printk_index", align 4
@lgdt3306a_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lgdt3306a\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@lgdt3306a_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.316, ptr @.str.317, ptr @.str.2, i32 2216, ptr @.str.318, ptr @.str.319 }, [40 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"LG Electronics LGDT3306A successfully identified\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lgdt3306a_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lgdt3306a_probe._entry_ptr = internal global ptr @lgdt3306a_probe._entry, section ".printk_index", align 4
@lgdt3306a_probe._entry.320 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.321, ptr @.str.317, ptr @.str.2, i32 2225, ptr @.str.322, ptr @.str.319 }, [40 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"probe failed = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@lgdt3306a_probe._entry_ptr.323 = internal global ptr @lgdt3306a_probe._entry.320, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 24, i64 25]
@__sancov_gen_cov_switch_values.324 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.325 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.326 = internal global [7 x i64] [i64 5, i64 16, i64 3250, i64 3500, i64 4000, i64 5000, i64 5380]
@__sancov_gen_cov_switch_values.327 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.328 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.329 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 10]
@__sancov_gen_cov_switch_values.330 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.331 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 20, i32 12 }
@___asan_gen_.334 = private unnamed_addr constant [14 x i8] c"forced_manual\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 31, i32 12 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1801, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant [14 x i8] c"lgdt3306a_ops\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 2128, i32 38 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1820, i32 6 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1823, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1830, i32 6 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1833, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1840, i32 6 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1843, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1858, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant [17 x i8] c"lgdt3306a_driver\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 2250, i32 26 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 2265, i32 1 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 161, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 168, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 792, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 796, i32 6 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 800, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 293, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 297, i32 7 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 305, i32 7 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 310, i32 7 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 316, i32 7 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 320, i32 7 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 325, i32 7 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 132, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 137, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 188, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 191, i32 6 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 198, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 348, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 353, i32 7 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 358, i32 7 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 364, i32 7 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 369, i32 7 }
@___asan_gen_.502 = private unnamed_addr constant [8 x i8] c"regval2\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 2096, i32 11 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 2113, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant [7 x i8] c"regtab\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1866, i32 20 }
@___asan_gen_.514 = private unnamed_addr constant [8 x i8] c"regval1\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 2095, i32 11 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 2118, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1788, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 820, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 824, i32 6 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 829, i32 6 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 834, i32 6 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 841, i32 6 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 848, i32 6 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 855, i32 6 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 862, i32 6 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 868, i32 7 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 873, i32 7 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 876, i32 7 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 881, i32 7 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 886, i32 7 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 892, i32 7 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 897, i32 7 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 900, i32 7 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 905, i32 7 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 910, i32 7 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 913, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 966, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 707, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 696, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 386, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 393, i32 6 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 398, i32 6 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 406, i32 6 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 413, i32 6 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 420, i32 6 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 455, i32 6 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 533, i32 6 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 536, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 209, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 212, i32 6 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 217, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 229, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 233, i32 6 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 241, i32 6 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 245, i32 6 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 254, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1736, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 981, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 985, i32 3 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 992, i32 6 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1007, i32 6 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1011, i32 6 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1015, i32 6 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1021, i32 6 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1027, i32 6 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1031, i32 6 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1035, i32 6 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 645, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 659, i32 6 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 546, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 550, i32 6 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 558, i32 6 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 565, i32 6 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 578, i32 6 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 590, i32 6 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 598, i32 6 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 605, i32 6 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 613, i32 6 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 620, i32 6 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 627, i32 6 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 632, i32 6 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 635, i32 2 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 674, i32 2 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 736, i32 3 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 767, i32 2 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 267, i32 2 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 270, i32 6 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 281, i32 2 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1755, i32 2 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1051, i32 2 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1575, i32 4 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1577, i32 4 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1414, i32 4 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1418, i32 2 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1272, i32 2 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1546, i32 4 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1554, i32 3 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1560, i32 2 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1394, i32 4 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1398, i32 2 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1197, i32 3 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1211, i32 3 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1229, i32 3 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1247, i32 3 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1253, i32 3 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1154, i32 3 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1163, i32 4 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1166, i32 3 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1170, i32 2 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1516, i32 4 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1527, i32 3 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1533, i32 2 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1373, i32 4 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1377, i32 2 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1305, i32 2 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1100, i32 2 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1492, i32 9 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1493, i32 9 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1494, i32 9 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1495, i32 9 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1501, i32 2 }
@___asan_gen_.1021 = private unnamed_addr constant [9 x i8] c"valx_x10\00", align 1
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1434, i32 18 }
@___asan_gen_.1024 = private unnamed_addr constant [13 x i8] c"log10x_x1000\00", align 1
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1437, i32 18 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1704, i32 21 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1705, i32 21 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1706, i32 21 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1707, i32 21 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1709, i32 2 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1658, i32 7 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1671, i32 6 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1687, i32 2 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1722, i32 14 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1723, i32 2 }
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 779, i32 3 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 782, i32 2 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 337, i32 2 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 1780, i32 2 }
@___asan_gen_.1105 = private unnamed_addr constant [19 x i8] c"lgdt3306a_id_table\00", align 1
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 2244, i32 35 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 2216, i32 2 }
@___asan_gen_.1123 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1130 = private constant [43 x i8] c"../drivers/media/dvb-frontends/lgdt3306a.c\00", align 1
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1130, i32 2225, i32 2 }
@llvm.compiler.used = appending global [436 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_forced_manual293, ptr @__UNIQUE_ID_forced_manualtype292, ptr @__UNIQUE_ID_license298, ptr @__UNIQUE_ID_version299, ptr @__exitcall_lgdt3306a_driver_exit, ptr @__initcall__kmod_lgdt3306a__294_2260_lgdt3306a_driver_init6, ptr @__ksymtab_lgdt3306a_attach, ptr @__modver_attr, ptr @__param_debug, ptr @__param_forced_manual, ptr @lgdt3306a_DumpRegs._entry, ptr @lgdt3306a_DumpRegs._entry.70, ptr @lgdt3306a_DumpRegs._entry_ptr, ptr @lgdt3306a_DumpRegs._entry_ptr.72, ptr @lgdt3306a_agc_setup._entry, ptr @lgdt3306a_agc_setup._entry_ptr, ptr @lgdt3306a_attach._entry, ptr @lgdt3306a_attach._entry.11, ptr @lgdt3306a_attach._entry.14, ptr @lgdt3306a_attach._entry.16, ptr @lgdt3306a_attach._entry.19, ptr @lgdt3306a_attach._entry.3, ptr @lgdt3306a_attach._entry.6, ptr @lgdt3306a_attach._entry.9, ptr @lgdt3306a_attach._entry_ptr, ptr @lgdt3306a_attach._entry_ptr.10, ptr @lgdt3306a_attach._entry_ptr.13, ptr @lgdt3306a_attach._entry_ptr.15, ptr @lgdt3306a_attach._entry_ptr.18, ptr @lgdt3306a_attach._entry_ptr.21, ptr @lgdt3306a_attach._entry_ptr.5, ptr @lgdt3306a_attach._entry_ptr.8, ptr @lgdt3306a_calculate_snr_x100._entry, ptr @lgdt3306a_calculate_snr_x100._entry.279, ptr @lgdt3306a_calculate_snr_x100._entry.281, ptr @lgdt3306a_calculate_snr_x100._entry.283, ptr @lgdt3306a_calculate_snr_x100._entry.285, ptr @lgdt3306a_calculate_snr_x100._entry_ptr, ptr @lgdt3306a_calculate_snr_x100._entry_ptr.280, ptr @lgdt3306a_calculate_snr_x100._entry_ptr.282, ptr @lgdt3306a_calculate_snr_x100._entry_ptr.284, ptr @lgdt3306a_calculate_snr_x100._entry_ptr.287, ptr @lgdt3306a_check_lock_status._entry, ptr @lgdt3306a_check_lock_status._entry.242, ptr @lgdt3306a_check_lock_status._entry.245, ptr @lgdt3306a_check_lock_status._entry.248, ptr @lgdt3306a_check_lock_status._entry.251, ptr @lgdt3306a_check_lock_status._entry_ptr, ptr @lgdt3306a_check_lock_status._entry_ptr.244, ptr @lgdt3306a_check_lock_status._entry_ptr.247, ptr @lgdt3306a_check_lock_status._entry_ptr.250, ptr @lgdt3306a_check_lock_status._entry_ptr.253, ptr @lgdt3306a_check_neverlock_status._entry, ptr @lgdt3306a_check_neverlock_status._entry_ptr, ptr @lgdt3306a_check_oper_mode._entry, ptr @lgdt3306a_check_oper_mode._entry.256, ptr @lgdt3306a_check_oper_mode._entry.259, ptr @lgdt3306a_check_oper_mode._entry.262, ptr @lgdt3306a_check_oper_mode._entry_ptr, ptr @lgdt3306a_check_oper_mode._entry_ptr.258, ptr @lgdt3306a_check_oper_mode._entry_ptr.261, ptr @lgdt3306a_check_oper_mode._entry_ptr.264, ptr @lgdt3306a_driver_exit, ptr @lgdt3306a_fec_lock_poll._entry, ptr @lgdt3306a_fec_lock_poll._entry.237, ptr @lgdt3306a_fec_lock_poll._entry_ptr, ptr @lgdt3306a_fec_lock_poll._entry_ptr.239, ptr @lgdt3306a_get_frontend._entry, ptr @lgdt3306a_get_frontend._entry_ptr, ptr @lgdt3306a_get_tune_settings._entry, ptr @lgdt3306a_get_tune_settings._entry_ptr, ptr @lgdt3306a_i2c_gate_ctrl._entry, ptr @lgdt3306a_i2c_gate_ctrl._entry.310, ptr @lgdt3306a_i2c_gate_ctrl._entry_ptr, ptr @lgdt3306a_i2c_gate_ctrl._entry_ptr.311, ptr @lgdt3306a_init._entry, ptr @lgdt3306a_init._entry.101, ptr @lgdt3306a_init._entry.103, ptr @lgdt3306a_init._entry.105, ptr @lgdt3306a_init._entry.107, ptr @lgdt3306a_init._entry.109, ptr @lgdt3306a_init._entry.112, ptr @lgdt3306a_init._entry.75, ptr @lgdt3306a_init._entry.77, ptr @lgdt3306a_init._entry.79, ptr @lgdt3306a_init._entry.81, ptr @lgdt3306a_init._entry.83, ptr @lgdt3306a_init._entry.85, ptr @lgdt3306a_init._entry.87, ptr @lgdt3306a_init._entry.89, ptr @lgdt3306a_init._entry.91, ptr @lgdt3306a_init._entry.93, ptr @lgdt3306a_init._entry.95, ptr @lgdt3306a_init._entry.97, ptr @lgdt3306a_init._entry.99, ptr @lgdt3306a_init._entry_ptr, ptr @lgdt3306a_init._entry_ptr.100, ptr @lgdt3306a_init._entry_ptr.102, ptr @lgdt3306a_init._entry_ptr.104, ptr @lgdt3306a_init._entry_ptr.106, ptr @lgdt3306a_init._entry_ptr.108, ptr @lgdt3306a_init._entry_ptr.111, ptr @lgdt3306a_init._entry_ptr.113, ptr @lgdt3306a_init._entry_ptr.76, ptr @lgdt3306a_init._entry_ptr.78, ptr @lgdt3306a_init._entry_ptr.80, ptr @lgdt3306a_init._entry_ptr.82, ptr @lgdt3306a_init._entry_ptr.84, ptr @lgdt3306a_init._entry_ptr.86, ptr @lgdt3306a_init._entry_ptr.88, ptr @lgdt3306a_init._entry_ptr.90, ptr @lgdt3306a_init._entry_ptr.92, ptr @lgdt3306a_init._entry_ptr.94, ptr @lgdt3306a_init._entry_ptr.96, ptr @lgdt3306a_init._entry_ptr.98, ptr @lgdt3306a_monitor_vsb._entry, ptr @lgdt3306a_monitor_vsb._entry_ptr, ptr @lgdt3306a_mpeg_mode._entry, ptr @lgdt3306a_mpeg_mode._entry.140, ptr @lgdt3306a_mpeg_mode._entry.142, ptr @lgdt3306a_mpeg_mode._entry.144, ptr @lgdt3306a_mpeg_mode._entry.146, ptr @lgdt3306a_mpeg_mode._entry_ptr, ptr @lgdt3306a_mpeg_mode._entry_ptr.141, ptr @lgdt3306a_mpeg_mode._entry_ptr.143, ptr @lgdt3306a_mpeg_mode._entry_ptr.145, ptr @lgdt3306a_mpeg_mode._entry_ptr.147, ptr @lgdt3306a_mpeg_mode_polarity._entry, ptr @lgdt3306a_mpeg_mode_polarity._entry.208, ptr @lgdt3306a_mpeg_mode_polarity._entry.210, ptr @lgdt3306a_mpeg_mode_polarity._entry_ptr, ptr @lgdt3306a_mpeg_mode_polarity._entry_ptr.209, ptr @lgdt3306a_mpeg_mode_polarity._entry_ptr.211, ptr @lgdt3306a_mpeg_tristate._entry, ptr @lgdt3306a_mpeg_tristate._entry.38, ptr @lgdt3306a_mpeg_tristate._entry.40, ptr @lgdt3306a_mpeg_tristate._entry.42, ptr @lgdt3306a_mpeg_tristate._entry.44, ptr @lgdt3306a_mpeg_tristate._entry.46, ptr @lgdt3306a_mpeg_tristate._entry.48, ptr @lgdt3306a_mpeg_tristate._entry_ptr, ptr @lgdt3306a_mpeg_tristate._entry_ptr.39, ptr @lgdt3306a_mpeg_tristate._entry_ptr.41, ptr @lgdt3306a_mpeg_tristate._entry_ptr.43, ptr @lgdt3306a_mpeg_tristate._entry_ptr.45, ptr @lgdt3306a_mpeg_tristate._entry_ptr.47, ptr @lgdt3306a_mpeg_tristate._entry_ptr.49, ptr @lgdt3306a_neverlock_poll._entry, ptr @lgdt3306a_neverlock_poll._entry.222, ptr @lgdt3306a_neverlock_poll._entry_ptr, ptr @lgdt3306a_neverlock_poll._entry_ptr.224, ptr @lgdt3306a_power._entry, ptr @lgdt3306a_power._entry.61, ptr @lgdt3306a_power._entry.63, ptr @lgdt3306a_power._entry.65, ptr @lgdt3306a_power._entry.67, ptr @lgdt3306a_power._entry_ptr, ptr @lgdt3306a_power._entry_ptr.62, ptr @lgdt3306a_power._entry_ptr.64, ptr @lgdt3306a_power._entry_ptr.66, ptr @lgdt3306a_power._entry_ptr.68, ptr @lgdt3306a_pre_monitoring._entry, ptr @lgdt3306a_pre_monitoring._entry_ptr, ptr @lgdt3306a_probe._entry, ptr @lgdt3306a_probe._entry.320, ptr @lgdt3306a_probe._entry_ptr, ptr @lgdt3306a_probe._entry_ptr.323, ptr @lgdt3306a_qam_lock_poll._entry, ptr @lgdt3306a_qam_lock_poll._entry.229, ptr @lgdt3306a_qam_lock_poll._entry.232, ptr @lgdt3306a_qam_lock_poll._entry_ptr, ptr @lgdt3306a_qam_lock_poll._entry_ptr.231, ptr @lgdt3306a_qam_lock_poll._entry_ptr.234, ptr @lgdt3306a_read_ber._entry, ptr @lgdt3306a_read_ber._entry.289, ptr @lgdt3306a_read_ber._entry.291, ptr @lgdt3306a_read_ber._entry.293, ptr @lgdt3306a_read_ber._entry.295, ptr @lgdt3306a_read_ber._entry_ptr, ptr @lgdt3306a_read_ber._entry_ptr.290, ptr @lgdt3306a_read_ber._entry_ptr.292, ptr @lgdt3306a_read_ber._entry_ptr.294, ptr @lgdt3306a_read_ber._entry_ptr.297, ptr @lgdt3306a_read_reg._entry, ptr @lgdt3306a_read_reg._entry.27, ptr @lgdt3306a_read_reg._entry_ptr, ptr @lgdt3306a_read_reg._entry_ptr.29, ptr @lgdt3306a_read_signal_strength._entry, ptr @lgdt3306a_read_signal_strength._entry.299, ptr @lgdt3306a_read_signal_strength._entry.301, ptr @lgdt3306a_read_signal_strength._entry_ptr, ptr @lgdt3306a_read_signal_strength._entry_ptr.300, ptr @lgdt3306a_read_signal_strength._entry_ptr.303, ptr @lgdt3306a_read_status._entry, ptr @lgdt3306a_read_status._entry.217, ptr @lgdt3306a_read_status._entry_ptr, ptr @lgdt3306a_read_status._entry_ptr.219, ptr @lgdt3306a_read_ucblocks._entry, ptr @lgdt3306a_read_ucblocks._entry.305, ptr @lgdt3306a_read_ucblocks._entry_ptr, ptr @lgdt3306a_read_ucblocks._entry_ptr.307, ptr @lgdt3306a_release._entry, ptr @lgdt3306a_release._entry_ptr, ptr @lgdt3306a_search._entry, ptr @lgdt3306a_search._entry_ptr, ptr @lgdt3306a_set_if._entry, ptr @lgdt3306a_set_if._entry.203, ptr @lgdt3306a_set_if._entry_ptr, ptr @lgdt3306a_set_if._entry_ptr.205, ptr @lgdt3306a_set_inversion._entry, ptr @lgdt3306a_set_inversion._entry_ptr, ptr @lgdt3306a_set_inversion_auto._entry, ptr @lgdt3306a_set_inversion_auto._entry_ptr, ptr @lgdt3306a_set_modulation._entry, ptr @lgdt3306a_set_modulation._entry.172, ptr @lgdt3306a_set_modulation._entry_ptr, ptr @lgdt3306a_set_modulation._entry_ptr.173, ptr @lgdt3306a_set_parameters._entry, ptr @lgdt3306a_set_parameters._entry.152, ptr @lgdt3306a_set_parameters._entry.155, ptr @lgdt3306a_set_parameters._entry.157, ptr @lgdt3306a_set_parameters._entry.159, ptr @lgdt3306a_set_parameters._entry.161, ptr @lgdt3306a_set_parameters._entry.163, ptr @lgdt3306a_set_parameters._entry.165, ptr @lgdt3306a_set_parameters._entry.167, ptr @lgdt3306a_set_parameters._entry.169, ptr @lgdt3306a_set_parameters._entry_ptr, ptr @lgdt3306a_set_parameters._entry_ptr.154, ptr @lgdt3306a_set_parameters._entry_ptr.156, ptr @lgdt3306a_set_parameters._entry_ptr.158, ptr @lgdt3306a_set_parameters._entry_ptr.160, ptr @lgdt3306a_set_parameters._entry_ptr.162, ptr @lgdt3306a_set_parameters._entry_ptr.164, ptr @lgdt3306a_set_parameters._entry_ptr.166, ptr @lgdt3306a_set_parameters._entry_ptr.168, ptr @lgdt3306a_set_parameters._entry_ptr.170, ptr @lgdt3306a_set_qam._entry, ptr @lgdt3306a_set_qam._entry.176, ptr @lgdt3306a_set_qam._entry.178, ptr @lgdt3306a_set_qam._entry.180, ptr @lgdt3306a_set_qam._entry.182, ptr @lgdt3306a_set_qam._entry.184, ptr @lgdt3306a_set_qam._entry.186, ptr @lgdt3306a_set_qam._entry.188, ptr @lgdt3306a_set_qam._entry.190, ptr @lgdt3306a_set_qam._entry.192, ptr @lgdt3306a_set_qam._entry.194, ptr @lgdt3306a_set_qam._entry.196, ptr @lgdt3306a_set_qam._entry.198, ptr @lgdt3306a_set_qam._entry_ptr, ptr @lgdt3306a_set_qam._entry_ptr.177, ptr @lgdt3306a_set_qam._entry_ptr.179, ptr @lgdt3306a_set_qam._entry_ptr.181, ptr @lgdt3306a_set_qam._entry_ptr.183, ptr @lgdt3306a_set_qam._entry_ptr.185, ptr @lgdt3306a_set_qam._entry_ptr.187, ptr @lgdt3306a_set_qam._entry_ptr.189, ptr @lgdt3306a_set_qam._entry_ptr.191, ptr @lgdt3306a_set_qam._entry_ptr.193, ptr @lgdt3306a_set_qam._entry_ptr.195, ptr @lgdt3306a_set_qam._entry_ptr.197, ptr @lgdt3306a_set_qam._entry_ptr.199, ptr @lgdt3306a_set_reg_bit._entry, ptr @lgdt3306a_set_reg_bit._entry.56, ptr @lgdt3306a_set_reg_bit._entry.58, ptr @lgdt3306a_set_reg_bit._entry_ptr, ptr @lgdt3306a_set_reg_bit._entry_ptr.57, ptr @lgdt3306a_set_reg_bit._entry_ptr.59, ptr @lgdt3306a_set_vsb._entry, ptr @lgdt3306a_set_vsb._entry.117, ptr @lgdt3306a_set_vsb._entry.119, ptr @lgdt3306a_set_vsb._entry.121, ptr @lgdt3306a_set_vsb._entry.123, ptr @lgdt3306a_set_vsb._entry.125, ptr @lgdt3306a_set_vsb._entry.127, ptr @lgdt3306a_set_vsb._entry.129, ptr @lgdt3306a_set_vsb._entry.131, ptr @lgdt3306a_set_vsb._entry_ptr, ptr @lgdt3306a_set_vsb._entry_ptr.118, ptr @lgdt3306a_set_vsb._entry_ptr.120, ptr @lgdt3306a_set_vsb._entry_ptr.122, ptr @lgdt3306a_set_vsb._entry_ptr.124, ptr @lgdt3306a_set_vsb._entry_ptr.126, ptr @lgdt3306a_set_vsb._entry_ptr.128, ptr @lgdt3306a_set_vsb._entry_ptr.130, ptr @lgdt3306a_set_vsb._entry_ptr.133, ptr @lgdt3306a_sleep._entry, ptr @lgdt3306a_sleep._entry.32, ptr @lgdt3306a_sleep._entry.34, ptr @lgdt3306a_sleep._entry_ptr, ptr @lgdt3306a_sleep._entry_ptr.33, ptr @lgdt3306a_sleep._entry_ptr.35, ptr @lgdt3306a_soft_reset._entry, ptr @lgdt3306a_soft_reset._entry.135, ptr @lgdt3306a_soft_reset._entry.137, ptr @lgdt3306a_soft_reset._entry_ptr, ptr @lgdt3306a_soft_reset._entry_ptr.136, ptr @lgdt3306a_soft_reset._entry_ptr.138, ptr @lgdt3306a_sync_lock_poll._entry, ptr @lgdt3306a_sync_lock_poll._entry.272, ptr @lgdt3306a_sync_lock_poll._entry_ptr, ptr @lgdt3306a_sync_lock_poll._entry_ptr.273, ptr @lgdt3306a_ts_bus_ctrl._entry, ptr @lgdt3306a_ts_bus_ctrl._entry_ptr, ptr @lgdt3306a_tune._entry, ptr @lgdt3306a_tune._entry_ptr, ptr @lgdt3306a_vsb_lock_poll._entry, ptr @lgdt3306a_vsb_lock_poll._entry.267, ptr @lgdt3306a_vsb_lock_poll._entry.269, ptr @lgdt3306a_vsb_lock_poll._entry_ptr, ptr @lgdt3306a_vsb_lock_poll._entry_ptr.268, ptr @lgdt3306a_vsb_lock_poll._entry_ptr.270, ptr @lgdt3306a_write_reg._entry, ptr @lgdt3306a_write_reg._entry.51, ptr @lgdt3306a_write_reg._entry_ptr, ptr @lgdt3306a_write_reg._entry_ptr.53, ptr @debug, ptr @forced_manual, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @lgdt3306a_ops, ptr @.str.4, ptr @.str.7, ptr @.str.12, ptr @.str.17, ptr @.str.20, ptr @lgdt3306a_driver, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.36, ptr @.str.37, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.60, ptr @regval2, ptr @.str.69, ptr @regtab, ptr @regval1, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.110, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.132, ptr @.str.134, ptr @.str.139, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.153, ptr @.str.171, ptr @.str.174, ptr @.str.175, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.204, ptr @.str.206, ptr @.str.207, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.218, ptr @.str.220, ptr @.str.221, ptr @.str.223, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.230, ptr @.str.233, ptr @.str.235, ptr @.str.236, ptr @.str.238, ptr @.str.240, ptr @.str.241, ptr @.str.243, ptr @.str.246, ptr @.str.249, ptr @.str.252, ptr @.str.254, ptr @.str.255, ptr @.str.257, ptr @.str.260, ptr @.str.263, ptr @.str.265, ptr @.str.266, ptr @.str.271, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.286, ptr @valx_x10, ptr @log10x_x1000, ptr @.str.288, ptr @.str.296, ptr @.str.298, ptr @.str.302, ptr @.str.304, ptr @.str.306, ptr @.str.308, ptr @.str.309, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @lgdt3306a_id_table, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.321, ptr @.str.322], section "llvm.metadata"
@0 = internal global [267 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @forced_manual to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_attach._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_attach._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_attach._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_attach._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_attach._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_attach._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_attach._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_read_reg._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_sleep._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_sleep._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_mpeg_tristate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_mpeg_tristate._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_mpeg_tristate._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_mpeg_tristate._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_mpeg_tristate._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_mpeg_tristate._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_mpeg_tristate._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_write_reg._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_reg_bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_reg_bit._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_reg_bit._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_power._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_power._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_power._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_power._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regval2 to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_DumpRegs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regtab to i32), i32 328, i32 416, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regval1 to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_DumpRegs._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_init._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_init._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_init._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_init._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_init._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_init._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_init._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_init._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_init._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_init._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_init._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_init._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_init._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_init._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_init._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_init._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_init._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_init._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_init._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_inversion_auto._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_inversion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_vsb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_vsb._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_vsb._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_vsb._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_vsb._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_vsb._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_vsb._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_vsb._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_vsb._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_soft_reset._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_soft_reset._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_mpeg_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_mpeg_mode._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_mpeg_mode._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_mpeg_mode._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_mpeg_mode._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_tune._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_parameters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_parameters._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_parameters._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_parameters._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_parameters._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_parameters._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_parameters._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_parameters._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_parameters._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_parameters._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_modulation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_modulation._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_qam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_qam._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_qam._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_qam._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_qam._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_qam._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_qam._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_qam._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_qam._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_qam._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_qam._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_qam._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_qam._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_agc_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_if._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_set_if._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_mpeg_mode_polarity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_mpeg_mode_polarity._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_mpeg_mode_polarity._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_get_tune_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_get_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_read_status._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_neverlock_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_neverlock_poll._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_check_neverlock_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_qam_lock_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_qam_lock_poll._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_qam_lock_poll._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_fec_lock_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_fec_lock_poll._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_check_lock_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_check_lock_status._entry.242 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_check_lock_status._entry.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_check_lock_status._entry.248 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_check_lock_status._entry.251 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_check_oper_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_check_oper_mode._entry.256 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_check_oper_mode._entry.259 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_check_oper_mode._entry.262 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_vsb_lock_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_vsb_lock_poll._entry.267 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_vsb_lock_poll._entry.269 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_sync_lock_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_sync_lock_poll._entry.272 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_pre_monitoring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_monitor_vsb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_calculate_snr_x100._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_calculate_snr_x100._entry.279 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_calculate_snr_x100._entry.281 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_calculate_snr_x100._entry.283 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_calculate_snr_x100._entry.285 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @valx_x10 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log10x_x1000 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_read_ber._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_read_ber._entry.289 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_read_ber._entry.291 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_read_ber._entry.293 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_read_ber._entry.295 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_read_signal_strength._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_read_signal_strength._entry.299 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_read_signal_strength._entry.301 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_read_ucblocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_read_ucblocks._entry.305 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_i2c_gate_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_i2c_gate_ctrl._entry.310 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_ts_bus_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_search._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3306a_probe._entry.320 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lgdt3306a_attach(ptr noundef %config, ptr noundef %i2c_adap) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !619
  %1 = load i32, ptr @debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

do.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %i2c_adap, null
  br i1 %tobool2.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 11
  %2 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.true ], [ 0, %do.end.cond.end_crit_edge ]
  %tobool3.not = icmp eq ptr %config, null
  br i1 %tobool3.not, label %cond.end.cond.end6_crit_edge, label %cond.true4

cond.end.cond.end6_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end6

cond.true4:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %config, align 4
  %conv = zext i8 %5 to i32
  br label %cond.end6

cond.end6:                                        ; preds = %cond.true4, %cond.end.cond.end6_crit_edge
  %cond7 = phi i32 [ %conv, %cond.true4 ], [ 0, %cond.end.cond.end6_crit_edge ]
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %cond, i32 noundef %cond7) #11
  br label %do.end10

do.end10:                                         ; preds = %cond.end6, %entry.do.end10_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1064) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end10.do.end107_crit_edge, label %if.end14

do.end10.do.end107_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end107

if.end14:                                         ; preds = %do.end10
  %cfg = getelementptr inbounds %struct.lgdt3306a_state, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %config, ptr %cfg, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %i2c_adap, ptr %call7.i.i, align 8
  %frontend = getelementptr inbounds %struct.lgdt3306a_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.lgdt3306a_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %9 = call ptr @memcpy(ptr %ops, ptr @lgdt3306a_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.lgdt3306a_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  %call17 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef nonnull %call7.i.i, i16 noundef zeroext 0, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end24, label %if.end31.critedge

do.end24:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call17, i32 noundef 1820) #11
  br label %do.end107

if.end31.critedge:                                ; preds = %if.end14
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val, align 1
  %13 = and i8 %12, 116
  call void @__sanitizer_cov_trace_const_cmp1(i8 116, i8 %13)
  %cmp34.not = icmp eq i8 %13, 116
  br i1 %cmp34.not, label %if.end31.critedge.if.end44_crit_edge, label %do.end39

if.end31.critedge.if.end44_crit_edge:             ; preds = %if.end31.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

do.end39:                                         ; preds = %if.end31.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %and33 = zext i8 %13 to i32
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %and33) #11
  br label %if.end44

if.end44:                                         ; preds = %do.end39, %if.end31.critedge.if.end44_crit_edge
  %call45 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef nonnull %call7.i.i, i16 noundef zeroext 1, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp47 = icmp slt i32 %call45, 0
  br i1 %cmp47, label %do.end53, label %if.end60.critedge

do.end53:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call45, i32 noundef 1830) #11
  br label %do.end107

if.end60.critedge:                                ; preds = %if.end44
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %val, align 1
  %16 = and i8 %15, -10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -58, i8 %16)
  %cmp63.not = icmp eq i8 %16, -58
  br i1 %cmp63.not, label %if.end60.critedge.if.end73_crit_edge, label %do.end68

if.end60.critedge.if.end73_crit_edge:             ; preds = %if.end60.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

do.end68:                                         ; preds = %if.end60.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %and62 = zext i8 %16 to i32
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %and62) #11
  br label %if.end73

if.end73:                                         ; preds = %do.end68, %if.end60.critedge.if.end73_crit_edge
  %call74 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef nonnull %call7.i.i, i16 noundef zeroext 2, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp76 = icmp slt i32 %call74, 0
  br i1 %cmp76, label %do.end82, label %if.end89.critedge

do.end82:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %call84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call74, i32 noundef 1840) #11
  br label %do.end107

if.end89.critedge:                                ; preds = %if.end73
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %val, align 1
  %19 = and i8 %18, 115
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp92.not = icmp eq i8 %19, 3
  br i1 %cmp92.not, label %if.end89.critedge.if.end102_crit_edge, label %do.end97

if.end89.critedge.if.end102_crit_edge:            ; preds = %if.end89.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

do.end97:                                         ; preds = %if.end89.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %and91 = zext i8 %19 to i32
  %call101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %and91) #11
  br label %if.end102

if.end102:                                        ; preds = %do.end97, %if.end89.critedge.if.end102_crit_edge
  %current_frequency = getelementptr inbounds %struct.lgdt3306a_state, ptr %call7.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %current_frequency, align 4
  %current_modulation = getelementptr inbounds %struct.lgdt3306a_state, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %current_modulation to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %current_modulation, align 8
  %22 = load i32, ptr @debug, align 4
  %and.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end102.do.end3.i_crit_edge, label %do.end.i

if.end102.do.end3.i_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i:                                         ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.end102.do.end3.i_crit_edge
  %23 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %current_frequency, align 4
  %call4.i = call fastcc i32 @lgdt3306a_mpeg_tristate(ptr noundef nonnull %call7.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %do.end9.i, label %if.end16.critedge.i

do.end9.i:                                        ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call4.i, i32 noundef 796) #11
  br label %cleanup

if.end16.critedge.i:                              ; preds = %do.end3.i
  %call17.i = call fastcc i32 @lgdt3306a_power(ptr noundef nonnull %call7.i.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp19.i = icmp slt i32 %call17.i, 0
  br i1 %cmp19.i, label %do.end25.i, label %if.end16.critedge.i.cleanup_crit_edge

if.end16.critedge.i.cleanup_crit_edge:            ; preds = %if.end16.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end25.i:                                       ; preds = %if.end16.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call17.i, i32 noundef 800) #11
  br label %cleanup

do.end107:                                        ; preds = %do.end82, %do.end53, %do.end24, %do.end10.do.end107_crit_edge
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #11
  call void @kfree(ptr noundef %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end107, %do.end25.i, %if.end16.critedge.i.cleanup_crit_edge, %do.end9.i
  %retval.0 = phi ptr [ null, %do.end107 ], [ %frontend, %do.end9.i ], [ %frontend, %if.end16.critedge.i.cleanup_crit_edge ], [ %frontend, %do.end25.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3306a_read_reg(ptr nocapture noundef readonly %state, i16 noundef zeroext %reg, ptr noundef %val) unnamed_addr #0 align 64 {
entry:
  %reg_buf = alloca [2 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_buf) #8
  %0 = getelementptr inbounds [2 x i8], ptr %reg_buf, i32 0, i32 1
  %conv = zext i16 %reg to i32
  %1 = lshr i16 %reg, 8
  %conv1 = trunc i16 %1 to i8
  %2 = ptrtoint ptr %reg_buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1, ptr %reg_buf, align 1
  %conv3 = trunc i16 %reg to i8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv3, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #8
  %4 = getelementptr inbounds i8, ptr %msg, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %cfg = getelementptr inbounds %struct.lgdt3306a_state, ptr %state, i32 0, i32 1
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
  %conv5 = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv5, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg_buf, ptr %buf, align 4
  %arrayinit.element6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %14 = load i8, ptr %7, align 4
  %conv10 = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element6 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv10, ptr %arrayinit.element6, align 4
  %flags11 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %16 = ptrtoint ptr %flags11 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags11, align 2
  %len12 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %17 = ptrtoint ptr %len12 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len12, align 4
  %buf13 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %18 = ptrtoint ptr %buf13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %val, ptr %buf13, align 4
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state, align 4
  %call = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %do.body24, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfg, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 4
  %conv18 = zext i8 %24 to i32
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %conv18, i32 noundef %conv, i32 noundef %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp21 = icmp slt i32 %call, 0
  %call. = select i1 %cmp21, i32 %call, i32 -121
  br label %cleanup

do.body24:                                        ; preds = %entry
  %25 = load i32, ptr @debug, align 4
  %and25 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool.not = icmp eq i32 %and25, 0
  br i1 %tobool.not, label %do.body24.cleanup_crit_edge, label %do.end29

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end29:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %val, align 1
  %conv32 = zext i8 %27 to i32
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv, i32 noundef %conv32) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %do.body24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call., %do.end ], [ 0, %do.end29 ], [ 0, %do.body24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_buf) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3306a_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lgdt3306a_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lgdt3306a_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @lgdt3306a_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3306a_mpeg_tristate(ptr nocapture noundef readonly %state, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !619
  %1 = load i32, ptr @debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %mode) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %tobool4.not = icmp eq i32 %mode, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %do.end3
  %call6 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %state, i16 noundef zeroext 112, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end11, label %if.end18.critedge

do.end11:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call6, i32 noundef 297) #11
  br label %fail

if.end18.critedge:                                ; preds = %if.then5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %val, align 1
  %4 = and i8 %3, 87
  store i8 %4, ptr %val, align 1
  %call22 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 112, i8 noundef zeroext %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp24 = icmp slt i32 %call22, 0
  br i1 %cmp24, label %do.end30, label %if.end37.critedge

do.end30:                                         ; preds = %if.end18.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call22, i32 noundef 305) #11
  br label %fail

if.end37.critedge:                                ; preds = %if.end18.critedge
  %call38 = call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %state, i16 noundef zeroext 3, i32 noundef 6, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp40 = icmp slt i32 %call38, 0
  br i1 %cmp40, label %do.end46, label %if.end37.critedge.fail_crit_edge

if.end37.critedge.fail_crit_edge:                 ; preds = %if.end37.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

do.end46:                                         ; preds = %if.end37.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call38, i32 noundef 310) #11
  br label %fail

if.else:                                          ; preds = %do.end3
  %call54 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %state, i16 noundef zeroext 3, i32 noundef 6, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp56 = icmp slt i32 %call54, 0
  br i1 %cmp56, label %do.end62, label %if.end69.critedge

do.end62:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call54, i32 noundef 316) #11
  br label %fail

if.end69.critedge:                                ; preds = %if.else
  %call70 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %state, i16 noundef zeroext 112, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp72 = icmp slt i32 %call70, 0
  br i1 %cmp72, label %do.end78, label %if.end85.critedge

do.end78:                                         ; preds = %if.end69.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call70, i32 noundef 320) #11
  br label %fail

if.end85.critedge:                                ; preds = %if.end69.critedge
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %7 = or i8 %6, -88
  store i8 %7, ptr %val, align 1
  %call88 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 112, i8 noundef zeroext %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp90 = icmp slt i32 %call88, 0
  br i1 %cmp90, label %do.end96, label %if.end85.critedge.fail_crit_edge

if.end85.critedge.fail_crit_edge:                 ; preds = %if.end85.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

do.end96:                                         ; preds = %if.end85.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call88, i32 noundef 325) #11
  br label %fail

fail:                                             ; preds = %do.end96, %if.end85.critedge.fail_crit_edge, %do.end78, %do.end62, %do.end46, %if.end37.critedge.fail_crit_edge, %do.end30, %do.end11
  %ret.0 = phi i32 [ %call6, %do.end11 ], [ %call22, %do.end30 ], [ %call38, %do.end46 ], [ %call38, %if.end37.critedge.fail_crit_edge ], [ %call54, %do.end62 ], [ %call70, %do.end78 ], [ %call88, %do.end96 ], [ %call88, %if.end85.critedge.fail_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3306a_power(ptr nocapture noundef readonly %state, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %mode) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp = icmp eq i32 %mode, 0
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %do.end3
  %call5 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %state, i16 noundef zeroext 0, i32 noundef 7, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end11, label %if.end18.critedge

do.end11:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call5, i32 noundef 353) #11
  br label %fail

if.end18.critedge:                                ; preds = %if.then4
  %call19 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %state, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp21 = icmp slt i32 %call19, 0
  br i1 %cmp21, label %do.end27, label %if.end18.critedge.if.end67_crit_edge

if.end18.critedge.if.end67_crit_edge:             ; preds = %if.end18.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

do.end27:                                         ; preds = %if.end18.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call19, i32 noundef 358) #11
  br label %fail

if.else:                                          ; preds = %do.end3
  %call35 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %state, i16 noundef zeroext 0, i32 noundef 7, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp37 = icmp slt i32 %call35, 0
  br i1 %cmp37, label %do.end43, label %if.end50.critedge

do.end43:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call35, i32 noundef 364) #11
  br label %fail

if.end50.critedge:                                ; preds = %if.else
  %call51 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %state, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp53 = icmp slt i32 %call51, 0
  br i1 %cmp53, label %do.end59, label %if.end50.critedge.if.end67_crit_edge

if.end50.critedge.if.end67_crit_edge:             ; preds = %if.end50.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

do.end59:                                         ; preds = %if.end50.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call51, i32 noundef 369) #11
  br label %fail

if.end67:                                         ; preds = %if.end50.critedge.if.end67_crit_edge, %if.end18.critedge.if.end67_crit_edge
  %1 = call ptr @memset(ptr @regval2, i32 255, i32 164)
  %2 = load i32, ptr @debug, align 4
  %and.i.i = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %if.end67.fail_crit_edge, label %if.end.i.i

if.end67.fail_crit_edge:                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end.i.i:                                       ; preds = %if.end67
  %and1.i.i = and i32 %2, -3
  store i32 %and1.i.i, ptr @debug, align 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i
  %i.033.i.i = phi i32 [ 0, %if.end.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [164 x i16], ptr @regtab, i32 0, i32 %i.033.i.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx.i.i, align 2
  %arrayidx3.i.i = getelementptr [164 x i8], ptr @regval1, i32 0, i32 %i.033.i.i
  %call4.i.i = tail call fastcc i32 @lgdt3306a_read_reg(ptr noundef %state, i16 noundef zeroext %4, ptr noundef %arrayidx3.i.i) #8
  %5 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3.i.i, align 1
  %arrayidx6.i.i = getelementptr [164 x i8], ptr @regval2, i32 0, i32 %i.033.i.i
  %7 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx6.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp8.not.i.i = icmp eq i8 %6, %8
  br i1 %cmp8.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %do.end13.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

do.end13.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = zext i8 %6 to i32
  %conv16.i.i = sext i16 %4 to i32
  %call19.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %conv16.i.i, i32 noundef %conv.i.i) #11
  %9 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx3.i.i, align 1
  %11 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx6.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end13.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.033.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 164
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i32 %2, ptr @debug, align 4
  br label %fail

fail:                                             ; preds = %for.end.i.i, %if.end67.fail_crit_edge, %do.end59, %do.end43, %do.end27, %do.end11
  %ret.1 = phi i32 [ %call5, %do.end11 ], [ %call19, %do.end27 ], [ %call35, %do.end43 ], [ %call51, %do.end59 ], [ 0, %if.end67.fail_crit_edge ], [ 0, %for.end.i.i ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3306a_write_reg(ptr nocapture noundef readonly %state, i16 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #8
  %0 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %2 = lshr i16 %reg, 8
  %conv1 = trunc i16 %2 to i8
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv1, ptr %buf, align 1
  %conv3 = trunc i16 %reg to i8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv3, ptr %0, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %val, ptr %1, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #8
  %6 = getelementptr inbounds i8, ptr %msg, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4
  %cfg = getelementptr inbounds %struct.lgdt3306a_state, ptr %state, i32 0, i32 1
  %8 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  %conv5 = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv5, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 3, ptr %len, align 4
  %buf6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %15 = ptrtoint ptr %buf6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf, ptr %buf6, align 4
  %16 = load i32, ptr @debug, align 4
  %and7 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.end

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %reg to i32
  %conv10 = zext i8 %val to i32
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv, i32 noundef %conv10) #11
  br label %do.end12

do.end12:                                         ; preds = %do.end, %entry.do.end12_crit_edge
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state, align 4
  %call13 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp.not = icmp eq i32 %call13, 1
  br i1 %cmp.not, label %do.end12.cleanup_crit_edge, label %do.end18

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end18:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %buf6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf6, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  %conv21 = zext i8 %22 to i32
  %arrayidx23 = getelementptr i8, ptr %20, i32 1
  %23 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %24 to i32
  %arrayidx26 = getelementptr i8, ptr %20, i32 2
  %25 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %26 to i32
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %conv21, i32 noundef %conv24, i32 noundef %conv27, i32 noundef %call13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp29 = icmp slt i32 %call13, 0
  %call13. = select i1 %cmp29, i32 %call13, i32 -121
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %do.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13., %do.end18 ], [ 0, %do.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3306a_set_reg_bit(ptr nocapture noundef readonly %state, i16 noundef zeroext %reg, i32 noundef %bit, i32 noundef %onoff) unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !619
  %1 = load i32, ptr @debug, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %reg to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %conv, i32 noundef %bit, i32 noundef %onoff) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %state, i16 noundef zeroext %reg, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end10, label %if.end17.critedge

do.end10:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call4, i32 noundef 191) #11
  br label %fail

if.end17.critedge:                                ; preds = %do.end3
  %shl = shl nuw i32 1, %bit
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %val, align 1
  %4 = trunc i32 %shl to i8
  %5 = xor i8 %4, -1
  %conv20 = and i8 %3, %5
  %and21 = and i32 %onoff, 1
  %shl22 = shl nuw i32 %and21, %bit
  %6 = trunc i32 %shl22 to i8
  %conv24 = or i8 %conv20, %6
  store i8 %conv24, ptr %val, align 1
  %call25 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext %reg, i8 noundef zeroext %conv24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp27 = icmp slt i32 %call25, 0
  br i1 %cmp27, label %do.end33, label %if.end17.critedge.fail_crit_edge

if.end17.critedge.fail_crit_edge:                 ; preds = %if.end17.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

do.end33:                                         ; preds = %if.end17.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call25, i32 noundef 198) #11
  br label %fail

fail:                                             ; preds = %do.end33, %if.end17.critedge.fail_crit_edge, %do.end10
  %ret.0 = phi i32 [ %call4, %do.end10 ], [ %call25, %do.end33 ], [ %call25, %if.end17.critedge.fail_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lgdt3306a_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3306a_init(ptr nocapture noundef %fe) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !619
  %3 = load i32, ptr @debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %1, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end9, label %if.end16.critedge

do.end9:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call4, i32 noundef 824) #11
  br label %fail

if.end16.critedge:                                ; preds = %do.end3
  %4 = load i32, ptr @debug, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end16.critedge.lgdt3306a_set_inversion_auto.exit_crit_edge, label %do.end.i

if.end16.critedge.lgdt3306a_set_inversion_auto.exit_crit_edge: ; preds = %if.end16.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_set_inversion_auto.exit

do.end.i:                                         ; preds = %if.end16.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef 0) #11
  br label %lgdt3306a_set_inversion_auto.exit

lgdt3306a_set_inversion_auto.exit:                ; preds = %do.end.i, %if.end16.critedge.lgdt3306a_set_inversion_auto.exit_crit_edge
  %call4.i = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %1, i16 noundef zeroext 2, i32 noundef 3, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp19 = icmp slt i32 %call4.i, 0
  br i1 %cmp19, label %do.end25, label %if.end32.critedge

do.end25:                                         ; preds = %lgdt3306a_set_inversion_auto.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call4.i, i32 noundef 829) #11
  br label %fail

if.end32.critedge:                                ; preds = %lgdt3306a_set_inversion_auto.exit
  %5 = load i32, ptr @debug, align 4
  %and.i479 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i479)
  %tobool.not.i480 = icmp eq i32 %and.i479, 0
  br i1 %tobool.not.i480, label %if.end32.critedge.lgdt3306a_set_inversion.exit_crit_edge, label %do.end.i482

if.end32.critedge.lgdt3306a_set_inversion.exit_crit_edge: ; preds = %if.end32.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_set_inversion.exit

do.end.i482:                                      ; preds = %if.end32.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call.i481 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef 1) #11
  br label %lgdt3306a_set_inversion.exit

lgdt3306a_set_inversion.exit:                     ; preds = %do.end.i482, %if.end32.critedge.lgdt3306a_set_inversion.exit_crit_edge
  %call5.i = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %1, i16 noundef zeroext 2, i32 noundef 2, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp35 = icmp slt i32 %call5.i, 0
  br i1 %cmp35, label %do.end41, label %if.end48.critedge

do.end41:                                         ; preds = %lgdt3306a_set_inversion.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call5.i, i32 noundef 834) #11
  br label %fail

if.end48.critedge:                                ; preds = %lgdt3306a_set_inversion.exit
  %call49 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %1, i16 noundef zeroext 4, i32 noundef 7, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp51 = icmp slt i32 %call49, 0
  br i1 %cmp51, label %do.end57, label %if.end64.critedge

do.end57:                                         ; preds = %if.end48.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call49, i32 noundef 841) #11
  br label %fail

if.end64.critedge:                                ; preds = %if.end48.critedge
  %call65 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %1, i16 noundef zeroext 4, i32 noundef 2, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp67 = icmp slt i32 %call65, 0
  br i1 %cmp67, label %do.end73, label %if.end80.critedge

do.end73:                                         ; preds = %if.end64.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call65, i32 noundef 848) #11
  br label %fail

if.end80.critedge:                                ; preds = %if.end64.critedge
  %call81 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %1, i16 noundef zeroext 4, i32 noundef 3, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp83 = icmp slt i32 %call81, 0
  br i1 %cmp83, label %do.end89, label %if.end96.critedge

do.end89:                                         ; preds = %if.end80.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call81, i32 noundef 855) #11
  br label %fail

if.end96.critedge:                                ; preds = %if.end80.critedge
  %call97 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %1, i16 noundef zeroext 5, i32 noundef 6, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp99 = icmp slt i32 %call97, 0
  br i1 %cmp99, label %do.end105, label %if.end112.critedge

do.end105:                                        ; preds = %if.end96.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call97, i32 noundef 862) #11
  br label %fail

if.end112.critedge:                               ; preds = %if.end96.critedge
  %cfg = getelementptr inbounds %struct.lgdt3306a_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg, align 4
  %xtalMHz = getelementptr inbounds %struct.lgdt3306a_config, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %xtalMHz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xtalMHz, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.end307 [
    i32 24, label %if.then115
    i32 25, label %if.then211
  ]

if.then115:                                       ; preds = %if.end112.critedge
  %call116 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 5, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp118 = icmp slt i32 %call116, 0
  br i1 %cmp118, label %do.end124, label %if.end131.critedge

do.end124:                                        ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #10
  %call126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call116, i32 noundef 868) #11
  br label %fail

if.end131.critedge:                               ; preds = %if.then115
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val, align 1
  %13 = and i8 %12, -64
  %14 = or i8 %13, 37
  store i8 %14, ptr %val, align 1
  %call137 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 5, i8 noundef zeroext %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %cmp139 = icmp slt i32 %call137, 0
  br i1 %cmp139, label %do.end145, label %if.end152.critedge

do.end145:                                        ; preds = %if.end131.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call137, i32 noundef 873) #11
  br label %fail

if.end152.critedge:                               ; preds = %if.end131.critedge
  %call153 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 6, i8 noundef zeroext 100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %cmp155 = icmp slt i32 %call153, 0
  br i1 %cmp155, label %do.end161, label %if.end168.critedge

do.end161:                                        ; preds = %if.end152.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call153, i32 noundef 876) #11
  br label %fail

if.end168.critedge:                               ; preds = %if.end152.critedge
  %call169 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 13, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %cmp171 = icmp slt i32 %call169, 0
  br i1 %cmp171, label %do.end177, label %if.end184.critedge

do.end177:                                        ; preds = %if.end168.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call169, i32 noundef 881) #11
  br label %fail

if.end184.critedge:                               ; preds = %if.end168.critedge
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %val, align 1
  %17 = and i8 %16, -64
  %18 = or i8 %17, 24
  store i8 %18, ptr %val, align 1
  %call191 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 13, i8 noundef zeroext %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %cmp193 = icmp slt i32 %call191, 0
  br i1 %cmp193, label %do.end199, label %if.end184.critedge.if.end313_crit_edge

if.end184.critedge.if.end313_crit_edge:           ; preds = %if.end184.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end313

do.end199:                                        ; preds = %if.end184.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call191, i32 noundef 886) #11
  br label %fail

if.then211:                                       ; preds = %if.end112.critedge
  %call212 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 5, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call212)
  %cmp214 = icmp slt i32 %call212, 0
  br i1 %cmp214, label %do.end220, label %if.end227.critedge

do.end220:                                        ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #10
  %call222 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call212, i32 noundef 892) #11
  br label %fail

if.end227.critedge:                               ; preds = %if.then211
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %val, align 1
  %21 = and i8 %20, -64
  %22 = or i8 %21, 37
  store i8 %22, ptr %val, align 1
  %call234 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 5, i8 noundef zeroext %22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %cmp236 = icmp slt i32 %call234, 0
  br i1 %cmp236, label %do.end242, label %if.end249.critedge

do.end242:                                        ; preds = %if.end227.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call244 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call234, i32 noundef 897) #11
  br label %fail

if.end249.critedge:                               ; preds = %if.end227.critedge
  %call250 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 6, i8 noundef zeroext 100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call250)
  %cmp252 = icmp slt i32 %call250, 0
  br i1 %cmp252, label %do.end258, label %if.end265.critedge

do.end258:                                        ; preds = %if.end249.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call260 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call250, i32 noundef 900) #11
  br label %fail

if.end265.critedge:                               ; preds = %if.end249.critedge
  %call266 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 13, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call266)
  %cmp268 = icmp slt i32 %call266, 0
  br i1 %cmp268, label %do.end274, label %if.end281.critedge

do.end274:                                        ; preds = %if.end265.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call276 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call266, i32 noundef 905) #11
  br label %fail

if.end281.critedge:                               ; preds = %if.end265.critedge
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %val, align 1
  %25 = and i8 %24, -64
  %26 = or i8 %25, 25
  store i8 %26, ptr %val, align 1
  %call288 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 13, i8 noundef zeroext %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call288)
  %cmp290 = icmp slt i32 %call288, 0
  br i1 %cmp290, label %do.end296, label %if.end281.critedge.if.end313_crit_edge

if.end281.critedge.if.end313_crit_edge:           ; preds = %if.end281.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end313

do.end296:                                        ; preds = %if.end281.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call298 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call288, i32 noundef 910) #11
  br label %fail

do.end307:                                        ; preds = %if.end112.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call311 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, i32 noundef %9) #11
  br label %if.end313

if.end313:                                        ; preds = %do.end307, %if.end281.critedge.if.end313_crit_edge, %if.end184.critedge.if.end313_crit_edge
  %call314 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 16, i8 noundef zeroext 52)
  %call315 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 17, i8 noundef zeroext 0)
  %call316 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 20, i8 noundef zeroext 0)
  %call317 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 4156, ptr noundef nonnull %val)
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %val, align 1
  %29 = and i8 %28, 15
  %30 = or i8 %29, 32
  store i8 %30, ptr %val, align 1
  %call324 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 4156, i8 noundef zeroext %30)
  %call325 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 4157, ptr noundef nonnull %val)
  %31 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %val, align 1
  %33 = or i8 %32, 3
  store i8 %33, ptr %val, align 1
  %call332 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 4157, i8 noundef zeroext %33)
  %call333 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 4150, ptr noundef nonnull %val)
  %34 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %val, align 1
  %36 = and i8 %35, -16
  %37 = or i8 %36, 12
  store i8 %37, ptr %val, align 1
  %call340 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 4150, i8 noundef zeroext %37)
  %call341 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 8479, ptr noundef nonnull %val)
  %38 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %val, align 1
  %40 = and i8 %39, -17
  store i8 %40, ptr %val, align 1
  %call345 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 8479, i8 noundef zeroext %40)
  %call346 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 10313, ptr noundef nonnull %val)
  %41 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %val, align 1
  %43 = and i8 %42, -17
  store i8 %43, ptr %val, align 1
  %call350 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 10313, i8 noundef zeroext %43)
  %call351 = call fastcc i32 @lgdt3306a_set_vsb(ptr noundef %1)
  %44 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cfg, align 4
  %mpeg_mode = getelementptr inbounds %struct.lgdt3306a_config, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %mpeg_mode to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mpeg_mode, align 4
  %call353 = call fastcc i32 @lgdt3306a_mpeg_mode(ptr noundef %1, i32 noundef %47)
  %call354 = call fastcc i32 @lgdt3306a_mpeg_tristate(ptr noundef %1, i32 noundef 1)
  %48 = load i32, ptr @debug, align 4
  %and.i483 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i483)
  %tobool.not.i484 = icmp eq i32 %and.i483, 0
  br i1 %tobool.not.i484, label %if.end313.do.end3.i_crit_edge, label %do.end.i486

if.end313.do.end3.i_crit_edge:                    ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i486:                                      ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #10
  %call.i485 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i486, %if.end313.do.end3.i_crit_edge
  %current_frequency.i = getelementptr inbounds %struct.lgdt3306a_state, ptr %1, i32 0, i32 4
  %49 = ptrtoint ptr %current_frequency.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %current_frequency.i, align 4
  %call4.i487 = call fastcc i32 @lgdt3306a_mpeg_tristate(ptr noundef %1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i487)
  %cmp.i = icmp slt i32 %call4.i487, 0
  br i1 %cmp.i, label %do.end9.i, label %if.end16.critedge.i

do.end9.i:                                        ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call4.i487, i32 noundef 796) #11
  br label %lgdt3306a_sleep.exit

if.end16.critedge.i:                              ; preds = %do.end3.i
  %call17.i = call fastcc i32 @lgdt3306a_power(ptr noundef %1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp19.i = icmp slt i32 %call17.i, 0
  br i1 %cmp19.i, label %do.end25.i, label %if.end16.critedge.i.lgdt3306a_sleep.exit_crit_edge

if.end16.critedge.i.lgdt3306a_sleep.exit_crit_edge: ; preds = %if.end16.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_sleep.exit

do.end25.i:                                       ; preds = %if.end16.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call17.i, i32 noundef 800) #11
  br label %lgdt3306a_sleep.exit

lgdt3306a_sleep.exit:                             ; preds = %do.end25.i, %if.end16.critedge.i.lgdt3306a_sleep.exit_crit_edge, %do.end9.i
  %cnr = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43
  %50 = ptrtoint ptr %cnr to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %cnr, align 1
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %51 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %stat, align 1
  br label %fail

fail:                                             ; preds = %lgdt3306a_sleep.exit, %do.end296, %do.end274, %do.end258, %do.end242, %do.end220, %do.end199, %do.end177, %do.end161, %do.end145, %do.end124, %do.end105, %do.end89, %do.end73, %do.end57, %do.end41, %do.end25, %do.end9
  %ret.0 = phi i32 [ 0, %lgdt3306a_sleep.exit ], [ %call4, %do.end9 ], [ %call4.i, %do.end25 ], [ %call5.i, %do.end41 ], [ %call49, %do.end57 ], [ %call65, %do.end73 ], [ %call81, %do.end89 ], [ %call97, %do.end105 ], [ %call116, %do.end124 ], [ %call137, %do.end145 ], [ %call153, %do.end161 ], [ %call169, %do.end177 ], [ %call191, %do.end199 ], [ %call212, %do.end220 ], [ %call234, %do.end242 ], [ %call250, %do.end258 ], [ %call266, %do.end274 ], [ %call288, %do.end296 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3306a_fe_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.end3.i_crit_edge, label %do.end.i

entry.do.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %entry.do.end3.i_crit_edge
  %current_frequency.i = getelementptr inbounds %struct.lgdt3306a_state, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %current_frequency.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %current_frequency.i, align 4
  %call4.i = tail call fastcc i32 @lgdt3306a_mpeg_tristate(ptr noundef %1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %do.end9.i, label %if.end16.critedge.i

do.end9.i:                                        ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call4.i, i32 noundef 796) #11
  br label %lgdt3306a_sleep.exit

if.end16.critedge.i:                              ; preds = %do.end3.i
  %call17.i = tail call fastcc i32 @lgdt3306a_power(ptr noundef %1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp19.i = icmp slt i32 %call17.i, 0
  br i1 %cmp19.i, label %do.end25.i, label %if.end16.critedge.i.lgdt3306a_sleep.exit_crit_edge

if.end16.critedge.i.lgdt3306a_sleep.exit_crit_edge: ; preds = %if.end16.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_sleep.exit

do.end25.i:                                       ; preds = %if.end16.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call17.i, i32 noundef 800) #11
  br label %lgdt3306a_sleep.exit

lgdt3306a_sleep.exit:                             ; preds = %do.end25.i, %if.end16.critedge.i.lgdt3306a_sleep.exit_crit_edge, %do.end9.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3306a_tune(ptr noundef %fe, i1 noundef zeroext %re_tune, i32 noundef %mode_flags, ptr nocapture noundef writeonly %delay, ptr nocapture noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i1 %re_tune to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, i32 noundef %conv) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  br i1 %re_tune, label %if.then6, label %do.end4.if.end11_crit_edge

do.end4.if.end11_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then6:                                         ; preds = %do.end4
  %current_frequency = getelementptr inbounds %struct.lgdt3306a_state, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %current_frequency, align 4
  %call7 = tail call i32 @lgdt3306a_set_parameters(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp.not = icmp eq i32 %call7, 0
  br i1 %cmp.not, label %if.then6.if.end11_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %do.end4.if.end11_crit_edge
  %4 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 125, ptr %delay, align 4
  %call12 = tail call i32 @lgdt3306a_read_status(ptr noundef %fe, ptr noundef %status)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then6.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ %call7, %if.then6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lgdt3306a_get_frontend_algo(ptr nocapture noundef readnone %fe) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3306a_set_parameters(ptr noundef %fe) #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dtv_property_cache, align 4
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %modulation, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, i32 noundef %4, i32 noundef %6) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %current_frequency = getelementptr inbounds %struct.lgdt3306a_state, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %current_frequency to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %current_frequency, align 4
  %9 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp = icmp eq i32 %8, %10
  br i1 %cmp, label %land.lhs.true, label %do.end3.if.end20_crit_edge

do.end3.if.end20_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

land.lhs.true:                                    ; preds = %do.end3
  %current_modulation = getelementptr inbounds %struct.lgdt3306a_state, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %current_modulation to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %current_modulation, align 4
  %modulation5 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %modulation5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %modulation5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp6 = icmp eq i32 %12, %14
  br i1 %cmp6, label %do.body8, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.body8:                                         ; preds = %land.lhs.true
  %15 = load i32, ptr @debug, align 4
  %and9 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body8.cleanup_crit_edge, label %do.end14

do.body8.cleanup_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end14:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153) #11
  br label %cleanup

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %do.end3.if.end20_crit_edge
  %16 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %current_frequency, align 4
  %current_modulation22 = getelementptr inbounds %struct.lgdt3306a_state, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %current_modulation22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %current_modulation22, align 4
  %call23 = tail call fastcc i32 @lgdt3306a_power(ptr noundef %1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %do.end29, label %if.end36.critedge

do.end29:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call23, i32 noundef 992) #11
  br label %cleanup

if.end36.critedge:                                ; preds = %if.end20
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %18 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_params, align 4
  %tobool37.not = icmp eq ptr %19, null
  br i1 %tobool37.not, label %if.end36.critedge.if.end50_crit_edge, label %if.then38

if.end36.critedge.if.end50_crit_edge:             ; preds = %if.end36.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then38:                                        ; preds = %if.end36.critedge
  %call42 = tail call i32 %19(ptr noundef %fe) #8
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %20 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool44.not = icmp eq ptr %21, null
  br i1 %tobool44.not, label %if.then38.if.end50_crit_edge, label %if.then45

if.then38.if.end50_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then45:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %call48 = tail call i32 %21(ptr noundef %fe, i32 noundef 0) #8
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %if.then38.if.end50_crit_edge, %if.end36.critedge.if.end50_crit_edge
  %22 = load i32, ptr @debug, align 4
  %and.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end50.do.end3.i_crit_edge, label %do.end.i

if.end50.do.end3.i_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.end50.do.end3.i_crit_edge
  %modulation.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %23 = ptrtoint ptr %modulation.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %modulation.i, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.324)
  switch i32 %24, label %do.end3.i.do.end59_crit_edge [
    i32 7, label %sw.bb.i
    i32 3, label %do.end3.i.sw.bb5.i_crit_edge
    i32 5, label %do.end3.i.sw.bb5.i_crit_edge274
    i32 6, label %do.end3.i.sw.bb5.i_crit_edge275
  ]

do.end3.i.sw.bb5.i_crit_edge275:                  ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i

do.end3.i.sw.bb5.i_crit_edge274:                  ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i

do.end3.i.sw.bb5.i_crit_edge:                     ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i

do.end3.i.do.end59_crit_edge:                     ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59

sw.bb.i:                                          ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call fastcc i32 @lgdt3306a_set_vsb(ptr noundef %1) #8
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %do.end3.i.sw.bb5.i_crit_edge, %do.end3.i.sw.bb5.i_crit_edge274, %do.end3.i.sw.bb5.i_crit_edge275
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #8
  %26 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %val.i.i, align 1, !annotation !619
  %27 = load i32, ptr @debug, align 4
  %and.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb5.i.do.end3.i.i_crit_edge, label %do.end.i.i

sw.bb5.i.do.end3.i.i_crit_edge:                   ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i

do.end.i.i:                                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174, i32 noundef %24) #11
  br label %do.end3.i.i

do.end3.i.i:                                      ; preds = %do.end.i.i, %sw.bb5.i.do.end3.i.i_crit_edge
  %call4.i.i = tail call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 8, i8 noundef zeroext 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp.i.i, label %do.end9.i.i, label %if.end16.critedge.i.i

do.end9.i.i:                                      ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call4.i.i, i32 noundef 550) #11
  br label %lgdt3306a_set_qam.exit.i

if.end16.critedge.i.i:                            ; preds = %do.end3.i.i
  %call17.i.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 2, ptr noundef nonnull %val.i.i) #8
  %28 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %val.i.i, align 1
  %30 = and i8 %29, -13
  %31 = or i8 %30, 8
  store i8 %31, ptr %val.i.i, align 1
  %call23.i.i = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 2, i8 noundef zeroext %31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %cmp25.i.i = icmp slt i32 %call23.i.i, 0
  br i1 %cmp25.i.i, label %do.end31.i.i, label %if.end38.critedge.i.i

do.end31.i.i:                                     ; preds = %if.end16.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call33.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call23.i.i, i32 noundef 558) #11
  br label %lgdt3306a_set_qam.exit.i

if.end38.critedge.i.i:                            ; preds = %if.end16.critedge.i.i
  %call39.i.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 9, ptr noundef nonnull %val.i.i) #8
  %32 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %val.i.i, align 1
  %34 = and i8 %33, -29
  store i8 %34, ptr %val.i.i, align 1
  %call43.i.i = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 9, i8 noundef zeroext %34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i.i)
  %cmp45.i.i = icmp slt i32 %call43.i.i, 0
  br i1 %cmp45.i.i, label %do.end51.i.i, label %if.end58.critedge.i.i

do.end51.i.i:                                     ; preds = %if.end38.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call53.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call43.i.i, i32 noundef 565) #11
  br label %lgdt3306a_set_qam.exit.i

if.end58.critedge.i.i:                            ; preds = %if.end38.critedge.i.i
  %call59.i.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 9, ptr noundef nonnull %val.i.i) #8
  %35 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %val.i.i, align 1
  %37 = and i8 %36, -4
  %38 = load i32, ptr @forced_manual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool63.not.i.i = icmp eq i32 %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %24)
  %cmp64.not.i.i = icmp eq i32 %24, 6
  %or.cond.i.i = or i1 %cmp64.not.i.i, %tobool63.not.i.i
  %storemerge.v.i.i = select i1 %or.cond.i.i, i8 2, i8 1
  %storemerge.i.i = or i8 %storemerge.v.i.i, %37
  %39 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %storemerge.i.i, ptr %val.i.i, align 1
  %call74.i.i = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 9, i8 noundef zeroext %storemerge.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i.i)
  %cmp76.i.i = icmp slt i32 %call74.i.i, 0
  br i1 %cmp76.i.i, label %do.end82.i.i, label %if.end89.critedge.i.i

do.end82.i.i:                                     ; preds = %if.end58.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call84.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call74.i.i, i32 noundef 578) #11
  br label %lgdt3306a_set_qam.exit.i

if.end89.critedge.i.i:                            ; preds = %if.end58.critedge.i.i
  %call90.i.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 4122, ptr noundef nonnull %val.i.i) #8
  %40 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %val.i.i, align 1
  %42 = and i8 %41, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp94.i.i = icmp eq i32 %24, 3
  %storemerge309.v.i.i = select i1 %cmp94.i.i, i8 2, i8 4
  %storemerge309.i.i = or i8 %42, %storemerge309.v.i.i
  %43 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %storemerge309.i.i, ptr %val.i.i, align 1
  %call105.i.i = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 4122, i8 noundef zeroext %storemerge309.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.i.i)
  %cmp107.i.i = icmp slt i32 %call105.i.i, 0
  br i1 %cmp107.i.i, label %do.end113.i.i, label %if.end120.critedge.i.i

do.end113.i.i:                                    ; preds = %if.end89.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call115.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call105.i.i, i32 noundef 590) #11
  br label %lgdt3306a_set_qam.exit.i

if.end120.critedge.i.i:                           ; preds = %if.end89.critedge.i.i
  %call121.i.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 13, ptr noundef nonnull %val.i.i) #8
  %44 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %val.i.i, align 1
  %46 = or i8 %45, 64
  store i8 %46, ptr %val.i.i, align 1
  %call128.i.i = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 13, i8 noundef zeroext %46) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128.i.i)
  %cmp130.i.i = icmp slt i32 %call128.i.i, 0
  br i1 %cmp130.i.i, label %do.end136.i.i, label %if.end143.critedge.i.i

do.end136.i.i:                                    ; preds = %if.end120.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call138.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call128.i.i, i32 noundef 598) #11
  br label %lgdt3306a_set_qam.exit.i

if.end143.critedge.i.i:                           ; preds = %if.end120.critedge.i.i
  %call144.i.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 36, ptr noundef nonnull %val.i.i) #8
  %47 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %val.i.i, align 1
  %call148.i.i = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 36, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148.i.i)
  %cmp150.i.i = icmp slt i32 %call148.i.i, 0
  br i1 %cmp150.i.i, label %do.end156.i.i, label %if.end163.critedge.i.i

do.end156.i.i:                                    ; preds = %if.end143.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call158.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call148.i.i, i32 noundef 605) #11
  br label %lgdt3306a_set_qam.exit.i

if.end163.critedge.i.i:                           ; preds = %if.end143.critedge.i.i
  %call164.i.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 10, ptr noundef nonnull %val.i.i) #8
  %48 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %val.i.i, align 1
  %50 = or i8 %49, 2
  store i8 %50, ptr %val.i.i, align 1
  %call171.i.i = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 10, i8 noundef zeroext %50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171.i.i)
  %cmp173.i.i = icmp slt i32 %call171.i.i, 0
  br i1 %cmp173.i.i, label %do.end179.i.i, label %if.end186.critedge.i.i

do.end179.i.i:                                    ; preds = %if.end163.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call181.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call171.i.i, i32 noundef 613) #11
  br label %lgdt3306a_set_qam.exit.i

if.end186.critedge.i.i:                           ; preds = %if.end163.critedge.i.i
  %call187.i.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 10313, ptr noundef nonnull %val.i.i) #8
  %51 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %val.i.i, align 1
  %53 = and i8 %52, -33
  store i8 %53, ptr %val.i.i, align 1
  %call191.i.i = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 10313, i8 noundef zeroext %53) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191.i.i)
  %cmp193.i.i = icmp slt i32 %call191.i.i, 0
  br i1 %cmp193.i.i, label %do.end199.i.i, label %if.end206.critedge.i.i

do.end199.i.i:                                    ; preds = %if.end186.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call201.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call191.i.i, i32 noundef 620) #11
  br label %lgdt3306a_set_qam.exit.i

if.end206.critedge.i.i:                           ; preds = %if.end186.critedge.i.i
  %call207.i.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 12331, ptr noundef nonnull %val.i.i) #8
  %54 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %val.i.i, align 1
  %56 = and i8 %55, 127
  store i8 %56, ptr %val.i.i, align 1
  %call211.i.i = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 12331, i8 noundef zeroext %56) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211.i.i)
  %cmp213.i.i = icmp slt i32 %call211.i.i, 0
  br i1 %cmp213.i.i, label %do.end219.i.i, label %if.end226.critedge.i.i

do.end219.i.i:                                    ; preds = %if.end206.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call221.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call211.i.i, i32 noundef 627) #11
  br label %lgdt3306a_set_qam.exit.i

if.end226.critedge.i.i:                           ; preds = %if.end206.critedge.i.i
  %call227.i.i = call fastcc i32 @lgdt3306a_soft_reset(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227.i.i)
  %cmp229.i.i = icmp slt i32 %call227.i.i, 0
  br i1 %cmp229.i.i, label %do.end235.i.i, label %do.body243.critedge.i.i

do.end235.i.i:                                    ; preds = %if.end226.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call237.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call227.i.i, i32 noundef 632) #11
  br label %lgdt3306a_set_qam.exit.i

do.body243.critedge.i.i:                          ; preds = %if.end226.critedge.i.i
  %57 = load i32, ptr @debug, align 4
  %and244.i.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244.i.i)
  %tobool245.not.i.i = icmp eq i32 %and244.i.i, 0
  br i1 %tobool245.not.i.i, label %do.body243.critedge.i.i.lgdt3306a_set_qam.exit.i_crit_edge, label %do.end249.i.i

do.body243.critedge.i.i.lgdt3306a_set_qam.exit.i_crit_edge: ; preds = %do.body243.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_set_qam.exit.i

do.end249.i.i:                                    ; preds = %do.body243.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call251.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132) #11
  br label %lgdt3306a_set_qam.exit.i

lgdt3306a_set_qam.exit.i:                         ; preds = %do.end249.i.i, %do.body243.critedge.i.i.lgdt3306a_set_qam.exit.i_crit_edge, %do.end235.i.i, %do.end219.i.i, %do.end199.i.i, %do.end179.i.i, %do.end156.i.i, %do.end136.i.i, %do.end113.i.i, %do.end82.i.i, %do.end51.i.i, %do.end31.i.i, %do.end9.i.i
  %ret.0.i.i = phi i32 [ 0, %do.end249.i.i ], [ 0, %do.body243.critedge.i.i.lgdt3306a_set_qam.exit.i_crit_edge ], [ %call4.i.i, %do.end9.i.i ], [ %call23.i.i, %do.end31.i.i ], [ %call43.i.i, %do.end51.i.i ], [ %call74.i.i, %do.end82.i.i ], [ %call105.i.i, %do.end113.i.i ], [ %call128.i.i, %do.end136.i.i ], [ %call148.i.i, %do.end156.i.i ], [ %call171.i.i, %do.end179.i.i ], [ %call191.i.i, %do.end199.i.i ], [ %call211.i.i, %do.end219.i.i ], [ %call227.i.i, %do.end235.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %lgdt3306a_set_qam.exit.i, %sw.bb.i
  %ret.0.i = phi i32 [ %ret.0.i.i, %lgdt3306a_set_qam.exit.i ], [ %call4.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp.i = icmp slt i32 %ret.0.i, 0
  br i1 %cmp.i, label %do.end12.i, label %if.end66.critedge

do.end12.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %ret.0.i, i32 noundef 659) #11
  br label %do.end59

do.end59:                                         ; preds = %do.end12.i, %do.end3.i.do.end59_crit_edge
  %retval.0.i.ph = phi i32 [ %ret.0.i, %do.end12.i ], [ -22, %do.end3.i.do.end59_crit_edge ]
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %retval.0.i.ph, i32 noundef 1007) #11
  br label %cleanup

if.end66.critedge:                                ; preds = %sw.epilog.i
  %58 = ptrtoint ptr %modulation.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %modulation.i, align 4
  %60 = ptrtoint ptr %current_modulation22 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %current_modulation22, align 4
  %61 = load i32, ptr @debug, align 4
  %and.i231 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i231)
  %tobool.not.i232 = icmp eq i32 %and.i231, 0
  br i1 %tobool.not.i232, label %if.end66.critedge.do.end2.i_crit_edge, label %do.end.i234

if.end66.critedge.do.end2.i_crit_edge:            ; preds = %if.end66.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2.i

do.end.i234:                                      ; preds = %if.end66.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call.i233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #11
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i234, %if.end66.critedge.do.end2.i_crit_edge
  %62 = ptrtoint ptr %modulation.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %modulation.i, align 4
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.325)
  switch i32 %63, label %do.end75 [
    i32 7, label %sw.bb.i239
    i32 3, label %do.end2.i.sw.bb1.i_crit_edge
    i32 5, label %do.end2.i.sw.bb1.i_crit_edge276
    i32 6, label %do.end2.i.sw.bb1.i_crit_edge277
  ]

do.end2.i.sw.bb1.i_crit_edge277:                  ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

do.end2.i.sw.bb1.i_crit_edge276:                  ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

do.end2.i.sw.bb1.i_crit_edge:                     ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

do.end75:                                         ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef -22, i32 noundef 1011) #11
  br label %cleanup

sw.bb.i239:                                       ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %cfg.i = getelementptr inbounds %struct.lgdt3306a_state, ptr %1, i32 0, i32 1
  %65 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cfg.i, align 4
  %vsb_if_khz.i = getelementptr inbounds %struct.lgdt3306a_config, ptr %66, i32 0, i32 2
  br label %sw.epilog.i240

sw.bb1.i:                                         ; preds = %do.end2.i.sw.bb1.i_crit_edge, %do.end2.i.sw.bb1.i_crit_edge276, %do.end2.i.sw.bb1.i_crit_edge277
  %cfg2.i = getelementptr inbounds %struct.lgdt3306a_state, ptr %1, i32 0, i32 1
  %67 = ptrtoint ptr %cfg2.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cfg2.i, align 4
  %qam_if_khz.i = getelementptr inbounds %struct.lgdt3306a_config, ptr %68, i32 0, i32 1
  br label %sw.epilog.i240

sw.epilog.i240:                                   ; preds = %sw.bb1.i, %sw.bb.i239
  %if_freq_khz.0.in.i = phi ptr [ %qam_if_khz.i, %sw.bb1.i ], [ %vsb_if_khz.i, %sw.bb.i239 ]
  %69 = ptrtoint ptr %if_freq_khz.0.in.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %if_freq_khz.0.i = load i16, ptr %if_freq_khz.0.in.i, align 2
  %conv.i = zext i16 %if_freq_khz.0.i to i32
  %70 = zext i16 %if_freq_khz.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.326)
  switch i16 %if_freq_khz.0.i, label %do.end.i242 [
    i16 3250, label %sw.epilog.i240.sw.epilog10.i_crit_edge
    i16 3500, label %sw.bb6.i
    i16 4000, label %sw.bb7.i
    i16 5000, label %sw.bb8.i
    i16 5380, label %sw.bb9.i
  ]

sw.epilog.i240.sw.epilog10.i_crit_edge:           ; preds = %sw.epilog.i240
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog10.i

do.end.i242:                                      ; preds = %sw.epilog.i240
  call void @__sanitizer_cov_trace_pc() #10
  %call.i241 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, i32 noundef %conv.i) #11
  br label %sw.epilog10.i

sw.bb6.i:                                         ; preds = %sw.epilog.i240
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog10.i

sw.bb7.i:                                         ; preds = %sw.epilog.i240
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog10.i

sw.bb8.i:                                         ; preds = %sw.epilog.i240
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog10.i

sw.bb9.i:                                         ; preds = %sw.epilog.i240
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog10.i

sw.epilog10.i:                                    ; preds = %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %do.end.i242, %sw.epilog.i240.sw.epilog10.i_crit_edge
  %nco1.0.i = phi i8 [ 86, %sw.bb9.i ], [ 80, %sw.bb8.i ], [ 64, %sw.bb7.i ], [ 56, %sw.bb6.i ], [ 52, %sw.epilog.i240.sw.epilog10.i_crit_edge ], [ 52, %do.end.i242 ]
  %nco2.0.i = phi i8 [ 20, %sw.bb9.i ], [ 0, %sw.bb8.i ], [ 0, %sw.bb7.i ], [ 0, %sw.bb6.i ], [ 0, %sw.epilog.i240.sw.epilog10.i_crit_edge ], [ 0, %do.end.i242 ]
  %call11.i = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 16, i8 noundef zeroext %nco1.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i243 = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i243, label %if.end.i, label %sw.epilog10.i.lgdt3306a_set_if.exit_crit_edge

sw.epilog10.i.lgdt3306a_set_if.exit_crit_edge:    ; preds = %sw.epilog10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_set_if.exit

if.end.i:                                         ; preds = %sw.epilog10.i
  %call12.i = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 17, i8 noundef zeroext %nco2.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %do.body16.i, label %if.end.i.lgdt3306a_set_if.exit_crit_edge

if.end.i.lgdt3306a_set_if.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_set_if.exit

do.body16.i:                                      ; preds = %if.end.i
  %71 = load i32, ptr @debug, align 4
  %and.i244 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i244)
  %tobool17.not.i = icmp eq i32 %and.i244, 0
  br i1 %tobool17.not.i, label %do.body16.i.if.end98.critedge_crit_edge, label %do.end21.i

do.body16.i.if.end98.critedge_crit_edge:          ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98.critedge

do.end21.i:                                       ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv24.i = zext i8 %nco1.0.i to i32
  %shl.i = shl nuw nsw i32 %conv24.i, 8
  %conv25.i = zext i8 %nco2.0.i to i32
  %or.i = or i32 %shl.i, %conv25.i
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, i32 noundef %conv.i, i32 noundef %or.i) #11
  br label %if.end98.critedge

lgdt3306a_set_if.exit:                            ; preds = %if.end.i.lgdt3306a_set_if.exit_crit_edge, %sw.epilog10.i.lgdt3306a_set_if.exit_crit_edge
  %retval.0.i245 = phi i32 [ %call11.i, %sw.epilog10.i.lgdt3306a_set_if.exit_crit_edge ], [ %call12.i, %if.end.i.lgdt3306a_set_if.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i245)
  %cmp85 = icmp slt i32 %retval.0.i245, 0
  br i1 %cmp85, label %do.end91, label %lgdt3306a_set_if.exit.if.end98.critedge_crit_edge

lgdt3306a_set_if.exit.if.end98.critedge_crit_edge: ; preds = %lgdt3306a_set_if.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98.critedge

do.end91:                                         ; preds = %lgdt3306a_set_if.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %retval.0.i245, i32 noundef 1015) #11
  br label %cleanup

if.end98.critedge:                                ; preds = %lgdt3306a_set_if.exit.if.end98.critedge_crit_edge, %do.end21.i, %do.body16.i.if.end98.critedge_crit_edge
  %cfg = getelementptr inbounds %struct.lgdt3306a_state, ptr %1, i32 0, i32 1
  %72 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cfg, align 4
  %mpeg_mode = getelementptr inbounds %struct.lgdt3306a_config, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %mpeg_mode to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mpeg_mode, align 4
  %call99 = call fastcc i32 @lgdt3306a_mpeg_mode(ptr noundef %1, i32 noundef %75)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp101 = icmp slt i32 %call99, 0
  br i1 %cmp101, label %do.end107, label %if.end114.critedge

do.end107:                                        ; preds = %if.end98.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call99, i32 noundef 1021) #11
  br label %cleanup

if.end114.critedge:                               ; preds = %if.end98.critedge
  %76 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cfg, align 4
  %tpclk_edge = getelementptr inbounds %struct.lgdt3306a_config, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %tpclk_edge to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tpclk_edge, align 4
  %tpvalid_polarity = getelementptr inbounds %struct.lgdt3306a_config, ptr %77, i32 0, i32 6
  %80 = ptrtoint ptr %tpvalid_polarity to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tpvalid_polarity, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %82 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 -1, ptr %val.i, align 1, !annotation !619
  %83 = load i32, ptr @debug, align 4
  %and.i246 = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i246)
  %tobool.not.i247 = icmp eq i32 %and.i246, 0
  br i1 %tobool.not.i247, label %if.end114.critedge.do.end3.i252_crit_edge, label %do.end.i249

if.end114.critedge.do.end3.i252_crit_edge:        ; preds = %if.end114.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i252

do.end.i249:                                      ; preds = %if.end114.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call.i248 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.206, i32 noundef %79, i32 noundef %81) #11
  br label %do.end3.i252

do.end3.i252:                                     ; preds = %do.end.i249, %if.end114.critedge.do.end3.i252_crit_edge
  %call4.i250 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 112, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i250)
  %cmp.i251 = icmp slt i32 %call4.i250, 0
  br i1 %cmp.i251, label %do.end9.i, label %if.end16.critedge.i

do.end9.i:                                        ; preds = %do.end3.i252
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i253 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call4.i250, i32 noundef 270) #11
  br label %do.end125

if.end16.critedge.i:                              ; preds = %do.end3.i252
  %84 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %val.i, align 1
  %86 = and i8 %85, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp20.i = icmp eq i32 %79, 0
  %87 = or i8 %86, 4
  %storemerge.i = select i1 %cmp20.i, i8 %87, i8 %86
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp26.i = icmp eq i32 %81, 1
  %88 = or i8 %storemerge.i, 2
  %spec.select.i = select i1 %cmp26.i, i8 %88, i8 %storemerge.i
  %89 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %spec.select.i, ptr %val.i, align 1
  %call33.i = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 112, i8 noundef zeroext %spec.select.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp35.i = icmp slt i32 %call33.i, 0
  br i1 %cmp35.i, label %do.end41.i, label %if.end132.critedge

do.end41.i:                                       ; preds = %if.end16.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call33.i, i32 noundef 281) #11
  br label %do.end125

do.end125:                                        ; preds = %do.end41.i, %do.end9.i
  %ret.0.i254.ph = phi i32 [ %call33.i, %do.end41.i ], [ %call4.i250, %do.end9.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  %call127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %ret.0.i254.ph, i32 noundef 1027) #11
  br label %cleanup

if.end132.critedge:                               ; preds = %if.end16.critedge.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  %call133 = call fastcc i32 @lgdt3306a_mpeg_tristate(ptr noundef %1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %cmp135 = icmp slt i32 %call133, 0
  br i1 %cmp135, label %do.end141, label %if.end148.critedge

do.end141:                                        ; preds = %if.end132.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call133, i32 noundef 1031) #11
  br label %cleanup

if.end148.critedge:                               ; preds = %if.end132.critedge
  %call149 = call fastcc i32 @lgdt3306a_soft_reset(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %cmp151 = icmp slt i32 %call149, 0
  br i1 %cmp151, label %do.end157, label %if.end164.critedge

do.end157:                                        ; preds = %if.end148.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call149, i32 noundef 1035) #11
  br label %cleanup

if.end164.critedge:                               ; preds = %if.end148.critedge
  %90 = call ptr @memset(ptr @regval2, i32 255, i32 164)
  %91 = load i32, ptr @debug, align 4
  %and.i.i255 = and i32 %91, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i255)
  %cmp.i.i256 = icmp eq i32 %and.i.i255, 0
  br i1 %cmp.i.i256, label %if.end164.critedge.lgdt3306a_DumpAllRegs.exit_crit_edge, label %if.end.i.i

if.end164.critedge.lgdt3306a_DumpAllRegs.exit_crit_edge: ; preds = %if.end164.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_DumpAllRegs.exit

if.end.i.i:                                       ; preds = %if.end164.critedge
  %and1.i.i = and i32 %91, -3
  store i32 %and1.i.i, ptr @debug, align 4
  %call.i.i257 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i
  %i.033.i.i = phi i32 [ 0, %if.end.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [164 x i16], ptr @regtab, i32 0, i32 %i.033.i.i
  %92 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx.i.i, align 2
  %arrayidx3.i.i = getelementptr [164 x i8], ptr @regval1, i32 0, i32 %i.033.i.i
  %call4.i.i258 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext %93, ptr noundef %arrayidx3.i.i) #8
  %94 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx3.i.i, align 1
  %arrayidx6.i.i = getelementptr [164 x i8], ptr @regval2, i32 0, i32 %i.033.i.i
  %96 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx6.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %95, i8 %97)
  %cmp8.not.i.i = icmp eq i8 %95, %97
  br i1 %cmp8.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %do.end13.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

do.end13.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = zext i8 %95 to i32
  %conv16.i.i = sext i16 %93 to i32
  %call19.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %conv16.i.i, i32 noundef %conv.i.i) #11
  %98 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx3.i.i, align 1
  %100 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %arrayidx6.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end13.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.033.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 164
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i32 %91, ptr @debug, align 4
  br label %lgdt3306a_DumpAllRegs.exit

lgdt3306a_DumpAllRegs.exit:                       ; preds = %for.end.i.i, %if.end164.critedge.lgdt3306a_DumpAllRegs.exit_crit_edge
  %101 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %dtv_property_cache, align 4
  %103 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %current_frequency, align 4
  br label %cleanup

cleanup:                                          ; preds = %lgdt3306a_DumpAllRegs.exit, %do.end157, %do.end141, %do.end125, %do.end107, %do.end91, %do.end75, %do.end59, %do.end29, %do.end14, %do.body8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end14 ], [ 0, %do.body8.cleanup_crit_edge ], [ 0, %lgdt3306a_DumpAllRegs.exit ], [ %call23, %do.end29 ], [ %retval.0.i.ph, %do.end59 ], [ -22, %do.end75 ], [ %retval.0.i245, %do.end91 ], [ %call99, %do.end107 ], [ %ret.0.i254.ph, %do.end125 ], [ %call133, %do.end141 ], [ %call149, %do.end157 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3306a_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %fe_tune_settings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fe_tune_settings to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 100, ptr %fe_tune_settings, align 4
  %1 = load i32, ptr @debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #11
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3306a_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %current_frequency = getelementptr inbounds %struct.lgdt3306a_state, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %current_frequency to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %current_frequency, align 4
  %current_modulation = getelementptr inbounds %struct.lgdt3306a_state, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %current_modulation to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_modulation, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, i32 noundef %4, i32 noundef %6) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %current_modulation4 = getelementptr inbounds %struct.lgdt3306a_state, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %current_modulation4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %current_modulation4, align 4
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 1
  %9 = ptrtoint ptr %modulation to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %modulation, align 4
  %current_frequency5 = getelementptr inbounds %struct.lgdt3306a_state, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %current_frequency5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %current_frequency5, align 4
  %12 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %p, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3306a_read_status(ptr noundef %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  %maxPowerMan.i = alloca i8, align 1
  %val.i62.i = alloca i8, align 1
  %val.i.i99 = alloca i8, align 1
  %currChDiffACQ.i.i = alloca i8, align 1
  %val.i.i.i = alloca i8, align 1
  %val.i.i89 = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  %strength = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %strength) #8
  %2 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %strength, align 2
  %get_rf_strength = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 13
  %3 = ptrtoint ptr %get_rf_strength to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_rf_strength, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end24_crit_edge, label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then:                                          ; preds = %entry
  %call = call i32 %4(ptr noundef %fe, ptr noundef nonnull %strength) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %5 = load i32, ptr @debug, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %cmp, label %do.body, label %do.body11

do.body:                                          ; preds = %if.then
  br i1 %tobool5.not, label %do.body.if.end24_crit_edge, label %do.end

do.body.if.end24_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %strength to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %strength, align 2
  %conv = zext i16 %7 to i32
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, i32 noundef %conv) #11
  br label %if.end24

do.body11:                                        ; preds = %if.then
  br i1 %tobool5.not, label %do.body11.if.end24_crit_edge, label %do.end17

do.body11.if.end24_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

do.end17:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218) #11
  br label %if.end24

if.end24:                                         ; preds = %do.end17, %do.body11.if.end24_crit_edge, %do.end, %do.body.if.end24_crit_edge, %entry.if.end24_crit_edge
  %ret.0 = phi i32 [ 0, %do.end ], [ 0, %do.body.if.end24_crit_edge ], [ %call, %do.end17 ], [ %call, %do.body11.if.end24_crit_edge ], [ 0, %entry.if.end24_crit_edge ]
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %status, align 4
  call void @msleep(i32 noundef 30) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #8
  %9 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %val.i.i, align 1
  %call.i.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 128, ptr noundef nonnull %val.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end24.lgdt3306a_check_neverlock_status.exit.i_crit_edge

if.end24.lgdt3306a_check_neverlock_status.exit.i_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_check_neverlock_status.exit.i

if.end.i.i:                                       ; preds = %if.end24
  %10 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val.i.i, align 1
  %12 = and i8 %11, 3
  %and.i.i = zext i8 %12 to i32
  %13 = load i32, ptr @debug, align 4
  %and1.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.lgdt3306a_check_neverlock_status.exit.i_crit_edge, label %do.end.i.i

if.end.i.i.lgdt3306a_check_neverlock_status.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_check_neverlock_status.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, i32 noundef %and.i.i) #11
  br label %lgdt3306a_check_neverlock_status.exit.i

lgdt3306a_check_neverlock_status.exit.i:          ; preds = %do.end.i.i, %if.end.i.i.lgdt3306a_check_neverlock_status.exit.i_crit_edge, %if.end24.lgdt3306a_check_neverlock_status.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.end24.lgdt3306a_check_neverlock_status.exit.i_crit_edge ], [ %and.i.i, %do.end.i.i ], [ %and.i.i, %if.end.i.i.lgdt3306a_check_neverlock_status.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i.i)
  %cmp1.i = icmp eq i32 %retval.0.i.i, 2
  br i1 %cmp1.i, label %lgdt3306a_check_neverlock_status.exit.i.do.body.i_crit_edge, label %for.inc.i

lgdt3306a_check_neverlock_status.exit.i.do.body.i_crit_edge: ; preds = %lgdt3306a_check_neverlock_status.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.body.i:                                        ; preds = %lgdt3306a_check_neverlock_status.exit.4.i.do.body.i_crit_edge, %lgdt3306a_check_neverlock_status.exit.3.i.do.body.i_crit_edge, %lgdt3306a_check_neverlock_status.exit.2.i.do.body.i_crit_edge, %lgdt3306a_check_neverlock_status.exit.1.i.do.body.i_crit_edge, %lgdt3306a_check_neverlock_status.exit.i.do.body.i_crit_edge
  %i.028.lcssa.i = phi i32 [ 0, %lgdt3306a_check_neverlock_status.exit.i.do.body.i_crit_edge ], [ 1, %lgdt3306a_check_neverlock_status.exit.1.i.do.body.i_crit_edge ], [ 2, %lgdt3306a_check_neverlock_status.exit.2.i.do.body.i_crit_edge ], [ 3, %lgdt3306a_check_neverlock_status.exit.3.i.do.body.i_crit_edge ], [ 4, %lgdt3306a_check_neverlock_status.exit.4.i.do.body.i_crit_edge ]
  %14 = load i32, ptr @debug, align 4
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.if.then28_crit_edge, label %do.end.i

do.body.i.if.then28_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220, i32 noundef %i.028.lcssa.i) #11
  br label %if.then28

for.inc.i:                                        ; preds = %lgdt3306a_check_neverlock_status.exit.i
  call void @msleep(i32 noundef 30) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #8
  %15 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %val.i.i, align 1
  %call.i.1.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 128, ptr noundef nonnull %val.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %tobool.not.i.1.i = icmp eq i32 %call.i.1.i, 0
  br i1 %tobool.not.i.1.i, label %if.end.i.1.i, label %for.inc.i.lgdt3306a_check_neverlock_status.exit.1.i_crit_edge

for.inc.i.lgdt3306a_check_neverlock_status.exit.1.i_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_check_neverlock_status.exit.1.i

if.end.i.1.i:                                     ; preds = %for.inc.i
  %16 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %val.i.i, align 1
  %18 = and i8 %17, 3
  %and.i.1.i = zext i8 %18 to i32
  %19 = load i32, ptr @debug, align 4
  %and1.i.1.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.1.i)
  %tobool2.not.i.1.i = icmp eq i32 %and1.i.1.i, 0
  br i1 %tobool2.not.i.1.i, label %if.end.i.1.i.lgdt3306a_check_neverlock_status.exit.1.i_crit_edge, label %do.end.i.1.i

if.end.i.1.i.lgdt3306a_check_neverlock_status.exit.1.i_crit_edge: ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_check_neverlock_status.exit.1.i

do.end.i.1.i:                                     ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, i32 noundef %and.i.1.i) #11
  br label %lgdt3306a_check_neverlock_status.exit.1.i

lgdt3306a_check_neverlock_status.exit.1.i:        ; preds = %do.end.i.1.i, %if.end.i.1.i.lgdt3306a_check_neverlock_status.exit.1.i_crit_edge, %for.inc.i.lgdt3306a_check_neverlock_status.exit.1.i_crit_edge
  %retval.0.i.1.i = phi i32 [ %call.i.1.i, %for.inc.i.lgdt3306a_check_neverlock_status.exit.1.i_crit_edge ], [ %and.i.1.i, %do.end.i.1.i ], [ %and.i.1.i, %if.end.i.1.i.lgdt3306a_check_neverlock_status.exit.1.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i.1.i)
  %cmp1.1.i = icmp eq i32 %retval.0.i.1.i, 2
  br i1 %cmp1.1.i, label %lgdt3306a_check_neverlock_status.exit.1.i.do.body.i_crit_edge, label %for.inc.1.i

lgdt3306a_check_neverlock_status.exit.1.i.do.body.i_crit_edge: ; preds = %lgdt3306a_check_neverlock_status.exit.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

for.inc.1.i:                                      ; preds = %lgdt3306a_check_neverlock_status.exit.1.i
  call void @msleep(i32 noundef 30) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #8
  %20 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %val.i.i, align 1
  %call.i.2.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 128, ptr noundef nonnull %val.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %tobool.not.i.2.i = icmp eq i32 %call.i.2.i, 0
  br i1 %tobool.not.i.2.i, label %if.end.i.2.i, label %for.inc.1.i.lgdt3306a_check_neverlock_status.exit.2.i_crit_edge

for.inc.1.i.lgdt3306a_check_neverlock_status.exit.2.i_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_check_neverlock_status.exit.2.i

if.end.i.2.i:                                     ; preds = %for.inc.1.i
  %21 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %val.i.i, align 1
  %23 = and i8 %22, 3
  %and.i.2.i = zext i8 %23 to i32
  %24 = load i32, ptr @debug, align 4
  %and1.i.2.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.2.i)
  %tobool2.not.i.2.i = icmp eq i32 %and1.i.2.i, 0
  br i1 %tobool2.not.i.2.i, label %if.end.i.2.i.lgdt3306a_check_neverlock_status.exit.2.i_crit_edge, label %do.end.i.2.i

if.end.i.2.i.lgdt3306a_check_neverlock_status.exit.2.i_crit_edge: ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_check_neverlock_status.exit.2.i

do.end.i.2.i:                                     ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, i32 noundef %and.i.2.i) #11
  br label %lgdt3306a_check_neverlock_status.exit.2.i

lgdt3306a_check_neverlock_status.exit.2.i:        ; preds = %do.end.i.2.i, %if.end.i.2.i.lgdt3306a_check_neverlock_status.exit.2.i_crit_edge, %for.inc.1.i.lgdt3306a_check_neverlock_status.exit.2.i_crit_edge
  %retval.0.i.2.i = phi i32 [ %call.i.2.i, %for.inc.1.i.lgdt3306a_check_neverlock_status.exit.2.i_crit_edge ], [ %and.i.2.i, %do.end.i.2.i ], [ %and.i.2.i, %if.end.i.2.i.lgdt3306a_check_neverlock_status.exit.2.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i.2.i)
  %cmp1.2.i = icmp eq i32 %retval.0.i.2.i, 2
  br i1 %cmp1.2.i, label %lgdt3306a_check_neverlock_status.exit.2.i.do.body.i_crit_edge, label %for.inc.2.i

lgdt3306a_check_neverlock_status.exit.2.i.do.body.i_crit_edge: ; preds = %lgdt3306a_check_neverlock_status.exit.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

for.inc.2.i:                                      ; preds = %lgdt3306a_check_neverlock_status.exit.2.i
  call void @msleep(i32 noundef 30) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #8
  %25 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %val.i.i, align 1
  %call.i.3.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 128, ptr noundef nonnull %val.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3.i)
  %tobool.not.i.3.i = icmp eq i32 %call.i.3.i, 0
  br i1 %tobool.not.i.3.i, label %if.end.i.3.i, label %for.inc.2.i.lgdt3306a_check_neverlock_status.exit.3.i_crit_edge

for.inc.2.i.lgdt3306a_check_neverlock_status.exit.3.i_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_check_neverlock_status.exit.3.i

if.end.i.3.i:                                     ; preds = %for.inc.2.i
  %26 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %val.i.i, align 1
  %28 = and i8 %27, 3
  %and.i.3.i = zext i8 %28 to i32
  %29 = load i32, ptr @debug, align 4
  %and1.i.3.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.3.i)
  %tobool2.not.i.3.i = icmp eq i32 %and1.i.3.i, 0
  br i1 %tobool2.not.i.3.i, label %if.end.i.3.i.lgdt3306a_check_neverlock_status.exit.3.i_crit_edge, label %do.end.i.3.i

if.end.i.3.i.lgdt3306a_check_neverlock_status.exit.3.i_crit_edge: ; preds = %if.end.i.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_check_neverlock_status.exit.3.i

do.end.i.3.i:                                     ; preds = %if.end.i.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i.3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, i32 noundef %and.i.3.i) #11
  br label %lgdt3306a_check_neverlock_status.exit.3.i

lgdt3306a_check_neverlock_status.exit.3.i:        ; preds = %do.end.i.3.i, %if.end.i.3.i.lgdt3306a_check_neverlock_status.exit.3.i_crit_edge, %for.inc.2.i.lgdt3306a_check_neverlock_status.exit.3.i_crit_edge
  %retval.0.i.3.i = phi i32 [ %call.i.3.i, %for.inc.2.i.lgdt3306a_check_neverlock_status.exit.3.i_crit_edge ], [ %and.i.3.i, %do.end.i.3.i ], [ %and.i.3.i, %if.end.i.3.i.lgdt3306a_check_neverlock_status.exit.3.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i.3.i)
  %cmp1.3.i = icmp eq i32 %retval.0.i.3.i, 2
  br i1 %cmp1.3.i, label %lgdt3306a_check_neverlock_status.exit.3.i.do.body.i_crit_edge, label %for.inc.3.i

lgdt3306a_check_neverlock_status.exit.3.i.do.body.i_crit_edge: ; preds = %lgdt3306a_check_neverlock_status.exit.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

for.inc.3.i:                                      ; preds = %lgdt3306a_check_neverlock_status.exit.3.i
  call void @msleep(i32 noundef 30) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #8
  %30 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %val.i.i, align 1
  %call.i.4.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 128, ptr noundef nonnull %val.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4.i)
  %tobool.not.i.4.i = icmp eq i32 %call.i.4.i, 0
  br i1 %tobool.not.i.4.i, label %if.end.i.4.i, label %for.inc.3.i.lgdt3306a_check_neverlock_status.exit.4.i_crit_edge

for.inc.3.i.lgdt3306a_check_neverlock_status.exit.4.i_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_check_neverlock_status.exit.4.i

if.end.i.4.i:                                     ; preds = %for.inc.3.i
  %31 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %val.i.i, align 1
  %33 = and i8 %32, 3
  %and.i.4.i = zext i8 %33 to i32
  %34 = load i32, ptr @debug, align 4
  %and1.i.4.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.4.i)
  %tobool2.not.i.4.i = icmp eq i32 %and1.i.4.i, 0
  br i1 %tobool2.not.i.4.i, label %if.end.i.4.i.lgdt3306a_check_neverlock_status.exit.4.i_crit_edge, label %do.end.i.4.i

if.end.i.4.i.lgdt3306a_check_neverlock_status.exit.4.i_crit_edge: ; preds = %if.end.i.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_check_neverlock_status.exit.4.i

do.end.i.4.i:                                     ; preds = %if.end.i.4.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i.4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, i32 noundef %and.i.4.i) #11
  br label %lgdt3306a_check_neverlock_status.exit.4.i

lgdt3306a_check_neverlock_status.exit.4.i:        ; preds = %do.end.i.4.i, %if.end.i.4.i.lgdt3306a_check_neverlock_status.exit.4.i_crit_edge, %for.inc.3.i.lgdt3306a_check_neverlock_status.exit.4.i_crit_edge
  %retval.0.i.4.i = phi i32 [ %call.i.4.i, %for.inc.3.i.lgdt3306a_check_neverlock_status.exit.4.i_crit_edge ], [ %and.i.4.i, %do.end.i.4.i ], [ %and.i.4.i, %if.end.i.4.i.lgdt3306a_check_neverlock_status.exit.4.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i.4.i)
  %cmp1.4.i = icmp eq i32 %retval.0.i.4.i, 2
  br i1 %cmp1.4.i, label %lgdt3306a_check_neverlock_status.exit.4.i.do.body.i_crit_edge, label %for.inc.4.i

lgdt3306a_check_neverlock_status.exit.4.i.do.body.i_crit_edge: ; preds = %lgdt3306a_check_neverlock_status.exit.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

for.inc.4.i:                                      ; preds = %lgdt3306a_check_neverlock_status.exit.4.i
  %35 = load i32, ptr @debug, align 4
  %and9.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %for.inc.4.i.if.end65_crit_edge, label %do.end14.i

for.inc.4.i.if.end65_crit_edge:                   ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

do.end14.i:                                       ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.223, i32 noundef %retval.0.i.4.i) #11
  br label %if.end65

if.then28:                                        ; preds = %do.end.i, %do.body.i.if.then28_crit_edge
  %36 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %status, align 4
  %or29 = or i32 %37, 3
  store i32 %or29, ptr %status, align 4
  %current_modulation = getelementptr inbounds %struct.lgdt3306a_state, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %current_modulation to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %current_modulation, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.327)
  switch i32 %39, label %if.then28.sw.epilog_crit_edge [
    i32 5, label %if.then28.for.body.i.preheader_crit_edge
    i32 3, label %if.then28.for.body.i.preheader_crit_edge144
    i32 6, label %if.then28.for.body.i.preheader_crit_edge145
    i32 7, label %if.then28.for.body.i104_crit_edge
  ]

if.then28.for.body.i104_crit_edge:                ; preds = %if.then28
  br label %for.body.i104

if.then28.for.body.i.preheader_crit_edge145:      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader

if.then28.for.body.i.preheader_crit_edge144:      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader

if.then28.for.body.i.preheader_crit_edge:         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader

if.then28.sw.epilog_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.i.preheader:                             ; preds = %if.then28.for.body.i.preheader_crit_edge, %if.then28.for.body.i.preheader_crit_edge144, %if.then28.for.body.i.preheader_crit_edge145
  br label %for.body.i

for.cond.i:                                       ; preds = %do.end25.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 10
  br i1 %exitcond.not.i, label %do.body33.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.i.preheader
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  call void @msleep(i32 noundef 30) #8
  %call.i.i90 = call fastcc i32 @lgdt3306a_check_lock_status(ptr noundef %1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i90)
  %cmp1.i.i = icmp eq i32 %call.i.i90, 1
  br i1 %cmp1.i.i, label %for.body.i.do.body.i.i_crit_edge, label %for.inc.i.i

for.body.i.do.body.i.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %for.inc.i.i.do.body.i.i_crit_edge, %for.body.i.do.body.i.i_crit_edge
  %i.027.lcssa.i.i = phi i32 [ 0, %for.body.i.do.body.i.i_crit_edge ], [ 1, %for.inc.i.i.do.body.i.i_crit_edge ]
  %41 = load i32, ptr @debug, align 4
  %and.i.i91 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i91)
  %tobool.not.i.i92 = icmp eq i32 %and.i.i91, 0
  br i1 %tobool.not.i.i92, label %do.body.i.i.if.end9.i_crit_edge, label %do.end.i.i93

do.body.i.i.if.end9.i_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

do.end.i.i93:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, i32 noundef %i.027.lcssa.i.i) #11
  br label %if.end9.i

for.inc.i.i:                                      ; preds = %for.body.i
  call void @msleep(i32 noundef 30) #8
  %call.1.i.i = call fastcc i32 @lgdt3306a_check_lock_status(ptr noundef %1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.1.i.i)
  %cmp1.1.i.i = icmp eq i32 %call.1.i.i, 1
  br i1 %cmp1.1.i.i, label %for.inc.i.i.do.body.i.i_crit_edge, label %for.inc.1.i.i

for.inc.i.i.do.body.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %42 = load i32, ptr @debug, align 4
  %and9.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool10.not.i.i, label %for.inc.1.i.i.lgdt3306a_fec_lock_poll.exit.i_crit_edge, label %do.end14.i.i

for.inc.1.i.i.lgdt3306a_fec_lock_poll.exit.i_crit_edge: ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_fec_lock_poll.exit.i

do.end14.i.i:                                     ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call16.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238) #11
  br label %lgdt3306a_fec_lock_poll.exit.i

lgdt3306a_fec_lock_poll.exit.i:                   ; preds = %do.end14.i.i, %for.inc.1.i.i.lgdt3306a_fec_lock_poll.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i)
  %cmp2.i = icmp eq i32 %call.1.i.i, 0
  br i1 %cmp2.i, label %do.body.i96, label %lgdt3306a_fec_lock_poll.exit.i.if.end9.i_crit_edge

lgdt3306a_fec_lock_poll.exit.i.if.end9.i_crit_edge: ; preds = %lgdt3306a_fec_lock_poll.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

do.body.i96:                                      ; preds = %lgdt3306a_fec_lock_poll.exit.i
  %43 = load i32, ptr @debug, align 4
  %and.i94 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94)
  %tobool.not.i95 = icmp eq i32 %and.i94, 0
  br i1 %tobool.not.i95, label %do.body.i96.sw.epilog_crit_edge, label %do.body.i96.cleanup.sink.split.i_crit_edge

do.body.i96.cleanup.sink.split.i_crit_edge:       ; preds = %do.body.i96
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

do.body.i96.sw.epilog_crit_edge:                  ; preds = %do.body.i96
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end9.i:                                        ; preds = %lgdt3306a_fec_lock_poll.exit.i.if.end9.i_crit_edge, %do.end.i.i93, %do.body.i.i.if.end9.i_crit_edge
  call void @msleep(i32 noundef 20) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i89) #8
  %44 = ptrtoint ptr %val.i.i89 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -1, ptr %val.i.i89, align 1, !annotation !619
  %call.i53.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 250, ptr noundef nonnull %val.i.i89) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53.i)
  %tobool.not.i54.i = icmp eq i32 %call.i53.i, 0
  br i1 %tobool.not.i54.i, label %if.end.i.i97, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = trunc i32 %call.i53.i to i8
  br label %lgdt3306a_get_packet_error.exit.i

if.end.i.i97:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %val.i.i89 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %val.i.i89, align 1
  br label %lgdt3306a_get_packet_error.exit.i

lgdt3306a_get_packet_error.exit.i:                ; preds = %if.end.i.i97, %if.then.i.i
  %retval.0.i55.i = phi i8 [ %conv.i.i, %if.then.i.i ], [ %46, %if.end.i.i97 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i89) #8
  %call11.i = call fastcc i32 @lgdt3306a_calculate_snr_x100(ptr noundef %1) #8
  %47 = load i32, ptr @debug, align 4
  %and13.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %lgdt3306a_get_packet_error.exit.i.do.end25.i_crit_edge, label %do.end18.i

lgdt3306a_get_packet_error.exit.i.do.end25.i_crit_edge: ; preds = %lgdt3306a_get_packet_error.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25.i

do.end18.i:                                       ; preds = %lgdt3306a_get_packet_error.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv21.i = zext i8 %retval.0.i55.i to i32
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, i32 noundef %indvars.iv.i, i32 noundef %conv21.i, i32 noundef %call11.i) #11
  br label %do.end25.i

do.end25.i:                                       ; preds = %do.end18.i, %lgdt3306a_get_packet_error.exit.i.do.end25.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %call11.i)
  %cmp26.i = icmp ult i32 %call11.i, 1500
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %retval.0.i55.i)
  %cmp29.not.i = icmp eq i8 %retval.0.i55.i, -1
  %or.cond.i = select i1 %cmp26.i, i1 true, i1 %cmp29.not.i
  br i1 %or.cond.i, label %for.cond.i, label %if.then33

do.body33.i:                                      ; preds = %for.cond.i
  %48 = load i32, ptr @debug, align 4
  %and34.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %do.body33.i.sw.epilog_crit_edge, label %do.body33.i.cleanup.sink.split.i_crit_edge

do.body33.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

do.body33.i.sw.epilog_crit_edge:                  ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

cleanup.sink.split.i:                             ; preds = %do.body33.i.cleanup.sink.split.i_crit_edge, %do.body.i96.cleanup.sink.split.i_crit_edge
  %.str.233.sink.i = phi ptr [ @.str.227, %do.body.i96.cleanup.sink.split.i_crit_edge ], [ @.str.233, %do.body33.i.cleanup.sink.split.i_crit_edge ]
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.233.sink.i) #11
  br label %sw.epilog

if.then33:                                        ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %status, align 4
  %or36 = or i32 %50, 28
  store i32 %or36, ptr %status, align 4
  br label %sw.epilog

for.cond.i102:                                    ; preds = %do.end29.i
  %indvars.iv.next.i100 = add nuw nsw i32 %indvars.iv.i103, 1
  %exitcond.not.i101 = icmp eq i32 %indvars.iv.next.i100, 10
  br i1 %exitcond.not.i101, label %for.cond.i102.do.body37.i_crit_edge, label %for.cond.i102.for.body.i104_crit_edge

for.cond.i102.for.body.i104_crit_edge:            ; preds = %for.cond.i102
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i104

for.cond.i102.do.body37.i_crit_edge:              ; preds = %for.cond.i102
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body37.i

for.body.i104:                                    ; preds = %for.cond.i102.for.body.i104_crit_edge, %if.then28.for.body.i104_crit_edge
  %indvars.iv.i103 = phi i32 [ %indvars.iv.next.i100, %for.cond.i102.for.body.i104_crit_edge ], [ 0, %if.then28.for.body.i104_crit_edge ]
  call void @msleep(i32 noundef 30) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i.i) #8
  %51 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %val.i.i.i, align 1
  %call.i.i.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 166, ptr noundef nonnull %val.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %for.body.i104.lgdt3306a_check_lock_status.exit.i.i_crit_edge

for.body.i104.lgdt3306a_check_lock_status.exit.i.i_crit_edge: ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_check_lock_status.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body.i104
  %52 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %val.i.i.i, align 1
  %.lobit133.i.i.i = lshr i8 %53, 7
  %54 = zext i8 %.lobit133.i.i.i to i32
  %55 = load i32, ptr @debug, align 4
  %and4.i.i.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %if.end.i.i.i.lgdt3306a_check_lock_status.exit.i.i_crit_edge, label %do.end.i.i.i

if.end.i.i.i.lgdt3306a_check_lock_status.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_check_lock_status.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.240, i32 noundef %54) #11
  br label %lgdt3306a_check_lock_status.exit.i.i

lgdt3306a_check_lock_status.exit.i.i:             ; preds = %do.end.i.i.i, %if.end.i.i.i.lgdt3306a_check_lock_status.exit.i.i_crit_edge, %for.body.i104.lgdt3306a_check_lock_status.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %for.body.i104.lgdt3306a_check_lock_status.exit.i.i_crit_edge ], [ %54, %do.end.i.i.i ], [ %54, %if.end.i.i.i.lgdt3306a_check_lock_status.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i.i.i)
  %cmp1.i.i105 = icmp eq i32 %retval.0.i.i.i, 1
  br i1 %cmp1.i.i105, label %lgdt3306a_check_lock_status.exit.i.i.do.body.i.i108_crit_edge, label %for.inc.i.i111

lgdt3306a_check_lock_status.exit.i.i.do.body.i.i108_crit_edge: ; preds = %lgdt3306a_check_lock_status.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i108

do.body.i.i108:                                   ; preds = %lgdt3306a_check_lock_status.exit.1.i.i.do.body.i.i108_crit_edge, %lgdt3306a_check_lock_status.exit.i.i.do.body.i.i108_crit_edge
  %i.024.lcssa.i.i = phi i32 [ 0, %lgdt3306a_check_lock_status.exit.i.i.do.body.i.i108_crit_edge ], [ 1, %lgdt3306a_check_lock_status.exit.1.i.i.do.body.i.i108_crit_edge ]
  %56 = load i32, ptr @debug, align 4
  %and.i.i106 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i106)
  %tobool.not.i.i107 = icmp eq i32 %and.i.i106, 0
  br i1 %tobool.not.i.i107, label %do.body.i.i108.if.end9.i122_crit_edge, label %do.end.i.i110

do.body.i.i108.if.end9.i122_crit_edge:            ; preds = %do.body.i.i108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i122

do.end.i.i110:                                    ; preds = %do.body.i.i108
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, i32 noundef %i.024.lcssa.i.i) #11
  br label %if.end9.i122

for.inc.i.i111:                                   ; preds = %lgdt3306a_check_lock_status.exit.i.i
  call void @msleep(i32 noundef 30) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i.i) #8
  %57 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %val.i.i.i, align 1
  %call.i.1.i.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 166, ptr noundef nonnull %val.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i.i)
  %tobool.not.i.1.i.i = icmp eq i32 %call.i.1.i.i, 0
  br i1 %tobool.not.i.1.i.i, label %if.end.i.1.i.i, label %for.inc.i.i111.lgdt3306a_check_lock_status.exit.1.i.i_crit_edge

for.inc.i.i111.lgdt3306a_check_lock_status.exit.1.i.i_crit_edge: ; preds = %for.inc.i.i111
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_check_lock_status.exit.1.i.i

if.end.i.1.i.i:                                   ; preds = %for.inc.i.i111
  %58 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %val.i.i.i, align 1
  %.lobit133.i.1.i.i = lshr i8 %59, 7
  %60 = zext i8 %.lobit133.i.1.i.i to i32
  %61 = load i32, ptr @debug, align 4
  %and4.i.1.i.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.1.i.i)
  %tobool5.not.i.1.i.i = icmp eq i32 %and4.i.1.i.i, 0
  br i1 %tobool5.not.i.1.i.i, label %if.end.i.1.i.i.lgdt3306a_check_lock_status.exit.1.i.i_crit_edge, label %do.end.i.1.i.i

if.end.i.1.i.i.lgdt3306a_check_lock_status.exit.1.i.i_crit_edge: ; preds = %if.end.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_check_lock_status.exit.1.i.i

do.end.i.1.i.i:                                   ; preds = %if.end.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i.1.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.240, i32 noundef %60) #11
  br label %lgdt3306a_check_lock_status.exit.1.i.i

lgdt3306a_check_lock_status.exit.1.i.i:           ; preds = %do.end.i.1.i.i, %if.end.i.1.i.i.lgdt3306a_check_lock_status.exit.1.i.i_crit_edge, %for.inc.i.i111.lgdt3306a_check_lock_status.exit.1.i.i_crit_edge
  %retval.0.i.1.i.i = phi i32 [ %call.i.1.i.i, %for.inc.i.i111.lgdt3306a_check_lock_status.exit.1.i.i_crit_edge ], [ %60, %do.end.i.1.i.i ], [ %60, %if.end.i.1.i.i.lgdt3306a_check_lock_status.exit.1.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i.1.i.i)
  %cmp1.1.i.i112 = icmp eq i32 %retval.0.i.1.i.i, 1
  br i1 %cmp1.1.i.i112, label %lgdt3306a_check_lock_status.exit.1.i.i.do.body.i.i108_crit_edge, label %for.inc.1.i.i115

lgdt3306a_check_lock_status.exit.1.i.i.do.body.i.i108_crit_edge: ; preds = %lgdt3306a_check_lock_status.exit.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i108

for.inc.1.i.i115:                                 ; preds = %lgdt3306a_check_lock_status.exit.1.i.i
  %62 = load i32, ptr @debug, align 4
  %and9.i.i113 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i113)
  %tobool10.not.i.i114 = icmp eq i32 %and9.i.i113, 0
  br i1 %tobool10.not.i.i114, label %for.inc.1.i.i115.do.body.i120_crit_edge, label %do.end14.i.i117

for.inc.1.i.i115.do.body.i120_crit_edge:          ; preds = %for.inc.1.i.i115
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i120

do.end14.i.i117:                                  ; preds = %for.inc.1.i.i115
  call void @__sanitizer_cov_trace_pc() #10
  %call16.i.i116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238) #11
  br label %do.body.i120

do.body.i120:                                     ; preds = %do.end14.i.i117, %for.inc.1.i.i115.do.body.i120_crit_edge
  %63 = load i32, ptr @debug, align 4
  %and.i118 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i118)
  %tobool.not.i119 = icmp eq i32 %and.i118, 0
  br i1 %tobool.not.i119, label %do.body.i120.sw.epilog_crit_edge, label %do.body.i120.cleanup.sink.split.i130_crit_edge

do.body.i120.cleanup.sink.split.i130_crit_edge:   ; preds = %do.body.i120
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i130

do.body.i120.sw.epilog_crit_edge:                 ; preds = %do.body.i120
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end9.i122:                                     ; preds = %do.end.i.i110, %do.body.i.i108.if.end9.i122_crit_edge
  call void @msleep(i32 noundef 20) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i99) #8
  %64 = ptrtoint ptr %val.i.i99 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %val.i.i99, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %currChDiffACQ.i.i) #8
  %65 = ptrtoint ptr %currChDiffACQ.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -1, ptr %currChDiffACQ.i.i, align 1, !annotation !619
  %call.i.i121 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 8636, ptr noundef nonnull %currChDiffACQ.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i121)
  %tobool.not.i59.i = icmp eq i32 %call.i.i121, 0
  br i1 %tobool.not.i59.i, label %if.end.i.i124, label %if.end9.i122.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge

if.end9.i122.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge: ; preds = %if.end9.i122
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_pre_monitoring.exit.thread.i

if.end.i.i124:                                    ; preds = %if.end9.i122
  %call1.i.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 8609, ptr noundef nonnull %val.i.i99) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i123 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i123, label %if.end4.i.i, label %if.end.i.i124.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge

if.end.i.i124.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge: ; preds = %if.end.i.i124
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_pre_monitoring.exit.thread.i

if.end4.i.i:                                      ; preds = %if.end.i.i124
  %66 = ptrtoint ptr %val.i.i99 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %val.i.i99, align 1
  %68 = and i8 %67, 63
  %call6.i.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 8601, ptr noundef nonnull %val.i.i99) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %if.end4.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge

if.end4.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_pre_monitoring.exit.thread.i

if.end9.i.i:                                      ; preds = %if.end4.i.i
  %69 = ptrtoint ptr %val.i.i99 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %val.i.i99, align 1
  %71 = lshr i8 %70, 6
  %72 = and i8 %71, 1
  %call13.i.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 144, ptr noundef nonnull %val.i.i99) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end16.i.i, label %if.end9.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge

if.end9.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_pre_monitoring.exit.thread.i

if.end16.i.i:                                     ; preds = %if.end9.i.i
  %73 = load i32, ptr @debug, align 4
  %and21.i.i = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i)
  %tobool22.not.i.i = icmp eq i32 %and21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end16.i.i.do.end32.i.i_crit_edge, label %do.end.i60.i

if.end16.i.i.do.end32.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end32.i.i

do.end.i60.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %val.i.i99 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %val.i.i99, align 1
  %76 = lshr i8 %75, 4
  %conv25.i.i = zext i8 %68 to i32
  %conv26.i.i = zext i8 %72 to i32
  %conv27.i.i = zext i8 %76 to i32
  %77 = ptrtoint ptr %currChDiffACQ.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %currChDiffACQ.i.i, align 1
  %conv28.i.i = zext i8 %78 to i32
  %call29.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.274, i32 noundef %conv25.i.i, i32 noundef %conv26.i.i, i32 noundef %conv27.i.i, i32 noundef %conv28.i.i) #11
  br label %do.end32.i.i

do.end32.i.i:                                     ; preds = %do.end.i60.i, %if.end16.i.i.do.end32.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp.i.i = icmp eq i8 %72, 0
  %call36.i.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 8501, ptr noundef nonnull %val.i.i99) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i)
  %tobool37.not.i.i = icmp eq i32 %call36.i.i, 0
  br i1 %cmp.i.i, label %if.then35.i.i, label %if.else.i.i

if.then35.i.i:                                    ; preds = %do.end32.i.i
  br i1 %tobool37.not.i.i, label %if.end39.i.i, label %if.then35.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge

if.then35.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge: ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_pre_monitoring.exit.thread.i

if.end39.i.i:                                     ; preds = %if.then35.i.i
  %79 = ptrtoint ptr %val.i.i99 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %val.i.i99, align 1
  %81 = and i8 %80, 15
  %82 = or i8 %81, -96
  store i8 %82, ptr %val.i.i99, align 1
  %call45.i.i = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 8501, i8 noundef zeroext %82) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i.i)
  %tobool46.not.i.i = icmp eq i32 %call45.i.i, 0
  br i1 %tobool46.not.i.i, label %if.end48.i.i, label %if.end39.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge

if.end39.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge: ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_pre_monitoring.exit.thread.i

if.end48.i.i:                                     ; preds = %if.end39.i.i
  %call49.i.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 8513, ptr noundef nonnull %val.i.i99) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i.i)
  %tobool50.not.i.i = icmp eq i32 %call49.i.i, 0
  br i1 %tobool50.not.i.i, label %if.end52.i.i, label %if.end48.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge

if.end48.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge: ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_pre_monitoring.exit.thread.i

if.end52.i.i:                                     ; preds = %if.end48.i.i
  %83 = ptrtoint ptr %val.i.i99 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %val.i.i99, align 1
  %85 = and i8 %84, 63
  %86 = or i8 %85, -128
  store i8 %86, ptr %val.i.i99, align 1
  %call59.i.i = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 8513, i8 noundef zeroext %86) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i.i)
  %tobool60.not.i.i = icmp eq i32 %call59.i.i, 0
  br i1 %tobool60.not.i.i, label %if.end62.i.i, label %if.end52.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge

if.end52.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge: ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_pre_monitoring.exit.thread.i

if.end62.i.i:                                     ; preds = %if.end52.i.i
  %call63.i.i = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 8482, i8 noundef zeroext 112) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i.i)
  %tobool64.not.i.i = icmp eq i32 %call63.i.i, 0
  br i1 %tobool64.not.i.i, label %if.end62.i.i.if.end13.i_crit_edge, label %if.end62.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge

if.end62.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge: ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_pre_monitoring.exit.thread.i

if.end62.i.i.if.end13.i_crit_edge:                ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.else.i.i:                                      ; preds = %do.end32.i.i
  br i1 %tobool37.not.i.i, label %if.end70.i.i, label %if.else.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge

if.else.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_pre_monitoring.exit.thread.i

if.end70.i.i:                                     ; preds = %if.else.i.i
  %87 = ptrtoint ptr %val.i.i99 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %val.i.i99, align 1
  %89 = and i8 %88, 15
  %90 = or i8 %89, 112
  store i8 %90, ptr %val.i.i99, align 1
  %call77.i.i = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 8501, i8 noundef zeroext %90) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i.i)
  %tobool78.not.i.i = icmp eq i32 %call77.i.i, 0
  br i1 %tobool78.not.i.i, label %if.end80.i.i, label %if.end70.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge

if.end70.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge: ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_pre_monitoring.exit.thread.i

if.end80.i.i:                                     ; preds = %if.end70.i.i
  %call81.i.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 8513, ptr noundef nonnull %val.i.i99) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i.i)
  %tobool82.not.i.i = icmp eq i32 %call81.i.i, 0
  br i1 %tobool82.not.i.i, label %if.end84.i.i, label %if.end80.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge

if.end80.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge: ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_pre_monitoring.exit.thread.i

if.end84.i.i:                                     ; preds = %if.end80.i.i
  %91 = ptrtoint ptr %val.i.i99 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %val.i.i99, align 1
  %93 = and i8 %92, 63
  %94 = or i8 %93, 64
  store i8 %94, ptr %val.i.i99, align 1
  %call91.i.i = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 8513, i8 noundef zeroext %94) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.i.i)
  %tobool92.not.i.i = icmp eq i32 %call91.i.i, 0
  br i1 %tobool92.not.i.i, label %if.end94.i.i, label %if.end84.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge

if.end84.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge: ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_pre_monitoring.exit.thread.i

if.end94.i.i:                                     ; preds = %if.end84.i.i
  %call95.i.i = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 8482, i8 noundef zeroext 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i.i)
  %tobool96.not.i.i = icmp eq i32 %call95.i.i, 0
  br i1 %tobool96.not.i.i, label %if.end94.i.i.if.end13.i_crit_edge, label %if.end94.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge

if.end94.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge: ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_pre_monitoring.exit.thread.i

if.end94.i.i.if.end13.i_crit_edge:                ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

lgdt3306a_pre_monitoring.exit.thread.i:           ; preds = %if.end94.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge, %if.end84.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge, %if.end80.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge, %if.end70.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge, %if.else.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge, %if.end62.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge, %if.end52.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge, %if.end48.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge, %if.end39.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge, %if.then35.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge, %if.end9.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge, %if.end4.i.i.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge, %if.end.i.i124.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge, %if.end9.i122.lgdt3306a_pre_monitoring.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %currChDiffACQ.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i99) #8
  br label %do.body37.i

if.end13.i:                                       ; preds = %if.end94.i.i.if.end13.i_crit_edge, %if.end62.i.i.if.end13.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %currChDiffACQ.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i99) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i62.i) #8
  %95 = ptrtoint ptr %val.i62.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -1, ptr %val.i62.i, align 1, !annotation !619
  %call.i63.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 250, ptr noundef nonnull %val.i62.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63.i)
  %tobool.not.i64.i = icmp eq i32 %call.i63.i, 0
  br i1 %tobool.not.i64.i, label %if.end.i65.i, label %if.then.i.i126

if.then.i.i126:                                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i125 = trunc i32 %call.i63.i to i8
  br label %lgdt3306a_get_packet_error.exit.i127

if.end.i65.i:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %val.i62.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %val.i62.i, align 1
  br label %lgdt3306a_get_packet_error.exit.i127

lgdt3306a_get_packet_error.exit.i127:             ; preds = %if.end.i65.i, %if.then.i.i126
  %retval.0.i66.i = phi i8 [ %conv.i.i125, %if.then.i.i126 ], [ %97, %if.end.i65.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i62.i) #8
  %call15.i = call fastcc i32 @lgdt3306a_calculate_snr_x100(ptr noundef %1) #8
  %98 = load i32, ptr @debug, align 4
  %and17.i = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %lgdt3306a_get_packet_error.exit.i127.do.end29.i_crit_edge, label %do.end22.i

lgdt3306a_get_packet_error.exit.i127.do.end29.i_crit_edge: ; preds = %lgdt3306a_get_packet_error.exit.i127
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29.i

do.end22.i:                                       ; preds = %lgdt3306a_get_packet_error.exit.i127
  call void @__sanitizer_cov_trace_pc() #10
  %conv25.i = zext i8 %retval.0.i66.i to i32
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, i32 noundef %indvars.iv.i103, i32 noundef %conv25.i, i32 noundef %call15.i) #11
  br label %do.end29.i

do.end29.i:                                       ; preds = %do.end22.i, %lgdt3306a_get_packet_error.exit.i127.do.end29.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %call15.i)
  %cmp30.i = icmp ult i32 %call15.i, 1500
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %retval.0.i66.i)
  %cmp33.not.i = icmp eq i8 %retval.0.i66.i, -1
  %or.cond.i128 = select i1 %cmp30.i, i1 true, i1 %cmp33.not.i
  br i1 %or.cond.i128, label %for.cond.i102, label %if.then42

do.body37.i:                                      ; preds = %lgdt3306a_pre_monitoring.exit.thread.i, %for.cond.i102.do.body37.i_crit_edge
  %99 = load i32, ptr @debug, align 4
  %and38.i = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %do.body37.i.sw.epilog_crit_edge, label %do.body37.i.cleanup.sink.split.i130_crit_edge

do.body37.i.cleanup.sink.split.i130_crit_edge:    ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i130

do.body37.i.sw.epilog_crit_edge:                  ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

cleanup.sink.split.i130:                          ; preds = %do.body37.i.cleanup.sink.split.i130_crit_edge, %do.body.i120.cleanup.sink.split.i130_crit_edge
  %.str.233.sink.i129 = phi ptr [ @.str.265, %do.body.i120.cleanup.sink.split.i130_crit_edge ], [ @.str.233, %do.body37.i.cleanup.sink.split.i130_crit_edge ]
  %call45.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.233.sink.i129) #11
  br label %sw.epilog

if.then42:                                        ; preds = %do.end29.i
  %100 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %status, align 4
  %or45 = or i32 %101, 28
  store i32 %or45, ptr %status, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %102 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 -1, ptr %val.i, align 1, !annotation !619
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %maxPowerMan.i) #8
  %103 = ptrtoint ptr %maxPowerMan.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 -1, ptr %maxPowerMan.i, align 1, !annotation !619
  %call.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 8609, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i132 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i132, label %if.end.i, label %if.then42.lgdt3306a_monitor_vsb.exit_crit_edge

if.then42.lgdt3306a_monitor_vsb.exit_crit_edge:   ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_monitor_vsb.exit

if.end.i:                                         ; preds = %if.then42
  %104 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %val.i, align 1
  %106 = and i8 %105, 63
  %call2.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 8581, ptr noundef nonnull %maxPowerMan.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.lgdt3306a_monitor_vsb.exit_crit_edge

if.end.i.lgdt3306a_monitor_vsb.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_monitor_vsb.exit

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 8593, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i134, label %if.end5.i.lgdt3306a_monitor_vsb.exit_crit_edge

if.end5.i.lgdt3306a_monitor_vsb.exit_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_monitor_vsb.exit

if.end9.i134:                                     ; preds = %if.end5.i
  %107 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %val.i, align 1
  %109 = lshr i8 %108, 7
  %call13.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 8576, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i133 = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i133, label %if.end16.i, label %if.end9.i134.lgdt3306a_monitor_vsb.exit_crit_edge

if.end9.i134.lgdt3306a_monitor_vsb.exit_crit_edge: ; preds = %if.end9.i134
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_monitor_vsb.exit

if.end16.i:                                       ; preds = %if.end9.i134
  %110 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %val.i, align 1
  %call20.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 8577, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.end16.i.lgdt3306a_monitor_vsb.exit_crit_edge

if.end16.i.lgdt3306a_monitor_vsb.exit_crit_edge:  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_monitor_vsb.exit

if.end23.i:                                       ; preds = %if.end16.i
  %112 = and i8 %111, 3
  %and18.i = zext i8 %112 to i16
  %shl.i = shl nuw nsw i16 %and18.i, 8
  %113 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %val.i, align 1
  %conv24.i = zext i8 %114 to i16
  %or.i = or i16 %shl.i, %conv24.i
  %115 = load i32, ptr @debug, align 4
  %and27.i = and i32 %115, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end23.i.do.end38.i_crit_edge, label %do.end.i135

if.end23.i.do.end38.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end38.i

do.end.i135:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv31.i = zext i8 %106 to i32
  %116 = ptrtoint ptr %maxPowerMan.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %maxPowerMan.i, align 1
  %conv32.i = zext i8 %117 to i32
  %conv33.i = zext i8 %109 to i32
  %conv34.i = zext i16 %or.i to i32
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.276, i32 noundef %conv31.i, i32 noundef %conv32.i, i32 noundef %conv33.i, i32 noundef %conv34.i) #11
  br label %do.end38.i

do.end38.i:                                       ; preds = %do.end.i135, %if.end23.i.do.end38.i_crit_edge
  %call39.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 4193, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end42.i, label %do.end38.i.lgdt3306a_monitor_vsb.exit_crit_edge

do.end38.i.lgdt3306a_monitor_vsb.exit_crit_edge:  ; preds = %do.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_monitor_vsb.exit

if.end42.i:                                       ; preds = %do.end38.i
  %118 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %val.i, align 1
  %120 = and i8 %119, -8
  store i8 %120, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %106)
  %cmp.i = icmp ugt i8 %106, 18
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end42.i.if.else.i_crit_edge

if.end42.i.if.else.i_crit_edge:                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end42.i
  %121 = ptrtoint ptr %maxPowerMan.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %maxPowerMan.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 104, i8 %122)
  %cmp49.i = icmp ugt i8 %122, 104
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %109)
  %cmp53.i = icmp eq i8 %109, 1
  %or.cond.i136 = select i1 %cmp49.i, i1 %cmp53.i, i1 false
  br i1 %or.cond.i136, label %land.lhs.true55.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true55.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %or.i)
  %cmp57.i = icmp eq i16 %or.i, 1023
  call void @__sanitizer_cov_trace_const_cmp2(i16 108, i16 %or.i)
  %cmp60.i = icmp ult i16 %or.i, 108
  %or.cond145.i = or i1 %cmp57.i, %cmp60.i
  br i1 %or.cond145.i, label %land.lhs.true55.i.if.end69.i_crit_edge, label %land.lhs.true55.i.if.else.i_crit_edge

land.lhs.true55.i.if.else.i_crit_edge:            ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true55.i.if.end69.i_crit_edge:           ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69.i

if.else.i:                                        ; preds = %land.lhs.true55.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.end42.i.if.else.i_crit_edge
  %123 = or i8 %120, 4
  %124 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %123, ptr %val.i, align 1
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.else.i, %land.lhs.true55.i.if.end69.i_crit_edge
  %125 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %val.i, align 1
  %call70.i = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 4193, i8 noundef zeroext %126) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %tobool71.not.i = icmp eq i32 %call70.i, 0
  br i1 %tobool71.not.i, label %if.end73.i, label %if.end69.i.lgdt3306a_monitor_vsb.exit_crit_edge

if.end69.i.lgdt3306a_monitor_vsb.exit_crit_edge:  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_monitor_vsb.exit

if.end73.i:                                       ; preds = %if.end69.i
  %call74.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 36, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool75.not.i = icmp eq i32 %call74.i, 0
  br i1 %tobool75.not.i, label %if.end77.i, label %if.end73.i.lgdt3306a_monitor_vsb.exit_crit_edge

if.end73.i.lgdt3306a_monitor_vsb.exit_crit_edge:  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_monitor_vsb.exit

if.end77.i:                                       ; preds = %if.end73.i
  %127 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %val.i, align 1
  %129 = and i8 %128, 15
  %130 = or i8 %129, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %cmp82146.i = icmp slt i8 %108, 0
  %spec.select.i = select i1 %cmp82146.i, i8 %129, i8 %130
  %131 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %spec.select.i, ptr %val.i, align 1
  %call89.i = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 36, i8 noundef zeroext %spec.select.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i)
  %tobool90.not.i = icmp eq i32 %call89.i, 0
  br i1 %tobool90.not.i, label %if.end92.i, label %if.end77.i.lgdt3306a_monitor_vsb.exit_crit_edge

if.end77.i.lgdt3306a_monitor_vsb.exit_crit_edge:  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_monitor_vsb.exit

if.end92.i:                                       ; preds = %if.end77.i
  %call93.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 4157, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i)
  %tobool94.not.i = icmp eq i32 %call93.i, 0
  br i1 %tobool94.not.i, label %if.end96.i, label %if.end92.i.lgdt3306a_monitor_vsb.exit_crit_edge

if.end92.i.lgdt3306a_monitor_vsb.exit_crit_edge:  ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_monitor_vsb.exit

if.end96.i:                                       ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #10
  %132 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %val.i, align 1
  %134 = and i8 %133, -49
  %135 = or i8 %134, 32
  store i8 %135, ptr %val.i, align 1
  %call103.i = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %1, i16 noundef zeroext 4157, i8 noundef zeroext %135) #8
  br label %lgdt3306a_monitor_vsb.exit

lgdt3306a_monitor_vsb.exit:                       ; preds = %if.end96.i, %if.end92.i.lgdt3306a_monitor_vsb.exit_crit_edge, %if.end77.i.lgdt3306a_monitor_vsb.exit_crit_edge, %if.end73.i.lgdt3306a_monitor_vsb.exit_crit_edge, %if.end69.i.lgdt3306a_monitor_vsb.exit_crit_edge, %do.end38.i.lgdt3306a_monitor_vsb.exit_crit_edge, %if.end16.i.lgdt3306a_monitor_vsb.exit_crit_edge, %if.end9.i134.lgdt3306a_monitor_vsb.exit_crit_edge, %if.end5.i.lgdt3306a_monitor_vsb.exit_crit_edge, %if.end.i.lgdt3306a_monitor_vsb.exit_crit_edge, %if.then42.lgdt3306a_monitor_vsb.exit_crit_edge
  %retval.0.i137 = phi i32 [ %call103.i, %if.end96.i ], [ %call.i, %if.then42.lgdt3306a_monitor_vsb.exit_crit_edge ], [ %call2.i, %if.end.i.lgdt3306a_monitor_vsb.exit_crit_edge ], [ %call6.i, %if.end5.i.lgdt3306a_monitor_vsb.exit_crit_edge ], [ %call13.i, %if.end9.i134.lgdt3306a_monitor_vsb.exit_crit_edge ], [ %call20.i, %if.end16.i.lgdt3306a_monitor_vsb.exit_crit_edge ], [ %call39.i, %do.end38.i.lgdt3306a_monitor_vsb.exit_crit_edge ], [ %call70.i, %if.end69.i.lgdt3306a_monitor_vsb.exit_crit_edge ], [ %call74.i, %if.end73.i.lgdt3306a_monitor_vsb.exit_crit_edge ], [ %call89.i, %if.end77.i.lgdt3306a_monitor_vsb.exit_crit_edge ], [ %call93.i, %if.end92.i.lgdt3306a_monitor_vsb.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %maxPowerMan.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %lgdt3306a_monitor_vsb.exit, %cleanup.sink.split.i130, %do.body37.i.sw.epilog_crit_edge, %do.body.i120.sw.epilog_crit_edge, %if.then33, %cleanup.sink.split.i, %do.body33.i.sw.epilog_crit_edge, %do.body.i96.sw.epilog_crit_edge, %if.then28.sw.epilog_crit_edge
  %ret.1 = phi i32 [ %retval.0.i137, %lgdt3306a_monitor_vsb.exit ], [ %ret.0, %if.then33 ], [ -22, %if.then28.sw.epilog_crit_edge ], [ %ret.0, %do.body.i96.sw.epilog_crit_edge ], [ %ret.0, %do.body33.i.sw.epilog_crit_edge ], [ %ret.0, %cleanup.sink.split.i ], [ %ret.0, %do.body.i120.sw.epilog_crit_edge ], [ %ret.0, %do.body37.i.sw.epilog_crit_edge ], [ %ret.0, %cleanup.sink.split.i130 ]
  %136 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %status, align 4
  %and48 = and i32 %137, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  %cnr58 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43
  %138 = ptrtoint ptr %cnr58 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 1, ptr %cnr58, align 1
  %stat61 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  br i1 %tobool49.not, label %if.else57, label %if.then50

if.then50:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %139 = ptrtoint ptr %stat61 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 1, ptr %stat61, align 1
  %call52 = call fastcc i32 @lgdt3306a_calculate_snr_x100(ptr noundef %1)
  %mul = mul i32 %call52, 10
  %conv53 = zext i32 %mul to i64
  %140 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_storeN_noabort(i32 %141, i32 8)
  store i64 %conv53, ptr %140, align 1
  br label %if.end65

if.else57:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %142 = ptrtoint ptr %stat61 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 0, ptr %stat61, align 1
  br label %if.end65

if.end65:                                         ; preds = %if.else57, %if.then50, %do.end14.i, %for.inc.4.i.if.end65_crit_edge
  %ret.2 = phi i32 [ %ret.1, %if.then50 ], [ %ret.1, %if.else57 ], [ %ret.0, %for.inc.4.i.if.end65_crit_edge ], [ %ret.0, %do.end14.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %strength) #8
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3306a_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  %__val = alloca i8, align 1
  %__val9 = alloca i8, align 1
  %__val30 = alloca i8, align 1
  %__val52 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ber, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__val) #8
  %3 = ptrtoint ptr %__val to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %__val, align 1, !annotation !619
  %call = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 252, ptr noundef nonnull %__val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call, i32 noundef 1704) #11
  %4 = ptrtoint ptr %__val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %__val, align 1
  br label %if.end6

if.end6:                                          ; preds = %do.end, %entry.if.end6_crit_edge
  %5 = ptrtoint ptr %__val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %__val, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__val) #8
  %conv8 = zext i8 %6 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__val9) #8
  %7 = ptrtoint ptr %__val9 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %__val9, align 1, !annotation !619
  %call11 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 253, ptr noundef nonnull %__val9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp13 = icmp slt i32 %call11, 0
  br i1 %cmp13, label %do.end19, label %if.end6.if.end26_crit_edge

if.end6.if.end26_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

do.end19:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call11, i32 noundef 1705) #11
  %8 = ptrtoint ptr %__val9 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %__val9, align 1
  br label %if.end26

if.end26:                                         ; preds = %do.end19, %if.end6.if.end26_crit_edge
  %9 = ptrtoint ptr %__val9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %__val9, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__val9) #8
  %conv28 = zext i8 %10 to i32
  %11 = shl nuw nsw i32 %conv8, 16
  %12 = shl nuw nsw i32 %conv28, 8
  %shl29 = or i32 %12, %11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__val30) #8
  %13 = ptrtoint ptr %__val30 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %__val30, align 1, !annotation !619
  %call32 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 254, ptr noundef nonnull %__val30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp34 = icmp slt i32 %call32, 0
  br i1 %cmp34, label %do.end40, label %if.end26.if.end47_crit_edge

if.end26.if.end47_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

do.end40:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call32, i32 noundef 1706) #11
  %14 = ptrtoint ptr %__val30 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %__val30, align 1
  br label %if.end47

if.end47:                                         ; preds = %do.end40, %if.end26.if.end47_crit_edge
  %15 = ptrtoint ptr %__val30 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %__val30, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__val30) #8
  %conv49 = zext i8 %16 to i32
  %or50 = or i32 %shl29, %conv49
  %shl51 = shl nuw i32 %or50, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__val52) #8
  %17 = ptrtoint ptr %__val52 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %__val52, align 1, !annotation !619
  %call54 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 255, ptr noundef nonnull %__val52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp56 = icmp slt i32 %call54, 0
  br i1 %cmp56, label %do.end62, label %if.end47.if.end69_crit_edge

if.end47.if.end69_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

do.end62:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call54, i32 noundef 1707) #11
  %18 = ptrtoint ptr %__val52 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %__val52, align 1
  br label %if.end69

if.end69:                                         ; preds = %do.end62, %if.end47.if.end69_crit_edge
  %19 = ptrtoint ptr %__val52 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %__val52, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__val52) #8
  %conv71 = zext i8 %20 to i32
  %or72 = or i32 %shl51, %conv71
  %21 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or72, ptr %ber, align 4
  %22 = load i32, ptr @debug, align 4
  %and = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool74.not = icmp eq i32 %and, 0
  br i1 %tobool74.not, label %if.end69.do.end83_crit_edge, label %do.end78

if.end69.do.end83_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end83

do.end78:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.296, i32 noundef %or72) #11
  br label %do.end83

do.end83:                                         ; preds = %do.end78, %if.end69.do.end83_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3306a_read_signal_strength(ptr noundef %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  %val = alloca i8, align 1
  %snr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !619
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %snr) #8
  %3 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %snr, align 2, !annotation !619
  %4 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %strength, align 2
  %current_modulation = getelementptr inbounds %struct.lgdt3306a_state, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %current_modulation to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_modulation, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.328)
  switch i32 %6, label %entry.cleanup_crit_edge [
    i32 7, label %entry.sw.epilog_crit_edge
    i32 3, label %entry.sw.bb1_crit_edge
    i32 5, label %entry.sw.bb1_crit_edge86
    i32 6, label %entry.sw.bb1_crit_edge87
  ]

entry.sw.bb1_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge86, %entry.sw.bb1_crit_edge87
  %call = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 166, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end6.critedge

do.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call, i32 noundef 1658) #11
  br label %cleanup

if.end6.critedge:                                 ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val, align 1
  %10 = and i8 %9, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not = icmp eq i8 %10, 0
  %spec.select = select i1 %tobool8.not, i32 2200, i32 2800
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end6.critedge, %entry.sw.epilog_crit_edge
  %ref_snr.0 = phi i32 [ 1600, %entry.sw.epilog_crit_edge ], [ %spec.select, %if.end6.critedge ]
  %read_snr = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 18
  %11 = ptrtoint ptr %read_snr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_snr, align 4
  %call11 = call i32 %12(ptr noundef %fe, ptr noundef nonnull %snr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp13 = icmp slt i32 %call11, 0
  br i1 %cmp13, label %do.end19, label %if.end26.critedge

do.end19:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call11, i32 noundef 1671) #11
  br label %cleanup

if.end26.critedge:                                ; preds = %sw.epilog
  %snr27 = getelementptr inbounds %struct.lgdt3306a_state, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %snr27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %snr27, align 4
  %sub = add nsw i32 %ref_snr.0, -100
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %sub)
  %cmp28.not = icmp ugt i32 %14, %sub
  br i1 %cmp28.not, label %if.else31, label %if.end26.critedge.if.end45_crit_edge

if.end26.critedge.if.end45_crit_edge:             ; preds = %if.end26.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.else31:                                        ; preds = %if.end26.critedge
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %ref_snr.0)
  %cmp33.not = icmp ugt i32 %14, %ref_snr.0
  br i1 %cmp33.not, label %if.else36, label %if.else31.if.end45_crit_edge

if.else31.if.end45_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.else36:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #10
  %sub38 = sub i32 %14, %ref_snr.0
  %div = udiv i32 %sub38, 50
  %15 = call i32 @llvm.umin.i32(i32 %div, i32 22)
  %16 = mul nuw nsw i32 %15, 65535
  %mul = add nuw nsw i32 %16, 5111730
  %div43 = udiv i32 %mul, 100
  %phi.cast = trunc i32 %div43 to i16
  br label %if.end45

if.end45:                                         ; preds = %if.else36, %if.else31.if.end45_crit_edge, %if.end26.critedge.if.end45_crit_edge
  %str.0 = phi i16 [ %phi.cast, %if.else36 ], [ 0, %if.end26.critedge.if.end45_crit_edge ], [ -22939, %if.else31.if.end45_crit_edge ]
  %17 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %str.0, ptr %strength, align 2
  %18 = load i32, ptr @debug, align 4
  %and48 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end45.cleanup_crit_edge, label %do.end53

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end53:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %conv55 = zext i16 %str.0 to i32
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.302, i32 noundef %conv55) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %if.end45.cleanup_crit_edge, %do.end19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call11, %do.end53 ], [ %call11, %if.end45.cleanup_crit_edge ], [ %call, %do.end ], [ %call11, %do.end19 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %snr) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3306a_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc i32 @lgdt3306a_calculate_snr_x100(ptr noundef %1)
  %snr1 = getelementptr inbounds %struct.lgdt3306a_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %snr1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %snr1, align 4
  %div = udiv i32 %call, 10
  %conv = trunc i32 %div to i16
  %3 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3306a_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  %__val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ucblocks, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__val) #8
  %3 = ptrtoint ptr %__val to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %__val, align 1, !annotation !619
  %call = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %1, i16 noundef zeroext 244, ptr noundef nonnull %__val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call, i32 noundef 1722) #11
  %4 = ptrtoint ptr %__val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %__val, align 1
  br label %if.end5

if.end5:                                          ; preds = %do.end, %entry.if.end5_crit_edge
  %5 = ptrtoint ptr %__val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %__val, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__val) #8
  %conv7 = zext i8 %6 to i32
  %7 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv7, ptr %ucblocks, align 4
  %8 = load i32, ptr @debug, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end5.do.end18_crit_edge, label %do.end13

if.end5.do.end18_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

do.end13:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.306, i32 noundef %conv7) #11
  br label %do.end18

do.end18:                                         ; preds = %do.end13, %if.end5.do.end18_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3306a_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %cfg = getelementptr inbounds %struct.lgdt3306a_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 4
  %deny_i2c_rptr = getelementptr inbounds %struct.lgdt3306a_config, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %deny_i2c_rptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %deny_i2c_rptr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %5 = load i32, ptr @debug, align 4
  %and13 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool.not, label %do.body12, label %do.body

do.body:                                          ; preds = %entry
  br i1 %tobool14.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.308, i32 noundef 1) #11
  br label %cleanup

do.body12:                                        ; preds = %entry
  br i1 %tobool14.not, label %do.body12.do.end23_crit_edge, label %do.end18

do.body12.do.end23_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23

do.end18:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %enable) #11
  br label %do.end23

do.end23:                                         ; preds = %do.end18, %do.body12.do.end23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool24.not = icmp eq i32 %enable, 0
  %cond = zext i1 %tobool24.not to i32
  %call25 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %1, i16 noundef zeroext 2, i32 noundef 7, i32 noundef %cond)
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %do.end23 ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3306a_ts_bus_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %acquire) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.312, i32 noundef %acquire) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %acquire)
  %tobool4.not = icmp eq i32 %acquire, 0
  %cond = zext i1 %tobool4.not to i32
  %call5 = tail call fastcc i32 @lgdt3306a_mpeg_tristate(ptr noundef %1, i32 noundef %cond)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3306a_search(ptr noundef %fe) #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #8
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %status, align 4
  %call = tail call i32 @lgdt3306a_set_parameters(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end:                                           ; preds = %entry
  %call1 = call i32 @lgdt3306a_read_status(ptr noundef %fe, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %status, align 4
  %and = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %. = select i1 %tobool5.not, i32 16, i32 1
  br label %cleanup

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  %ret.0 = phi i32 [ %call, %entry.do.body_crit_edge ], [ %call1, %if.end.do.body_crit_edge ]
  %3 = load i32, ptr @debug, align 4
  %and7 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.314, i32 noundef %ret.0) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %if.end4
  %retval.0 = phi i32 [ %., %if.end4 ], [ -2147483648, %do.end ], [ -2147483648, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3306a_set_vsb(ptr noundef readonly %state) unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !619
  %1 = load i32, ptr @debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %state, i16 noundef zeroext 2, ptr noundef nonnull %val)
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %val, align 1
  %4 = and i8 %3, -13
  %5 = or i8 %4, 4
  store i8 %5, ptr %val, align 1
  %call9 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 2, i8 noundef zeroext %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.end15, label %if.end22.critedge

do.end15:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call9, i32 noundef 393) #11
  br label %fail

if.end22.critedge:                                ; preds = %do.end3
  %call23 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 8, i8 noundef zeroext -128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp25 = icmp slt i32 %call23, 0
  br i1 %cmp25, label %do.end31, label %if.end38.critedge

do.end31:                                         ; preds = %if.end22.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call23, i32 noundef 398) #11
  br label %fail

if.end38.critedge:                                ; preds = %if.end22.critedge
  %call39 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %state, i16 noundef zeroext 9, ptr noundef nonnull %val)
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %val, align 1
  %8 = and i8 %7, -29
  %9 = or i8 %8, 12
  store i8 %9, ptr %val, align 1
  %call46 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 9, i8 noundef zeroext %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp48 = icmp slt i32 %call46, 0
  br i1 %cmp48, label %do.end54, label %if.end61.critedge

do.end54:                                         ; preds = %if.end38.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call46, i32 noundef 406) #11
  br label %fail

if.end61.critedge:                                ; preds = %if.end38.critedge
  %call62 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %state, i16 noundef zeroext 9, ptr noundef nonnull %val)
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val, align 1
  %12 = and i8 %11, -4
  store i8 %12, ptr %val, align 1
  %call66 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 9, i8 noundef zeroext %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp68 = icmp slt i32 %call66, 0
  br i1 %cmp68, label %do.end74, label %if.end81.critedge

do.end74:                                         ; preds = %if.end61.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call66, i32 noundef 413) #11
  br label %fail

if.end81.critedge:                                ; preds = %if.end61.critedge
  %call82 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %state, i16 noundef zeroext 13, ptr noundef nonnull %val)
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %val, align 1
  %15 = and i8 %14, -65
  store i8 %15, ptr %val, align 1
  %call86 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 13, i8 noundef zeroext %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp88 = icmp slt i32 %call86, 0
  br i1 %cmp88, label %do.end94, label %if.end101.critedge

do.end94:                                         ; preds = %if.end81.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call86, i32 noundef 420) #11
  br label %fail

if.end101.critedge:                               ; preds = %if.end81.critedge
  %call102 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 36, i8 noundef zeroext 90)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp104 = icmp slt i32 %call102, 0
  br i1 %cmp104, label %do.end110, label %if.end117.critedge

do.end110:                                        ; preds = %if.end101.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call102, i32 noundef 455) #11
  br label %fail

if.end117.critedge:                               ; preds = %if.end101.critedge
  %call118 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 46, i8 noundef zeroext 90)
  %call119 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 47, i8 noundef zeroext 0)
  %call120 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 48, i8 noundef zeroext 0)
  %call121 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 43, i8 noundef zeroext 54)
  %call122 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 44, i8 noundef zeroext 0)
  %call123 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 45, i8 noundef zeroext 0)
  %call124 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 40, i8 noundef zeroext 42)
  %call125 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 41, i8 noundef zeroext 0)
  %call126 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 42, i8 noundef zeroext 0)
  %call127 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 37, i8 noundef zeroext 6)
  %call128 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 38, i8 noundef zeroext 0)
  %call129 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 39, i8 noundef zeroext 0)
  %call130 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %state, i16 noundef zeroext 30, ptr noundef nonnull %val)
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %val, align 1
  %18 = and i8 %17, 15
  %19 = or i8 %18, -96
  store i8 %19, ptr %val, align 1
  %call137 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 30, i8 noundef zeroext %19)
  %call138 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 34, i8 noundef zeroext 8)
  %call139 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 35, i8 noundef zeroext -1)
  %call140 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %state, i16 noundef zeroext 8479, ptr noundef nonnull %val)
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %val, align 1
  %22 = and i8 %21, -17
  store i8 %22, ptr %val, align 1
  %call144 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 8479, i8 noundef zeroext %22)
  %call145 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 8563, i8 noundef zeroext 1)
  %call146 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %state, i16 noundef zeroext 4193, ptr noundef nonnull %val)
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %val, align 1
  %25 = and i8 %24, -8
  %26 = or i8 %25, 4
  store i8 %26, ptr %val, align 1
  %call153 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 4193, i8 noundef zeroext %26)
  %call154 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %state, i16 noundef zeroext 4157, ptr noundef nonnull %val)
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %val, align 1
  %29 = and i8 %28, -49
  store i8 %29, ptr %val, align 1
  %call158 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 4157, i8 noundef zeroext %29)
  %call159 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 8482, i8 noundef zeroext 64)
  %call160 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %state, i16 noundef zeroext 8513, ptr noundef nonnull %val)
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %val, align 1
  %32 = and i8 %31, 63
  store i8 %32, ptr %val, align 1
  %call164 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 8513, i8 noundef zeroext %32)
  %call165 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %state, i16 noundef zeroext 8501, ptr noundef nonnull %val)
  %33 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %val, align 1
  %35 = and i8 %34, 15
  %36 = or i8 %35, 112
  store i8 %36, ptr %val, align 1
  %call172 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 8501, i8 noundef zeroext %36)
  %call173 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %state, i16 noundef zeroext 3, ptr noundef nonnull %val)
  %37 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %val, align 1
  %39 = and i8 %38, -9
  store i8 %39, ptr %val, align 1
  %call177 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 3, i8 noundef zeroext %39)
  %call178 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %state, i16 noundef zeroext 28, ptr noundef nonnull %val)
  %40 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %val, align 1
  %42 = and i8 %41, 127
  store i8 %42, ptr %val, align 1
  %call182 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 28, i8 noundef zeroext %42)
  %call183 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %state, i16 noundef zeroext 8569, ptr noundef nonnull %val)
  %43 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %val, align 1
  %45 = and i8 %44, -8
  store i8 %45, ptr %val, align 1
  %call187 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 8569, i8 noundef zeroext %45)
  %call188 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %state, i16 noundef zeroext 8570, ptr noundef nonnull %val)
  %46 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %val, align 1
  %48 = and i8 %47, -8
  store i8 %48, ptr %val, align 1
  %call192 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 8570, i8 noundef zeroext %48)
  %call193 = call fastcc i32 @lgdt3306a_soft_reset(ptr noundef %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %cmp195 = icmp slt i32 %call193, 0
  br i1 %cmp195, label %do.end201, label %do.body209.critedge

do.end201:                                        ; preds = %if.end117.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call203 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call193, i32 noundef 533) #11
  br label %fail

do.body209.critedge:                              ; preds = %if.end117.critedge
  %49 = load i32, ptr @debug, align 4
  %and210 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and210)
  %tobool211.not = icmp eq i32 %and210, 0
  br i1 %tobool211.not, label %do.body209.critedge.fail_crit_edge, label %do.end215

do.body209.critedge.fail_crit_edge:               ; preds = %do.body209.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

do.end215:                                        ; preds = %do.body209.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call217 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132) #11
  br label %fail

fail:                                             ; preds = %do.end215, %do.body209.critedge.fail_crit_edge, %do.end201, %do.end110, %do.end94, %do.end74, %do.end54, %do.end31, %do.end15
  %ret.0 = phi i32 [ 0, %do.end215 ], [ 0, %do.body209.critedge.fail_crit_edge ], [ %call9, %do.end15 ], [ %call23, %do.end31 ], [ %call46, %do.end54 ], [ %call66, %do.end74 ], [ %call86, %do.end94 ], [ %call102, %do.end110 ], [ %call193, %do.end201 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3306a_mpeg_mode(ptr nocapture noundef readonly %state, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !619
  %1 = load i32, ptr @debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %mode) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp = icmp eq i32 %mode, 0
  %cond = zext i1 %cmp to i32
  %call4 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %state, i16 noundef zeroext 113, i32 noundef 7, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end10, label %if.end17.critedge

do.end10:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call4, i32 noundef 233) #11
  br label %fail

if.end17.critedge:                                ; preds = %do.end3
  %call18 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %state, i16 noundef zeroext 113, i32 noundef 6, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp20 = icmp slt i32 %call18, 0
  br i1 %cmp20, label %do.end26, label %if.end33.critedge

do.end26:                                         ; preds = %if.end17.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call18, i32 noundef 241) #11
  br label %fail

if.end33.critedge:                                ; preds = %if.end17.critedge
  %call34 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %state, i16 noundef zeroext 112, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp36 = icmp slt i32 %call34, 0
  br i1 %cmp36, label %do.end42, label %if.end49.critedge

do.end42:                                         ; preds = %if.end33.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call34, i32 noundef 245) #11
  br label %fail

if.end49.critedge:                                ; preds = %if.end33.critedge
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %val, align 1
  %4 = and i8 %3, -17
  %masksel = select i1 %cmp, i8 0, i8 16
  %storemerge = or i8 %4, %masksel
  store i8 %storemerge, ptr %val, align 1
  %call59 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %state, i16 noundef zeroext 112, i8 noundef zeroext %storemerge)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp61 = icmp slt i32 %call59, 0
  br i1 %cmp61, label %do.end67, label %if.end49.critedge.fail_crit_edge

if.end49.critedge.fail_crit_edge:                 ; preds = %if.end49.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

do.end67:                                         ; preds = %if.end49.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call59, i32 noundef 254) #11
  br label %fail

fail:                                             ; preds = %do.end67, %if.end49.critedge.fail_crit_edge, %do.end42, %do.end26, %do.end10
  %ret.0 = phi i32 [ %call4, %do.end10 ], [ %call18, %do.end26 ], [ %call34, %do.end42 ], [ %call59, %do.end67 ], [ %call59, %if.end49.critedge.fail_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3306a_soft_reset(ptr nocapture noundef readonly %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %state, i16 noundef zeroext 0, i32 noundef 7, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end9, label %if.end16.critedge

do.end9:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call4, i32 noundef 212) #11
  br label %fail

if.end16.critedge:                                ; preds = %do.end3
  tail call void @msleep(i32 noundef 20) #8
  %call17 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %state, i16 noundef zeroext 0, i32 noundef 7, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp19 = icmp slt i32 %call17, 0
  br i1 %cmp19, label %do.end25, label %if.end16.critedge.fail_crit_edge

if.end16.critedge.fail_crit_edge:                 ; preds = %if.end16.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

do.end25:                                         ; preds = %if.end16.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call17, i32 noundef 217) #11
  br label %fail

fail:                                             ; preds = %do.end25, %if.end16.critedge.fail_crit_edge, %do.end9
  %ret.0 = phi i32 [ %call4, %do.end9 ], [ %call17, %do.end25 ], [ %call17, %if.end16.critedge.fail_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3306a_calculate_snr_x100(ptr nocapture noundef readonly %state) unnamed_addr #0 align 64 {
entry:
  %__val = alloca i8, align 1
  %__val8 = alloca i8, align 1
  %__val28 = alloca i8, align 1
  %__val49 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__val) #8
  %0 = ptrtoint ptr %__val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %__val, align 1, !annotation !619
  %call = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %state, i16 noundef zeroext 236, ptr noundef nonnull %__val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call, i32 noundef 1492) #11
  %1 = ptrtoint ptr %__val to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %__val, align 1
  br label %if.end5

if.end5:                                          ; preds = %do.end, %entry.if.end5_crit_edge
  %2 = ptrtoint ptr %__val to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %__val, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__val) #8
  %conv7 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv7, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__val8) #8
  %4 = ptrtoint ptr %__val8 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %__val8, align 1, !annotation !619
  %call10 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %state, i16 noundef zeroext 237, ptr noundef nonnull %__val8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp12 = icmp slt i32 %call10, 0
  br i1 %cmp12, label %do.end18, label %if.end5.if.end25_crit_edge

if.end5.if.end25_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

do.end18:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call10, i32 noundef 1493) #11
  %5 = ptrtoint ptr %__val8 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %__val8, align 1
  br label %if.end25

if.end25:                                         ; preds = %do.end18, %if.end5.if.end25_crit_edge
  %6 = ptrtoint ptr %__val8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %__val8, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__val8) #8
  %conv27 = zext i8 %7 to i32
  %or = or i32 %shl, %conv27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__val28) #8
  %8 = ptrtoint ptr %__val28 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %__val28, align 1, !annotation !619
  %call30 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %state, i16 noundef zeroext 232, ptr noundef nonnull %__val28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp32 = icmp slt i32 %call30, 0
  br i1 %cmp32, label %do.end38, label %if.end25.if.end45_crit_edge

if.end25.if.end45_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

do.end38:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call30, i32 noundef 1494) #11
  %9 = ptrtoint ptr %__val28 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %__val28, align 1
  br label %if.end45

if.end45:                                         ; preds = %do.end38, %if.end25.if.end45_crit_edge
  %10 = ptrtoint ptr %__val28 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %__val28, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__val28) #8
  %conv47 = zext i8 %11 to i32
  %shl48 = shl nuw nsw i32 %conv47, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__val49) #8
  %12 = ptrtoint ptr %__val49 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %__val49, align 1, !annotation !619
  %call51 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %state, i16 noundef zeroext 233, ptr noundef nonnull %__val49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp53 = icmp slt i32 %call51, 0
  br i1 %cmp53, label %do.end59, label %if.end45.if.end66_crit_edge

if.end45.if.end66_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

do.end59:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call51, i32 noundef 1495) #11
  %13 = ptrtoint ptr %__val49 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %__val49, align 1
  br label %if.end66

if.end66:                                         ; preds = %do.end59, %if.end45.if.end66_crit_edge
  %14 = ptrtoint ptr %__val49 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %__val49, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__val49) #8
  %conv68 = zext i8 %15 to i32
  %or69 = or i32 %shl48, %conv68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp70 = icmp eq i32 %or, 0
  br i1 %cmp70, label %if.end66.cleanup_crit_edge, label %if.end73

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end73:                                         ; preds = %if.end66
  %mul = mul nuw nsw i32 %or69, 10000
  %div = udiv i32 %mul, %or
  %16 = zext i32 %div to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.329)
  switch i32 %div, label %if.end3.i [
    i32 0, label %if.end73.log10_x1000.exit_crit_edge
    i32 10, label %if.then2.i
  ]

if.end73.log10_x1000.exit_crit_edge:              ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %log10_x1000.exit

if.then2.i:                                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %log10_x1000.exit

if.end3.i:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %div)
  %cmp4.i = icmp ult i32 %div, 10
  br i1 %cmp4.i, label %if.end3.i.while.body.i_crit_edge, label %while.cond7.preheader.i

if.end3.i.while.body.i_crit_edge:                 ; preds = %if.end3.i
  br label %while.body.i

while.cond7.preheader.i:                          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %div)
  %cmp874.i = icmp ugt i32 %div, 99
  br i1 %cmp874.i, label %while.cond7.preheader.i.while.body9.i_crit_edge, label %while.cond7.preheader.i.for.body.preheader.i_crit_edge

while.cond7.preheader.i.for.body.preheader.i_crit_edge: ; preds = %while.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader.i

while.cond7.preheader.i.while.body9.i_crit_edge:  ; preds = %while.cond7.preheader.i
  br label %while.body9.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end3.i.while.body.i_crit_edge
  %log_val.080.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end3.i.while.body.i_crit_edge ]
  %x.addr.079.i = phi i32 [ %mul.i, %while.body.i.while.body.i_crit_edge ], [ %div, %if.end3.i.while.body.i_crit_edge ]
  %mul.i = mul nuw nsw i32 %x.addr.079.i, 10
  %dec.i = add i32 %log_val.080.i, -1
  %cmp6.i = icmp ult i32 %mul.i, 10
  br i1 %cmp6.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.if.end11.i_crit_edge

while.body.i.if.end11.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body9.i:                                    ; preds = %while.body9.i.while.body9.i_crit_edge, %while.cond7.preheader.i.while.body9.i_crit_edge
  %log_val.176.i = phi i32 [ %inc.i, %while.body9.i.while.body9.i_crit_edge ], [ 0, %while.cond7.preheader.i.while.body9.i_crit_edge ]
  %x.addr.175.i = phi i32 [ %div.i, %while.body9.i.while.body9.i_crit_edge ], [ %div, %while.cond7.preheader.i.while.body9.i_crit_edge ]
  %div.i = udiv i32 %x.addr.175.i, 10
  %inc.i = add i32 %log_val.176.i, 1
  %cmp8.i = icmp ugt i32 %x.addr.175.i, 999
  br i1 %cmp8.i, label %while.body9.i.while.body9.i_crit_edge, label %while.body9.i.if.end11.i_crit_edge

while.body9.i.if.end11.i_crit_edge:               ; preds = %while.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

while.body9.i.while.body9.i_crit_edge:            ; preds = %while.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body9.i

if.end11.i:                                       ; preds = %while.body9.i.if.end11.i_crit_edge, %while.body.i.if.end11.i_crit_edge
  %x.addr.2.i = phi i32 [ %mul.i, %while.body.i.if.end11.i_crit_edge ], [ %div.i, %while.body9.i.if.end11.i_crit_edge ]
  %log_val.2.i = phi i32 [ %dec.i, %while.body.i.if.end11.i_crit_edge ], [ %inc.i, %while.body9.i.if.end11.i_crit_edge ]
  %mul12.i = mul i32 %log_val.2.i, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %x.addr.2.i)
  %cmp13.i = icmp eq i32 %x.addr.2.i, 10
  br i1 %cmp13.i, label %if.end11.i.log10_x1000.exit_crit_edge, label %if.end11.i.for.body.preheader.i_crit_edge

if.end11.i.for.body.preheader.i_crit_edge:        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader.i

if.end11.i.log10_x1000.exit_crit_edge:            ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %log10_x1000.exit

for.body.preheader.i:                             ; preds = %if.end11.i.for.body.preheader.i_crit_edge, %while.cond7.preheader.i.for.body.preheader.i_crit_edge
  %mul1291.i = phi i32 [ %mul12.i, %if.end11.i.for.body.preheader.i_crit_edge ], [ 0, %while.cond7.preheader.i.for.body.preheader.i_crit_edge ]
  %x.addr.290.i = phi i32 [ %x.addr.2.i, %if.end11.i.for.body.preheader.i_crit_edge ], [ %div, %while.cond7.preheader.i.for.body.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %x.addr.290.i)
  %cmp17.not.i = icmp ugt i32 %x.addr.290.i, 11
  br i1 %cmp17.not.i, label %for.inc.i, label %for.body.preheader.i.if.end24.i_crit_edge

for.body.preheader.i.if.end24.i_crit_edge:        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

for.inc.i:                                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %x.addr.290.i)
  %cmp17.not.1.i = icmp ugt i32 %x.addr.290.i, 13
  br i1 %cmp17.not.1.i, label %for.inc.1.i, label %for.inc.i.if.end24.i_crit_edge

for.inc.i.if.end24.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %x.addr.290.i)
  %cmp17.not.2.i = icmp ugt i32 %x.addr.290.i, 15
  br i1 %cmp17.not.2.i, label %for.inc.2.i, label %for.inc.1.i.if.end24.i_crit_edge

for.inc.1.i.if.end24.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %x.addr.290.i)
  %cmp17.not.3.i = icmp ugt i32 %x.addr.290.i, 17
  br i1 %cmp17.not.3.i, label %for.inc.3.i, label %for.inc.2.i.if.end24.i_crit_edge

for.inc.2.i.if.end24.i_crit_edge:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %x.addr.290.i)
  %cmp17.not.4.i = icmp ugt i32 %x.addr.290.i, 20
  br i1 %cmp17.not.4.i, label %for.inc.4.i, label %for.inc.3.i.if.end24.i_crit_edge

for.inc.3.i.if.end24.i_crit_edge:                 ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %x.addr.290.i)
  %cmp17.not.5.i = icmp ugt i32 %x.addr.290.i, 25
  br i1 %cmp17.not.5.i, label %for.inc.5.i, label %for.inc.4.i.if.end24.i_crit_edge

for.inc.4.i.if.end24.i_crit_edge:                 ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %x.addr.290.i)
  %cmp17.not.6.i = icmp ugt i32 %x.addr.290.i, 33
  br i1 %cmp17.not.6.i, label %for.inc.6.i, label %for.inc.5.i.if.end24.i_crit_edge

for.inc.5.i.if.end24.i_crit_edge:                 ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %x.addr.290.i)
  %cmp17.not.7.i = icmp ugt i32 %x.addr.290.i, 41
  br i1 %cmp17.not.7.i, label %for.inc.7.i, label %for.inc.6.i.if.end24.i_crit_edge

for.inc.6.i.if.end24.i_crit_edge:                 ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %x.addr.290.i)
  %cmp17.not.8.i = icmp ugt i32 %x.addr.290.i, 50
  br i1 %cmp17.not.8.i, label %for.inc.8.i, label %for.inc.7.i.if.end24.i_crit_edge

for.inc.7.i.if.end24.i_crit_edge:                 ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

for.inc.8.i:                                      ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %x.addr.290.i)
  %cmp17.not.9.i = icmp ugt i32 %x.addr.290.i, 59
  br i1 %cmp17.not.9.i, label %for.inc.9.i, label %for.inc.8.i.if.end24.i_crit_edge

for.inc.8.i.if.end24.i_crit_edge:                 ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

for.inc.9.i:                                      ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 73, i32 %x.addr.290.i)
  %cmp17.not.10.i = icmp ugt i32 %x.addr.290.i, 73
  br i1 %cmp17.not.10.i, label %for.inc.10.i, label %for.inc.9.i.if.end24.i_crit_edge

for.inc.9.i.if.end24.i_crit_edge:                 ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

for.inc.10.i:                                     ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 87, i32 %x.addr.290.i)
  %cmp17.not.11.i = icmp ugt i32 %x.addr.290.i, 87
  br i1 %cmp17.not.11.i, label %for.inc.11.i, label %for.inc.10.i.if.end24.i_crit_edge

for.inc.10.i.if.end24.i_crit_edge:                ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

for.inc.11.i:                                     ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %x.addr.290.i)
  %cmp17.not.12.i = icmp ugt i32 %x.addr.290.i, 100
  br i1 %cmp17.not.12.i, label %if.then22.i, label %for.inc.11.i.if.end24.i_crit_edge

for.inc.11.i.if.end24.i_crit_edge:                ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.then22.i:                                      ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add i32 %mul1291.i, 1000
  br label %log10_x1000.exit

if.end24.i:                                       ; preds = %for.inc.11.i.if.end24.i_crit_edge, %for.inc.10.i.if.end24.i_crit_edge, %for.inc.9.i.if.end24.i_crit_edge, %for.inc.8.i.if.end24.i_crit_edge, %for.inc.7.i.if.end24.i_crit_edge, %for.inc.6.i.if.end24.i_crit_edge, %for.inc.5.i.if.end24.i_crit_edge, %for.inc.4.i.if.end24.i_crit_edge, %for.inc.3.i.if.end24.i_crit_edge, %for.inc.2.i.if.end24.i_crit_edge, %for.inc.1.i.if.end24.i_crit_edge, %for.inc.i.if.end24.i_crit_edge, %for.body.preheader.i.if.end24.i_crit_edge
  %i.083.lcssa.i = phi i32 [ 1, %for.body.preheader.i.if.end24.i_crit_edge ], [ 2, %for.inc.i.if.end24.i_crit_edge ], [ 3, %for.inc.1.i.if.end24.i_crit_edge ], [ 4, %for.inc.2.i.if.end24.i_crit_edge ], [ 5, %for.inc.3.i.if.end24.i_crit_edge ], [ 6, %for.inc.4.i.if.end24.i_crit_edge ], [ 7, %for.inc.5.i.if.end24.i_crit_edge ], [ 8, %for.inc.6.i.if.end24.i_crit_edge ], [ 9, %for.inc.7.i.if.end24.i_crit_edge ], [ 10, %for.inc.8.i.if.end24.i_crit_edge ], [ 11, %for.inc.9.i.if.end24.i_crit_edge ], [ 12, %for.inc.10.i.if.end24.i_crit_edge ], [ 13, %for.inc.11.i.if.end24.i_crit_edge ]
  %sub25.i = add nsw i32 %i.083.lcssa.i, -1
  %arrayidx26.i = getelementptr [14 x i32], ptr @valx_x10, i32 0, i32 %sub25.i
  %17 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx26.i, align 4
  %sub27.i = sub i32 %x.addr.290.i, %18
  %arrayidx28.i = getelementptr [14 x i32], ptr @valx_x10, i32 0, i32 %i.083.lcssa.i
  %19 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx28.i, align 4
  %sub31.i = sub i32 %20, %18
  %arrayidx32.i = getelementptr [14 x i32], ptr @log10x_x1000, i32 0, i32 %i.083.lcssa.i
  %21 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx32.i, align 4
  %arrayidx34.i = getelementptr [14 x i32], ptr @log10x_x1000, i32 0, i32 %sub25.i
  %23 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx34.i, align 4
  %sub35.i = sub i32 %22, %24
  %add38.i = add i32 %24, %mul1291.i
  %mul39.i = mul i32 %sub35.i, %sub27.i
  %div40.i = udiv i32 %mul39.i, %sub31.i
  %add41.i = add i32 %add38.i, %div40.i
  br label %log10_x1000.exit

log10_x1000.exit:                                 ; preds = %if.end24.i, %if.then22.i, %if.end11.i.log10_x1000.exit_crit_edge, %if.then2.i, %if.end73.log10_x1000.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then2.i ], [ %add.i, %if.then22.i ], [ %add41.i, %if.end24.i ], [ -1000000, %if.end73.log10_x1000.exit_crit_edge ], [ %mul12.i, %if.end11.i.log10_x1000.exit_crit_edge ]
  %sub = add i32 %retval.0.i, -3000
  %25 = load i32, ptr @debug, align 4
  %and = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool76.not = icmp eq i32 %and, 0
  br i1 %tobool76.not, label %log10_x1000.exit.cleanup_crit_edge, label %do.end80

log10_x1000.exit.cleanup_crit_edge:               ; preds = %log10_x1000.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end80:                                         ; preds = %log10_x1000.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.286, i32 noundef %or, i32 noundef %or69, i32 noundef %sub) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end80, %log10_x1000.exit.cleanup_crit_edge, %if.end66.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end66.cleanup_crit_edge ], [ %sub, %do.end80 ], [ %sub, %log10_x1000.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3306a_check_lock_status(ptr nocapture noundef readonly %state, i32 noundef %whatLock) unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %val, align 1
  %1 = zext i32 %whatLock to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.330)
  switch i32 %whatLock, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb68
  ]

sw.bb:                                            ; preds = %entry
  %call = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %state, i16 noundef zeroext 166, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %val, align 1
  %.lobit133 = lshr i8 %3, 7
  %4 = zext i8 %.lobit133 to i32
  %5 = load i32, ptr @debug, align 4
  %and4 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.240, i32 noundef %4) #11
  br label %cleanup

sw.bb68:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %val.i, align 1
  %call.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %state, i16 noundef zeroext 129, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb68.cleanup.sink.split.i_crit_edge

sw.bb68.cleanup.sink.split.i_crit_edge:           ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %sw.bb68
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val.i, align 1
  %conv.i = zext i8 %8 to i32
  %and.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end11.i, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  %9 = load i32, ptr @debug, align 4
  %and3.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %lgdt3306a_check_oper_mode.exit.thread, label %do.body.i.cleanup.sink.split.i_crit_edge

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

lgdt3306a_check_oper_mode.exit.thread:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  br label %do.body89

if.end11.i:                                       ; preds = %if.end.i
  %and13.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end11.i.cleanup.sink.split.i_crit_edge, label %if.then15.i

if.end11.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.then15.i:                                      ; preds = %if.end11.i
  %call16.i = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %state, i16 noundef zeroext 166, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.then15.i.cleanup.sink.split.i_crit_edge

if.then15.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end19.i:                                       ; preds = %if.then15.i
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val.i, align 1
  %12 = lshr i8 %11, 2
  store i8 %12, ptr %val.i, align 1
  %13 = and i8 %11, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool24.not.i = icmp eq i8 %13, 0
  %14 = load i32, ptr @debug, align 4
  %and40.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  %..i = select i1 %tobool24.not.i, i32 1, i32 2
  %.str.260..str.257.i = select i1 %tobool24.not.i, ptr @.str.260, ptr @.str.257
  br i1 %tobool41.not.i, label %if.end19.i.lgdt3306a_check_oper_mode.exit_crit_edge, label %if.end19.i.cleanup.sink.split.i_crit_edge

if.end19.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end19.i.lgdt3306a_check_oper_mode.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_check_oper_mode.exit

cleanup.sink.split.i:                             ; preds = %if.end19.i.cleanup.sink.split.i_crit_edge, %if.then15.i.cleanup.sink.split.i_crit_edge, %if.end11.i.cleanup.sink.split.i_crit_edge, %do.body.i.cleanup.sink.split.i_crit_edge, %sw.bb68.cleanup.sink.split.i_crit_edge
  %.str.260.sink.i = phi ptr [ @.str.254, %do.body.i.cleanup.sink.split.i_crit_edge ], [ @.str.263, %sw.bb68.cleanup.sink.split.i_crit_edge ], [ @.str.263, %if.then15.i.cleanup.sink.split.i_crit_edge ], [ @.str.263, %if.end11.i.cleanup.sink.split.i_crit_edge ], [ %.str.260..str.257.i, %if.end19.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ 0, %do.body.i.cleanup.sink.split.i_crit_edge ], [ 255, %sw.bb68.cleanup.sink.split.i_crit_edge ], [ 255, %if.then15.i.cleanup.sink.split.i_crit_edge ], [ 255, %if.end11.i.cleanup.sink.split.i_crit_edge ], [ %..i, %if.end19.i.cleanup.sink.split.i_crit_edge ]
  %call47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.260.sink.i) #11
  br label %lgdt3306a_check_oper_mode.exit

lgdt3306a_check_oper_mode.exit:                   ; preds = %cleanup.sink.split.i, %if.end19.i.lgdt3306a_check_oper_mode.exit_crit_edge
  %retval.0.i = phi i32 [ %retval.0.ph.i, %cleanup.sink.split.i ], [ %..i, %if.end19.i.lgdt3306a_check_oper_mode.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  %call69.off = add nsw i32 %retval.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call69.off)
  %switch = icmp ult i32 %call69.off, 2
  br i1 %switch, label %if.then75, label %lgdt3306a_check_oper_mode.exit.do.body89_crit_edge

lgdt3306a_check_oper_mode.exit.do.body89_crit_edge: ; preds = %lgdt3306a_check_oper_mode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body89

if.then75:                                        ; preds = %lgdt3306a_check_oper_mode.exit
  %call76 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %state, i16 noundef zeroext 128, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.then75.cleanup_crit_edge

if.then75.cleanup_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end79:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %val, align 1
  %17 = lshr i8 %16, 4
  %.lobit = and i8 %17, 1
  %18 = zext i8 %.lobit to i32
  br label %do.body89

do.body89:                                        ; preds = %if.end79, %lgdt3306a_check_oper_mode.exit.do.body89_crit_edge, %lgdt3306a_check_oper_mode.exit.thread
  %lockStatus.3 = phi i32 [ %18, %if.end79 ], [ 255, %lgdt3306a_check_oper_mode.exit.do.body89_crit_edge ], [ 255, %lgdt3306a_check_oper_mode.exit.thread ]
  %19 = load i32, ptr @debug, align 4
  %and90 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %do.body89.cleanup_crit_edge, label %do.end95

do.body89.cleanup_crit_edge:                      ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end95:                                         ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #10
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.249, i32 noundef %lockStatus.3) #11
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.252, i32 noundef %whatLock) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %do.end95, %do.body89.cleanup_crit_edge, %if.then75.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb.cleanup_crit_edge ], [ %call76, %if.then75.cleanup_crit_edge ], [ 255, %sw.default ], [ %lockStatus.3, %do.end95 ], [ %lockStatus.3, %do.body89.cleanup_crit_edge ], [ %4, %do.end ], [ %4, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3306a_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %call = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 32, i32 noundef 3264) #8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.do.end26_crit_edge, label %if.end

entry.do.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end26

if.end:                                           ; preds = %entry
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr, align 2
  %conv = trunc i16 %3 to i8
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %call, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 8
  %call1 = tail call ptr @lgdt3306a_attach(ptr noundef nonnull %call, ptr noundef %6)
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.end.err_fe_crit_edge, label %if.end5

if.end.err_fe_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_fe

if.end5:                                          ; preds = %if.end
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %call1, i32 0, i32 3
  %7 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %demodulator_priv, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %driver_data.i.i, align 4
  %10 = load ptr, ptr %demodulator_priv, align 4
  %release = getelementptr inbounds %struct.lgdt3306a_state, ptr %10, i32 0, i32 2, i32 1, i32 3
  %11 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %release, align 4
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %call9 = tail call ptr @i2c_mux_alloc(ptr noundef %13, ptr noundef %dev, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @lgdt3306a_select, ptr noundef nonnull @lgdt3306a_deselect) #8
  %muxc = getelementptr inbounds %struct.lgdt3306a_state, ptr %10, i32 0, i32 6
  %14 = ptrtoint ptr %muxc to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9, ptr %muxc, align 4
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %if.end5.err_kfree_crit_edge, label %if.end12

if.end5.err_kfree_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_kfree

if.end12:                                         ; preds = %if.end5
  %priv = getelementptr inbounds %struct.i2c_mux_core, ptr %call9, i32 0, i32 3
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %client, ptr %priv, align 4
  %16 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %muxc, align 4
  %call15 = tail call i32 @i2c_mux_add_adapter(ptr noundef %17, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end12.err_kfree_crit_edge

if.end12.err_kfree_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_kfree

if.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %call1, i32 0, i32 1, i32 28
  %18 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %i2c_gate_ctrl, align 4
  %19 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %muxc, align 4
  %adapter21 = getelementptr inbounds %struct.i2c_mux_core, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %adapter21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter21, align 4
  %i2c_adapter = getelementptr inbounds %struct.lgdt3306a_config, ptr %call, i32 0, i32 9
  %23 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_adapter, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %24, align 4
  %fe22 = getelementptr inbounds %struct.lgdt3306a_config, ptr %call, i32 0, i32 8
  %26 = ptrtoint ptr %fe22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fe22, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call1, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.316) #11
  br label %cleanup

err_kfree:                                        ; preds = %if.end12.err_kfree_crit_edge, %if.end5.err_kfree_crit_edge
  %ret.0 = phi i32 [ %call15, %if.end12.err_kfree_crit_edge ], [ -12, %if.end5.err_kfree_crit_edge ]
  tail call void @kfree(ptr noundef %10) #8
  br label %err_fe

err_fe:                                           ; preds = %err_kfree, %if.end.err_fe_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_kfree ], [ -19, %if.end.err_fe_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %do.end26

do.end26:                                         ; preds = %err_fe, %entry.do.end26_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_fe ], [ -12, %entry.do.end26_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.321, i32 noundef %ret.2) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.end18
  %retval.0 = phi i32 [ %ret.2, %do.end26 ], [ 0, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3306a_remove(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %muxc = getelementptr inbounds %struct.lgdt3306a_state, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %muxc, align 4
  tail call void @i2c_mux_del_adapters(ptr noundef %3) #8
  %release = getelementptr inbounds %struct.lgdt3306a_state, ptr %1, i32 0, i32 2, i32 1, i32 3
  %4 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %release, align 4
  %demodulator_priv = getelementptr inbounds %struct.lgdt3306a_state, ptr %1, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %demodulator_priv, align 4
  %cfg = getelementptr inbounds %struct.lgdt3306a_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg, align 4
  tail call void @kfree(ptr noundef %7) #8
  tail call void @kfree(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_mux_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3306a_select(ptr nocapture noundef readonly %muxc, i32 noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %demodulator_priv.i = getelementptr inbounds %struct.lgdt3306a_state, ptr %3, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %demodulator_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %demodulator_priv.i, align 4
  %cfg.i = getelementptr inbounds %struct.lgdt3306a_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 4
  %deny_i2c_rptr.i = getelementptr inbounds %struct.lgdt3306a_config, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %deny_i2c_rptr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %deny_i2c_rptr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  %9 = load i32, ptr @debug, align 4
  %and13.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool.not.i, label %do.body12.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  br i1 %tobool14.not.i, label %do.body.i.lgdt3306a_i2c_gate_ctrl.exit_crit_edge, label %do.end.i

do.body.i.lgdt3306a_i2c_gate_ctrl.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_i2c_gate_ctrl.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.308, i32 noundef 1) #11
  br label %lgdt3306a_i2c_gate_ctrl.exit

do.body12.i:                                      ; preds = %entry
  br i1 %tobool14.not.i, label %do.body12.i.do.end23.i_crit_edge, label %do.end18.i

do.body12.i.do.end23.i_crit_edge:                 ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23.i

do.end18.i:                                       ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef 1) #11
  br label %do.end23.i

do.end23.i:                                       ; preds = %do.end18.i, %do.body12.i.do.end23.i_crit_edge
  %call25.i = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %5, i16 noundef zeroext 2, i32 noundef 7, i32 noundef 0) #8
  br label %lgdt3306a_i2c_gate_ctrl.exit

lgdt3306a_i2c_gate_ctrl.exit:                     ; preds = %do.end23.i, %do.end.i, %do.body.i.lgdt3306a_i2c_gate_ctrl.exit_crit_edge
  %retval.0.i = phi i32 [ %call25.i, %do.end23.i ], [ 0, %do.end.i ], [ 0, %do.body.i.lgdt3306a_i2c_gate_ctrl.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3306a_deselect(ptr nocapture noundef readonly %muxc, i32 noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %demodulator_priv.i = getelementptr inbounds %struct.lgdt3306a_state, ptr %3, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %demodulator_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %demodulator_priv.i, align 4
  %cfg.i = getelementptr inbounds %struct.lgdt3306a_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 4
  %deny_i2c_rptr.i = getelementptr inbounds %struct.lgdt3306a_config, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %deny_i2c_rptr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %deny_i2c_rptr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  %9 = load i32, ptr @debug, align 4
  %and13.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool.not.i, label %do.body12.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  br i1 %tobool14.not.i, label %do.body.i.lgdt3306a_i2c_gate_ctrl.exit_crit_edge, label %do.end.i

do.body.i.lgdt3306a_i2c_gate_ctrl.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3306a_i2c_gate_ctrl.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.308, i32 noundef 1) #11
  br label %lgdt3306a_i2c_gate_ctrl.exit

do.body12.i:                                      ; preds = %entry
  br i1 %tobool14.not.i, label %do.body12.i.do.end23.i_crit_edge, label %do.end18.i

do.body12.i.do.end23.i_crit_edge:                 ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23.i

do.end18.i:                                       ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef 0) #11
  br label %do.end23.i

do.end23.i:                                       ; preds = %do.end18.i, %do.body12.i.do.end23.i_crit_edge
  %call25.i = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %5, i16 noundef zeroext 2, i32 noundef 7, i32 noundef 1) #8
  br label %lgdt3306a_i2c_gate_ctrl.exit

lgdt3306a_i2c_gate_ctrl.exit:                     ; preds = %do.end23.i, %do.end.i, %do.body.i.lgdt3306a_i2c_gate_ctrl.exit_crit_edge
  %retval.0.i = phi i32 [ %call25.i, %do.end23.i ], [ 0, %do.end.i ], [ 0, %do.body.i.lgdt3306a_i2c_gate_ctrl.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_mux_add_adapter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_mux_del_adapters(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 267)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 267)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !49, !51, !53, !54, !56, !57, !58, !59, !60, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !85, !86, !88, !89, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !124, !125, !127, !128, !130, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !148, !149, !150, !152, !153, !154, !156, !158, !160, !162, !163, !164, !166, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !215, !216, !218, !219, !221, !222, !223, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !243, !244, !246, !247, !249, !250, !252, !253, !255, !256, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !272, !273, !275, !276, !277, !279, !280, !282, !283, !285, !286, !288, !289, !291, !292, !293, !294, !296, !297, !298, !299, !301, !302, !303, !305, !306, !308, !309, !311, !312, !314, !315, !317, !318, !320, !321, !323, !324, !326, !327, !329, !330, !331, !333, !334, !336, !337, !338, !339, !341, !342, !344, !345, !347, !348, !350, !351, !353, !354, !356, !357, !359, !360, !362, !363, !365, !366, !368, !369, !371, !372, !374, !375, !377, !378, !379, !381, !382, !383, !384, !386, !387, !388, !390, !391, !392, !393, !395, !396, !398, !399, !401, !402, !403, !405, !406, !407, !408, !410, !411, !412, !413, !415, !416, !417, !419, !420, !421, !422, !424, !425, !426, !428, !429, !430, !431, !433, !434, !435, !436, !438, !439, !440, !442, !443, !444, !446, !447, !448, !449, !451, !452, !453, !455, !456, !457, !458, !460, !461, !462, !464, !465, !466, !468, !469, !470, !472, !473, !474, !476, !477, !478, !479, !481, !482, !483, !485, !486, !487, !489, !490, !491, !493, !494, !495, !496, !498, !499, !501, !502, !504, !505, !506, !508, !509, !511, !512, !513, !514, !516, !517, !518, !519, !521, !522, !523, !525, !526, !528, !529, !531, !532, !534, !535, !536, !538, !540, !542, !543, !544, !546, !547, !549, !550, !552, !553, !555, !556, !557, !559, !560, !561, !563, !564, !566, !567, !568, !570, !571, !572, !574, !575, !576, !578, !579, !580, !581, !583, !584, !586, !587, !588, !589, !591, !592, !593, !594, !596, !598, !599, !600, !601, !602, !603, !605, !606, !607, !608}
!llvm.module.flags = !{!610, !611, !612, !613, !614, !615, !616, !617}
!llvm.ident = !{!618}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 22, i32 1}
!5 = !{ptr @__param_forced_manual, !6, !"__param_forced_manual", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 32, i32 1}
!7 = !{ptr @__UNIQUE_ID_forced_manualtype292, !6, !"__UNIQUE_ID_forced_manualtype292", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_forced_manual293, !9, !"__UNIQUE_ID_forced_manual293", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 33, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1801, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @lgdt3306a_attach._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @lgdt3306a_attach._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1820, i32 6}
!18 = !{ptr @lgdt3306a_attach._entry.3, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @lgdt3306a_attach._entry_ptr.5, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1823, i32 3}
!22 = !{ptr @lgdt3306a_attach._entry.6, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @lgdt3306a_attach._entry_ptr.8, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @lgdt3306a_attach._entry.9, !25, !"_entry", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1830, i32 6}
!26 = !{ptr @lgdt3306a_attach._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1833, i32 3}
!29 = !{ptr @lgdt3306a_attach._entry.11, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @lgdt3306a_attach._entry_ptr.13, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @lgdt3306a_attach._entry.14, !32, !"_entry", i1 false, i1 false}
!32 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1840, i32 6}
!33 = !{ptr @lgdt3306a_attach._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1843, i32 3}
!36 = !{ptr @lgdt3306a_attach._entry.16, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @lgdt3306a_attach._entry_ptr.18, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1858, i32 2}
!40 = !{ptr @lgdt3306a_attach._entry.19, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @lgdt3306a_attach._entry_ptr.21, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @__ksymtab_lgdt3306a_attach, !43, !"__ksymtab_lgdt3306a_attach", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1862, i32 1}
!44 = !{ptr @__initcall__kmod_lgdt3306a__294_2260_lgdt3306a_driver_init6, !45, !"__initcall__kmod_lgdt3306a__294_2260_lgdt3306a_driver_init6", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 2260, i32 1}
!46 = !{ptr @__exitcall_lgdt3306a_driver_exit, !45, !"__exitcall_lgdt3306a_driver_exit", i1 false, i1 false}
!47 = !{ptr @__UNIQUE_ID_description295, !48, !"__UNIQUE_ID_description295", i1 false, i1 false}
!48 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 2262, i32 1}
!49 = !{ptr @__UNIQUE_ID_author296, !50, !"__UNIQUE_ID_author296", i1 false, i1 false}
!50 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 2263, i32 1}
!51 = !{ptr @__UNIQUE_ID_file297, !52, !"__UNIQUE_ID_file297", i1 false, i1 false}
!52 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 2264, i32 1}
!53 = !{ptr @__UNIQUE_ID_license298, !52, !"__UNIQUE_ID_license298", i1 false, i1 false}
!54 = !{ptr @__UNIQUE_ID_version299, !55, !"__UNIQUE_ID_version299", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 2265, i32 1}
!56 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @__modver_attr, !55, !"__modver_attr", i1 false, i1 false}
!60 = !{ptr @debug, !61, !"debug", i1 false, i1 false}
!61 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 20, i32 12}
!62 = !{ptr @forced_manual, !63, !"forced_manual", i1 false, i1 false}
!63 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 31, i32 12}
!64 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!65 = !{ptr @__param_str_forced_manual, !6, !"__param_str_forced_manual", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 161, i32 3}
!68 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @lgdt3306a_read_reg._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @lgdt3306a_read_reg._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 168, i32 2}
!73 = !{ptr @lgdt3306a_read_reg._entry.27, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @lgdt3306a_read_reg._entry_ptr.29, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 792, i32 2}
!77 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @lgdt3306a_sleep._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @lgdt3306a_sleep._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @lgdt3306a_sleep._entry.32, !81, !"_entry", i1 false, i1 false}
!81 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 796, i32 6}
!82 = !{ptr @lgdt3306a_sleep._entry_ptr.33, !81, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @lgdt3306a_sleep._entry.34, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 800, i32 2}
!85 = !{ptr @lgdt3306a_sleep._entry_ptr.35, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 293, i32 2}
!88 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @lgdt3306a_mpeg_tristate._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @lgdt3306a_mpeg_tristate._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @lgdt3306a_mpeg_tristate._entry.38, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 297, i32 7}
!93 = !{ptr @lgdt3306a_mpeg_tristate._entry_ptr.39, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @lgdt3306a_mpeg_tristate._entry.40, !95, !"_entry", i1 false, i1 false}
!95 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 305, i32 7}
!96 = !{ptr @lgdt3306a_mpeg_tristate._entry_ptr.41, !95, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @lgdt3306a_mpeg_tristate._entry.42, !98, !"_entry", i1 false, i1 false}
!98 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 310, i32 7}
!99 = !{ptr @lgdt3306a_mpeg_tristate._entry_ptr.43, !98, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @lgdt3306a_mpeg_tristate._entry.44, !101, !"_entry", i1 false, i1 false}
!101 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 316, i32 7}
!102 = !{ptr @lgdt3306a_mpeg_tristate._entry_ptr.45, !101, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @lgdt3306a_mpeg_tristate._entry.46, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 320, i32 7}
!105 = !{ptr @lgdt3306a_mpeg_tristate._entry_ptr.47, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @lgdt3306a_mpeg_tristate._entry.48, !107, !"_entry", i1 false, i1 false}
!107 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 325, i32 7}
!108 = !{ptr @lgdt3306a_mpeg_tristate._entry_ptr.49, !107, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 132, i32 2}
!111 = !{ptr @lgdt3306a_write_reg._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @lgdt3306a_write_reg._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 137, i32 3}
!115 = !{ptr @lgdt3306a_write_reg._entry.51, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @lgdt3306a_write_reg._entry_ptr.53, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 188, i32 2}
!119 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @lgdt3306a_set_reg_bit._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @lgdt3306a_set_reg_bit._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @lgdt3306a_set_reg_bit._entry.56, !123, !"_entry", i1 false, i1 false}
!123 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 191, i32 6}
!124 = !{ptr @lgdt3306a_set_reg_bit._entry_ptr.57, !123, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @lgdt3306a_set_reg_bit._entry.58, !126, !"_entry", i1 false, i1 false}
!126 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 198, i32 2}
!127 = !{ptr @lgdt3306a_set_reg_bit._entry_ptr.59, !126, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 348, i32 2}
!130 = !{ptr @lgdt3306a_power._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @lgdt3306a_power._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @lgdt3306a_power._entry.61, !133, !"_entry", i1 false, i1 false}
!133 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 353, i32 7}
!134 = !{ptr @lgdt3306a_power._entry_ptr.62, !133, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @lgdt3306a_power._entry.63, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 358, i32 7}
!137 = !{ptr @lgdt3306a_power._entry_ptr.64, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @lgdt3306a_power._entry.65, !139, !"_entry", i1 false, i1 false}
!139 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 364, i32 7}
!140 = !{ptr @lgdt3306a_power._entry_ptr.66, !139, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @lgdt3306a_power._entry.67, !142, !"_entry", i1 false, i1 false}
!142 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 369, i32 7}
!143 = !{ptr @lgdt3306a_power._entry_ptr.68, !142, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @regval2, !145, !"regval2", i1 false, i1 false}
!145 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 2096, i32 11}
!146 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 2113, i32 2}
!148 = !{ptr @lgdt3306a_DumpRegs._entry, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @lgdt3306a_DumpRegs._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 2118, i32 4}
!152 = !{ptr @lgdt3306a_DumpRegs._entry.70, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @lgdt3306a_DumpRegs._entry_ptr.72, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @regtab, !155, !"regtab", i1 false, i1 false}
!155 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1866, i32 20}
!156 = !{ptr @regval1, !157, !"regval1", i1 false, i1 false}
!157 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 2095, i32 11}
!158 = !{ptr @lgdt3306a_ops, !159, !"lgdt3306a_ops", i1 false, i1 false}
!159 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 2128, i32 38}
!160 = !{ptr @.str.73, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1788, i32 2}
!162 = !{ptr @lgdt3306a_release._entry, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @lgdt3306a_release._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.74, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 820, i32 2}
!166 = !{ptr @lgdt3306a_init._entry, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @lgdt3306a_init._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @lgdt3306a_init._entry.75, !169, !"_entry", i1 false, i1 false}
!169 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 824, i32 6}
!170 = !{ptr @lgdt3306a_init._entry_ptr.76, !169, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @lgdt3306a_init._entry.77, !172, !"_entry", i1 false, i1 false}
!172 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 829, i32 6}
!173 = !{ptr @lgdt3306a_init._entry_ptr.78, !172, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @lgdt3306a_init._entry.79, !175, !"_entry", i1 false, i1 false}
!175 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 834, i32 6}
!176 = !{ptr @lgdt3306a_init._entry_ptr.80, !175, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @lgdt3306a_init._entry.81, !178, !"_entry", i1 false, i1 false}
!178 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 841, i32 6}
!179 = !{ptr @lgdt3306a_init._entry_ptr.82, !178, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @lgdt3306a_init._entry.83, !181, !"_entry", i1 false, i1 false}
!181 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 848, i32 6}
!182 = !{ptr @lgdt3306a_init._entry_ptr.84, !181, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @lgdt3306a_init._entry.85, !184, !"_entry", i1 false, i1 false}
!184 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 855, i32 6}
!185 = !{ptr @lgdt3306a_init._entry_ptr.86, !184, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @lgdt3306a_init._entry.87, !187, !"_entry", i1 false, i1 false}
!187 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 862, i32 6}
!188 = !{ptr @lgdt3306a_init._entry_ptr.88, !187, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @lgdt3306a_init._entry.89, !190, !"_entry", i1 false, i1 false}
!190 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 868, i32 7}
!191 = !{ptr @lgdt3306a_init._entry_ptr.90, !190, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @lgdt3306a_init._entry.91, !193, !"_entry", i1 false, i1 false}
!193 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 873, i32 7}
!194 = !{ptr @lgdt3306a_init._entry_ptr.92, !193, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @lgdt3306a_init._entry.93, !196, !"_entry", i1 false, i1 false}
!196 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 876, i32 7}
!197 = !{ptr @lgdt3306a_init._entry_ptr.94, !196, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @lgdt3306a_init._entry.95, !199, !"_entry", i1 false, i1 false}
!199 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 881, i32 7}
!200 = !{ptr @lgdt3306a_init._entry_ptr.96, !199, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @lgdt3306a_init._entry.97, !202, !"_entry", i1 false, i1 false}
!202 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 886, i32 7}
!203 = !{ptr @lgdt3306a_init._entry_ptr.98, !202, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @lgdt3306a_init._entry.99, !205, !"_entry", i1 false, i1 false}
!205 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 892, i32 7}
!206 = !{ptr @lgdt3306a_init._entry_ptr.100, !205, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @lgdt3306a_init._entry.101, !208, !"_entry", i1 false, i1 false}
!208 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 897, i32 7}
!209 = !{ptr @lgdt3306a_init._entry_ptr.102, !208, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @lgdt3306a_init._entry.103, !211, !"_entry", i1 false, i1 false}
!211 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 900, i32 7}
!212 = !{ptr @lgdt3306a_init._entry_ptr.104, !211, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @lgdt3306a_init._entry.105, !214, !"_entry", i1 false, i1 false}
!214 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 905, i32 7}
!215 = !{ptr @lgdt3306a_init._entry_ptr.106, !214, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @lgdt3306a_init._entry.107, !217, !"_entry", i1 false, i1 false}
!217 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 910, i32 7}
!218 = !{ptr @lgdt3306a_init._entry_ptr.108, !217, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.110, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 913, i32 3}
!221 = !{ptr @lgdt3306a_init._entry.109, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @lgdt3306a_init._entry_ptr.111, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @lgdt3306a_init._entry.112, !224, !"_entry", i1 false, i1 false}
!224 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 966, i32 2}
!225 = !{ptr @lgdt3306a_init._entry_ptr.113, !224, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.114, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 707, i32 2}
!228 = !{ptr @lgdt3306a_set_inversion_auto._entry, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @lgdt3306a_set_inversion_auto._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.115, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 696, i32 2}
!232 = !{ptr @lgdt3306a_set_inversion._entry, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @lgdt3306a_set_inversion._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.116, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 386, i32 2}
!236 = !{ptr @lgdt3306a_set_vsb._entry, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @lgdt3306a_set_vsb._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @lgdt3306a_set_vsb._entry.117, !239, !"_entry", i1 false, i1 false}
!239 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 393, i32 6}
!240 = !{ptr @lgdt3306a_set_vsb._entry_ptr.118, !239, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @lgdt3306a_set_vsb._entry.119, !242, !"_entry", i1 false, i1 false}
!242 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 398, i32 6}
!243 = !{ptr @lgdt3306a_set_vsb._entry_ptr.120, !242, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @lgdt3306a_set_vsb._entry.121, !245, !"_entry", i1 false, i1 false}
!245 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 406, i32 6}
!246 = !{ptr @lgdt3306a_set_vsb._entry_ptr.122, !245, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @lgdt3306a_set_vsb._entry.123, !248, !"_entry", i1 false, i1 false}
!248 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 413, i32 6}
!249 = !{ptr @lgdt3306a_set_vsb._entry_ptr.124, !248, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @lgdt3306a_set_vsb._entry.125, !251, !"_entry", i1 false, i1 false}
!251 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 420, i32 6}
!252 = !{ptr @lgdt3306a_set_vsb._entry_ptr.126, !251, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @lgdt3306a_set_vsb._entry.127, !254, !"_entry", i1 false, i1 false}
!254 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 455, i32 6}
!255 = !{ptr @lgdt3306a_set_vsb._entry_ptr.128, !254, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @lgdt3306a_set_vsb._entry.129, !257, !"_entry", i1 false, i1 false}
!257 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 533, i32 6}
!258 = !{ptr @lgdt3306a_set_vsb._entry_ptr.130, !257, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.132, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 536, i32 2}
!261 = !{ptr @lgdt3306a_set_vsb._entry.131, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @lgdt3306a_set_vsb._entry_ptr.133, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.134, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 209, i32 2}
!265 = !{ptr @lgdt3306a_soft_reset._entry, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @lgdt3306a_soft_reset._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @lgdt3306a_soft_reset._entry.135, !268, !"_entry", i1 false, i1 false}
!268 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 212, i32 6}
!269 = !{ptr @lgdt3306a_soft_reset._entry_ptr.136, !268, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @lgdt3306a_soft_reset._entry.137, !271, !"_entry", i1 false, i1 false}
!271 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 217, i32 2}
!272 = !{ptr @lgdt3306a_soft_reset._entry_ptr.138, !271, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.139, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 229, i32 2}
!275 = !{ptr @lgdt3306a_mpeg_mode._entry, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @lgdt3306a_mpeg_mode._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @lgdt3306a_mpeg_mode._entry.140, !278, !"_entry", i1 false, i1 false}
!278 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 233, i32 6}
!279 = !{ptr @lgdt3306a_mpeg_mode._entry_ptr.141, !278, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @lgdt3306a_mpeg_mode._entry.142, !281, !"_entry", i1 false, i1 false}
!281 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 241, i32 6}
!282 = !{ptr @lgdt3306a_mpeg_mode._entry_ptr.143, !281, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @lgdt3306a_mpeg_mode._entry.144, !284, !"_entry", i1 false, i1 false}
!284 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 245, i32 6}
!285 = !{ptr @lgdt3306a_mpeg_mode._entry_ptr.145, !284, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @lgdt3306a_mpeg_mode._entry.146, !287, !"_entry", i1 false, i1 false}
!287 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 254, i32 2}
!288 = !{ptr @lgdt3306a_mpeg_mode._entry_ptr.147, !287, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.148, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1736, i32 2}
!291 = !{ptr @.str.149, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @lgdt3306a_tune._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @lgdt3306a_tune._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.150, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 981, i32 2}
!296 = !{ptr @.str.151, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @lgdt3306a_set_parameters._entry, !295, !"_entry", i1 false, i1 false}
!298 = !{ptr @lgdt3306a_set_parameters._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.153, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 985, i32 3}
!301 = !{ptr @lgdt3306a_set_parameters._entry.152, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @lgdt3306a_set_parameters._entry_ptr.154, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @lgdt3306a_set_parameters._entry.155, !304, !"_entry", i1 false, i1 false}
!304 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 992, i32 6}
!305 = !{ptr @lgdt3306a_set_parameters._entry_ptr.156, !304, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @lgdt3306a_set_parameters._entry.157, !307, !"_entry", i1 false, i1 false}
!307 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1007, i32 6}
!308 = !{ptr @lgdt3306a_set_parameters._entry_ptr.158, !307, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @lgdt3306a_set_parameters._entry.159, !310, !"_entry", i1 false, i1 false}
!310 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1011, i32 6}
!311 = !{ptr @lgdt3306a_set_parameters._entry_ptr.160, !310, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @lgdt3306a_set_parameters._entry.161, !313, !"_entry", i1 false, i1 false}
!313 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1015, i32 6}
!314 = !{ptr @lgdt3306a_set_parameters._entry_ptr.162, !313, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @lgdt3306a_set_parameters._entry.163, !316, !"_entry", i1 false, i1 false}
!316 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1021, i32 6}
!317 = !{ptr @lgdt3306a_set_parameters._entry_ptr.164, !316, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @lgdt3306a_set_parameters._entry.165, !319, !"_entry", i1 false, i1 false}
!319 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1027, i32 6}
!320 = !{ptr @lgdt3306a_set_parameters._entry_ptr.166, !319, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @lgdt3306a_set_parameters._entry.167, !322, !"_entry", i1 false, i1 false}
!322 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1031, i32 6}
!323 = !{ptr @lgdt3306a_set_parameters._entry_ptr.168, !322, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @lgdt3306a_set_parameters._entry.169, !325, !"_entry", i1 false, i1 false}
!325 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1035, i32 6}
!326 = !{ptr @lgdt3306a_set_parameters._entry_ptr.170, !325, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.171, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 645, i32 2}
!329 = !{ptr @lgdt3306a_set_modulation._entry, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @lgdt3306a_set_modulation._entry_ptr, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @lgdt3306a_set_modulation._entry.172, !332, !"_entry", i1 false, i1 false}
!332 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 659, i32 6}
!333 = !{ptr @lgdt3306a_set_modulation._entry_ptr.173, !332, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.174, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 546, i32 2}
!336 = !{ptr @.str.175, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @lgdt3306a_set_qam._entry, !335, !"_entry", i1 false, i1 false}
!338 = !{ptr @lgdt3306a_set_qam._entry_ptr, !335, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @lgdt3306a_set_qam._entry.176, !340, !"_entry", i1 false, i1 false}
!340 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 550, i32 6}
!341 = !{ptr @lgdt3306a_set_qam._entry_ptr.177, !340, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @lgdt3306a_set_qam._entry.178, !343, !"_entry", i1 false, i1 false}
!343 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 558, i32 6}
!344 = !{ptr @lgdt3306a_set_qam._entry_ptr.179, !343, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @lgdt3306a_set_qam._entry.180, !346, !"_entry", i1 false, i1 false}
!346 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 565, i32 6}
!347 = !{ptr @lgdt3306a_set_qam._entry_ptr.181, !346, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @lgdt3306a_set_qam._entry.182, !349, !"_entry", i1 false, i1 false}
!349 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 578, i32 6}
!350 = !{ptr @lgdt3306a_set_qam._entry_ptr.183, !349, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @lgdt3306a_set_qam._entry.184, !352, !"_entry", i1 false, i1 false}
!352 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 590, i32 6}
!353 = !{ptr @lgdt3306a_set_qam._entry_ptr.185, !352, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @lgdt3306a_set_qam._entry.186, !355, !"_entry", i1 false, i1 false}
!355 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 598, i32 6}
!356 = !{ptr @lgdt3306a_set_qam._entry_ptr.187, !355, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @lgdt3306a_set_qam._entry.188, !358, !"_entry", i1 false, i1 false}
!358 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 605, i32 6}
!359 = !{ptr @lgdt3306a_set_qam._entry_ptr.189, !358, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @lgdt3306a_set_qam._entry.190, !361, !"_entry", i1 false, i1 false}
!361 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 613, i32 6}
!362 = !{ptr @lgdt3306a_set_qam._entry_ptr.191, !361, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @lgdt3306a_set_qam._entry.192, !364, !"_entry", i1 false, i1 false}
!364 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 620, i32 6}
!365 = !{ptr @lgdt3306a_set_qam._entry_ptr.193, !364, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @lgdt3306a_set_qam._entry.194, !367, !"_entry", i1 false, i1 false}
!367 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 627, i32 6}
!368 = !{ptr @lgdt3306a_set_qam._entry_ptr.195, !367, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @lgdt3306a_set_qam._entry.196, !370, !"_entry", i1 false, i1 false}
!370 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 632, i32 6}
!371 = !{ptr @lgdt3306a_set_qam._entry_ptr.197, !370, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @lgdt3306a_set_qam._entry.198, !373, !"_entry", i1 false, i1 false}
!373 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 635, i32 2}
!374 = !{ptr @lgdt3306a_set_qam._entry_ptr.199, !373, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.200, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 674, i32 2}
!377 = !{ptr @lgdt3306a_agc_setup._entry, !376, !"_entry", i1 false, i1 false}
!378 = !{ptr @lgdt3306a_agc_setup._entry_ptr, !376, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.201, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 736, i32 3}
!381 = !{ptr @.str.202, !380, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @lgdt3306a_set_if._entry, !380, !"_entry", i1 false, i1 false}
!383 = !{ptr @lgdt3306a_set_if._entry_ptr, !380, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.204, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 767, i32 2}
!386 = !{ptr @lgdt3306a_set_if._entry.203, !385, !"_entry", i1 false, i1 false}
!387 = !{ptr @lgdt3306a_set_if._entry_ptr.205, !385, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.206, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 267, i32 2}
!390 = !{ptr @.str.207, !389, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @lgdt3306a_mpeg_mode_polarity._entry, !389, !"_entry", i1 false, i1 false}
!392 = !{ptr @lgdt3306a_mpeg_mode_polarity._entry_ptr, !389, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @lgdt3306a_mpeg_mode_polarity._entry.208, !394, !"_entry", i1 false, i1 false}
!394 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 270, i32 6}
!395 = !{ptr @lgdt3306a_mpeg_mode_polarity._entry_ptr.209, !394, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @lgdt3306a_mpeg_mode_polarity._entry.210, !397, !"_entry", i1 false, i1 false}
!397 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 281, i32 2}
!398 = !{ptr @lgdt3306a_mpeg_mode_polarity._entry_ptr.211, !397, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @.str.212, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1755, i32 2}
!401 = !{ptr @lgdt3306a_get_tune_settings._entry, !400, !"_entry", i1 false, i1 false}
!402 = !{ptr @lgdt3306a_get_tune_settings._entry_ptr, !400, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @.str.213, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1051, i32 2}
!405 = !{ptr @.str.214, !404, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @lgdt3306a_get_frontend._entry, !404, !"_entry", i1 false, i1 false}
!407 = !{ptr @lgdt3306a_get_frontend._entry_ptr, !404, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.215, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1575, i32 4}
!410 = !{ptr @.str.216, !409, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @lgdt3306a_read_status._entry, !409, !"_entry", i1 false, i1 false}
!412 = !{ptr @lgdt3306a_read_status._entry_ptr, !409, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @.str.218, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1577, i32 4}
!415 = !{ptr @lgdt3306a_read_status._entry.217, !414, !"_entry", i1 false, i1 false}
!416 = !{ptr @lgdt3306a_read_status._entry_ptr.219, !414, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.220, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1414, i32 4}
!419 = !{ptr @.str.221, !418, !"<string literal>", i1 false, i1 false}
!420 = !{ptr @lgdt3306a_neverlock_poll._entry, !418, !"_entry", i1 false, i1 false}
!421 = !{ptr @lgdt3306a_neverlock_poll._entry_ptr, !418, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.223, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1418, i32 2}
!424 = !{ptr @lgdt3306a_neverlock_poll._entry.222, !423, !"_entry", i1 false, i1 false}
!425 = !{ptr @lgdt3306a_neverlock_poll._entry_ptr.224, !423, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.225, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1272, i32 2}
!428 = !{ptr @.str.226, !427, !"<string literal>", i1 false, i1 false}
!429 = !{ptr @lgdt3306a_check_neverlock_status._entry, !427, !"_entry", i1 false, i1 false}
!430 = !{ptr @lgdt3306a_check_neverlock_status._entry_ptr, !427, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @.str.227, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1546, i32 4}
!433 = !{ptr @.str.228, !432, !"<string literal>", i1 false, i1 false}
!434 = !{ptr @lgdt3306a_qam_lock_poll._entry, !432, !"_entry", i1 false, i1 false}
!435 = !{ptr @lgdt3306a_qam_lock_poll._entry_ptr, !432, !"_entry_ptr", i1 false, i1 false}
!436 = !{ptr @.str.230, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1554, i32 3}
!438 = !{ptr @lgdt3306a_qam_lock_poll._entry.229, !437, !"_entry", i1 false, i1 false}
!439 = !{ptr @lgdt3306a_qam_lock_poll._entry_ptr.231, !437, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @.str.233, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1560, i32 2}
!442 = !{ptr @lgdt3306a_qam_lock_poll._entry.232, !441, !"_entry", i1 false, i1 false}
!443 = !{ptr @lgdt3306a_qam_lock_poll._entry_ptr.234, !441, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @.str.235, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1394, i32 4}
!446 = !{ptr @.str.236, !445, !"<string literal>", i1 false, i1 false}
!447 = !{ptr @lgdt3306a_fec_lock_poll._entry, !445, !"_entry", i1 false, i1 false}
!448 = !{ptr @lgdt3306a_fec_lock_poll._entry_ptr, !445, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @.str.238, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1398, i32 2}
!451 = !{ptr @lgdt3306a_fec_lock_poll._entry.237, !450, !"_entry", i1 false, i1 false}
!452 = !{ptr @lgdt3306a_fec_lock_poll._entry_ptr.239, !450, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.240, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1197, i32 3}
!455 = !{ptr @.str.241, !454, !"<string literal>", i1 false, i1 false}
!456 = !{ptr @lgdt3306a_check_lock_status._entry, !454, !"_entry", i1 false, i1 false}
!457 = !{ptr @lgdt3306a_check_lock_status._entry_ptr, !454, !"_entry_ptr", i1 false, i1 false}
!458 = !{ptr @.str.243, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1211, i32 3}
!460 = !{ptr @lgdt3306a_check_lock_status._entry.242, !459, !"_entry", i1 false, i1 false}
!461 = !{ptr @lgdt3306a_check_lock_status._entry_ptr.244, !459, !"_entry_ptr", i1 false, i1 false}
!462 = !{ptr @.str.246, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1229, i32 3}
!464 = !{ptr @lgdt3306a_check_lock_status._entry.245, !463, !"_entry", i1 false, i1 false}
!465 = !{ptr @lgdt3306a_check_lock_status._entry_ptr.247, !463, !"_entry_ptr", i1 false, i1 false}
!466 = !{ptr @.str.249, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1247, i32 3}
!468 = !{ptr @lgdt3306a_check_lock_status._entry.248, !467, !"_entry", i1 false, i1 false}
!469 = !{ptr @lgdt3306a_check_lock_status._entry_ptr.250, !467, !"_entry_ptr", i1 false, i1 false}
!470 = !{ptr @.str.252, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1253, i32 3}
!472 = !{ptr @lgdt3306a_check_lock_status._entry.251, !471, !"_entry", i1 false, i1 false}
!473 = !{ptr @lgdt3306a_check_lock_status._entry_ptr.253, !471, !"_entry_ptr", i1 false, i1 false}
!474 = !{ptr @.str.254, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1154, i32 3}
!476 = !{ptr @.str.255, !475, !"<string literal>", i1 false, i1 false}
!477 = !{ptr @lgdt3306a_check_oper_mode._entry, !475, !"_entry", i1 false, i1 false}
!478 = !{ptr @lgdt3306a_check_oper_mode._entry_ptr, !475, !"_entry_ptr", i1 false, i1 false}
!479 = !{ptr @.str.257, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1163, i32 4}
!481 = !{ptr @lgdt3306a_check_oper_mode._entry.256, !480, !"_entry", i1 false, i1 false}
!482 = !{ptr @lgdt3306a_check_oper_mode._entry_ptr.258, !480, !"_entry_ptr", i1 false, i1 false}
!483 = !{ptr @.str.260, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1166, i32 3}
!485 = !{ptr @lgdt3306a_check_oper_mode._entry.259, !484, !"_entry", i1 false, i1 false}
!486 = !{ptr @lgdt3306a_check_oper_mode._entry_ptr.261, !484, !"_entry_ptr", i1 false, i1 false}
!487 = !{ptr @.str.263, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1170, i32 2}
!489 = !{ptr @lgdt3306a_check_oper_mode._entry.262, !488, !"_entry", i1 false, i1 false}
!490 = !{ptr @lgdt3306a_check_oper_mode._entry_ptr.264, !488, !"_entry_ptr", i1 false, i1 false}
!491 = !{ptr @.str.265, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1516, i32 4}
!493 = !{ptr @.str.266, !492, !"<string literal>", i1 false, i1 false}
!494 = !{ptr @lgdt3306a_vsb_lock_poll._entry, !492, !"_entry", i1 false, i1 false}
!495 = !{ptr @lgdt3306a_vsb_lock_poll._entry_ptr, !492, !"_entry_ptr", i1 false, i1 false}
!496 = !{ptr @lgdt3306a_vsb_lock_poll._entry.267, !497, !"_entry", i1 false, i1 false}
!497 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1527, i32 3}
!498 = !{ptr @lgdt3306a_vsb_lock_poll._entry_ptr.268, !497, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @lgdt3306a_vsb_lock_poll._entry.269, !500, !"_entry", i1 false, i1 false}
!500 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1533, i32 2}
!501 = !{ptr @lgdt3306a_vsb_lock_poll._entry_ptr.270, !500, !"_entry_ptr", i1 false, i1 false}
!502 = !{ptr @.str.271, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1373, i32 4}
!504 = !{ptr @lgdt3306a_sync_lock_poll._entry, !503, !"_entry", i1 false, i1 false}
!505 = !{ptr @lgdt3306a_sync_lock_poll._entry_ptr, !503, !"_entry_ptr", i1 false, i1 false}
!506 = !{ptr @lgdt3306a_sync_lock_poll._entry.272, !507, !"_entry", i1 false, i1 false}
!507 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1377, i32 2}
!508 = !{ptr @lgdt3306a_sync_lock_poll._entry_ptr.273, !507, !"_entry_ptr", i1 false, i1 false}
!509 = !{ptr @.str.274, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1305, i32 2}
!511 = !{ptr @.str.275, !510, !"<string literal>", i1 false, i1 false}
!512 = !{ptr @lgdt3306a_pre_monitoring._entry, !510, !"_entry", i1 false, i1 false}
!513 = !{ptr @lgdt3306a_pre_monitoring._entry_ptr, !510, !"_entry_ptr", i1 false, i1 false}
!514 = !{ptr @.str.276, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1100, i32 2}
!516 = !{ptr @.str.277, !515, !"<string literal>", i1 false, i1 false}
!517 = !{ptr @lgdt3306a_monitor_vsb._entry, !515, !"_entry", i1 false, i1 false}
!518 = !{ptr @lgdt3306a_monitor_vsb._entry_ptr, !515, !"_entry_ptr", i1 false, i1 false}
!519 = !{ptr @.str.278, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1492, i32 9}
!521 = !{ptr @lgdt3306a_calculate_snr_x100._entry, !520, !"_entry", i1 false, i1 false}
!522 = !{ptr @lgdt3306a_calculate_snr_x100._entry_ptr, !520, !"_entry_ptr", i1 false, i1 false}
!523 = !{ptr @lgdt3306a_calculate_snr_x100._entry.279, !524, !"_entry", i1 false, i1 false}
!524 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1493, i32 9}
!525 = !{ptr @lgdt3306a_calculate_snr_x100._entry_ptr.280, !524, !"_entry_ptr", i1 false, i1 false}
!526 = !{ptr @lgdt3306a_calculate_snr_x100._entry.281, !527, !"_entry", i1 false, i1 false}
!527 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1494, i32 9}
!528 = !{ptr @lgdt3306a_calculate_snr_x100._entry_ptr.282, !527, !"_entry_ptr", i1 false, i1 false}
!529 = !{ptr @lgdt3306a_calculate_snr_x100._entry.283, !530, !"_entry", i1 false, i1 false}
!530 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1495, i32 9}
!531 = !{ptr @lgdt3306a_calculate_snr_x100._entry_ptr.284, !530, !"_entry_ptr", i1 false, i1 false}
!532 = !{ptr @.str.286, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1501, i32 2}
!534 = !{ptr @lgdt3306a_calculate_snr_x100._entry.285, !533, !"_entry", i1 false, i1 false}
!535 = !{ptr @lgdt3306a_calculate_snr_x100._entry_ptr.287, !533, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @valx_x10, !537, !"valx_x10", i1 false, i1 false}
!537 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1434, i32 18}
!538 = !{ptr @log10x_x1000, !539, !"log10x_x1000", i1 false, i1 false}
!539 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1437, i32 18}
!540 = !{ptr @.str.288, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1704, i32 21}
!542 = !{ptr @lgdt3306a_read_ber._entry, !541, !"_entry", i1 false, i1 false}
!543 = !{ptr @lgdt3306a_read_ber._entry_ptr, !541, !"_entry_ptr", i1 false, i1 false}
!544 = !{ptr @lgdt3306a_read_ber._entry.289, !545, !"_entry", i1 false, i1 false}
!545 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1705, i32 21}
!546 = !{ptr @lgdt3306a_read_ber._entry_ptr.290, !545, !"_entry_ptr", i1 false, i1 false}
!547 = !{ptr @lgdt3306a_read_ber._entry.291, !548, !"_entry", i1 false, i1 false}
!548 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1706, i32 21}
!549 = !{ptr @lgdt3306a_read_ber._entry_ptr.292, !548, !"_entry_ptr", i1 false, i1 false}
!550 = !{ptr @lgdt3306a_read_ber._entry.293, !551, !"_entry", i1 false, i1 false}
!551 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1707, i32 21}
!552 = !{ptr @lgdt3306a_read_ber._entry_ptr.294, !551, !"_entry_ptr", i1 false, i1 false}
!553 = !{ptr @.str.296, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1709, i32 2}
!555 = !{ptr @lgdt3306a_read_ber._entry.295, !554, !"_entry", i1 false, i1 false}
!556 = !{ptr @lgdt3306a_read_ber._entry_ptr.297, !554, !"_entry_ptr", i1 false, i1 false}
!557 = !{ptr @.str.298, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1658, i32 7}
!559 = !{ptr @lgdt3306a_read_signal_strength._entry, !558, !"_entry", i1 false, i1 false}
!560 = !{ptr @lgdt3306a_read_signal_strength._entry_ptr, !558, !"_entry_ptr", i1 false, i1 false}
!561 = !{ptr @lgdt3306a_read_signal_strength._entry.299, !562, !"_entry", i1 false, i1 false}
!562 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1671, i32 6}
!563 = !{ptr @lgdt3306a_read_signal_strength._entry_ptr.300, !562, !"_entry_ptr", i1 false, i1 false}
!564 = !{ptr @.str.302, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1687, i32 2}
!566 = !{ptr @lgdt3306a_read_signal_strength._entry.301, !565, !"_entry", i1 false, i1 false}
!567 = !{ptr @lgdt3306a_read_signal_strength._entry_ptr.303, !565, !"_entry_ptr", i1 false, i1 false}
!568 = !{ptr @.str.304, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1722, i32 14}
!570 = !{ptr @lgdt3306a_read_ucblocks._entry, !569, !"_entry", i1 false, i1 false}
!571 = !{ptr @lgdt3306a_read_ucblocks._entry_ptr, !569, !"_entry_ptr", i1 false, i1 false}
!572 = !{ptr @.str.306, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1723, i32 2}
!574 = !{ptr @lgdt3306a_read_ucblocks._entry.305, !573, !"_entry", i1 false, i1 false}
!575 = !{ptr @lgdt3306a_read_ucblocks._entry_ptr.307, !573, !"_entry_ptr", i1 false, i1 false}
!576 = !{ptr @.str.308, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 779, i32 3}
!578 = !{ptr @.str.309, !577, !"<string literal>", i1 false, i1 false}
!579 = !{ptr @lgdt3306a_i2c_gate_ctrl._entry, !577, !"_entry", i1 false, i1 false}
!580 = !{ptr @lgdt3306a_i2c_gate_ctrl._entry_ptr, !577, !"_entry_ptr", i1 false, i1 false}
!581 = !{ptr @lgdt3306a_i2c_gate_ctrl._entry.310, !582, !"_entry", i1 false, i1 false}
!582 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 782, i32 2}
!583 = !{ptr @lgdt3306a_i2c_gate_ctrl._entry_ptr.311, !582, !"_entry_ptr", i1 false, i1 false}
!584 = !{ptr @.str.312, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 337, i32 2}
!586 = !{ptr @.str.313, !585, !"<string literal>", i1 false, i1 false}
!587 = !{ptr @lgdt3306a_ts_bus_ctrl._entry, !585, !"_entry", i1 false, i1 false}
!588 = !{ptr @lgdt3306a_ts_bus_ctrl._entry_ptr, !585, !"_entry_ptr", i1 false, i1 false}
!589 = !{ptr @.str.314, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 1780, i32 2}
!591 = !{ptr @.str.315, !590, !"<string literal>", i1 false, i1 false}
!592 = !{ptr @lgdt3306a_search._entry, !590, !"_entry", i1 false, i1 false}
!593 = !{ptr @lgdt3306a_search._entry_ptr, !590, !"_entry_ptr", i1 false, i1 false}
!594 = !{ptr @lgdt3306a_driver, !595, !"lgdt3306a_driver", i1 false, i1 false}
!595 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 2250, i32 26}
!596 = !{ptr @.str.316, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 2216, i32 2}
!598 = !{ptr @.str.317, !597, !"<string literal>", i1 false, i1 false}
!599 = !{ptr @.str.318, !597, !"<string literal>", i1 false, i1 false}
!600 = !{ptr @.str.319, !597, !"<string literal>", i1 false, i1 false}
!601 = !{ptr @lgdt3306a_probe._entry, !597, !"_entry", i1 false, i1 false}
!602 = !{ptr @lgdt3306a_probe._entry_ptr, !597, !"_entry_ptr", i1 false, i1 false}
!603 = !{ptr @.str.321, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 2225, i32 2}
!605 = !{ptr @.str.322, !604, !"<string literal>", i1 false, i1 false}
!606 = !{ptr @lgdt3306a_probe._entry.320, !604, !"_entry", i1 false, i1 false}
!607 = !{ptr @lgdt3306a_probe._entry_ptr.323, !604, !"_entry_ptr", i1 false, i1 false}
!608 = !{ptr @lgdt3306a_id_table, !609, !"lgdt3306a_id_table", i1 false, i1 false}
!609 = !{!"../drivers/media/dvb-frontends/lgdt3306a.c", i32 2244, i32 35}
!610 = !{i32 1, !"wchar_size", i32 2}
!611 = !{i32 1, !"min_enum_size", i32 4}
!612 = !{i32 8, !"branch-target-enforcement", i32 0}
!613 = !{i32 8, !"sign-return-address", i32 0}
!614 = !{i32 8, !"sign-return-address-all", i32 0}
!615 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!616 = !{i32 7, !"uwtable", i32 1}
!617 = !{i32 7, !"frame-pointer", i32 2}
!618 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!619 = !{!"auto-init"}
