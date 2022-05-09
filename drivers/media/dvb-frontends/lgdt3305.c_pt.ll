; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/lgdt3305.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/lgdt3305.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+lgdt3305_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_lgdt3305_attach\09\09\09\09"
module asm "\09.long\09__crc_lgdt3305_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lgdt3305_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22lgdt3305_attach\22\09\09\09\09\09"
module asm "__kstrtabns_lgdt3305_attach:\09\09\09\09\09"
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
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lgdt3305_reg = type { i16, i8 }
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
%struct.list_head = type { ptr, ptr }
%struct.lgdt3305_state = type { ptr, ptr, %struct.dvb_frontend, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.lgdt3305_config = type { i8, i16, i16, i16, i16, i16, i8, i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_debug = internal constant [15 x i8] c"lgdt3305.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [28 x i8] c"lgdt3305.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [62 x i8] c"lgdt3305.parm=debug:set debug level (info=1, reg=2 (or-able))\00", section ".modinfo", align 1
@lgdt3305_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: (%d-%04x)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lgdt3305_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/dvb-frontends/lgdt3305.c\00", [57 x i8] zeroinitializer }, align 32
@lgdt3305_attach._entry_ptr = internal global ptr @lgdt3305_attach._entry, section ".printk_index", align 4
@lgdt3304_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"LG Electronics LGDT3304 VSB/QAM Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 858000000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 2138112 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", ptr null, ptr @lgdt3305_release, ptr null, ptr @lgdt3305_init, ptr @lgdt3305_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lgdt3304_set_parameters, ptr @lgdt3305_get_tune_settings, ptr @lgdt3305_get_frontend, ptr @lgdt3305_read_status, ptr @lgdt3305_read_ber, ptr @lgdt3305_read_signal_strength, ptr @lgdt3305_read_snr, ptr @lgdt3305_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lgdt3305_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@lgdt3305_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"LG Electronics LGDT3305 VSB/QAM Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 858000000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 2138112 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", ptr null, ptr @lgdt3305_release, ptr null, ptr @lgdt3305_init, ptr @lgdt3305_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lgdt3305_set_parameters, ptr @lgdt3305_get_tune_settings, ptr @lgdt3305_get_frontend, ptr @lgdt3305_read_status, ptr @lgdt3305_read_ber, ptr @lgdt3305_read_signal_strength, ptr @lgdt3305_read_snr, ptr @lgdt3305_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lgdt3305_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@lgdt3305_attach._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: error %d on line %d\0A\00", [37 x i8] zeroinitializer }, align 32
@lgdt3305_attach._entry_ptr.5 = internal global ptr @lgdt3305_attach._entry.3, section ".printk_index", align 4
@lgdt3305_attach._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_attach._entry_ptr.7 = internal global ptr @lgdt3305_attach._entry.6, section ".printk_index", align 4
@lgdt3305_attach._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_attach._entry_ptr.9 = internal global ptr @lgdt3305_attach._entry.8, section ".printk_index", align 4
@lgdt3305_attach._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_attach._entry_ptr.11 = internal global ptr @lgdt3305_attach._entry.10, section ".printk_index", align 4
@lgdt3305_attach._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 1147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014%s: unable to detect %s hardware\0A\00", [60 x i8] zeroinitializer }, align 32
@lgdt3305_attach._entry_ptr.14 = internal global ptr @lgdt3305_attach._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LGDT3304\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LGDT3305\00", [23 x i8] zeroinitializer }, align 32
@__kstrtab_lgdt3305_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_lgdt3305_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_lgdt3305_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lgdt3305_attach to i32), ptr @__kstrtab_lgdt3305_attach, ptr @__kstrtabns_lgdt3305_attach }, section "___ksymtab+lgdt3305_attach", align 4
@__UNIQUE_ID_description292 = internal constant [77 x i8] c"lgdt3305.description=LG Electronics LGDT3304/5 ATSC/QAM-B Demodulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [53 x i8] c"lgdt3305.author=Michael Krufky <mkrufky@linuxtv.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [51 x i8] c"lgdt3305.file=drivers/media/dvb-frontends/lgdt3305\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [21 x i8] c"lgdt3305.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version296 = internal constant [21 x i8] c"lgdt3305.version=0.2\00", section ".modinfo", align 1
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lgdt3305\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.2\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.18, ptr @.str.19 }, section "__modver", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lgdt3305_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: reg: 0x%04x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lgdt3305_read_reg\00", [46 x i8] zeroinitializer }, align 32
@lgdt3305_read_reg._entry_ptr = internal global ptr @lgdt3305_read_reg._entry, section ".printk_index", align 4
@lgdt3305_read_reg._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: error (addr %02x reg %04x error (ret == %i)\0A\00", [45 x i8] zeroinitializer }, align 32
@lgdt3305_read_reg._entry_ptr.24 = internal global ptr @lgdt3305_read_reg._entry.22, section ".printk_index", align 4
@lgdt3305_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: reg: 0x%04x, val: 0x%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lgdt3305_write_reg\00", [45 x i8] zeroinitializer }, align 32
@lgdt3305_write_reg._entry_ptr = internal global ptr @lgdt3305_write_reg._entry, section ".printk_index", align 4
@lgdt3305_write_reg._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: error (addr %02x %02x <- %02x, err = %i)\0A\00", [48 x i8] zeroinitializer }, align 32
@lgdt3305_write_reg._entry_ptr.29 = internal global ptr @lgdt3305_write_reg._entry.27, section ".printk_index", align 4
@lgdt3305_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 1088, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\017%s: \0A\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lgdt3305_release\00", [47 x i8] zeroinitializer }, align 32
@lgdt3305_release._entry_ptr = internal global ptr @lgdt3305_release._entry, section ".printk_index", align 4
@lgdt3305_init.lgdt3304_init_data = internal constant { [29 x %struct.lgdt3305_reg], [44 x i8] } { [29 x %struct.lgdt3305_reg] [%struct.lgdt3305_reg { i16 0, i8 3 }, %struct.lgdt3305_reg { i16 13, i8 2 }, %struct.lgdt3305_reg { i16 14, i8 2 }, %struct.lgdt3305_reg { i16 18, i8 50 }, %struct.lgdt3305_reg { i16 19, i8 -60 }, %struct.lgdt3305_reg { i16 262, i8 0 }, %struct.lgdt3305_reg { i16 263, i8 0 }, %struct.lgdt3305_reg { i16 264, i8 0 }, %struct.lgdt3305_reg { i16 265, i8 0 }, %struct.lgdt3305_reg { i16 294, i8 -7 }, %struct.lgdt3305_reg { i16 274, i8 23 }, %struct.lgdt3305_reg { i16 275, i8 21 }, %struct.lgdt3305_reg { i16 276, i8 24 }, %struct.lgdt3305_reg { i16 277, i8 -1 }, %struct.lgdt3305_reg { i16 278, i8 60 }, %struct.lgdt3305_reg { i16 532, i8 103 }, %struct.lgdt3305_reg { i16 1060, i8 -115 }, %struct.lgdt3305_reg { i16 1063, i8 18 }, %struct.lgdt3305_reg { i16 1064, i8 79 }, %struct.lgdt3305_reg { i16 776, i8 -128 }, %struct.lgdt3305_reg { i16 777, i8 0 }, %struct.lgdt3305_reg { i16 778, i8 8 }, %struct.lgdt3305_reg { i16 779, i8 -101 }, %struct.lgdt3305_reg { i16 781, i8 0 }, %struct.lgdt3305_reg { i16 782, i8 28 }, %struct.lgdt3305_reg { i16 788, i8 -31 }, %struct.lgdt3305_reg { i16 13, i8 -126 }, %struct.lgdt3305_reg { i16 1294, i8 91 }, %struct.lgdt3305_reg { i16 1294, i8 91 }], [44 x i8] zeroinitializer }, align 32
@lgdt3305_init.lgdt3305_init_data = internal constant { [24 x %struct.lgdt3305_reg], [32 x i8] } { [24 x %struct.lgdt3305_reg] [%struct.lgdt3305_reg { i16 0, i8 3 }, %struct.lgdt3305_reg { i16 1, i8 -80 }, %struct.lgdt3305_reg { i16 2, i8 1 }, %struct.lgdt3305_reg { i16 7, i8 111 }, %struct.lgdt3305_reg { i16 10, i8 3 }, %struct.lgdt3305_reg { i16 18, i8 50 }, %struct.lgdt3305_reg { i16 19, i8 -60 }, %struct.lgdt3305_reg { i16 262, i8 0 }, %struct.lgdt3305_reg { i16 263, i8 0 }, %struct.lgdt3305_reg { i16 264, i8 0 }, %struct.lgdt3305_reg { i16 265, i8 0 }, %struct.lgdt3305_reg { i16 294, i8 121 }, %struct.lgdt3305_reg { i16 768, i8 50 }, %struct.lgdt3305_reg { i16 769, i8 -60 }, %struct.lgdt3305_reg { i16 770, i8 13 }, %struct.lgdt3305_reg { i16 771, i8 48 }, %struct.lgdt3305_reg { i16 774, i8 -128 }, %struct.lgdt3305_reg { i16 775, i8 0 }, %struct.lgdt3305_reg { i16 776, i8 -128 }, %struct.lgdt3305_reg { i16 777, i8 0 }, %struct.lgdt3305_reg { i16 780, i8 48 }, %struct.lgdt3305_reg { i16 788, i8 97 }, %struct.lgdt3305_reg { i16 1284, i8 -1 }, %struct.lgdt3305_reg { i16 1294, i8 27 }], [32 x i8] zeroinitializer }, align 32
@lgdt3305_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.32, ptr @.str.2, i32 647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lgdt3305_init\00", [18 x i8] zeroinitializer }, align 32
@lgdt3305_init._entry_ptr = internal global ptr @lgdt3305_init._entry, section ".printk_index", align 4
@lgdt3305_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.32, ptr @.str.2, i32 661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_init._entry_ptr.34 = internal global ptr @lgdt3305_init._entry.33, section ".printk_index", align 4
@lgdt3305_write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: writing %d registers...\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lgdt3305_write_regs\00", [44 x i8] zeroinitializer }, align 32
@lgdt3305_write_regs._entry_ptr = internal global ptr @lgdt3305_write_regs._entry, section ".printk_index", align 4
@lgdt3305_write_regs._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.36, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_write_regs._entry_ptr.38 = internal global ptr @lgdt3305_write_regs._entry.37, section ".printk_index", align 4
@lgdt3305_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.39, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lgdt3305_soft_reset\00", [44 x i8] zeroinitializer }, align 32
@lgdt3305_soft_reset._entry_ptr = internal global ptr @lgdt3305_soft_reset._entry, section ".printk_index", align 4
@lgdt3305_soft_reset._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.39, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_soft_reset._entry_ptr.41 = internal global ptr @lgdt3305_soft_reset._entry.40, section ".printk_index", align 4
@lgdt3305_set_reg_bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: reg: 0x%04x, bit: %d, level: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lgdt3305_set_reg_bit\00", [43 x i8] zeroinitializer }, align 32
@lgdt3305_set_reg_bit._entry_ptr = internal global ptr @lgdt3305_set_reg_bit._entry, section ".printk_index", align 4
@lgdt3305_set_reg_bit._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.43, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_set_reg_bit._entry_ptr.45 = internal global ptr @lgdt3305_set_reg_bit._entry.44, section ".printk_index", align 4
@lgdt3305_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.46, ptr @.str.2, i32 560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lgdt3305_sleep\00", [17 x i8] zeroinitializer }, align 32
@lgdt3305_sleep._entry_ptr = internal global ptr @lgdt3305_sleep._entry, section ".printk_index", align 4
@lgdt3305_sleep._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.46, ptr @.str.2, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_sleep._entry_ptr.48 = internal global ptr @lgdt3305_sleep._entry.47, section ".printk_index", align 4
@lgdt3305_sleep._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.46, ptr @.str.2, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_sleep._entry_ptr.50 = internal global ptr @lgdt3305_sleep._entry.49, section ".printk_index", align 4
@lgdt3304_set_parameters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: (%d, %d)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lgdt3304_set_parameters\00", [40 x i8] zeroinitializer }, align 32
@lgdt3304_set_parameters._entry_ptr = internal global ptr @lgdt3304_set_parameters._entry, section ".printk_index", align 4
@lgdt3304_set_parameters._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.52, ptr @.str.2, i32 681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3304_set_parameters._entry_ptr.54 = internal global ptr @lgdt3304_set_parameters._entry.53, section ".printk_index", align 4
@lgdt3304_set_parameters._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.52, ptr @.str.2, i32 687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3304_set_parameters._entry_ptr.56 = internal global ptr @lgdt3304_set_parameters._entry.55, section ".printk_index", align 4
@lgdt3304_set_parameters._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.52, ptr @.str.2, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3304_set_parameters._entry_ptr.58 = internal global ptr @lgdt3304_set_parameters._entry.57, section ".printk_index", align 4
@lgdt3304_set_parameters._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.52, ptr @.str.2, i32 695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3304_set_parameters._entry_ptr.60 = internal global ptr @lgdt3304_set_parameters._entry.59, section ".printk_index", align 4
@lgdt3304_set_parameters._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.52, ptr @.str.2, i32 711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3304_set_parameters._entry_ptr.62 = internal global ptr @lgdt3304_set_parameters._entry.61, section ".printk_index", align 4
@lgdt3304_set_parameters._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.52, ptr @.str.2, i32 722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3304_set_parameters._entry_ptr.64 = internal global ptr @lgdt3304_set_parameters._entry.63, section ".printk_index", align 4
@lgdt3304_set_parameters._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.52, ptr @.str.2, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3304_set_parameters._entry_ptr.66 = internal global ptr @lgdt3304_set_parameters._entry.65, section ".printk_index", align 4
@lgdt3305_set_modulation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.67, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lgdt3305_set_modulation\00", [40 x i8] zeroinitializer }, align 32
@lgdt3305_set_modulation._entry_ptr = internal global ptr @lgdt3305_set_modulation._entry, section ".printk_index", align 4
@lgdt3305_set_modulation._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.67, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_set_modulation._entry_ptr.69 = internal global ptr @lgdt3305_set_modulation._entry.68, section ".printk_index", align 4
@lgdt3305_passband_digital_agc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: agc ref: 0x%04x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lgdt3305_passband_digital_agc\00", [34 x i8] zeroinitializer }, align 32
@lgdt3305_passband_digital_agc._entry_ptr = internal global ptr @lgdt3305_passband_digital_agc._entry, section ".printk_index", align 4
@lgdt3305_agc_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: lockdten = %d, acqen = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lgdt3305_agc_setup\00", [45 x i8] zeroinitializer }, align 32
@lgdt3305_agc_setup._entry_ptr = internal global ptr @lgdt3305_agc_setup._entry, section ".printk_index", align 4
@lgdt3305_rfagc_loop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: agcdelay: 0x%04x, rfbw: 0x%04x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lgdt3305_rfagc_loop\00", [44 x i8] zeroinitializer }, align 32
@lgdt3305_rfagc_loop._entry_ptr = internal global ptr @lgdt3305_rfagc_loop._entry, section ".printk_index", align 4
@lgdt3305_rfagc_loop._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: ifbw: 0x%04x\0A\00", [44 x i8] zeroinitializer }, align 32
@lgdt3305_rfagc_loop._entry_ptr.78 = internal global ptr @lgdt3305_rfagc_loop._entry.76, section ".printk_index", align 4
@lgdt3305_set_if._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: %d KHz -> [%02x%02x%02x%02x]\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lgdt3305_set_if\00", [16 x i8] zeroinitializer }, align 32
@lgdt3305_set_if._entry_ptr = internal global ptr @lgdt3305_set_if._entry, section ".printk_index", align 4
@lgdt3305_spectral_inversion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017%s: (%d)\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lgdt3305_spectral_inversion\00", [36 x i8] zeroinitializer }, align 32
@lgdt3305_spectral_inversion._entry_ptr = internal global ptr @lgdt3305_spectral_inversion._entry, section ".printk_index", align 4
@lgdt3305_mpeg_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.83, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lgdt3305_mpeg_mode\00", [45 x i8] zeroinitializer }, align 32
@lgdt3305_mpeg_mode._entry_ptr = internal global ptr @lgdt3305_mpeg_mode._entry, section ".printk_index", align 4
@lgdt3305_mpeg_mode_polarity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: edge = %d, valid = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lgdt3305_mpeg_mode_polarity\00", [36 x i8] zeroinitializer }, align 32
@lgdt3305_mpeg_mode_polarity._entry_ptr = internal global ptr @lgdt3305_mpeg_mode_polarity._entry, section ".printk_index", align 4
@lgdt3305_mpeg_mode_polarity._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.85, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_mpeg_mode_polarity._entry_ptr.87 = internal global ptr @lgdt3305_mpeg_mode_polarity._entry.86, section ".printk_index", align 4
@lgdt3305_mpeg_mode_polarity._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.85, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_mpeg_mode_polarity._entry_ptr.89 = internal global ptr @lgdt3305_mpeg_mode_polarity._entry.88, section ".printk_index", align 4
@lgdt3305_get_tune_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.90, ptr @.str.2, i32 1081, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lgdt3305_get_tune_settings\00", [37 x i8] zeroinitializer }, align 32
@lgdt3305_get_tune_settings._entry_ptr = internal global ptr @lgdt3305_get_tune_settings._entry, section ".printk_index", align 4
@lgdt3305_get_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.91, ptr @.str.2, i32 806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lgdt3305_get_frontend\00", [42 x i8] zeroinitializer }, align 32
@lgdt3305_get_frontend._entry_ptr = internal global ptr @lgdt3305_get_frontend._entry, section ".printk_index", align 4
@lgdt3305_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.92, ptr @.str.2, i32 911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lgdt3305_read_status\00", [43 x i8] zeroinitializer }, align 32
@lgdt3305_read_status._entry_ptr = internal global ptr @lgdt3305_read_status._entry, section ".printk_index", align 4
@lgdt3305_read_status._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.2, i32 925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: %s%s%s%s%s\0A\00", [46 x i8] zeroinitializer }, align 32
@lgdt3305_read_status._entry_ptr.95 = internal global ptr @lgdt3305_read_status._entry.93, section ".printk_index", align 4
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SIGNALEXIST \00", [19 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INLOCK \00", [24 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SYNCLOCK \00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NOFECERR \00", [22 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SNRGOOD \00", [23 x i8] zeroinitializer }, align 32
@lgdt3305_read_status._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.92, ptr @.str.2, i32 928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_read_status._entry_ptr.103 = internal global ptr @lgdt3305_read_status._entry.102, section ".printk_index", align 4
@lgdt3305_read_status._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.92, ptr @.str.2, i32 948, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_read_status._entry_ptr.105 = internal global ptr @lgdt3305_read_status._entry.104, section ".printk_index", align 4
@lgdt3305_read_cr_lock_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.106, ptr @.str.2, i32 825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lgdt3305_read_cr_lock_status\00", [35 x i8] zeroinitializer }, align 32
@lgdt3305_read_cr_lock_status._entry_ptr = internal global ptr @lgdt3305_read_cr_lock_status._entry, section ".printk_index", align 4
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"QAM UNLOCK\00", [21 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"QAM 1stLock\00", [20 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"QAM 2ndLock\00", [20 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QAM FinalLock\00", [18 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CLOCKQAM-INVALID!\00", [46 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CLOCKVSB\00", [23 x i8] zeroinitializer }, align 32
@lgdt3305_read_cr_lock_status._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.106, ptr @.str.2, i32 861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017%s: (%d) %s\0A\00", [17 x i8] zeroinitializer }, align 32
@lgdt3305_read_cr_lock_status._entry_ptr.115 = internal global ptr @lgdt3305_read_cr_lock_status._entry.113, section ".printk_index", align 4
@lgdt3305_read_fec_lock_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.116, ptr @.str.2, i32 879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lgdt3305_read_fec_lock_status\00", [34 x i8] zeroinitializer }, align 32
@lgdt3305_read_fec_lock_status._entry_ptr = internal global ptr @lgdt3305_read_fec_lock_status._entry, section ".printk_index", align 4
@lgdt3305_read_fec_lock_status._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.2, i32 891, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: (%d) %s%s%s\0A\00", [45 x i8] zeroinitializer }, align 32
@lgdt3305_read_fec_lock_status._entry_ptr.119 = internal global ptr @lgdt3305_read_fec_lock_status._entry.117, section ".printk_index", align 4
@.str.120 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mpeg lock  \00", [20 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fec lock  \00", [21 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"viterbi lock\00", [19 x i8] zeroinitializer }, align 32
@lgdt3305_read_signal_strength._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.123, ptr @.str.2, i32 1045, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lgdt3305_read_signal_strength\00", [34 x i8] zeroinitializer }, align 32
@lgdt3305_read_signal_strength._entry_ptr = internal global ptr @lgdt3305_read_signal_strength._entry, section ".printk_index", align 4
@lgdt3305_read_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.124, ptr @.str.2, i32 1001, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lgdt3305_read_snr\00", [46 x i8] zeroinitializer }, align 32
@lgdt3305_read_snr._entry_ptr = internal global ptr @lgdt3305_read_snr._entry, section ".printk_index", align 4
@lgdt3305_read_snr._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.124, ptr @.str.2, i32 1002, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_read_snr._entry_ptr.126 = internal global ptr @lgdt3305_read_snr._entry.125, section ".printk_index", align 4
@lgdt3305_read_snr._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.124, ptr @.str.2, i32 1003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_read_snr._entry_ptr.128 = internal global ptr @lgdt3305_read_snr._entry.127, section ".printk_index", align 4
@lgdt3305_read_snr._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.124, ptr @.str.2, i32 1009, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_read_snr._entry_ptr.130 = internal global ptr @lgdt3305_read_snr._entry.129, section ".printk_index", align 4
@lgdt3305_read_snr._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.124, ptr @.str.2, i32 1010, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_read_snr._entry_ptr.132 = internal global ptr @lgdt3305_read_snr._entry.131, section ".printk_index", align 4
@lgdt3305_read_snr._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.124, ptr @.str.2, i32 1023, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: noise = 0x%08x, snr = %d.%02d dB\0A\00", [56 x i8] zeroinitializer }, align 32
@lgdt3305_read_snr._entry_ptr.135 = internal global ptr @lgdt3305_read_snr._entry.133, section ".printk_index", align 4
@lgdt3305_read_ucblocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.136, ptr @.str.2, i32 1070, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lgdt3305_read_ucblocks\00", [41 x i8] zeroinitializer }, align 32
@lgdt3305_read_ucblocks._entry_ptr = internal global ptr @lgdt3305_read_ucblocks._entry, section ".printk_index", align 4
@lgdt3305_read_ucblocks._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.136, ptr @.str.2, i32 1071, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_read_ucblocks._entry_ptr.138 = internal global ptr @lgdt3305_read_ucblocks._entry.137, section ".printk_index", align 4
@lgdt3305_i2c_gate_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.139, ptr @.str.2, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lgdt3305_i2c_gate_ctrl\00", [41 x i8] zeroinitializer }, align 32
@lgdt3305_i2c_gate_ctrl._entry_ptr = internal global ptr @lgdt3305_i2c_gate_ctrl._entry, section ".printk_index", align 4
@lgdt3305_set_parameters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.140, ptr @.str.2, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lgdt3305_set_parameters\00", [40 x i8] zeroinitializer }, align 32
@lgdt3305_set_parameters._entry_ptr = internal global ptr @lgdt3305_set_parameters._entry, section ".printk_index", align 4
@lgdt3305_set_parameters._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.140, ptr @.str.2, i32 749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_set_parameters._entry_ptr.142 = internal global ptr @lgdt3305_set_parameters._entry.141, section ".printk_index", align 4
@lgdt3305_set_parameters._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.140, ptr @.str.2, i32 755, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_set_parameters._entry_ptr.144 = internal global ptr @lgdt3305_set_parameters._entry.143, section ".printk_index", align 4
@lgdt3305_set_parameters._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.140, ptr @.str.2, i32 759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_set_parameters._entry_ptr.146 = internal global ptr @lgdt3305_set_parameters._entry.145, section ".printk_index", align 4
@lgdt3305_set_parameters._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.140, ptr @.str.2, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_set_parameters._entry_ptr.148 = internal global ptr @lgdt3305_set_parameters._entry.147, section ".printk_index", align 4
@lgdt3305_set_parameters._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.140, ptr @.str.2, i32 765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_set_parameters._entry_ptr.150 = internal global ptr @lgdt3305_set_parameters._entry.149, section ".printk_index", align 4
@lgdt3305_set_parameters._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.140, ptr @.str.2, i32 770, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_set_parameters._entry_ptr.152 = internal global ptr @lgdt3305_set_parameters._entry.151, section ".printk_index", align 4
@lgdt3305_set_parameters._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.140, ptr @.str.2, i32 773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_set_parameters._entry_ptr.154 = internal global ptr @lgdt3305_set_parameters._entry.153, section ".printk_index", align 4
@lgdt3305_set_parameters._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.140, ptr @.str.2, i32 777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_set_parameters._entry_ptr.156 = internal global ptr @lgdt3305_set_parameters._entry.155, section ".printk_index", align 4
@lgdt3305_set_parameters._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.140, ptr @.str.2, i32 782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_set_parameters._entry_ptr.158 = internal global ptr @lgdt3305_set_parameters._entry.157, section ".printk_index", align 4
@lgdt3305_set_parameters._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.140, ptr @.str.2, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_set_parameters._entry_ptr.160 = internal global ptr @lgdt3305_set_parameters._entry.159, section ".printk_index", align 4
@lgdt3305_set_parameters._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.140, ptr @.str.2, i32 792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgdt3305_set_parameters._entry_ptr.162 = internal global ptr @lgdt3305_set_parameters._entry.161, section ".printk_index", align 4
@lgdt3305_set_agc_power_ref._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.164, ptr @.str.2, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: set manual mode: 0x%04x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lgdt3305_set_agc_power_ref\00", [37 x i8] zeroinitializer }, align 32
@lgdt3305_set_agc_power_ref._entry_ptr = internal global ptr @lgdt3305_set_agc_power_ref._entry, section ".printk_index", align 4
@lgdt3305_set_filter_extension._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.166, ptr @.str.2, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: val = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lgdt3305_set_filter_extension\00", [34 x i8] zeroinitializer }, align 32
@lgdt3305_set_filter_extension._entry_ptr = internal global ptr @lgdt3305_set_filter_extension._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.167 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.168 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.169 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.170 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.171 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.172 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.173 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.174 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.175 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.176 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.177 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.179 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.180 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.181 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.182 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.183 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.184 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@___asan_gen_.185 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 16, i32 12 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1102, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [13 x i8] c"lgdt3304_ops\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1153, i32 38 }
@___asan_gen_.203 = private unnamed_addr constant [13 x i8] c"lgdt3305_ops\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1176, i32 38 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1129, i32 7 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1132, i32 6 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1135, i32 7 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1138, i32 6 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1146, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1202, i32 1 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 136, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 141, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 110, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 115, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1088, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant [19 x i8] c"lgdt3304_init_data\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 588, i32 29 }
@___asan_gen_.284 = private unnamed_addr constant [19 x i8] c"lgdt3305_init_data\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 620, i32 29 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 647, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 661, i32 6 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 190, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 194, i32 7 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 206, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 209, i32 6 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 166, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 169, i32 6 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 560, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 562, i32 15 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 563, i32 15 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 675, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 681, i32 7 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 687, i32 6 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 691, i32 6 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 695, i32 6 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 711, i32 7 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 722, i32 6 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 728, i32 6 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 263, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 266, i32 6 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 331, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 408, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 366, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 379, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 534, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 470, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 221, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 233, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 236, i32 6 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 249, i32 6 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1081, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 806, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 911, i32 6 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 920, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 928, i32 6 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 948, i32 7 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 825, i32 6 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 836, i32 20 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 839, i32 20 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 842, i32 20 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 845, i32 20 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 848, i32 20 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 855, i32 20 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 861, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 879, i32 7 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 888, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1045, i32 6 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1001, i32 13 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1002, i32 5 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1003, i32 5 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1009, i32 12 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1010, i32 5 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1022, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1070, i32 4 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1071, i32 4 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 549, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 743, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 749, i32 7 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 755, i32 6 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 759, i32 6 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 762, i32 6 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 765, i32 6 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 770, i32 6 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 773, i32 6 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 777, i32 6 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 782, i32 6 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 786, i32 6 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 792, i32 6 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 450, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.650 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.651 = private constant [42 x i8] c"../drivers/media/dvb-frontends/lgdt3305.c\00", align 1
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 305, i32 2 }
@llvm.compiler.used = appending global [242 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__UNIQUE_ID_version296, ptr @__ksymtab_lgdt3305_attach, ptr @__modver_attr, ptr @__param_debug, ptr @lgdt3304_set_parameters._entry, ptr @lgdt3304_set_parameters._entry.53, ptr @lgdt3304_set_parameters._entry.55, ptr @lgdt3304_set_parameters._entry.57, ptr @lgdt3304_set_parameters._entry.59, ptr @lgdt3304_set_parameters._entry.61, ptr @lgdt3304_set_parameters._entry.63, ptr @lgdt3304_set_parameters._entry.65, ptr @lgdt3304_set_parameters._entry_ptr, ptr @lgdt3304_set_parameters._entry_ptr.54, ptr @lgdt3304_set_parameters._entry_ptr.56, ptr @lgdt3304_set_parameters._entry_ptr.58, ptr @lgdt3304_set_parameters._entry_ptr.60, ptr @lgdt3304_set_parameters._entry_ptr.62, ptr @lgdt3304_set_parameters._entry_ptr.64, ptr @lgdt3304_set_parameters._entry_ptr.66, ptr @lgdt3305_agc_setup._entry, ptr @lgdt3305_agc_setup._entry_ptr, ptr @lgdt3305_attach._entry, ptr @lgdt3305_attach._entry.10, ptr @lgdt3305_attach._entry.12, ptr @lgdt3305_attach._entry.3, ptr @lgdt3305_attach._entry.6, ptr @lgdt3305_attach._entry.8, ptr @lgdt3305_attach._entry_ptr, ptr @lgdt3305_attach._entry_ptr.11, ptr @lgdt3305_attach._entry_ptr.14, ptr @lgdt3305_attach._entry_ptr.5, ptr @lgdt3305_attach._entry_ptr.7, ptr @lgdt3305_attach._entry_ptr.9, ptr @lgdt3305_get_frontend._entry, ptr @lgdt3305_get_frontend._entry_ptr, ptr @lgdt3305_get_tune_settings._entry, ptr @lgdt3305_get_tune_settings._entry_ptr, ptr @lgdt3305_i2c_gate_ctrl._entry, ptr @lgdt3305_i2c_gate_ctrl._entry_ptr, ptr @lgdt3305_init._entry, ptr @lgdt3305_init._entry.33, ptr @lgdt3305_init._entry_ptr, ptr @lgdt3305_init._entry_ptr.34, ptr @lgdt3305_mpeg_mode._entry, ptr @lgdt3305_mpeg_mode._entry_ptr, ptr @lgdt3305_mpeg_mode_polarity._entry, ptr @lgdt3305_mpeg_mode_polarity._entry.86, ptr @lgdt3305_mpeg_mode_polarity._entry.88, ptr @lgdt3305_mpeg_mode_polarity._entry_ptr, ptr @lgdt3305_mpeg_mode_polarity._entry_ptr.87, ptr @lgdt3305_mpeg_mode_polarity._entry_ptr.89, ptr @lgdt3305_passband_digital_agc._entry, ptr @lgdt3305_passband_digital_agc._entry_ptr, ptr @lgdt3305_read_cr_lock_status._entry, ptr @lgdt3305_read_cr_lock_status._entry.113, ptr @lgdt3305_read_cr_lock_status._entry_ptr, ptr @lgdt3305_read_cr_lock_status._entry_ptr.115, ptr @lgdt3305_read_fec_lock_status._entry, ptr @lgdt3305_read_fec_lock_status._entry.117, ptr @lgdt3305_read_fec_lock_status._entry_ptr, ptr @lgdt3305_read_fec_lock_status._entry_ptr.119, ptr @lgdt3305_read_reg._entry, ptr @lgdt3305_read_reg._entry.22, ptr @lgdt3305_read_reg._entry_ptr, ptr @lgdt3305_read_reg._entry_ptr.24, ptr @lgdt3305_read_signal_strength._entry, ptr @lgdt3305_read_signal_strength._entry_ptr, ptr @lgdt3305_read_snr._entry, ptr @lgdt3305_read_snr._entry.125, ptr @lgdt3305_read_snr._entry.127, ptr @lgdt3305_read_snr._entry.129, ptr @lgdt3305_read_snr._entry.131, ptr @lgdt3305_read_snr._entry.133, ptr @lgdt3305_read_snr._entry_ptr, ptr @lgdt3305_read_snr._entry_ptr.126, ptr @lgdt3305_read_snr._entry_ptr.128, ptr @lgdt3305_read_snr._entry_ptr.130, ptr @lgdt3305_read_snr._entry_ptr.132, ptr @lgdt3305_read_snr._entry_ptr.135, ptr @lgdt3305_read_status._entry, ptr @lgdt3305_read_status._entry.102, ptr @lgdt3305_read_status._entry.104, ptr @lgdt3305_read_status._entry.93, ptr @lgdt3305_read_status._entry_ptr, ptr @lgdt3305_read_status._entry_ptr.103, ptr @lgdt3305_read_status._entry_ptr.105, ptr @lgdt3305_read_status._entry_ptr.95, ptr @lgdt3305_read_ucblocks._entry, ptr @lgdt3305_read_ucblocks._entry.137, ptr @lgdt3305_read_ucblocks._entry_ptr, ptr @lgdt3305_read_ucblocks._entry_ptr.138, ptr @lgdt3305_release._entry, ptr @lgdt3305_release._entry_ptr, ptr @lgdt3305_rfagc_loop._entry, ptr @lgdt3305_rfagc_loop._entry.76, ptr @lgdt3305_rfagc_loop._entry_ptr, ptr @lgdt3305_rfagc_loop._entry_ptr.78, ptr @lgdt3305_set_agc_power_ref._entry, ptr @lgdt3305_set_agc_power_ref._entry_ptr, ptr @lgdt3305_set_filter_extension._entry, ptr @lgdt3305_set_filter_extension._entry_ptr, ptr @lgdt3305_set_if._entry, ptr @lgdt3305_set_if._entry_ptr, ptr @lgdt3305_set_modulation._entry, ptr @lgdt3305_set_modulation._entry.68, ptr @lgdt3305_set_modulation._entry_ptr, ptr @lgdt3305_set_modulation._entry_ptr.69, ptr @lgdt3305_set_parameters._entry, ptr @lgdt3305_set_parameters._entry.141, ptr @lgdt3305_set_parameters._entry.143, ptr @lgdt3305_set_parameters._entry.145, ptr @lgdt3305_set_parameters._entry.147, ptr @lgdt3305_set_parameters._entry.149, ptr @lgdt3305_set_parameters._entry.151, ptr @lgdt3305_set_parameters._entry.153, ptr @lgdt3305_set_parameters._entry.155, ptr @lgdt3305_set_parameters._entry.157, ptr @lgdt3305_set_parameters._entry.159, ptr @lgdt3305_set_parameters._entry.161, ptr @lgdt3305_set_parameters._entry_ptr, ptr @lgdt3305_set_parameters._entry_ptr.142, ptr @lgdt3305_set_parameters._entry_ptr.144, ptr @lgdt3305_set_parameters._entry_ptr.146, ptr @lgdt3305_set_parameters._entry_ptr.148, ptr @lgdt3305_set_parameters._entry_ptr.150, ptr @lgdt3305_set_parameters._entry_ptr.152, ptr @lgdt3305_set_parameters._entry_ptr.154, ptr @lgdt3305_set_parameters._entry_ptr.156, ptr @lgdt3305_set_parameters._entry_ptr.158, ptr @lgdt3305_set_parameters._entry_ptr.160, ptr @lgdt3305_set_parameters._entry_ptr.162, ptr @lgdt3305_set_reg_bit._entry, ptr @lgdt3305_set_reg_bit._entry.44, ptr @lgdt3305_set_reg_bit._entry_ptr, ptr @lgdt3305_set_reg_bit._entry_ptr.45, ptr @lgdt3305_sleep._entry, ptr @lgdt3305_sleep._entry.47, ptr @lgdt3305_sleep._entry.49, ptr @lgdt3305_sleep._entry_ptr, ptr @lgdt3305_sleep._entry_ptr.48, ptr @lgdt3305_sleep._entry_ptr.50, ptr @lgdt3305_soft_reset._entry, ptr @lgdt3305_soft_reset._entry.40, ptr @lgdt3305_soft_reset._entry_ptr, ptr @lgdt3305_soft_reset._entry_ptr.41, ptr @lgdt3305_spectral_inversion._entry, ptr @lgdt3305_spectral_inversion._entry_ptr, ptr @lgdt3305_write_reg._entry, ptr @lgdt3305_write_reg._entry.27, ptr @lgdt3305_write_reg._entry_ptr, ptr @lgdt3305_write_reg._entry_ptr.29, ptr @lgdt3305_write_regs._entry, ptr @lgdt3305_write_regs._entry.37, ptr @lgdt3305_write_regs._entry_ptr, ptr @lgdt3305_write_regs._entry_ptr.38, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @lgdt3304_ops, ptr @lgdt3305_ops, ptr @.str.4, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @lgdt3305_init.lgdt3304_init_data, ptr @lgdt3305_init.lgdt3305_init_data, ptr @.str.32, ptr @.str.35, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.43, ptr @.str.46, ptr @.str.51, ptr @.str.52, ptr @.str.67, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @.str.116, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.134, ptr @.str.136, ptr @.str.139, ptr @.str.140, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166], section "llvm.metadata"
@0 = internal global [156 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3304_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_attach._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_attach._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_attach._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_attach._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_attach._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_read_reg._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_write_reg._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_init.lgdt3304_init_data to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_init.lgdt3305_init_data to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_write_regs._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_soft_reset._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_set_reg_bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_set_reg_bit._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_sleep._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_sleep._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3304_set_parameters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3304_set_parameters._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3304_set_parameters._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3304_set_parameters._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3304_set_parameters._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3304_set_parameters._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3304_set_parameters._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3304_set_parameters._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_set_modulation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_set_modulation._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_passband_digital_agc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_agc_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_rfagc_loop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_rfagc_loop._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_set_if._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_spectral_inversion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_mpeg_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_mpeg_mode_polarity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_mpeg_mode_polarity._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_mpeg_mode_polarity._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_get_tune_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_get_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_read_status._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_read_status._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_read_status._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_read_cr_lock_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_read_cr_lock_status._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_read_fec_lock_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_read_fec_lock_status._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_read_signal_strength._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_read_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_read_snr._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_read_snr._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_read_snr._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_read_snr._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_read_snr._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_read_ucblocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_read_ucblocks._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_i2c_gate_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_set_parameters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_set_parameters._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_set_parameters._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_set_parameters._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_set_parameters._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_set_parameters._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_set_parameters._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_set_parameters._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_set_parameters._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_set_parameters._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_set_parameters._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_set_parameters._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_set_agc_power_ref._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_set_filter_extension._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lgdt3305_attach(ptr noundef %config, ptr noundef %i2c_adap) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !346
  %1 = load i32, ptr @debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %i2c_adap, null
  br i1 %tobool1.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 11
  %2 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.true ], [ 0, %do.end.cond.end_crit_edge ]
  %tobool2.not = icmp eq ptr %config, null
  br i1 %tobool2.not, label %cond.end.cond.end5_crit_edge, label %cond.true3

cond.end.cond.end5_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end5

cond.true3:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %config, align 4
  %conv = zext i8 %5 to i32
  br label %cond.end5

cond.end5:                                        ; preds = %cond.true3, %cond.end.cond.end5_crit_edge
  %cond6 = phi i32 [ %conv, %cond.true3 ], [ 0, %cond.end.cond.end5_crit_edge ]
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %cond, i32 noundef %cond6) #9
  br label %if.end

if.end:                                           ; preds = %cond.end5, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1060) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.end.do.end90_crit_edge, label %if.end11

if.end.do.end90_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end90

if.end11:                                         ; preds = %if.end
  %cfg = getelementptr inbounds %struct.lgdt3305_state, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %config, ptr %cfg, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %i2c_adap, ptr %call7.i.i, align 8
  %demod_chip = getelementptr inbounds %struct.lgdt3305_config, ptr %config, i32 0, i32 11
  %9 = ptrtoint ptr %demod_chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %demod_chip, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.end11.do.end90_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb13
  ]

if.end11.do.end90_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end90

sw.bb:                                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %ops = getelementptr inbounds %struct.lgdt3305_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %12 = call ptr @memcpy(ptr %ops, ptr @lgdt3304_ops, i32 544)
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %ops15 = getelementptr inbounds %struct.lgdt3305_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %13 = call ptr @memcpy(ptr %ops15, ptr @lgdt3305_ops, i32 544)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb
  %frontend16 = getelementptr inbounds %struct.lgdt3305_state, ptr %call7.i.i, i32 0, i32 2
  %demodulator_priv = getelementptr inbounds %struct.lgdt3305_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  %call17 = call fastcc i32 @lgdt3305_read_reg(ptr noundef nonnull %call7.i.i, i16 noundef zeroext 1, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  %call17.lobit = lshr i32 %call17, 31
  br i1 %cmp18, label %do.end24, label %sw.epilog.if.end27_crit_edge

sw.epilog.if.end27_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

do.end24:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call17, i32 noundef 1129) #9
  br label %if.end27

if.end27:                                         ; preds = %do.end24, %sw.epilog.if.end27_crit_edge
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp30 = icmp eq i8 %16, 0
  %conv31 = zext i1 %cmp30 to i32
  %or = or i32 %call17.lobit, %conv31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool32.not = icmp eq i32 %or, 0
  br i1 %tobool32.not, label %if.end34, label %if.end27.do.end90_crit_edge

if.end27.do.end90_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end90

if.end34:                                         ; preds = %if.end27
  %call35 = call fastcc i32 @lgdt3305_write_reg(ptr noundef nonnull %call7.i.i, i16 noundef zeroext 2056, i8 noundef zeroext -128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp37 = icmp slt i32 %call35, 0
  br i1 %cmp37, label %do.end43, label %if.end50.critedge

do.end43:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call35, i32 noundef 1132) #9
  br label %do.end90

if.end50.critedge:                                ; preds = %if.end34
  %call51 = call fastcc i32 @lgdt3305_read_reg(ptr noundef nonnull %call7.i.i, i16 noundef zeroext 2056, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp53 = icmp slt i32 %call51, 0
  %call51.lobit = lshr i32 %call51, 31
  br i1 %cmp53, label %do.end59, label %if.end50.critedge.if.end62_crit_edge

if.end50.critedge.if.end62_crit_edge:             ; preds = %if.end50.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

do.end59:                                         ; preds = %if.end50.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call51, i32 noundef 1135) #9
  br label %if.end62

if.end62:                                         ; preds = %do.end59, %if.end50.critedge.if.end62_crit_edge
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %18)
  %cmp65 = icmp ne i8 %18, -128
  %conv66 = zext i1 %cmp65 to i32
  %or67 = or i32 %call51.lobit, %conv66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or67)
  %tobool68.not = icmp eq i32 %or67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end62.do.end90_crit_edge

if.end62.do.end90_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end90

if.end70:                                         ; preds = %if.end62
  %call71 = call fastcc i32 @lgdt3305_write_reg(ptr noundef nonnull %call7.i.i, i16 noundef zeroext 2056, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp73 = icmp slt i32 %call71, 0
  br i1 %cmp73, label %do.end79, label %if.end86.critedge

do.end79:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call71, i32 noundef 1138) #9
  br label %do.end90

if.end86.critedge:                                ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %current_frequency = getelementptr inbounds %struct.lgdt3305_state, ptr %call7.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %current_frequency, align 4
  %current_modulation = getelementptr inbounds %struct.lgdt3305_state, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %current_modulation to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %current_modulation, align 8
  br label %cleanup

do.end90:                                         ; preds = %do.end79, %if.end62.do.end90_crit_edge, %do.end43, %if.end27.do.end90_crit_edge, %if.end11.do.end90_crit_edge, %if.end.do.end90_crit_edge
  %demod_chip92 = getelementptr inbounds %struct.lgdt3305_config, ptr %config, i32 0, i32 11
  %21 = ptrtoint ptr %demod_chip92 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %demod_chip92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool93.not = icmp eq i32 %22, 0
  %cond94 = select i1 %tobool93.not, ptr @.str.16, ptr @.str.15
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, ptr noundef nonnull %cond94) #9
  call void @kfree(ptr noundef %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end90, %if.end86.critedge
  %retval.0 = phi ptr [ null, %do.end90 ], [ %frontend16, %if.end86.critedge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3305_read_reg(ptr nocapture noundef readonly %state, i16 noundef zeroext %reg, ptr noundef %val) unnamed_addr #0 align 64 {
entry:
  %reg_buf = alloca [2 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_buf) #6
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #6
  %4 = getelementptr inbounds i8, ptr %msg, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %cfg = getelementptr inbounds %struct.lgdt3305_state, ptr %state, i32 0, i32 1
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
  %19 = load i32, ptr @debug, align 4
  %and14 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool.not = icmp eq i32 %and14, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %conv) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state, align 4
  %call17 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call17)
  %cmp.not = icmp eq i32 %call17, 2
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end22

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfg, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 4
  %conv26 = zext i8 %25 to i32
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef %conv26, i32 noundef %conv, i32 noundef %call17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp29 = icmp slt i32 %call17, 0
  %call17. = select i1 %cmp29, i32 %call17, i32 -121
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17., %do.end22 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_buf) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3305_write_reg(ptr nocapture noundef readonly %state, i16 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #6
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
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %6 = getelementptr inbounds i8, ptr %msg, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4
  %cfg = getelementptr inbounds %struct.lgdt3305_state, ptr %state, i32 0, i32 1
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
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %reg to i32
  %conv9 = zext i8 %val to i32
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef %conv, i32 noundef %conv9) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state, align 4
  %call10 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10)
  %cmp.not = icmp eq i32 %call10, 1
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %buf6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf6, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  %conv18 = zext i8 %22 to i32
  %arrayidx20 = getelementptr i8, ptr %20, i32 1
  %23 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %24 to i32
  %arrayidx23 = getelementptr i8, ptr %20, i32 2
  %25 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %26 to i32
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, i32 noundef %conv18, i32 noundef %conv21, i32 noundef %conv24, i32 noundef %call10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp26 = icmp slt i32 %call10, 0
  %call10. = select i1 %cmp26, i32 %call10, i32 -121
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10., %do.end15 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lgdt3305_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3305_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.32) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %cfg = getelementptr inbounds %struct.lgdt3305_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg, align 4
  %demod_chip = getelementptr inbounds %struct.lgdt3305_config, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %demod_chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %demod_chip, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %6, label %if.end.do.end8_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
  ]

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

sw.bb:                                            ; preds = %if.end
  %8 = load i32, ptr @debug, align 4
  %and.i = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.for.body.i.preheader_crit_edge, label %do.end.i

sw.bb.for.body.i.preheader_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef 29) #9
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %do.end.i, %sw.bb.for.body.i.preheader_crit_edge
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 28
  br i1 %exitcond.not.i, label %for.cond.i.if.end15.critedge_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.if.end15.critedge_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.critedge

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.026.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.lgdt3305_reg, ptr @lgdt3305_init.lgdt3304_init_data, i32 %i.026.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.i, align 2
  %val.i = getelementptr %struct.lgdt3305_reg, ptr @lgdt3305_init.lgdt3304_init_data, i32 %i.026.i, i32 1
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val.i, align 2
  %call2.i = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %1, i16 noundef zeroext %10, i8 noundef zeroext %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %for.body.i.do.end8.sink.split_crit_edge, label %for.cond.i

for.body.i.do.end8.sink.split_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8.sink.split

sw.bb2:                                           ; preds = %if.end
  %13 = load i32, ptr @debug, align 4
  %and.i23 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23)
  %tobool.not.i24 = icmp eq i32 %and.i23, 0
  br i1 %tobool.not.i24, label %sw.bb2.for.body.i36.preheader_crit_edge, label %do.end.i26

sw.bb2.for.body.i36.preheader_crit_edge:          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i36.preheader

do.end.i26:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %call.i25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef 24) #9
  br label %for.body.i36.preheader

for.body.i36.preheader:                           ; preds = %do.end.i26, %sw.bb2.for.body.i36.preheader_crit_edge
  br label %for.body.i36

for.cond.i30:                                     ; preds = %for.body.i36
  %inc.i28 = add nuw nsw i32 %i.026.i31, 1
  %exitcond.not.i29 = icmp eq i32 %inc.i28, 23
  br i1 %exitcond.not.i29, label %for.cond.i30.if.end15.critedge_crit_edge, label %for.cond.i30.for.body.i36_crit_edge

for.cond.i30.for.body.i36_crit_edge:              ; preds = %for.cond.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i36

for.cond.i30.if.end15.critedge_crit_edge:         ; preds = %for.cond.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.critedge

for.body.i36:                                     ; preds = %for.cond.i30.for.body.i36_crit_edge, %for.body.i36.preheader
  %i.026.i31 = phi i32 [ %inc.i28, %for.cond.i30.for.body.i36_crit_edge ], [ 0, %for.body.i36.preheader ]
  %arrayidx.i32 = getelementptr %struct.lgdt3305_reg, ptr @lgdt3305_init.lgdt3305_init_data, i32 %i.026.i31
  %14 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.i32, align 2
  %val.i33 = getelementptr %struct.lgdt3305_reg, ptr @lgdt3305_init.lgdt3305_init_data, i32 %i.026.i31, i32 1
  %16 = ptrtoint ptr %val.i33 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %val.i33, align 2
  %call2.i34 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %1, i16 noundef zeroext %15, i8 noundef zeroext %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i34)
  %cmp3.i35 = icmp slt i32 %call2.i34, 0
  br i1 %cmp3.i35, label %for.body.i36.do.end8.sink.split_crit_edge, label %for.cond.i30

for.body.i36.do.end8.sink.split_crit_edge:        ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8.sink.split

do.end8.sink.split:                               ; preds = %for.body.i36.do.end8.sink.split_crit_edge, %for.body.i.do.end8.sink.split_crit_edge
  %call2.i.lcssa.sink = phi i32 [ %call2.i, %for.body.i.do.end8.sink.split_crit_edge ], [ %call2.i34, %for.body.i36.do.end8.sink.split_crit_edge ]
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.36, i32 noundef %call2.i.lcssa.sink, i32 noundef 194) #9
  br label %do.end8

do.end8:                                          ; preds = %do.end8.sink.split, %if.end.do.end8_crit_edge
  %ret.0.ph = phi i32 [ -22, %if.end.do.end8_crit_edge ], [ %call2.i.lcssa.sink, %do.end8.sink.split ]
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.32, i32 noundef %ret.0.ph, i32 noundef 661) #9
  br label %fail

if.end15.critedge:                                ; preds = %for.cond.i30.if.end15.critedge_crit_edge, %for.cond.i.if.end15.critedge_crit_edge
  %call16 = tail call fastcc i32 @lgdt3305_soft_reset(ptr noundef %1)
  br label %fail

fail:                                             ; preds = %if.end15.critedge, %do.end8
  %ret.1 = phi i32 [ %call16, %if.end15.critedge ], [ %ret.0.ph, %do.end8 ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3305_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %__val = alloca i8, align 1
  %__val15 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.46) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__val) #6
  %3 = ptrtoint ptr %__val to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %__val, align 1, !annotation !346
  %call1 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %1, i16 noundef zeroext 2, ptr noundef nonnull %__val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end6, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.46, i32 noundef %call1, i32 noundef 562) #9
  %4 = ptrtoint ptr %__val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %__val, align 1
  br label %if.end13

if.end13:                                         ; preds = %do.end6, %if.end.if.end13_crit_edge
  %5 = ptrtoint ptr %__val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %__val, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__val) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__val15) #6
  %7 = ptrtoint ptr %__val15 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %__val15, align 1, !annotation !346
  %call17 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %1, i16 noundef zeroext 10, ptr noundef nonnull %__val15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp19 = icmp slt i32 %call17, 0
  br i1 %cmp19, label %do.end25, label %if.end13.if.end32_crit_edge

if.end13.if.end32_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

do.end25:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.46, i32 noundef %call17, i32 noundef 563) #9
  %8 = ptrtoint ptr %__val15 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %__val15, align 1
  br label %if.end32

if.end32:                                         ; preds = %do.end25, %if.end13.if.end32_crit_edge
  %9 = ptrtoint ptr %__val15 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %__val15, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__val15) #6
  %11 = and i8 %6, -8
  %12 = or i8 %11, 6
  %13 = and i8 %10, -4
  %call48 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %1, i16 noundef zeroext 2, i8 noundef zeroext %12)
  %call49 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %1, i16 noundef zeroext 10, i8 noundef zeroext %13)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3304_set_parameters(ptr noundef %fe) #0 align 64 {
entry:
  %val.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
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
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dtv_property_cache, align 4
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %modulation, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef %4, i32 noundef %6) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %7 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_params, align 4
  %tobool1.not = icmp eq ptr %8, null
  br i1 %tobool1.not, label %if.end.if.end27_crit_edge, label %if.then2

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then2:                                         ; preds = %if.end
  %call6 = tail call i32 %8(ptr noundef %fe) #6
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %9 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %if.then2.if.end13_crit_edge, label %if.then9

if.then2.if.end13_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then9:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 %10(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.then2.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end18, label %if.end25.critedge

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.52, i32 noundef %call6, i32 noundef 681) #9
  br label %cleanup

if.end25.critedge:                                ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dtv_property_cache, align 4
  %current_frequency = getelementptr inbounds %struct.lgdt3305_state, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %current_frequency, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end25.critedge, %if.end.if.end27_crit_edge
  %call28 = tail call fastcc i32 @lgdt3305_set_modulation(ptr noundef %1, ptr noundef %dtv_property_cache)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp30 = icmp slt i32 %call28, 0
  br i1 %cmp30, label %do.end36, label %if.end43.critedge

do.end36:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.52, i32 noundef %call28, i32 noundef 687) #9
  br label %cleanup

if.end43.critedge:                                ; preds = %if.end27
  %modulation.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %modulation.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %modulation.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %15, label %do.end52 [
    i32 7, label %if.end43.critedge.sw.epilog.i_crit_edge
    i32 3, label %sw.bb1.i
    i32 5, label %sw.bb2.i
  ]

if.end43.critedge.sw.epilog.i_crit_edge:          ; preds = %if.end43.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end43.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end43.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb1.i, %if.end43.critedge.sw.epilog.i_crit_edge
  %agc_ref.0.i = phi i32 [ 10880, %sw.bb2.i ], [ 10752, %sw.bb1.i ], [ 12996, %if.end43.critedge.sw.epilog.i_crit_edge ]
  %17 = load i32, ptr @debug, align 4
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.epilog.i.if.end59.critedge_crit_edge, label %do.end.i

sw.epilog.i.if.end59.critedge_crit_edge:          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.critedge

do.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef %agc_ref.0.i) #9
  br label %if.end59.critedge

do.end52:                                         ; preds = %if.end43.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.52, i32 noundef -22, i32 noundef 691) #9
  br label %cleanup

if.end59.critedge:                                ; preds = %do.end.i, %sw.epilog.i.if.end59.critedge_crit_edge
  %18 = lshr i32 %agc_ref.0.i, 8
  %conv4.i = trunc i32 %18 to i8
  %call5.i = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %1, i16 noundef zeroext 18, i8 noundef zeroext %conv4.i) #6
  %conv8.i = trunc i32 %agc_ref.0.i to i8
  %call9.i = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %1, i16 noundef zeroext 19, i8 noundef zeroext %conv8.i) #6
  %call60 = tail call fastcc i32 @lgdt3305_agc_setup(ptr noundef %1, ptr noundef %dtv_property_cache)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp62 = icmp slt i32 %call60, 0
  br i1 %cmp62, label %do.end68, label %if.end75.critedge

do.end68:                                         ; preds = %if.end59.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.52, i32 noundef %call60, i32 noundef 695) #9
  br label %cleanup

if.end75.critedge:                                ; preds = %if.end59.critedge
  %19 = ptrtoint ptr %modulation.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %modulation.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %20, label %if.end75.critedge.cleanup_crit_edge [
    i32 7, label %sw.bb
    i32 3, label %if.end75.critedge.sw.bb82_crit_edge
    i32 5, label %if.end75.critedge.sw.bb82_crit_edge219
  ]

if.end75.critedge.sw.bb82_crit_edge219:           ; preds = %if.end75.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb82

if.end75.critedge.sw.bb82_crit_edge:              ; preds = %if.end75.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb82

if.end75.critedge.cleanup_crit_edge:              ; preds = %if.end75.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end75.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call77 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %1, i16 noundef zeroext 781, i8 noundef zeroext 0)
  %call78 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %1, i16 noundef zeroext 262, i8 noundef zeroext 79)
  %call79 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %1, i16 noundef zeroext 263, i8 noundef zeroext 12)
  %call80 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %1, i16 noundef zeroext 264, i8 noundef zeroext -84)
  %call81 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %1, i16 noundef zeroext 265, i8 noundef zeroext -70)
  br label %sw.epilog

sw.bb82:                                          ; preds = %if.end75.critedge.sw.bb82_crit_edge, %if.end75.critedge.sw.bb82_crit_edge219
  %call83 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %1, i16 noundef zeroext 781, i8 noundef zeroext 20)
  %call84 = tail call fastcc i32 @lgdt3305_set_if(ptr noundef %1, ptr noundef %dtv_property_cache)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp86 = icmp slt i32 %call84, 0
  br i1 %cmp86, label %do.end92, label %sw.bb82.sw.epilog_crit_edge

sw.bb82.sw.epilog_crit_edge:                      ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end92:                                         ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #8
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.52, i32 noundef %call84, i32 noundef 711) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb82.sw.epilog_crit_edge, %sw.bb
  %cfg = getelementptr inbounds %struct.lgdt3305_state, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfg, align 4
  %spectral_inversion = getelementptr inbounds %struct.lgdt3305_config, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %spectral_inversion to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %spectral_inversion, align 4
  %25 = lshr i8 %bf.load, 6
  %.lobit = and i8 %25, 1
  %26 = load i32, ptr @debug, align 4
  %and.i198 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i198)
  %tobool.not.i199 = icmp eq i32 %and.i198, 0
  br i1 %tobool.not.i199, label %sw.epilog.if.end.i203_crit_edge, label %do.end.i201

sw.epilog.if.end.i203_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i203

do.end.i201:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %27 = zext i8 %.lobit to i32
  %call.i200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, i32 noundef %27) #9
  br label %if.end.i203

if.end.i203:                                      ; preds = %do.end.i201, %sw.epilog.if.end.i203_crit_edge
  %28 = ptrtoint ptr %modulation.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %modulation.i, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %29, label %if.end.i203.do.end109_crit_edge [
    i32 7, label %sw.bb.i
    i32 3, label %if.end.i203.sw.bb3.i_crit_edge
    i32 5, label %if.end.i203.sw.bb3.i_crit_edge220
  ]

if.end.i203.sw.bb3.i_crit_edge220:                ; preds = %if.end.i203
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

if.end.i203.sw.bb3.i_crit_edge:                   ; preds = %if.end.i203
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

if.end.i203.do.end109_crit_edge:                  ; preds = %if.end.i203
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end109

sw.bb.i:                                          ; preds = %if.end.i203
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lobit)
  %tobool1.not.i = icmp eq i8 %.lobit, 0
  %conv.i = select i1 %tobool1.not.i, i8 121, i8 -7
  %call2.i = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %1, i16 noundef zeroext 294, i8 noundef zeroext %conv.i) #6
  br label %lgdt3305_spectral_inversion.exit

sw.bb3.i:                                         ; preds = %if.end.i203.sw.bb3.i_crit_edge, %if.end.i203.sw.bb3.i_crit_edge220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lobit)
  %tobool4.not.i = icmp eq i8 %.lobit, 0
  %conv6.i = select i1 %tobool4.not.i, i8 -1, i8 -3
  %call7.i = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %1, i16 noundef zeroext 1284, i8 noundef zeroext %conv6.i) #6
  br label %lgdt3305_spectral_inversion.exit

lgdt3305_spectral_inversion.exit:                 ; preds = %sw.bb3.i, %sw.bb.i
  %ret.0.i = phi i32 [ %call7.i, %sw.bb3.i ], [ %call2.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp103 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp103, label %lgdt3305_spectral_inversion.exit.do.end109_crit_edge, label %if.end116.critedge

lgdt3305_spectral_inversion.exit.do.end109_crit_edge: ; preds = %lgdt3305_spectral_inversion.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end109

do.end109:                                        ; preds = %lgdt3305_spectral_inversion.exit.do.end109_crit_edge, %if.end.i203.do.end109_crit_edge
  %ret.0.i215 = phi i32 [ %ret.0.i, %lgdt3305_spectral_inversion.exit.do.end109_crit_edge ], [ -22, %if.end.i203.do.end109_crit_edge ]
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.52, i32 noundef %ret.0.i215, i32 noundef 722) #9
  br label %cleanup

if.end116.critedge:                               ; preds = %lgdt3305_spectral_inversion.exit
  %31 = ptrtoint ptr %modulation.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %modulation.i, align 4
  %current_modulation = getelementptr inbounds %struct.lgdt3305_state, ptr %1, i32 0, i32 3
  %33 = ptrtoint ptr %current_modulation to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %current_modulation, align 4
  %34 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cfg, align 4
  %mpeg_mode = getelementptr inbounds %struct.lgdt3305_config, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %mpeg_mode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mpeg_mode, align 4
  %38 = load i32, ptr @debug, align 4
  %and.i205 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i205)
  %tobool.not.i206 = icmp eq i32 %and.i205, 0
  br i1 %tobool.not.i206, label %if.end116.critedge.if.end.i209_crit_edge, label %do.end.i208

if.end116.critedge.if.end.i209_crit_edge:         ; preds = %if.end116.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i209

do.end.i208:                                      ; preds = %if.end116.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call.i207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.83, i32 noundef %37) #9
  br label %if.end.i209

if.end.i209:                                      ; preds = %do.end.i208, %if.end116.critedge.if.end.i209_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #6
  %39 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -1, ptr %val.i.i, align 1, !annotation !346
  %40 = load i32, ptr @debug, align 4
  %and.i.i = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i209.if.end.i.i_crit_edge, label %do.end.i.i

if.end.i209.if.end.i.i_crit_edge:                 ; preds = %if.end.i209
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end.i209
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef 1294, i32 noundef 5, i32 noundef %37) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end.i209.if.end.i.i_crit_edge
  %call1.i.i = call fastcc i32 @lgdt3305_read_reg(ptr noundef %1, i16 noundef zeroext 1294, ptr noundef nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %lgdt3305_mpeg_mode.exit.thread, label %lgdt3305_mpeg_mode.exit

lgdt3305_mpeg_mode.exit.thread:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.43, i32 noundef %call1.i.i, i32 noundef 169) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #6
  br label %do.end127

lgdt3305_mpeg_mode.exit:                          ; preds = %if.end.i.i
  %41 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %val.i.i, align 1
  %conv17.i.i = and i8 %42, -33
  %mode.tr.i = trunc i32 %37 to i8
  %43 = shl i8 %mode.tr.i, 5
  %44 = and i8 %43, 32
  %conv21.i.i = or i8 %conv17.i.i, %44
  store i8 %conv21.i.i, ptr %val.i.i, align 1
  %call22.i.i = call fastcc i32 @lgdt3305_write_reg(ptr noundef %1, i16 noundef zeroext 1294, i8 noundef zeroext %conv21.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %cmp121 = icmp slt i32 %call22.i.i, 0
  br i1 %cmp121, label %lgdt3305_mpeg_mode.exit.do.end127_crit_edge, label %if.end134.critedge

lgdt3305_mpeg_mode.exit.do.end127_crit_edge:      ; preds = %lgdt3305_mpeg_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end127

do.end127:                                        ; preds = %lgdt3305_mpeg_mode.exit.do.end127_crit_edge, %lgdt3305_mpeg_mode.exit.thread
  %ret.0.i.i218 = phi i32 [ %call1.i.i, %lgdt3305_mpeg_mode.exit.thread ], [ %call22.i.i, %lgdt3305_mpeg_mode.exit.do.end127_crit_edge ]
  %call129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.52, i32 noundef %ret.0.i.i218, i32 noundef 728) #9
  br label %cleanup

if.end134.critedge:                               ; preds = %lgdt3305_mpeg_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call135 = call fastcc i32 @lgdt3305_mpeg_mode_polarity(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end134.critedge, %do.end127, %do.end109, %do.end92, %if.end75.critedge.cleanup_crit_edge, %do.end68, %do.end52, %do.end36, %do.end18
  %retval.0 = phi i32 [ -22, %if.end75.critedge.cleanup_crit_edge ], [ %call135, %if.end134.critedge ], [ %call6, %do.end18 ], [ %call28, %do.end36 ], [ -22, %do.end52 ], [ %call60, %do.end68 ], [ %call84, %do.end92 ], [ %ret.0.i215, %do.end109 ], [ %ret.0.i.i218, %do.end127 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3305_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %fe_tune_settings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fe_tune_settings to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 500, ptr %fe_tune_settings, align 4
  %1 = load i32, ptr @debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.90) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3305_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.91) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %current_modulation = getelementptr inbounds %struct.lgdt3305_state, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %current_modulation to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %current_modulation, align 4
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 1
  %5 = ptrtoint ptr %modulation to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %modulation, align 4
  %current_frequency = getelementptr inbounds %struct.lgdt3305_state, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %current_frequency to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %current_frequency, align 4
  %8 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %p, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3305_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %val.i131 = alloca i8, align 1
  %val.i = alloca i8, align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !346
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %status, align 4
  %call = call fastcc i32 @lgdt3305_read_reg(ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end5.critedge

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.92, i32 noundef %call, i32 noundef 911) #9
  br label %fail

if.end5.critedge:                                 ; preds = %entry
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %val, align 1
  %conv6 = zext i8 %5 to i32
  %and = and i32 %conv6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %and9 = lshr i32 %conv6, 3
  %and9.lobit = and i32 %and9, 1
  %6 = xor i32 %and9.lobit, 1
  %and13 = and i32 %conv6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %and17 = and i32 %conv6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %7 = load i32, ptr @debug, align 4
  %and24 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end5.critedge.if.end42_crit_edge, label %do.end29

if.end5.critedge.if.end42_crit_edge:              ; preds = %if.end5.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

do.end29:                                         ; preds = %if.end5.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %and21 = and i32 %conv6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %cond32 = select i1 %tobool7.not, ptr @.str.97, ptr @.str.96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool33.not = icmp eq i32 %6, 0
  %cond34 = select i1 %tobool33.not, ptr @.str.97, ptr @.str.98
  %cond36 = select i1 %tobool14.not, ptr @.str.97, ptr @.str.99
  %cond38 = select i1 %tobool18.not, ptr @.str.97, ptr @.str.100
  %cond40 = select i1 %tobool22.not, ptr @.str.97, ptr @.str.101
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.92, ptr noundef nonnull %cond32, ptr noundef nonnull %cond34, ptr noundef nonnull %cond36, ptr noundef nonnull %cond38, ptr noundef nonnull %cond40) #9
  br label %if.end42

if.end42:                                         ; preds = %do.end29, %if.end5.critedge.if.end42_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %val.i, align 1, !annotation !346
  %call.i = call fastcc i32 @lgdt3305_read_reg(ptr noundef %1, i16 noundef zeroext 285, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %lgdt3305_read_cr_lock_status.exit.thread, label %if.end5.critedge.i

lgdt3305_read_cr_lock_status.exit.thread:         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.106, i32 noundef %call.i, i32 noundef 825) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  br label %do.end51

if.end5.critedge.i:                               ; preds = %if.end42
  %current_modulation.i = getelementptr inbounds %struct.lgdt3305_state, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %current_modulation.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %current_modulation.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %10, label %if.end5.critedge.i.sw.epilog23.i_crit_edge [
    i32 5, label %if.end5.critedge.i.sw.bb.i_crit_edge
    i32 3, label %if.end5.critedge.i.sw.bb.i_crit_edge153
    i32 7, label %sw.bb16.i
  ]

if.end5.critedge.i.sw.bb.i_crit_edge153:          ; preds = %if.end5.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end5.critedge.i.sw.bb.i_crit_edge:             ; preds = %if.end5.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end5.critedge.i.sw.epilog23.i_crit_edge:       ; preds = %if.end5.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog23.i

sw.bb.i:                                          ; preds = %if.end5.critedge.i.sw.bb.i_crit_edge, %if.end5.critedge.i.sw.bb.i_crit_edge153
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %val.i, align 1
  %14 = lshr i8 %13, 1
  %.lobit = and i8 %14, 1
  %15 = zext i8 %.lobit to i32
  %16 = and i8 %13, 7
  %and11.i = zext i8 %16 to i32
  %17 = zext i32 %and11.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %and11.i, label %sw.default.i [
    i32 0, label %sw.bb.i.sw.epilog23.i_crit_edge
    i32 4, label %sw.bb13.i
    i32 6, label %sw.bb14.i
    i32 7, label %sw.bb15.i
  ]

sw.bb.i.sw.epilog23.i_crit_edge:                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog23.i

sw.bb13.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog23.i

sw.bb14.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog23.i

sw.bb15.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog23.i

sw.default.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog23.i

sw.bb16.i:                                        ; preds = %if.end5.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %tobool19.not.i = icmp sgt i8 %19, -1
  %not.tobool19.not.i = xor i1 %tobool19.not.i, true
  %spec.select151 = zext i1 %not.tobool19.not.i to i32
  %spec.select152 = select i1 %tobool19.not.i, ptr @.str.97, ptr @.str.112
  br label %sw.epilog23.i

sw.epilog23.i:                                    ; preds = %sw.bb16.i, %sw.default.i, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb.i.sw.epilog23.i_crit_edge, %if.end5.critedge.i.sw.epilog23.i_crit_edge
  %cr_lock.1 = phi i32 [ 0, %if.end5.critedge.i.sw.epilog23.i_crit_edge ], [ %15, %sw.default.i ], [ %15, %sw.bb15.i ], [ %15, %sw.bb14.i ], [ %15, %sw.bb13.i ], [ %15, %sw.bb.i.sw.epilog23.i_crit_edge ], [ %spec.select151, %sw.bb16.i ]
  %cr_lock_state.0.i = phi ptr [ @.str.97, %if.end5.critedge.i.sw.epilog23.i_crit_edge ], [ @.str.111, %sw.default.i ], [ @.str.110, %sw.bb15.i ], [ @.str.109, %sw.bb14.i ], [ @.str.108, %sw.bb13.i ], [ @.str.107, %sw.bb.i.sw.epilog23.i_crit_edge ], [ %spec.select152, %sw.bb16.i ]
  %cmp45 = phi i1 [ true, %if.end5.critedge.i.sw.epilog23.i_crit_edge ], [ false, %sw.default.i ], [ false, %sw.bb15.i ], [ false, %sw.bb14.i ], [ false, %sw.bb13.i ], [ false, %sw.bb.i.sw.epilog23.i_crit_edge ], [ false, %sw.bb16.i ]
  %ret.0.i = phi i32 [ -22, %if.end5.critedge.i.sw.epilog23.i_crit_edge ], [ 0, %sw.default.i ], [ 0, %sw.bb15.i ], [ 0, %sw.bb14.i ], [ 0, %sw.bb13.i ], [ %and11.i, %sw.bb.i.sw.epilog23.i_crit_edge ], [ 0, %sw.bb16.i ]
  %20 = load i32, ptr @debug, align 4
  %and24.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %sw.epilog23.i.lgdt3305_read_cr_lock_status.exit_crit_edge, label %do.end29.i

sw.epilog23.i.lgdt3305_read_cr_lock_status.exit_crit_edge: ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgdt3305_read_cr_lock_status.exit

do.end29.i:                                       ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.106, i32 noundef %cr_lock.1, ptr noundef nonnull %cr_lock_state.0.i) #9
  br label %lgdt3305_read_cr_lock_status.exit

lgdt3305_read_cr_lock_status.exit:                ; preds = %do.end29.i, %sw.epilog23.i.lgdt3305_read_cr_lock_status.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  br i1 %cmp45, label %lgdt3305_read_cr_lock_status.exit.do.end51_crit_edge, label %if.end58.critedge

lgdt3305_read_cr_lock_status.exit.do.end51_crit_edge: ; preds = %lgdt3305_read_cr_lock_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end51

do.end51:                                         ; preds = %lgdt3305_read_cr_lock_status.exit.do.end51_crit_edge, %lgdt3305_read_cr_lock_status.exit.thread
  %ret.1.i146 = phi i32 [ %call.i, %lgdt3305_read_cr_lock_status.exit.thread ], [ %ret.0.i, %lgdt3305_read_cr_lock_status.exit.do.end51_crit_edge ]
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.92, i32 noundef %ret.1.i146, i32 noundef 928) #9
  br label %fail

if.end58.critedge:                                ; preds = %lgdt3305_read_cr_lock_status.exit
  br i1 %tobool7.not, label %if.end58.critedge.if.end61_crit_edge, label %if.then60

if.end58.critedge.if.end61_crit_edge:             ; preds = %if.end58.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then60:                                        ; preds = %if.end58.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status, align 4
  %or = or i32 %22, 1
  store i32 %or, ptr %status, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end58.critedge.if.end61_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cr_lock.1)
  %tobool62.not = icmp eq i32 %cr_lock.1, 0
  br i1 %tobool62.not, label %if.end61.if.end65_crit_edge, label %if.then63

if.end61.if.end65_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status, align 4
  %or64 = or i32 %24, 2
  store i32 %or64, ptr %status, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end61.if.end65_crit_edge
  br i1 %tobool18.not, label %if.end65.if.end69_crit_edge, label %if.then67

if.end65.if.end69_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status, align 4
  %or68 = or i32 %26, 4
  store i32 %or68, ptr %status, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end65.if.end69_crit_edge
  br i1 %tobool14.not, label %if.end69.if.end73_crit_edge, label %if.then71

if.end69.if.end73_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then71:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status, align 4
  %or72 = or i32 %28, 8
  store i32 %or72, ptr %status, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end69.if.end73_crit_edge
  %29 = ptrtoint ptr %current_modulation.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %current_modulation.i, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %30, label %if.end73.fail_crit_edge [
    i32 5, label %if.end73.sw.bb_crit_edge
    i32 3, label %if.end73.sw.bb_crit_edge154
    i32 7, label %sw.bb100
  ]

if.end73.sw.bb_crit_edge154:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end73.sw.bb_crit_edge:                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end73.fail_crit_edge:                          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

sw.bb:                                            ; preds = %if.end73.sw.bb_crit_edge, %if.end73.sw.bb_crit_edge154
  %cfg = getelementptr inbounds %struct.lgdt3305_state, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cfg, align 4
  %demod_chip = getelementptr inbounds %struct.lgdt3305_config, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %demod_chip to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %demod_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp74 = icmp ne i32 %35, 1
  %brmerge = select i1 %cmp74, i1 true, i1 %tobool62.not
  br i1 %brmerge, label %sw.bb.if.end79_crit_edge, label %if.then77

sw.bb.if.end79_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.then77:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %status, align 4
  %or78 = or i32 %37, 1
  store i32 %or78, ptr %status, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %sw.bb.if.end79_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i131) #6
  %38 = ptrtoint ptr %val.i131 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %val.i131, align 1, !annotation !346
  %39 = ptrtoint ptr %current_modulation.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %current_modulation.i, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %40, label %if.end79.do.end88_crit_edge [
    i32 5, label %if.end79.sw.bb.i135_crit_edge
    i32 3, label %if.end79.sw.bb.i135_crit_edge155
  ]

if.end79.sw.bb.i135_crit_edge155:                 ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i135

if.end79.sw.bb.i135_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i135

if.end79.do.end88_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end88

sw.bb.i135:                                       ; preds = %if.end79.sw.bb.i135_crit_edge, %if.end79.sw.bb.i135_crit_edge155
  %call.i133 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %1, i16 noundef zeroext 1290, ptr noundef nonnull %val.i131) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %cmp.i134 = icmp slt i32 %call.i133, 0
  br i1 %cmp.i134, label %do.end.i137, label %if.end5.critedge.i138

do.end.i137:                                      ; preds = %sw.bb.i135
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.116, i32 noundef %call.i133, i32 noundef 879) #9
  br label %do.end88

if.end5.critedge.i138:                            ; preds = %sw.bb.i135
  %42 = ptrtoint ptr %val.i131 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %val.i131, align 1
  %conv6.i = zext i8 %43 to i32
  %and13.i = and i32 %conv6.i, 8
  %and13.lobit.i = lshr exact i32 %and13.i, 3
  %44 = and i32 %conv6.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %44)
  %.not.i = icmp eq i32 %44, 5
  %45 = select i1 %.not.i, i32 %and13.lobit.i, i32 0
  %46 = load i32, ptr @debug, align 4
  %and19.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end5.critedge.i138.if.end95.critedge_crit_edge, label %do.end24.i

if.end5.critedge.i138.if.end95.critedge_crit_edge: ; preds = %if.end5.critedge.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95.critedge

do.end24.i:                                       ; preds = %if.end5.critedge.i138
  call void @__sanitizer_cov_trace_pc() #8
  %and9.i = and i32 %conv6.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %and.i = and i32 %conv6.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i139 = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %cond27.i = select i1 %tobool7.not.i139, ptr @.str.97, ptr @.str.120
  %cond29.i = select i1 %tobool10.not.i, ptr @.str.97, ptr @.str.121
  %cond31.i = select i1 %tobool14.not.i, ptr @.str.97, ptr @.str.122
  %call32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.116, i32 noundef %45, ptr noundef nonnull %cond27.i, ptr noundef nonnull %cond29.i, ptr noundef nonnull %cond31.i) #9
  br label %if.end95.critedge

do.end88:                                         ; preds = %do.end.i137, %if.end79.do.end88_crit_edge
  %ret.0.i140.ph = phi i32 [ -22, %if.end79.do.end88_crit_edge ], [ %call.i133, %do.end.i137 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i131) #6
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.92, i32 noundef %ret.0.i140.ph, i32 noundef 948) #9
  br label %fail

if.end95.critedge:                                ; preds = %do.end24.i, %if.end5.critedge.i138.if.end95.critedge_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i131) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool96.not = icmp eq i32 %45, 0
  br i1 %tobool96.not, label %if.end95.critedge.fail_crit_edge, label %if.then97

if.end95.critedge.fail_crit_edge:                 ; preds = %if.end95.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.then97:                                        ; preds = %if.end95.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %status, align 4
  %or98 = or i32 %48, 16
  store i32 %or98, ptr %status, align 4
  br label %fail

sw.bb100:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool101.not = icmp eq i32 %6, 0
  br i1 %tobool101.not, label %sw.bb100.fail_crit_edge, label %if.then102

sw.bb100.fail_crit_edge:                          ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.then102:                                       ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %status, align 4
  %or103 = or i32 %50, 16
  store i32 %or103, ptr %status, align 4
  br label %fail

fail:                                             ; preds = %if.then102, %sw.bb100.fail_crit_edge, %if.then97, %if.end95.critedge.fail_crit_edge, %do.end88, %if.end73.fail_crit_edge, %do.end51, %do.end
  %ret.0 = phi i32 [ 0, %if.then102 ], [ 0, %sw.bb100.fail_crit_edge ], [ 0, %if.then97 ], [ 0, %if.end95.critedge.fail_crit_edge ], [ %call, %do.end ], [ %ret.1.i146, %do.end51 ], [ %ret.0.i140.ph, %do.end88 ], [ -22, %if.end73.fail_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lgdt3305_read_ber(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %ber) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3305_read_signal_strength(ptr noundef %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  %snr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %snr) #6
  %2 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %snr, align 2, !annotation !346
  %3 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %strength, align 2
  %read_snr = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 18
  %4 = ptrtoint ptr %read_snr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_snr, align 4
  %call = call i32 %5(ptr noundef %fe, ptr noundef nonnull %snr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end5.critedge

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.123, i32 noundef %call, i32 noundef 1045) #9
  br label %fail

if.end5.critedge:                                 ; preds = %entry
  %snr6 = getelementptr inbounds %struct.lgdt3305_state, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %snr6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %snr6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 587202559, i32 %7)
  %cmp7 = icmp ugt i32 %7, 587202559
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end5.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %strength, align 2
  br label %fail

if.else:                                          ; preds = %if.end5.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %div = udiv i32 %7, 8960
  %conv11 = trunc i32 %div to i16
  %9 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv11, ptr %strength, align 2
  br label %fail

fail:                                             ; preds = %if.else, %if.then9, %do.end
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %snr) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3305_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  %__val = alloca i8, align 1
  %__val8 = alloca i8, align 1
  %__val29 = alloca i8, align 1
  %__val52 = alloca i8, align 1
  %__val73 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %current_modulation = getelementptr inbounds %struct.lgdt3305_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %current_modulation to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_modulation, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 7, label %sw.bb
    i32 3, label %entry.sw.bb51_crit_edge
    i32 5, label %entry.sw.bb51_crit_edge139
  ]

entry.sw.bb51_crit_edge139:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb51

entry.sw.bb51_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb51

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__val) #6
  %5 = ptrtoint ptr %__val to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %__val, align 1, !annotation !346
  %call = call fastcc i32 @lgdt3305_read_reg(ptr noundef %1, i16 noundef zeroext 1043, ptr noundef nonnull %__val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %sw.bb.if.end5_crit_edge

sw.bb.if.end5_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.124, i32 noundef %call, i32 noundef 1001) #9
  %6 = ptrtoint ptr %__val to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %__val, align 1
  br label %if.end5

if.end5:                                          ; preds = %do.end, %sw.bb.if.end5_crit_edge
  %7 = ptrtoint ptr %__val to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %__val, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__val) #6
  %9 = and i8 %8, 15
  %and = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %and, 16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__val8) #6
  %10 = ptrtoint ptr %__val8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %__val8, align 1, !annotation !346
  %call10 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %1, i16 noundef zeroext 1044, ptr noundef nonnull %__val8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp12 = icmp slt i32 %call10, 0
  br i1 %cmp12, label %do.end18, label %if.end5.if.end25_crit_edge

if.end5.if.end25_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

do.end18:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.124, i32 noundef %call10, i32 noundef 1002) #9
  %11 = ptrtoint ptr %__val8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %__val8, align 1
  br label %if.end25

if.end25:                                         ; preds = %do.end18, %if.end5.if.end25_crit_edge
  %12 = ptrtoint ptr %__val8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %__val8, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__val8) #6
  %conv27 = zext i8 %13 to i32
  %shl28 = shl nuw nsw i32 %conv27, 8
  %or = or i32 %shl28, %shl
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__val29) #6
  %14 = ptrtoint ptr %__val29 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %__val29, align 1, !annotation !346
  %call31 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %1, i16 noundef zeroext 1045, ptr noundef nonnull %__val29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp33 = icmp slt i32 %call31, 0
  br i1 %cmp33, label %do.end39, label %if.end25.if.end46_crit_edge

if.end25.if.end46_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

do.end39:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.124, i32 noundef %call31, i32 noundef 1003) #9
  %15 = ptrtoint ptr %__val29 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %__val29, align 1
  br label %if.end46

if.end46:                                         ; preds = %do.end39, %if.end25.if.end46_crit_edge
  %16 = ptrtoint ptr %__val29 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %__val29, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__val29) #6
  %conv48 = zext i8 %17 to i32
  %or50 = or i32 %or, %conv48
  br label %sw.epilog

sw.bb51:                                          ; preds = %entry.sw.bb51_crit_edge, %entry.sw.bb51_crit_edge139
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__val52) #6
  %18 = ptrtoint ptr %__val52 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %__val52, align 1, !annotation !346
  %call54 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %1, i16 noundef zeroext 283, ptr noundef nonnull %__val52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp56 = icmp slt i32 %call54, 0
  br i1 %cmp56, label %do.end62, label %sw.bb51.if.end69_crit_edge

sw.bb51.if.end69_crit_edge:                       ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

do.end62:                                         ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #8
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.124, i32 noundef %call54, i32 noundef 1009) #9
  %19 = ptrtoint ptr %__val52 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %__val52, align 1
  br label %if.end69

if.end69:                                         ; preds = %do.end62, %sw.bb51.if.end69_crit_edge
  %20 = ptrtoint ptr %__val52 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %__val52, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__val52) #6
  %conv71 = zext i8 %21 to i32
  %shl72 = shl nuw nsw i32 %conv71, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__val73) #6
  %22 = ptrtoint ptr %__val73 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %__val73, align 1, !annotation !346
  %call75 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %1, i16 noundef zeroext 284, ptr noundef nonnull %__val73)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp77 = icmp slt i32 %call75, 0
  br i1 %cmp77, label %do.end83, label %if.end69.if.end90_crit_edge

if.end69.if.end90_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

do.end83:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.124, i32 noundef %call75, i32 noundef 1010) #9
  %23 = ptrtoint ptr %__val73 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %__val73, align 1
  br label %if.end90

if.end90:                                         ; preds = %do.end83, %if.end69.if.end90_crit_edge
  %24 = ptrtoint ptr %__val73 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %__val73, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__val73) #6
  %conv92 = zext i8 %25 to i32
  %or94 = or i32 %shl72, %conv92
  %26 = ptrtoint ptr %current_modulation to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %current_modulation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp96 = icmp eq i32 %27, 3
  %cond = select i1 %cmp96, i32 97939837, i32 98026066
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end90, %if.end46
  %c.0 = phi i32 [ %cond, %if.end90 ], [ 73957994, %if.end46 ]
  %noise.0 = phi i32 [ %or94, %if.end90 ], [ %or50, %if.end46 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %noise.0)
  %cmp.i = icmp eq i32 %noise.0, 0
  br i1 %cmp.i, label %sw.epilog.calculate_snr.exit_crit_edge, label %if.end.i

sw.epilog.calculate_snr.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %calculate_snr.exit

if.end.i:                                         ; preds = %sw.epilog
  %call.i = call i32 @intlog10(i32 noundef %noise.0) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %c.0, i32 %call.i)
  %cmp1.i = icmp ult i32 %c.0, %call.i
  br i1 %cmp1.i, label %if.end.i.calculate_snr.exit_crit_edge, label %if.end3.i

if.end.i.calculate_snr.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %calculate_snr.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub i32 %c.0, %call.i
  %mul.i = mul i32 %sub.i, 10
  br label %calculate_snr.exit

calculate_snr.exit:                               ; preds = %if.end3.i, %if.end.i.calculate_snr.exit_crit_edge, %sw.epilog.calculate_snr.exit_crit_edge
  %retval.0.i = phi i32 [ %mul.i, %if.end3.i ], [ 0, %sw.epilog.calculate_snr.exit_crit_edge ], [ 0, %if.end.i.calculate_snr.exit_crit_edge ]
  %snr99 = getelementptr inbounds %struct.lgdt3305_state, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %snr99 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.0.i, ptr %snr99, align 4
  %div = udiv i32 %retval.0.i, 1677721
  %conv101 = trunc i32 %div to i16
  %29 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv101, ptr %snr, align 2
  %30 = load i32, ptr @debug, align 4
  %and102 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %calculate_snr.exit.cleanup_crit_edge, label %do.end107

calculate_snr.exit.cleanup_crit_edge:             ; preds = %calculate_snr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end107:                                        ; preds = %calculate_snr.exit
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %snr99 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %snr99, align 4
  %shr = lshr i32 %32, 24
  %shr111 = lshr i32 %32, 8
  %and112 = and i32 %shr111, 65535
  %mul = mul nuw nsw i32 %and112, 100
  %shr113 = lshr i32 %mul, 16
  %call114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.124, i32 noundef %noise.0, i32 noundef %shr, i32 noundef %shr113) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end107, %calculate_snr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end107 ], [ 0, %calculate_snr.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3305_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  %__val = alloca i8, align 1
  %__val8 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__val) #6
  %2 = ptrtoint ptr %__val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %__val, align 1, !annotation !346
  %call = call fastcc i32 @lgdt3305_read_reg(ptr noundef %1, i16 noundef zeroext 1292, ptr noundef nonnull %__val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.136, i32 noundef %call, i32 noundef 1070) #9
  %3 = ptrtoint ptr %__val to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %__val, align 1
  br label %if.end5

if.end5:                                          ; preds = %do.end, %entry.if.end5_crit_edge
  %4 = ptrtoint ptr %__val to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %__val, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__val) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__val8) #6
  %6 = ptrtoint ptr %__val8 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %__val8, align 1, !annotation !346
  %call10 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %1, i16 noundef zeroext 1293, ptr noundef nonnull %__val8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp12 = icmp slt i32 %call10, 0
  br i1 %cmp12, label %do.end18, label %if.end5.if.end25_crit_edge

if.end5.if.end25_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

do.end18:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.136, i32 noundef %call10, i32 noundef 1071) #9
  %7 = ptrtoint ptr %__val8 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %__val8, align 1
  br label %if.end25

if.end25:                                         ; preds = %do.end18, %if.end5.if.end25_crit_edge
  %conv7 = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv7, 8
  %8 = ptrtoint ptr %__val8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %__val8, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__val8) #6
  %conv27 = zext i8 %9 to i32
  %or = or i32 %shl, %conv27
  %10 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %ucblocks, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3305_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %cfg = getelementptr inbounds %struct.lgdt3305_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 4
  %deny_i2c_rptr = getelementptr inbounds %struct.lgdt3305_config, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %deny_i2c_rptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %deny_i2c_rptr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i32, ptr @debug, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %do.end

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.139, i32 noundef %enable) #9
  br label %if.end3

if.end3:                                          ; preds = %do.end, %if.end.if.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool4.not = icmp eq i32 %enable, 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %val.i, align 1, !annotation !346
  %7 = load i32, ptr @debug, align 4
  %and.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end3.if.end.i_crit_edge, label %do.end.i

if.end3.if.end.i_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %cond = zext i1 %tobool4.not to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef 1, i32 noundef 5, i32 noundef %cond) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end3.if.end.i_crit_edge
  %call1.i = call fastcc i32 @lgdt3305_read_reg(ptr noundef %1, i16 noundef zeroext 1, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end7.i, label %if.end14.critedge.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.43, i32 noundef %call1.i, i32 noundef 169) #9
  br label %lgdt3305_set_reg_bit.exit

if.end14.critedge.i:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val.i, align 1
  %conv17.i = and i8 %9, -33
  %10 = select i1 %tobool4.not, i8 32, i8 0
  %conv21.i = or i8 %conv17.i, %10
  store i8 %conv21.i, ptr %val.i, align 1
  %call22.i = call fastcc i32 @lgdt3305_write_reg(ptr noundef %1, i16 noundef zeroext 1, i8 noundef zeroext %conv21.i) #6
  br label %lgdt3305_set_reg_bit.exit

lgdt3305_set_reg_bit.exit:                        ; preds = %if.end14.critedge.i, %do.end7.i
  %ret.0.i = phi i32 [ %call22.i, %if.end14.critedge.i ], [ %call1.i, %do.end7.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  br label %cleanup

cleanup:                                          ; preds = %lgdt3305_set_reg_bit.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %lgdt3305_set_reg_bit.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3305_soft_reset(ptr nocapture noundef readonly %state) unnamed_addr #0 align 64 {
entry:
  %val.i19 = alloca i8, align 1
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.39) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %val.i, align 1, !annotation !346
  %2 = load i32, ptr @debug, align 4
  %and.i = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %do.end.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef 2, i32 noundef 0, i32 noundef 0) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge
  %call1.i = call fastcc i32 @lgdt3305_read_reg(ptr noundef %state, i16 noundef zeroext 2, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %lgdt3305_set_reg_bit.exit.thread, label %lgdt3305_set_reg_bit.exit

lgdt3305_set_reg_bit.exit.thread:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.43, i32 noundef %call1.i, i32 noundef 169) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  br label %do.end6

lgdt3305_set_reg_bit.exit:                        ; preds = %if.end.i
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val.i, align 1
  %conv17.i = and i8 %4, -2
  store i8 %conv17.i, ptr %val.i, align 1
  %call22.i = call fastcc i32 @lgdt3305_write_reg(ptr noundef %state, i16 noundef zeroext 2, i8 noundef zeroext %conv17.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp = icmp slt i32 %call22.i, 0
  br i1 %cmp, label %lgdt3305_set_reg_bit.exit.do.end6_crit_edge, label %if.end13.critedge

lgdt3305_set_reg_bit.exit.do.end6_crit_edge:      ; preds = %lgdt3305_set_reg_bit.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6

do.end6:                                          ; preds = %lgdt3305_set_reg_bit.exit.do.end6_crit_edge, %lgdt3305_set_reg_bit.exit.thread
  %ret.0.i36 = phi i32 [ %call1.i, %lgdt3305_set_reg_bit.exit.thread ], [ %call22.i, %lgdt3305_set_reg_bit.exit.do.end6_crit_edge ]
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.39, i32 noundef %ret.0.i36, i32 noundef 209) #9
  br label %fail

if.end13.critedge:                                ; preds = %lgdt3305_set_reg_bit.exit
  call void @msleep(i32 noundef 20) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i19) #6
  %5 = ptrtoint ptr %val.i19 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %val.i19, align 1, !annotation !346
  %6 = load i32, ptr @debug, align 4
  %and.i20 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20)
  %tobool.not.i21 = icmp eq i32 %and.i20, 0
  br i1 %tobool.not.i21, label %if.end13.critedge.if.end.i26_crit_edge, label %do.end.i23

if.end13.critedge.if.end.i26_crit_edge:           ; preds = %if.end13.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i26

do.end.i23:                                       ; preds = %if.end13.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call.i22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef 2, i32 noundef 0, i32 noundef 1) #9
  br label %if.end.i26

if.end.i26:                                       ; preds = %do.end.i23, %if.end13.critedge.if.end.i26_crit_edge
  %call1.i24 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %state, i16 noundef zeroext 2, ptr noundef nonnull %val.i19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %cmp.i25 = icmp slt i32 %call1.i24, 0
  br i1 %cmp.i25, label %do.end7.i28, label %if.end14.critedge.i31

do.end7.i28:                                      ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.43, i32 noundef %call1.i24, i32 noundef 169) #9
  br label %lgdt3305_set_reg_bit.exit33

if.end14.critedge.i31:                            ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %val.i19 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val.i19, align 1
  %conv21.i = or i8 %8, 1
  store i8 %conv21.i, ptr %val.i19, align 1
  %call22.i30 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %state, i16 noundef zeroext 2, i8 noundef zeroext %conv21.i) #6
  br label %lgdt3305_set_reg_bit.exit33

lgdt3305_set_reg_bit.exit33:                      ; preds = %if.end14.critedge.i31, %do.end7.i28
  %ret.0.i32 = phi i32 [ %call22.i30, %if.end14.critedge.i31 ], [ %call1.i24, %do.end7.i28 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i19) #6
  br label %fail

fail:                                             ; preds = %lgdt3305_set_reg_bit.exit33, %do.end6
  %ret.0 = phi i32 [ %ret.0.i32, %lgdt3305_set_reg_bit.exit33 ], [ %ret.0.i36, %do.end6 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3305_set_modulation(ptr nocapture noundef readonly %state, ptr nocapture noundef readonly %p) unnamed_addr #0 align 64 {
entry:
  %opermode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %opermode) #6
  %0 = ptrtoint ptr %opermode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %opermode, align 1, !annotation !346
  %1 = load i32, ptr @debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.67) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call1 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %state, i16 noundef zeroext 0, ptr noundef nonnull %opermode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end6, label %if.end13.critedge

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.67, i32 noundef %call1, i32 noundef 266) #9
  br label %cleanup

if.end13.critedge:                                ; preds = %if.end
  %2 = ptrtoint ptr %opermode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %opermode, align 1
  %4 = and i8 %3, -4
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 1
  %5 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %modulation, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %6, label %if.end13.critedge.cleanup_crit_edge [
    i32 7, label %sw.bb
    i32 3, label %sw.bb19
    i32 5, label %sw.bb23
  ]

if.end13.critedge.cleanup_crit_edge:              ; preds = %if.end13.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end13.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %8 = or i8 %3, 3
  %9 = ptrtoint ptr %opermode to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %opermode, align 1
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end13.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %opermode to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %4, ptr %opermode, align 1
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end13.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %11 = or i8 %4, 1
  %12 = ptrtoint ptr %opermode to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %opermode, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb23, %sw.bb19, %sw.bb
  %13 = ptrtoint ptr %opermode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %opermode, align 1
  %call27 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %state, i16 noundef zeroext 0, i8 noundef zeroext %14)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end13.critedge.cleanup_crit_edge, %do.end6
  %retval.0 = phi i32 [ -22, %if.end13.critedge.cleanup_crit_edge ], [ %call27, %sw.epilog ], [ %call1, %do.end6 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %opermode) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3305_agc_setup(ptr nocapture noundef readonly %state, ptr nocapture noundef readonly %p) unnamed_addr #0 align 64 {
entry:
  %val.i26 = alloca i8, align 1
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %modulation, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 7, label %entry.sw.epilog_crit_edge
    i32 3, label %entry.sw.bb1_crit_edge
    i32 5, label %entry.sw.bb1_crit_edge53
  ]

entry.sw.bb1_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge53
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %acqen.0 = phi i32 [ 1, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  %3 = load i32, ptr @debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %do.end

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, i32 noundef %acqen.0, i32 noundef %acqen.0) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.epilog.if.end_crit_edge
  %cfg = getelementptr inbounds %struct.lgdt3305_state, ptr %state, i32 0, i32 1
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg, align 4
  %demod_chip = getelementptr inbounds %struct.lgdt3305_config, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %demod_chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %demod_chip, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb2
    i32 0, label %sw.bb5
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  %acqen.0.tr25 = trunc i32 %acqen.0 to i8
  %9 = shl nuw nsw i8 %acqen.0.tr25, 1
  %conv = or i8 %9, -31
  %call3 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %state, i16 noundef zeroext 788, i8 noundef zeroext %conv)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %val.i, align 1, !annotation !346
  %11 = load i32, ptr @debug, align 4
  %and.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb2.if.end.i_crit_edge, label %do.end.i

sw.bb2.if.end.i_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef 782, i32 noundef 2, i32 noundef %acqen.0) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %sw.bb2.if.end.i_crit_edge
  %call1.i = call fastcc i32 @lgdt3305_read_reg(ptr noundef %state, i16 noundef zeroext 782, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end7.i, label %if.end14.critedge.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.43, i32 noundef %call1.i, i32 noundef 169) #9
  br label %lgdt3305_set_reg_bit.exit

if.end14.critedge.i:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %val.i, align 1
  %conv17.i = and i8 %13, -5
  %14 = shl nuw nsw i8 %acqen.0.tr25, 2
  %conv21.i = or i8 %conv17.i, %14
  store i8 %conv21.i, ptr %val.i, align 1
  %call22.i = call fastcc i32 @lgdt3305_write_reg(ptr noundef %state, i16 noundef zeroext 782, i8 noundef zeroext %conv21.i) #6
  br label %lgdt3305_set_reg_bit.exit

lgdt3305_set_reg_bit.exit:                        ; preds = %if.end14.critedge.i, %do.end7.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  br label %sw.epilog12

sw.bb5:                                           ; preds = %if.end
  %acqen.0.tr = trunc i32 %acqen.0 to i8
  %15 = shl nuw nsw i8 %acqen.0.tr, 1
  %conv8 = or i8 %15, -31
  %call9 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %state, i16 noundef zeroext 788, i8 noundef zeroext %conv8)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i26) #6
  %16 = ptrtoint ptr %val.i26 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %val.i26, align 1, !annotation !346
  %17 = load i32, ptr @debug, align 4
  %and.i27 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27)
  %tobool.not.i28 = icmp eq i32 %and.i27, 0
  br i1 %tobool.not.i28, label %sw.bb5.if.end.i33_crit_edge, label %do.end.i30

sw.bb5.if.end.i33_crit_edge:                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i33

do.end.i30:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  %call.i29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef 780, i32 noundef 2, i32 noundef %acqen.0) #9
  br label %if.end.i33

if.end.i33:                                       ; preds = %do.end.i30, %sw.bb5.if.end.i33_crit_edge
  %call1.i31 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %state, i16 noundef zeroext 780, ptr noundef nonnull %val.i26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i31)
  %cmp.i32 = icmp slt i32 %call1.i31, 0
  br i1 %cmp.i32, label %do.end7.i35, label %if.end14.critedge.i41

do.end7.i35:                                      ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.43, i32 noundef %call1.i31, i32 noundef 169) #9
  br label %lgdt3305_set_reg_bit.exit43

if.end14.critedge.i41:                            ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %val.i26 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %val.i26, align 1
  %conv17.i36 = and i8 %19, -5
  %20 = shl nuw nsw i8 %acqen.0.tr, 2
  %conv21.i39 = or i8 %conv17.i36, %20
  store i8 %conv21.i39, ptr %val.i26, align 1
  %call22.i40 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %state, i16 noundef zeroext 780, i8 noundef zeroext %conv21.i39) #6
  br label %lgdt3305_set_reg_bit.exit43

lgdt3305_set_reg_bit.exit43:                      ; preds = %if.end14.critedge.i41, %do.end7.i35
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i26) #6
  br label %sw.epilog12

sw.epilog12:                                      ; preds = %lgdt3305_set_reg_bit.exit43, %lgdt3305_set_reg_bit.exit
  %21 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %modulation, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %22, label %sw.epilog12.cleanup_crit_edge [
    i32 7, label %sw.epilog12.sw.epilog.i_crit_edge
    i32 3, label %sw.epilog12.sw.bb1.i_crit_edge
    i32 5, label %sw.epilog12.sw.bb1.i_crit_edge54
  ]

sw.epilog12.sw.bb1.i_crit_edge54:                 ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

sw.epilog12.sw.bb1.i_crit_edge:                   ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

sw.epilog12.sw.epilog.i_crit_edge:                ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog12.cleanup_crit_edge:                    ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1.i:                                         ; preds = %sw.epilog12.sw.bb1.i_crit_edge, %sw.epilog12.sw.bb1.i_crit_edge54
  %24 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg, align 4
  %demod_chip.i = getelementptr inbounds %struct.lgdt3305_config, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %demod_chip.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %demod_chip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i44 = icmp eq i32 %27, 1
  %..i = select i1 %cmp.i44, i32 26214, i32 34952
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %sw.epilog12.sw.epilog.i_crit_edge
  %rfbw.0.i = phi i32 [ 32768, %sw.epilog12.sw.epilog.i_crit_edge ], [ 34953, %sw.bb1.i ]
  %agcdelay.0.i = phi i32 [ 1216, %sw.epilog12.sw.epilog.i_crit_edge ], [ 1131, %sw.bb1.i ]
  %ifbw.0.i = phi i32 [ 32768, %sw.epilog12.sw.epilog.i_crit_edge ], [ %..i, %sw.bb1.i ]
  %28 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg, align 4
  %rf_agc_loop.i = getelementptr inbounds %struct.lgdt3305_config, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %rf_agc_loop.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i = load i8, ptr %rf_agc_loop.i, align 4
  %31 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i45 = icmp eq i8 %31, 0
  %32 = load i32, ptr @debug, align 4
  %and24.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool.not.i45, label %if.else23.i, label %if.then3.i

if.then3.i:                                       ; preds = %sw.epilog.i
  br i1 %tobool25.not.i, label %if.then3.i.if.end7.i_crit_edge, label %do.end.i47

if.then3.i.if.end7.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

do.end.i47:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef %agcdelay.0.i, i32 noundef %rfbw.0.i) #9
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end.i47, %if.then3.i.if.end7.i_crit_edge
  %call10.i = call fastcc i32 @lgdt3305_write_reg(ptr noundef %state, i16 noundef zeroext 770, i8 noundef zeroext 4) #6
  %conv13.i = trunc i32 %agcdelay.0.i to i8
  %call14.i = call fastcc i32 @lgdt3305_write_reg(ptr noundef %state, i16 noundef zeroext 771, i8 noundef zeroext %conv13.i) #6
  br label %cleanup.sink.split.i

if.else23.i:                                      ; preds = %sw.epilog.i
  br i1 %tobool25.not.i, label %if.else23.i.cleanup.sink.split.i_crit_edge, label %do.end29.i

if.else23.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

do.end29.i:                                       ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #8
  %call32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.75, i32 noundef %ifbw.0.i) #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %do.end29.i, %if.else23.i.cleanup.sink.split.i_crit_edge, %if.end7.i
  %rfbw.0.sink60.i = phi i32 [ %rfbw.0.i, %if.end7.i ], [ %ifbw.0.i, %do.end29.i ], [ %ifbw.0.i, %if.else23.i.cleanup.sink.split.i_crit_edge ]
  %.sink58.i = phi i16 [ 774, %if.end7.i ], [ 776, %do.end29.i ], [ 776, %if.else23.i.cleanup.sink.split.i_crit_edge ]
  %.sink.i = phi i16 [ 775, %if.end7.i ], [ 777, %do.end29.i ], [ 777, %if.else23.i.cleanup.sink.split.i_crit_edge ]
  %33 = lshr i32 %rfbw.0.sink60.i, 8
  %conv17.i48 = trunc i32 %33 to i8
  %call18.i = call fastcc i32 @lgdt3305_write_reg(ptr noundef %state, i16 noundef zeroext %.sink58.i, i8 noundef zeroext %conv17.i48) #6
  %conv21.i49 = trunc i32 %rfbw.0.sink60.i to i8
  %call22.i50 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %state, i16 noundef zeroext %.sink.i, i8 noundef zeroext %conv21.i49) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %sw.epilog12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.epilog12.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3305_set_if(ptr nocapture noundef readonly %state, ptr nocapture noundef readonly %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %modulation, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 7, label %sw.epilog.thread
    i32 5, label %entry.sw.bb189_crit_edge
    i32 3, label %entry.sw.bb189_crit_edge676
  ]

entry.sw.bb189_crit_edge676:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb189

entry.sw.bb189_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb189

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cfg = getelementptr inbounds %struct.lgdt3305_state, ptr %state, i32 0, i32 1
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg, align 4
  %vsb_if_khz = getelementptr inbounds %struct.lgdt3305_config, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %vsb_if_khz to i32
  call void @__asan_load2_noabort(i32 %5)
  %if_freq_khz.0633 = load i16, ptr %vsb_if_khz, align 2
  %div635638 = udiv i16 %if_freq_khz.0633, 10
  %6 = zext i16 %div635638 to i64
  %shl = shl nuw nsw i64 %6, 24
  %7 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3777893186295716171, i64 %shl) #11, !srcloc !347
  %8 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3777893186295716171, i64 %shl, i64 %7) #11, !srcloc !348
  %extract662 = lshr i64 %8, 7
  %extract.t663 = trunc i64 %extract662 to i8
  %extract666 = lshr i64 %8, 15
  %extract.t667 = trunc i64 %extract666 to i8
  %extract670 = lshr i64 %8, 23
  %extract.t671 = trunc i64 %extract670 to i8
  %extract674 = lshr i64 %8, 31
  %extract.t675 = trunc i64 %extract674 to i8
  br label %sw.epilog413

sw.bb189:                                         ; preds = %entry.sw.bb189_crit_edge, %entry.sw.bb189_crit_edge676
  %cfg2 = getelementptr inbounds %struct.lgdt3305_state, ptr %state, i32 0, i32 1
  %9 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg2, align 4
  %qam_if_khz = getelementptr inbounds %struct.lgdt3305_config, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %qam_if_khz to i32
  call void @__asan_load2_noabort(i32 %11)
  %if_freq_khz.0 = load i16, ptr %qam_if_khz, align 2
  %div639 = udiv i16 %if_freq_khz.0, 10
  %12 = zext i16 %div639 to i64
  %shl190 = shl nuw nsw i64 %12, 28
  %13 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3777893186295716171, i64 %shl190) #11, !srcloc !347
  %14 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3777893186295716171, i64 %shl190, i64 %13) #11, !srcloc !348
  %extract = lshr i64 %14, 7
  %extract.t = trunc i64 %extract to i8
  %extract664 = lshr i64 %14, 15
  %extract.t665 = trunc i64 %extract664 to i8
  %extract668 = lshr i64 %14, 23
  %extract.t669 = trunc i64 %extract668 to i8
  %extract672 = lshr i64 %14, 31
  %extract.t673 = trunc i64 %extract672 to i8
  br label %sw.epilog413

sw.epilog413:                                     ; preds = %sw.bb189, %sw.epilog.thread
  %.sink661.off7 = phi i8 [ %extract.t, %sw.bb189 ], [ %extract.t663, %sw.epilog.thread ]
  %.sink661.off15 = phi i8 [ %extract.t665, %sw.bb189 ], [ %extract.t667, %sw.epilog.thread ]
  %.sink661.off23 = phi i8 [ %extract.t669, %sw.bb189 ], [ %extract.t671, %sw.epilog.thread ]
  %.sink661.off31 = phi i8 [ %extract.t673, %sw.bb189 ], [ %extract.t675, %sw.epilog.thread ]
  %conv636.in = phi i16 [ %if_freq_khz.0, %sw.bb189 ], [ %if_freq_khz.0633, %sw.epilog.thread ]
  %15 = and i8 %.sink661.off31, 63
  %conv419 = or i8 %15, 64
  %call428 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %state, i16 noundef zeroext 262, i8 noundef zeroext %conv419)
  %call429 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %state, i16 noundef zeroext 263, i8 noundef zeroext %.sink661.off23)
  %call430 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %state, i16 noundef zeroext 264, i8 noundef zeroext %.sink661.off15)
  %call431 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %state, i16 noundef zeroext 265, i8 noundef zeroext %.sink661.off7)
  %16 = load i32, ptr @debug, align 4
  %and432 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and432)
  %tobool433.not = icmp eq i32 %and432, 0
  br i1 %tobool433.not, label %sw.epilog413.cleanup_crit_edge, label %do.end

sw.epilog413.cleanup_crit_edge:                   ; preds = %sw.epilog413
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %sw.epilog413
  call void @__sanitizer_cov_trace_pc() #8
  %conv636 = zext i16 %conv636.in to i32
  %conv437 = zext i8 %conv419 to i32
  %conv438 = zext i8 %.sink661.off23 to i32
  %conv439 = zext i8 %.sink661.off15 to i32
  %conv440 = zext i8 %.sink661.off7 to i32
  %call441 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i32 noundef %conv636, i32 noundef %conv437, i32 noundef %conv438, i32 noundef %conv439, i32 noundef %conv440) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.epilog413.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %sw.epilog413.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3305_mpeg_mode_polarity(ptr nocapture noundef readonly %state) unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !346
  %cfg = getelementptr inbounds %struct.lgdt3305_state, ptr %state, i32 0, i32 1
  %1 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cfg, align 4
  %tpclk_edge = getelementptr inbounds %struct.lgdt3305_config, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %tpclk_edge to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tpclk_edge, align 4
  %tpclk_mode = getelementptr inbounds %struct.lgdt3305_config, ptr %2, i32 0, i32 9
  %5 = ptrtoint ptr %tpclk_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tpclk_mode, align 4
  %tpvalid_polarity = getelementptr inbounds %struct.lgdt3305_config, ptr %2, i32 0, i32 10
  %7 = ptrtoint ptr %tpvalid_polarity to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tpvalid_polarity, align 4
  %9 = load i32, ptr @debug, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, i32 noundef %4, i32 noundef %8) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call3 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %state, i16 noundef zeroext 1294, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end8, label %if.end15.critedge

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.85, i32 noundef %call3, i32 noundef 236) #9
  br label %fail

if.end15.critedge:                                ; preds = %if.end
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val, align 1
  %12 = and i8 %11, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool19.not = icmp eq i32 %4, 0
  %13 = or i8 %12, 8
  %storemerge = select i1 %tobool19.not, i8 %12, i8 %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool24.not = icmp eq i32 %6, 0
  %14 = or i8 %storemerge, 64
  %spec.select = select i1 %tobool24.not, i8 %storemerge, i8 %14
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %spec.select, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool30.not = icmp eq i32 %8, 0
  br i1 %tobool30.not, label %if.end15.critedge.if.end35_crit_edge, label %if.then31

if.end15.critedge.if.end35_crit_edge:             ; preds = %if.end15.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then31:                                        ; preds = %if.end15.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %val, align 1
  %18 = or i8 %17, 1
  store i8 %18, ptr %val, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.end15.critedge.if.end35_crit_edge
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %val, align 1
  %call36 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %state, i16 noundef zeroext 1294, i8 noundef zeroext %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp38 = icmp slt i32 %call36, 0
  br i1 %cmp38, label %do.end44, label %if.end51.critedge

do.end44:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.85, i32 noundef %call36, i32 noundef 249) #9
  br label %fail

if.end51.critedge:                                ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %call52 = call fastcc i32 @lgdt3305_soft_reset(ptr noundef %state)
  br label %fail

fail:                                             ; preds = %if.end51.critedge, %do.end44, %do.end8
  %ret.0 = phi i32 [ %call52, %if.end51.critedge ], [ %call3, %do.end8 ], [ %call36, %do.end44 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3305_set_parameters(ptr noundef %fe) #0 align 64 {
entry:
  %val.i.i313 = alloca i8, align 1
  %val.i.i290 = alloca i8, align 1
  %val.i = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
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
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dtv_property_cache, align 4
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %modulation, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.140, i32 noundef %4, i32 noundef %6) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %7 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_params, align 4
  %tobool1.not = icmp eq ptr %8, null
  br i1 %tobool1.not, label %if.end.if.end27_crit_edge, label %if.then2

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then2:                                         ; preds = %if.end
  %call6 = tail call i32 %8(ptr noundef %fe) #6
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %9 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %if.then2.if.end13_crit_edge, label %if.then9

if.then2.if.end13_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then9:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 %10(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.then2.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end18, label %if.end25.critedge

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.140, i32 noundef %call6, i32 noundef 749) #9
  br label %fail

if.end25.critedge:                                ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dtv_property_cache, align 4
  %current_frequency = getelementptr inbounds %struct.lgdt3305_state, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %current_frequency, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end25.critedge, %if.end.if.end27_crit_edge
  %call28 = tail call fastcc i32 @lgdt3305_set_modulation(ptr noundef %1, ptr noundef %dtv_property_cache)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp30 = icmp slt i32 %call28, 0
  br i1 %cmp30, label %do.end36, label %if.end43.critedge

do.end36:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.140, i32 noundef %call28, i32 noundef 755) #9
  br label %fail

if.end43.critedge:                                ; preds = %if.end27
  %modulation.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %modulation.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %modulation.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %15, label %do.end52 [
    i32 7, label %if.end43.critedge.sw.epilog.i_crit_edge
    i32 3, label %sw.bb1.i
    i32 5, label %sw.bb2.i
  ]

if.end43.critedge.sw.epilog.i_crit_edge:          ; preds = %if.end43.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end43.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end43.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb1.i, %if.end43.critedge.sw.epilog.i_crit_edge
  %agc_ref.0.i = phi i32 [ 10880, %sw.bb2.i ], [ 10752, %sw.bb1.i ], [ 12996, %if.end43.critedge.sw.epilog.i_crit_edge ]
  %17 = load i32, ptr @debug, align 4
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.epilog.i.if.end59.critedge_crit_edge, label %do.end.i

sw.epilog.i.if.end59.critedge_crit_edge:          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.critedge

do.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef %agc_ref.0.i) #9
  br label %if.end59.critedge

do.end52:                                         ; preds = %if.end43.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.140, i32 noundef -22, i32 noundef 759) #9
  br label %fail

if.end59.critedge:                                ; preds = %do.end.i, %sw.epilog.i.if.end59.critedge_crit_edge
  %18 = lshr i32 %agc_ref.0.i, 8
  %conv4.i = trunc i32 %18 to i8
  %call5.i = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %1, i16 noundef zeroext 18, i8 noundef zeroext %conv4.i) #6
  %conv8.i = trunc i32 %agc_ref.0.i to i8
  %call9.i = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %1, i16 noundef zeroext 19, i8 noundef zeroext %conv8.i) #6
  %19 = ptrtoint ptr %modulation.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %modulation.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %20, label %do.end68 [
    i32 7, label %sw.bb.i
    i32 3, label %sw.bb3.i
    i32 5, label %sw.bb10.i
  ]

sw.bb.i:                                          ; preds = %if.end59.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %cfg.i = getelementptr inbounds %struct.lgdt3305_state, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfg.i, align 4
  %usref_8vsb.i = getelementptr inbounds %struct.lgdt3305_config, ptr %23, i32 0, i32 3
  br label %sw.epilog.i268

sw.bb3.i:                                         ; preds = %if.end59.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %cfg4.i = getelementptr inbounds %struct.lgdt3305_state, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %cfg4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg4.i, align 4
  %usref_qam64.i = getelementptr inbounds %struct.lgdt3305_config, ptr %25, i32 0, i32 4
  br label %sw.epilog.i268

sw.bb10.i:                                        ; preds = %if.end59.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %cfg11.i = getelementptr inbounds %struct.lgdt3305_state, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %cfg11.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg11.i, align 4
  %usref_qam256.i = getelementptr inbounds %struct.lgdt3305_config, ptr %27, i32 0, i32 5
  br label %sw.epilog.i268

sw.epilog.i268:                                   ; preds = %sw.bb10.i, %sw.bb3.i, %sw.bb.i
  %usref.0.in.i = phi ptr [ %usref_8vsb.i, %sw.bb.i ], [ %usref_qam64.i, %sw.bb3.i ], [ %usref_qam256.i, %sw.bb10.i ]
  %28 = ptrtoint ptr %usref.0.in.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %usref.0.i = load i16, ptr %usref.0.in.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %usref.0.i)
  %tobool17.not.i = icmp eq i16 %usref.0.i, 0
  br i1 %tobool17.not.i, label %sw.epilog.i268.if.end75.critedge_crit_edge, label %if.then18.i

sw.epilog.i268.if.end75.critedge_crit_edge:       ; preds = %sw.epilog.i268
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75.critedge

if.then18.i:                                      ; preds = %sw.epilog.i268
  %29 = load i32, ptr @debug, align 4
  %and.i269 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i269)
  %tobool19.not.i = icmp eq i32 %and.i269, 0
  br i1 %tobool19.not.i, label %if.then18.i.if.end21.i_crit_edge, label %do.end.i271

if.then18.i.if.end21.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i

do.end.i271:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i16 %usref.0.i to i32
  %call.i270 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.164, i32 noundef %conv.i) #9
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.end.i271, %if.then18.i.if.end21.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #6
  %30 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %val.i.i, align 1, !annotation !346
  %31 = load i32, ptr @debug, align 4
  %and.i.i = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end21.i.if.end.i.i_crit_edge, label %do.end.i.i

if.end21.i.if.end.i.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef 780, i32 noundef 3, i32 noundef 1) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end21.i.if.end.i.i_crit_edge
  %call1.i.i = call fastcc i32 @lgdt3305_read_reg(ptr noundef %1, i16 noundef zeroext 780, ptr noundef nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %do.end7.i.i, label %if.end14.critedge.i.i

do.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.43, i32 noundef %call1.i.i, i32 noundef 169) #9
  br label %lgdt3305_set_reg_bit.exit.i

if.end14.critedge.i.i:                            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %val.i.i, align 1
  %conv21.i.i = or i8 %33, 8
  store i8 %conv21.i.i, ptr %val.i.i, align 1
  %call22.i.i = call fastcc i32 @lgdt3305_write_reg(ptr noundef %1, i16 noundef zeroext 780, i8 noundef zeroext %conv21.i.i) #6
  br label %lgdt3305_set_reg_bit.exit.i

lgdt3305_set_reg_bit.exit.i:                      ; preds = %if.end14.critedge.i.i, %do.end7.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #6
  %34 = lshr i16 %usref.0.i, 8
  %conv25.i = trunc i16 %34 to i8
  %call26.i = call fastcc i32 @lgdt3305_write_reg(ptr noundef %1, i16 noundef zeroext 768, i8 noundef zeroext %conv25.i) #6
  %conv30.i = trunc i16 %usref.0.i to i8
  %call31.i = call fastcc i32 @lgdt3305_write_reg(ptr noundef %1, i16 noundef zeroext 769, i8 noundef zeroext %conv30.i) #6
  br label %if.end75.critedge

do.end68:                                         ; preds = %if.end59.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.140, i32 noundef -22, i32 noundef 762) #9
  br label %fail

if.end75.critedge:                                ; preds = %lgdt3305_set_reg_bit.exit.i, %sw.epilog.i268.if.end75.critedge_crit_edge
  %call76 = call fastcc i32 @lgdt3305_agc_setup(ptr noundef %1, ptr noundef %dtv_property_cache)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp78 = icmp slt i32 %call76, 0
  br i1 %cmp78, label %do.end84, label %if.end91.critedge

do.end84:                                         ; preds = %if.end75.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.140, i32 noundef %call76, i32 noundef 765) #9
  br label %fail

if.end91.critedge:                                ; preds = %if.end75.critedge
  %call92 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %1, i16 noundef zeroext 7, i8 noundef zeroext 47)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp94 = icmp slt i32 %call92, 0
  br i1 %cmp94, label %do.end100, label %if.end107.critedge

do.end100:                                        ; preds = %if.end91.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.140, i32 noundef %call92, i32 noundef 770) #9
  br label %fail

if.end107.critedge:                               ; preds = %if.end91.critedge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %35 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %val.i, align 1, !annotation !346
  %36 = load i32, ptr @debug, align 4
  %and.i273 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i273)
  %tobool.not.i274 = icmp eq i32 %and.i273, 0
  br i1 %tobool.not.i274, label %if.end107.critedge.if.end.i277_crit_edge, label %do.end.i276

if.end107.critedge.if.end.i277_crit_edge:         ; preds = %if.end107.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i277

do.end.i276:                                      ; preds = %if.end107.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call.i275 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef 262, i32 noundef 6, i32 noundef 1) #9
  br label %if.end.i277

if.end.i277:                                      ; preds = %do.end.i276, %if.end107.critedge.if.end.i277_crit_edge
  %call1.i = call fastcc i32 @lgdt3305_read_reg(ptr noundef %1, i16 noundef zeroext 262, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %lgdt3305_set_reg_bit.exit.thread, label %lgdt3305_set_reg_bit.exit

lgdt3305_set_reg_bit.exit.thread:                 ; preds = %if.end.i277
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i278 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.43, i32 noundef %call1.i, i32 noundef 169) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  br label %do.end116

lgdt3305_set_reg_bit.exit:                        ; preds = %if.end.i277
  %37 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %val.i, align 1
  %conv21.i = or i8 %38, 64
  store i8 %conv21.i, ptr %val.i, align 1
  %call22.i = call fastcc i32 @lgdt3305_write_reg(ptr noundef %1, i16 noundef zeroext 262, i8 noundef zeroext %conv21.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp110 = icmp slt i32 %call22.i, 0
  br i1 %cmp110, label %lgdt3305_set_reg_bit.exit.do.end116_crit_edge, label %if.end123.critedge

lgdt3305_set_reg_bit.exit.do.end116_crit_edge:    ; preds = %lgdt3305_set_reg_bit.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end116

do.end116:                                        ; preds = %lgdt3305_set_reg_bit.exit.do.end116_crit_edge, %lgdt3305_set_reg_bit.exit.thread
  %ret.0.i341 = phi i32 [ %call1.i, %lgdt3305_set_reg_bit.exit.thread ], [ %call22.i, %lgdt3305_set_reg_bit.exit.do.end116_crit_edge ]
  %call118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.140, i32 noundef %ret.0.i341, i32 noundef 773) #9
  br label %fail

if.end123.critedge:                               ; preds = %lgdt3305_set_reg_bit.exit
  %call124 = call fastcc i32 @lgdt3305_set_if(ptr noundef %1, ptr noundef %dtv_property_cache)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %cmp126 = icmp slt i32 %call124, 0
  br i1 %cmp126, label %do.end132, label %if.end139.critedge

do.end132:                                        ; preds = %if.end123.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.140, i32 noundef %call124, i32 noundef 777) #9
  br label %fail

if.end139.critedge:                               ; preds = %if.end123.critedge
  %cfg = getelementptr inbounds %struct.lgdt3305_state, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg, align 4
  %spectral_inversion = getelementptr inbounds %struct.lgdt3305_config, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %spectral_inversion to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load = load i8, ptr %spectral_inversion, align 4
  %42 = lshr i8 %bf.load, 6
  %.lobit = and i8 %42, 1
  %43 = load i32, ptr @debug, align 4
  %and.i279 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i279)
  %tobool.not.i280 = icmp eq i32 %and.i279, 0
  br i1 %tobool.not.i280, label %if.end139.critedge.if.end.i284_crit_edge, label %do.end.i282

if.end139.critedge.if.end.i284_crit_edge:         ; preds = %if.end139.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i284

do.end.i282:                                      ; preds = %if.end139.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %44 = zext i8 %.lobit to i32
  %call.i281 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, i32 noundef %44) #9
  br label %if.end.i284

if.end.i284:                                      ; preds = %do.end.i282, %if.end139.critedge.if.end.i284_crit_edge
  %45 = ptrtoint ptr %modulation.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %modulation.i, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %46, label %if.end.i284.do.end149_crit_edge [
    i32 7, label %sw.bb.i286
    i32 3, label %if.end.i284.sw.bb3.i287_crit_edge
    i32 5, label %if.end.i284.sw.bb3.i287_crit_edge354
  ]

if.end.i284.sw.bb3.i287_crit_edge354:             ; preds = %if.end.i284
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i287

if.end.i284.sw.bb3.i287_crit_edge:                ; preds = %if.end.i284
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i287

if.end.i284.do.end149_crit_edge:                  ; preds = %if.end.i284
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end149

sw.bb.i286:                                       ; preds = %if.end.i284
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lobit)
  %tobool1.not.i = icmp eq i8 %.lobit, 0
  %conv.i285 = select i1 %tobool1.not.i, i8 121, i8 -7
  %call2.i = call fastcc i32 @lgdt3305_write_reg(ptr noundef %1, i16 noundef zeroext 294, i8 noundef zeroext %conv.i285) #6
  br label %lgdt3305_spectral_inversion.exit

sw.bb3.i287:                                      ; preds = %if.end.i284.sw.bb3.i287_crit_edge, %if.end.i284.sw.bb3.i287_crit_edge354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lobit)
  %tobool4.not.i = icmp eq i8 %.lobit, 0
  %conv6.i = select i1 %tobool4.not.i, i8 -1, i8 -3
  %call7.i = call fastcc i32 @lgdt3305_write_reg(ptr noundef %1, i16 noundef zeroext 1284, i8 noundef zeroext %conv6.i) #6
  br label %lgdt3305_spectral_inversion.exit

lgdt3305_spectral_inversion.exit:                 ; preds = %sw.bb3.i287, %sw.bb.i286
  %ret.0.i288 = phi i32 [ %call7.i, %sw.bb3.i287 ], [ %call2.i, %sw.bb.i286 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i288)
  %cmp143 = icmp slt i32 %ret.0.i288, 0
  br i1 %cmp143, label %lgdt3305_spectral_inversion.exit.do.end149_crit_edge, label %if.end156.critedge

lgdt3305_spectral_inversion.exit.do.end149_crit_edge: ; preds = %lgdt3305_spectral_inversion.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end149

do.end149:                                        ; preds = %lgdt3305_spectral_inversion.exit.do.end149_crit_edge, %if.end.i284.do.end149_crit_edge
  %ret.0.i288344 = phi i32 [ %ret.0.i288, %lgdt3305_spectral_inversion.exit.do.end149_crit_edge ], [ -22, %if.end.i284.do.end149_crit_edge ]
  %call151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.140, i32 noundef %ret.0.i288344, i32 noundef 782) #9
  br label %fail

if.end156.critedge:                               ; preds = %lgdt3305_spectral_inversion.exit
  %48 = ptrtoint ptr %modulation.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %modulation.i, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %49, label %if.end156.critedge.do.end165_crit_edge [
    i32 7, label %if.end156.critedge.sw.epilog.i295_crit_edge
    i32 3, label %if.end156.critedge.sw.bb1.i292_crit_edge
    i32 5, label %if.end156.critedge.sw.bb1.i292_crit_edge355
  ]

if.end156.critedge.sw.bb1.i292_crit_edge355:      ; preds = %if.end156.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i292

if.end156.critedge.sw.bb1.i292_crit_edge:         ; preds = %if.end156.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i292

if.end156.critedge.sw.epilog.i295_crit_edge:      ; preds = %if.end156.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i295

if.end156.critedge.do.end165_crit_edge:           ; preds = %if.end156.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end165

sw.bb1.i292:                                      ; preds = %if.end156.critedge.sw.bb1.i292_crit_edge, %if.end156.critedge.sw.bb1.i292_crit_edge355
  br label %sw.epilog.i295

sw.epilog.i295:                                   ; preds = %sw.bb1.i292, %if.end156.critedge.sw.epilog.i295_crit_edge
  %val.0.i = phi i32 [ 1, %sw.bb1.i292 ], [ 0, %if.end156.critedge.sw.epilog.i295_crit_edge ]
  %51 = load i32, ptr @debug, align 4
  %and.i293 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i293)
  %tobool.not.i294 = icmp eq i32 %and.i293, 0
  br i1 %tobool.not.i294, label %sw.epilog.i295.if.end.i300_crit_edge, label %do.end.i297

sw.epilog.i295.if.end.i300_crit_edge:             ; preds = %sw.epilog.i295
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i300

do.end.i297:                                      ; preds = %sw.epilog.i295
  call void @__sanitizer_cov_trace_pc() #8
  %call.i296 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.166, i32 noundef %val.0.i) #9
  br label %if.end.i300

if.end.i300:                                      ; preds = %do.end.i297, %sw.epilog.i295.if.end.i300_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i290) #6
  %52 = ptrtoint ptr %val.i.i290 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -1, ptr %val.i.i290, align 1, !annotation !346
  %53 = load i32, ptr @debug, align 4
  %and.i.i298 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i298)
  %tobool.not.i.i299 = icmp eq i32 %and.i.i298, 0
  br i1 %tobool.not.i.i299, label %if.end.i300.if.end.i.i305_crit_edge, label %do.end.i.i302

if.end.i300.if.end.i.i305_crit_edge:              ; preds = %if.end.i300
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i305

do.end.i.i302:                                    ; preds = %if.end.i300
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i301 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef 1087, i32 noundef 2, i32 noundef %val.0.i) #9
  br label %if.end.i.i305

if.end.i.i305:                                    ; preds = %do.end.i.i302, %if.end.i300.if.end.i.i305_crit_edge
  %call1.i.i303 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %1, i16 noundef zeroext 1087, ptr noundef nonnull %val.i.i290) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i303)
  %cmp.i.i304 = icmp slt i32 %call1.i.i303, 0
  br i1 %cmp.i.i304, label %lgdt3305_set_filter_extension.exit.thread348, label %lgdt3305_set_filter_extension.exit

lgdt3305_set_filter_extension.exit.thread348:     ; preds = %if.end.i.i305
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i.i306 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.43, i32 noundef %call1.i.i303, i32 noundef 169) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i290) #6
  br label %do.end165

lgdt3305_set_filter_extension.exit:               ; preds = %if.end.i.i305
  %54 = ptrtoint ptr %val.i.i290 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %val.i.i290, align 1
  %conv17.i.i = and i8 %55, -5
  %val.0.tr.i = trunc i32 %val.0.i to i8
  %56 = shl nuw nsw i8 %val.0.tr.i, 2
  %conv21.i.i308 = or i8 %conv17.i.i, %56
  store i8 %conv21.i.i308, ptr %val.i.i290, align 1
  %call22.i.i309 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %1, i16 noundef zeroext 1087, i8 noundef zeroext %conv21.i.i308) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i290) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i309)
  %cmp159 = icmp slt i32 %call22.i.i309, 0
  br i1 %cmp159, label %lgdt3305_set_filter_extension.exit.do.end165_crit_edge, label %if.end172.critedge

lgdt3305_set_filter_extension.exit.do.end165_crit_edge: ; preds = %lgdt3305_set_filter_extension.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end165

do.end165:                                        ; preds = %lgdt3305_set_filter_extension.exit.do.end165_crit_edge, %lgdt3305_set_filter_extension.exit.thread348, %if.end156.critedge.do.end165_crit_edge
  %retval.0.i312347 = phi i32 [ %call22.i.i309, %lgdt3305_set_filter_extension.exit.do.end165_crit_edge ], [ %call1.i.i303, %lgdt3305_set_filter_extension.exit.thread348 ], [ -22, %if.end156.critedge.do.end165_crit_edge ]
  %call167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.140, i32 noundef %retval.0.i312347, i32 noundef 786) #9
  br label %fail

if.end172.critedge:                               ; preds = %lgdt3305_set_filter_extension.exit
  %57 = ptrtoint ptr %modulation.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %modulation.i, align 4
  %current_modulation = getelementptr inbounds %struct.lgdt3305_state, ptr %1, i32 0, i32 3
  %59 = ptrtoint ptr %current_modulation to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %current_modulation, align 4
  %60 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cfg, align 4
  %mpeg_mode = getelementptr inbounds %struct.lgdt3305_config, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %mpeg_mode to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mpeg_mode, align 4
  %64 = load i32, ptr @debug, align 4
  %and.i314 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i314)
  %tobool.not.i315 = icmp eq i32 %and.i314, 0
  br i1 %tobool.not.i315, label %if.end172.critedge.if.end.i320_crit_edge, label %do.end.i317

if.end172.critedge.if.end.i320_crit_edge:         ; preds = %if.end172.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i320

do.end.i317:                                      ; preds = %if.end172.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call.i316 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.83, i32 noundef %63) #9
  br label %if.end.i320

if.end.i320:                                      ; preds = %do.end.i317, %if.end172.critedge.if.end.i320_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i313) #6
  %65 = ptrtoint ptr %val.i.i313 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -1, ptr %val.i.i313, align 1, !annotation !346
  %66 = load i32, ptr @debug, align 4
  %and.i.i318 = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i318)
  %tobool.not.i.i319 = icmp eq i32 %and.i.i318, 0
  br i1 %tobool.not.i.i319, label %if.end.i320.if.end.i.i325_crit_edge, label %do.end.i.i322

if.end.i320.if.end.i.i325_crit_edge:              ; preds = %if.end.i320
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i325

do.end.i.i322:                                    ; preds = %if.end.i320
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i321 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef 1294, i32 noundef 5, i32 noundef %63) #9
  br label %if.end.i.i325

if.end.i.i325:                                    ; preds = %do.end.i.i322, %if.end.i320.if.end.i.i325_crit_edge
  %call1.i.i323 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %1, i16 noundef zeroext 1294, ptr noundef nonnull %val.i.i313) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i323)
  %cmp.i.i324 = icmp slt i32 %call1.i.i323, 0
  br i1 %cmp.i.i324, label %lgdt3305_mpeg_mode.exit.thread, label %lgdt3305_mpeg_mode.exit

lgdt3305_mpeg_mode.exit.thread:                   ; preds = %if.end.i.i325
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i.i326 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.43, i32 noundef %call1.i.i323, i32 noundef 169) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i313) #6
  br label %do.end183

lgdt3305_mpeg_mode.exit:                          ; preds = %if.end.i.i325
  %67 = ptrtoint ptr %val.i.i313 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %val.i.i313, align 1
  %conv17.i.i328 = and i8 %68, -33
  %mode.tr.i = trunc i32 %63 to i8
  %69 = shl i8 %mode.tr.i, 5
  %70 = and i8 %69, 32
  %conv21.i.i329 = or i8 %conv17.i.i328, %70
  store i8 %conv21.i.i329, ptr %val.i.i313, align 1
  %call22.i.i330 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %1, i16 noundef zeroext 1294, i8 noundef zeroext %conv21.i.i329) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i313) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i330)
  %cmp177 = icmp slt i32 %call22.i.i330, 0
  br i1 %cmp177, label %lgdt3305_mpeg_mode.exit.do.end183_crit_edge, label %if.end190.critedge

lgdt3305_mpeg_mode.exit.do.end183_crit_edge:      ; preds = %lgdt3305_mpeg_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end183

do.end183:                                        ; preds = %lgdt3305_mpeg_mode.exit.do.end183_crit_edge, %lgdt3305_mpeg_mode.exit.thread
  %ret.0.i.i332353 = phi i32 [ %call1.i.i323, %lgdt3305_mpeg_mode.exit.thread ], [ %call22.i.i330, %lgdt3305_mpeg_mode.exit.do.end183_crit_edge ]
  %call185 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.140, i32 noundef %ret.0.i.i332353, i32 noundef 792) #9
  br label %fail

if.end190.critedge:                               ; preds = %lgdt3305_mpeg_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call191 = call fastcc i32 @lgdt3305_mpeg_mode_polarity(ptr noundef %1)
  br label %fail

fail:                                             ; preds = %if.end190.critedge, %do.end183, %do.end165, %do.end149, %do.end132, %do.end116, %do.end100, %do.end84, %do.end68, %do.end52, %do.end36, %do.end18
  %ret.0 = phi i32 [ %call191, %if.end190.critedge ], [ %call6, %do.end18 ], [ %call28, %do.end36 ], [ -22, %do.end52 ], [ -22, %do.end68 ], [ %call76, %do.end84 ], [ %call92, %do.end100 ], [ %ret.0.i341, %do.end116 ], [ %call124, %do.end132 ], [ %ret.0.i288344, %do.end149 ], [ %retval.0.i312347, %do.end165 ], [ %ret.0.i.i332353, %do.end183 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 156)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 156)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !28, !29, !30, !32, !34, !36, !38, !39, !41, !42, !43, !44, !45, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !70, !71, !72, !73, !75, !77, !79, !80, !81, !83, !84, !86, !87, !88, !89, !91, !92, !94, !95, !96, !98, !99, !101, !102, !103, !104, !106, !107, !109, !110, !111, !113, !114, !116, !117, !119, !120, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !147, !149, !150, !152, !153, !154, !155, !157, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !171, !172, !173, !174, !176, !177, !178, !179, !181, !182, !183, !185, !186, !187, !188, !190, !191, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !211, !212, !213, !214, !215, !216, !218, !219, !221, !222, !224, !225, !226, !228, !230, !232, !234, !236, !238, !240, !241, !242, !244, !245, !246, !248, !249, !250, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !266, !267, !269, !270, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !286, !287, !288, !290, !292, !293, !294, !296, !297, !299, !300, !302, !303, !305, !306, !308, !309, !311, !312, !314, !315, !317, !318, !320, !321, !323, !324, !326, !327, !329, !330, !331, !332, !334, !335, !336}
!llvm.module.flags = !{!337, !338, !339, !340, !341, !342, !343, !344}
!llvm.ident = !{!345}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 18, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 1102, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @lgdt3305_attach._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @lgdt3305_attach._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 1129, i32 7}
!13 = !{ptr @lgdt3305_attach._entry.3, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @lgdt3305_attach._entry_ptr.5, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @lgdt3305_attach._entry.6, !16, !"_entry", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 1132, i32 6}
!17 = !{ptr @lgdt3305_attach._entry_ptr.7, !16, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @lgdt3305_attach._entry.8, !19, !"_entry", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 1135, i32 7}
!20 = !{ptr @lgdt3305_attach._entry_ptr.9, !19, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @lgdt3305_attach._entry.10, !22, !"_entry", i1 false, i1 false}
!22 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 1138, i32 6}
!23 = !{ptr @lgdt3305_attach._entry_ptr.11, !22, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 1146, i32 2}
!26 = !{ptr @lgdt3305_attach._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @lgdt3305_attach._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__ksymtab_lgdt3305_attach, !31, !"__ksymtab_lgdt3305_attach", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 1151, i32 1}
!32 = !{ptr @__UNIQUE_ID_description292, !33, !"__UNIQUE_ID_description292", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 1199, i32 1}
!34 = !{ptr @__UNIQUE_ID_author293, !35, !"__UNIQUE_ID_author293", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 1200, i32 1}
!36 = !{ptr @__UNIQUE_ID_file294, !37, !"__UNIQUE_ID_file294", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 1201, i32 1}
!38 = !{ptr @__UNIQUE_ID_license295, !37, !"__UNIQUE_ID_license295", i1 false, i1 false}
!39 = !{ptr @__UNIQUE_ID_version296, !40, !"__UNIQUE_ID_version296", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 1202, i32 1}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @__modver_attr, !40, !"__modver_attr", i1 false, i1 false}
!45 = !{ptr @debug, !46, !"debug", i1 false, i1 false}
!46 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 16, i32 12}
!47 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 136, i32 2}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @lgdt3305_read_reg._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @lgdt3305_read_reg._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 141, i32 3}
!55 = !{ptr @lgdt3305_read_reg._entry.22, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @lgdt3305_read_reg._entry_ptr.24, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 110, i32 2}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @lgdt3305_write_reg._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @lgdt3305_write_reg._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 115, i32 3}
!64 = !{ptr @lgdt3305_write_reg._entry.27, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @lgdt3305_write_reg._entry_ptr.29, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @lgdt3304_ops, !67, !"lgdt3304_ops", i1 false, i1 false}
!67 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 1153, i32 38}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 1088, i32 2}
!70 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @lgdt3305_release._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @lgdt3305_release._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @lgdt3305_init.lgdt3304_init_data, !74, !"lgdt3304_init_data", i1 false, i1 false}
!74 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 588, i32 29}
!75 = !{ptr @lgdt3305_init.lgdt3305_init_data, !76, !"lgdt3305_init_data", i1 false, i1 false}
!76 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 620, i32 29}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 647, i32 2}
!79 = !{ptr @lgdt3305_init._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @lgdt3305_init._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @lgdt3305_init._entry.33, !82, !"_entry", i1 false, i1 false}
!82 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 661, i32 6}
!83 = !{ptr @lgdt3305_init._entry_ptr.34, !82, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 190, i32 2}
!86 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @lgdt3305_write_regs._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @lgdt3305_write_regs._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @lgdt3305_write_regs._entry.37, !90, !"_entry", i1 false, i1 false}
!90 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 194, i32 7}
!91 = !{ptr @lgdt3305_write_regs._entry_ptr.38, !90, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 206, i32 2}
!94 = !{ptr @lgdt3305_soft_reset._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @lgdt3305_soft_reset._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @lgdt3305_soft_reset._entry.40, !97, !"_entry", i1 false, i1 false}
!97 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 209, i32 6}
!98 = !{ptr @lgdt3305_soft_reset._entry_ptr.41, !97, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 166, i32 2}
!101 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @lgdt3305_set_reg_bit._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @lgdt3305_set_reg_bit._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @lgdt3305_set_reg_bit._entry.44, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 169, i32 6}
!106 = !{ptr @lgdt3305_set_reg_bit._entry_ptr.45, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 560, i32 2}
!109 = !{ptr @lgdt3305_sleep._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @lgdt3305_sleep._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @lgdt3305_sleep._entry.47, !112, !"_entry", i1 false, i1 false}
!112 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 562, i32 15}
!113 = !{ptr @lgdt3305_sleep._entry_ptr.48, !112, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @lgdt3305_sleep._entry.49, !115, !"_entry", i1 false, i1 false}
!115 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 563, i32 15}
!116 = !{ptr @lgdt3305_sleep._entry_ptr.50, !115, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 675, i32 2}
!119 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @lgdt3304_set_parameters._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @lgdt3304_set_parameters._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @lgdt3304_set_parameters._entry.53, !123, !"_entry", i1 false, i1 false}
!123 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 681, i32 7}
!124 = !{ptr @lgdt3304_set_parameters._entry_ptr.54, !123, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @lgdt3304_set_parameters._entry.55, !126, !"_entry", i1 false, i1 false}
!126 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 687, i32 6}
!127 = !{ptr @lgdt3304_set_parameters._entry_ptr.56, !126, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @lgdt3304_set_parameters._entry.57, !129, !"_entry", i1 false, i1 false}
!129 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 691, i32 6}
!130 = !{ptr @lgdt3304_set_parameters._entry_ptr.58, !129, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @lgdt3304_set_parameters._entry.59, !132, !"_entry", i1 false, i1 false}
!132 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 695, i32 6}
!133 = !{ptr @lgdt3304_set_parameters._entry_ptr.60, !132, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @lgdt3304_set_parameters._entry.61, !135, !"_entry", i1 false, i1 false}
!135 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 711, i32 7}
!136 = !{ptr @lgdt3304_set_parameters._entry_ptr.62, !135, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @lgdt3304_set_parameters._entry.63, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 722, i32 6}
!139 = !{ptr @lgdt3304_set_parameters._entry_ptr.64, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @lgdt3304_set_parameters._entry.65, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 728, i32 6}
!142 = !{ptr @lgdt3304_set_parameters._entry_ptr.66, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 263, i32 2}
!145 = !{ptr @lgdt3305_set_modulation._entry, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @lgdt3305_set_modulation._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @lgdt3305_set_modulation._entry.68, !148, !"_entry", i1 false, i1 false}
!148 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 266, i32 6}
!149 = !{ptr @lgdt3305_set_modulation._entry_ptr.69, !148, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 331, i32 2}
!152 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @lgdt3305_passband_digital_agc._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @lgdt3305_passband_digital_agc._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.72, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 408, i32 2}
!157 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @lgdt3305_agc_setup._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @lgdt3305_agc_setup._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.74, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 366, i32 3}
!162 = !{ptr @.str.75, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @lgdt3305_rfagc_loop._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @lgdt3305_rfagc_loop._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.77, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 379, i32 3}
!167 = !{ptr @lgdt3305_rfagc_loop._entry.76, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @lgdt3305_rfagc_loop._entry_ptr.78, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.79, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 534, i32 2}
!171 = !{ptr @.str.80, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @lgdt3305_set_if._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @lgdt3305_set_if._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 470, i32 2}
!176 = !{ptr @.str.82, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @lgdt3305_spectral_inversion._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @lgdt3305_spectral_inversion._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.83, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 221, i32 2}
!181 = !{ptr @lgdt3305_mpeg_mode._entry, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @lgdt3305_mpeg_mode._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 233, i32 2}
!185 = !{ptr @.str.85, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @lgdt3305_mpeg_mode_polarity._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @lgdt3305_mpeg_mode_polarity._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @lgdt3305_mpeg_mode_polarity._entry.86, !189, !"_entry", i1 false, i1 false}
!189 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 236, i32 6}
!190 = !{ptr @lgdt3305_mpeg_mode_polarity._entry_ptr.87, !189, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @lgdt3305_mpeg_mode_polarity._entry.88, !192, !"_entry", i1 false, i1 false}
!192 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 249, i32 6}
!193 = !{ptr @lgdt3305_mpeg_mode_polarity._entry_ptr.89, !192, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.90, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 1081, i32 2}
!196 = !{ptr @lgdt3305_get_tune_settings._entry, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @lgdt3305_get_tune_settings._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.91, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 806, i32 2}
!200 = !{ptr @lgdt3305_get_frontend._entry, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @lgdt3305_get_frontend._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.92, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 911, i32 6}
!204 = !{ptr @lgdt3305_read_status._entry, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @lgdt3305_read_status._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.94, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 920, i32 2}
!208 = !{ptr @lgdt3305_read_status._entry.93, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @lgdt3305_read_status._entry_ptr.95, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.96, !207, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.97, !207, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.98, !207, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.99, !207, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.100, !207, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.101, !207, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @lgdt3305_read_status._entry.102, !217, !"_entry", i1 false, i1 false}
!217 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 928, i32 6}
!218 = !{ptr @lgdt3305_read_status._entry_ptr.103, !217, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @lgdt3305_read_status._entry.104, !220, !"_entry", i1 false, i1 false}
!220 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 948, i32 7}
!221 = !{ptr @lgdt3305_read_status._entry_ptr.105, !220, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.106, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 825, i32 6}
!224 = !{ptr @lgdt3305_read_cr_lock_status._entry, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @lgdt3305_read_cr_lock_status._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.107, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 836, i32 20}
!228 = !{ptr @.str.108, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 839, i32 20}
!230 = !{ptr @.str.109, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 842, i32 20}
!232 = !{ptr @.str.110, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 845, i32 20}
!234 = !{ptr @.str.111, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 848, i32 20}
!236 = !{ptr @.str.112, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 855, i32 20}
!238 = !{ptr @.str.114, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 861, i32 2}
!240 = !{ptr @lgdt3305_read_cr_lock_status._entry.113, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @lgdt3305_read_cr_lock_status._entry_ptr.115, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.116, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 879, i32 7}
!244 = !{ptr @lgdt3305_read_fec_lock_status._entry, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @lgdt3305_read_fec_lock_status._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.118, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 888, i32 3}
!248 = !{ptr @lgdt3305_read_fec_lock_status._entry.117, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @lgdt3305_read_fec_lock_status._entry_ptr.119, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.120, !247, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.121, !247, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @.str.122, !247, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @.str.123, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 1045, i32 6}
!255 = !{ptr @lgdt3305_read_signal_strength._entry, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @lgdt3305_read_signal_strength._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.124, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 1001, i32 13}
!259 = !{ptr @lgdt3305_read_snr._entry, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @lgdt3305_read_snr._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @lgdt3305_read_snr._entry.125, !262, !"_entry", i1 false, i1 false}
!262 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 1002, i32 5}
!263 = !{ptr @lgdt3305_read_snr._entry_ptr.126, !262, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @lgdt3305_read_snr._entry.127, !265, !"_entry", i1 false, i1 false}
!265 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 1003, i32 5}
!266 = !{ptr @lgdt3305_read_snr._entry_ptr.128, !265, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @lgdt3305_read_snr._entry.129, !268, !"_entry", i1 false, i1 false}
!268 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 1009, i32 12}
!269 = !{ptr @lgdt3305_read_snr._entry_ptr.130, !268, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @lgdt3305_read_snr._entry.131, !271, !"_entry", i1 false, i1 false}
!271 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 1010, i32 5}
!272 = !{ptr @lgdt3305_read_snr._entry_ptr.132, !271, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.134, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 1022, i32 2}
!275 = !{ptr @lgdt3305_read_snr._entry.133, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @lgdt3305_read_snr._entry_ptr.135, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.136, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 1070, i32 4}
!279 = !{ptr @lgdt3305_read_ucblocks._entry, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @lgdt3305_read_ucblocks._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @lgdt3305_read_ucblocks._entry.137, !282, !"_entry", i1 false, i1 false}
!282 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 1071, i32 4}
!283 = !{ptr @lgdt3305_read_ucblocks._entry_ptr.138, !282, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.139, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 549, i32 2}
!286 = !{ptr @lgdt3305_i2c_gate_ctrl._entry, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @lgdt3305_i2c_gate_ctrl._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @lgdt3305_ops, !289, !"lgdt3305_ops", i1 false, i1 false}
!289 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 1176, i32 38}
!290 = !{ptr @.str.140, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 743, i32 2}
!292 = !{ptr @lgdt3305_set_parameters._entry, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @lgdt3305_set_parameters._entry_ptr, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @lgdt3305_set_parameters._entry.141, !295, !"_entry", i1 false, i1 false}
!295 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 749, i32 7}
!296 = !{ptr @lgdt3305_set_parameters._entry_ptr.142, !295, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @lgdt3305_set_parameters._entry.143, !298, !"_entry", i1 false, i1 false}
!298 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 755, i32 6}
!299 = !{ptr @lgdt3305_set_parameters._entry_ptr.144, !298, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @lgdt3305_set_parameters._entry.145, !301, !"_entry", i1 false, i1 false}
!301 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 759, i32 6}
!302 = !{ptr @lgdt3305_set_parameters._entry_ptr.146, !301, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @lgdt3305_set_parameters._entry.147, !304, !"_entry", i1 false, i1 false}
!304 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 762, i32 6}
!305 = !{ptr @lgdt3305_set_parameters._entry_ptr.148, !304, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @lgdt3305_set_parameters._entry.149, !307, !"_entry", i1 false, i1 false}
!307 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 765, i32 6}
!308 = !{ptr @lgdt3305_set_parameters._entry_ptr.150, !307, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @lgdt3305_set_parameters._entry.151, !310, !"_entry", i1 false, i1 false}
!310 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 770, i32 6}
!311 = !{ptr @lgdt3305_set_parameters._entry_ptr.152, !310, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @lgdt3305_set_parameters._entry.153, !313, !"_entry", i1 false, i1 false}
!313 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 773, i32 6}
!314 = !{ptr @lgdt3305_set_parameters._entry_ptr.154, !313, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @lgdt3305_set_parameters._entry.155, !316, !"_entry", i1 false, i1 false}
!316 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 777, i32 6}
!317 = !{ptr @lgdt3305_set_parameters._entry_ptr.156, !316, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @lgdt3305_set_parameters._entry.157, !319, !"_entry", i1 false, i1 false}
!319 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 782, i32 6}
!320 = !{ptr @lgdt3305_set_parameters._entry_ptr.158, !319, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @lgdt3305_set_parameters._entry.159, !322, !"_entry", i1 false, i1 false}
!322 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 786, i32 6}
!323 = !{ptr @lgdt3305_set_parameters._entry_ptr.160, !322, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @lgdt3305_set_parameters._entry.161, !325, !"_entry", i1 false, i1 false}
!325 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 792, i32 6}
!326 = !{ptr @lgdt3305_set_parameters._entry_ptr.162, !325, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.163, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 450, i32 3}
!329 = !{ptr @.str.164, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @lgdt3305_set_agc_power_ref._entry, !328, !"_entry", i1 false, i1 false}
!331 = !{ptr @lgdt3305_set_agc_power_ref._entry_ptr, !328, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.165, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/media/dvb-frontends/lgdt3305.c", i32 305, i32 2}
!334 = !{ptr @.str.166, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @lgdt3305_set_filter_extension._entry, !333, !"_entry", i1 false, i1 false}
!336 = !{ptr @lgdt3305_set_filter_extension._entry_ptr, !333, !"_entry_ptr", i1 false, i1 false}
!337 = !{i32 1, !"wchar_size", i32 2}
!338 = !{i32 1, !"min_enum_size", i32 4}
!339 = !{i32 8, !"branch-target-enforcement", i32 0}
!340 = !{i32 8, !"sign-return-address", i32 0}
!341 = !{i32 8, !"sign-return-address-all", i32 0}
!342 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!343 = !{i32 7, !"uwtable", i32 1}
!344 = !{i32 7, !"frame-pointer", i32 2}
!345 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!346 = !{!"auto-init"}
!347 = !{i64 495966, i64 495993}
!348 = !{i64 496476, i64 496503, i64 496537, i64 496558}
